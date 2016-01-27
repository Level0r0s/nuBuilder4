<?php

function nuGetFormObject($F, $R){

    $tabs = nuBuildTabList($F);
    
    $f              = nuGetEditForm($F);
    $f->form_id     = $F;
    $f->record_id   = $R;
    

    $s = "SELECT * FROM `$f->table` WHERE `$f->primary_key` = '$R'";
    $t = nuRunQuery($s);
    $A = db_fetch_array($t);

    $s = "
    
    SELECT * 
    FROM zzzzsys_form
    INNER JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = zzzzsys_form_id
    WHERE zzzzsys_form_id = '$F'
    
    ";
    
    $t = nuRunQuery($s);
    $a = array();
    
    while($r = db_fetch_object($t)){

        $o = nuDefaultObject($r, $tabs);

        if($R == '-1'){
            $o->V   = nuGetDefaultValue($r->sob_all_id);
        }else{
            $o->V   = $A[$r->sob_all_id];
        }

        if($r->sob_all_type == 'input' || $r->sob_all_type == 'display'){$o->align = $r->sob_all_align;}
        if($r->sob_all_type == 'html'){$o->html = $r->sob_html_code;}

        if($r->sob_all_type == 'select'){

            $o->multiple    = $r->sob_select_multiple;
            $o->options     = nuSelectOptions($r->sob_select_sql);

        }

		if($r->sob_all_type == 'run'){
			
			$o->form_id  		= $r->sob_run_zzzzsys_form_id;
			$form			= nuRunQuery("SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$o->form_id'");
			$run				= db_fetch_object($form);
			$o->run_type		= $run->sfo_type;
			$o->record_id		= -1;
			
			if($o->run_type	== 'browse' || $o->run_type	== 'edit' || $o->run_type	== 'browseedit'){$o->record_id	= $r->sob_run_id;}
			if($o->run_type	== 'procedure'){$o->record_id	= $r->sob_run_id;}
			if($o->run_type	== 'report'){$o->record_id	= $r->sob_run_id;}
			
			$o->run_method  	= $r->sob_run_method;

		}
	
		
        if($r->sob_all_type == 'lookup'){
        
            $o->description_width   = $r->sob_lookup_description_width;
            $o->auto_complete       = $r->sob_lookup_autocomplete;
            $o->form_id             = $r->sob_lookup_zzzzsys_form_id;
            $l                      = nuGetLookupValues($r, $o);
            $o->code                = $l[0];
            $o->description         = $l[1];

        }

        if($r->sob_all_type == 'subform'){
        
            $r->subform_fk      = $R;
            $o->subform_type    = $r->sob_subform_type;
            $o->delete          = $r->sob_subform_delete;
            $o->add             = $r->sob_subform_add;
            $o->forms           = nuGetSubformRecords($r, $o->add);

        }
        
        
        $a[]    = $o;

    }
    
    $f->tabs = nuRefineTabList($tabs);
    $f->objects = $a;

    $O = new stdClass();
    $O->forms[] = $f;
    
    return $O->forms[0];

}

function nuDefaultObject($r, $t){
    
    $o      = new stdClass();
    $o->Y   = $r->sob_all_type;
    $o->I   = $r->sob_all_id;
    $o->B   = $r->sob_all_label;
    $o->T   = $r->sob_all_top;
    $o->L   = $r->sob_all_left;
    $o->W   = $r->sob_all_width;
    $o->H   = $r->sob_all_height;
    
    for($i = 0 ; $i < count($t) ; $i++){

        if($r->sob_all_zzzzsys_tab_id == $t[$i]->zzzzsys_tab_id){
            $o->A     = $t[$i]->number;
        }
    
    }
    
    return $o;
    
}


function nuGetEditForm($F){

    $s = "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$F'";
    $t = nuRunQuery($s);
    $r = db_fetch_object($t);
    
    $f              = new stdClass();
    $f->id          = $r->zzzzsys_form_id;
    $f->type        = $r->sfo_type;
    $f->table       = $r->sfo_table;
    $f->primary_key = $r->sfo_primary_key;

    return $f;
    
}

function nuGetLookupValues($R, $O){

    $s = "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$O->form_id'";
    $t = nuRunQuery($s);
    $r = db_fetch_object($t);
    
    $s = "
        SELECT 
        $R->sob_lookup_code AS code,
        $R->sob_lookup_description AS description
        FROM `$r->sfo_table` 
        WHERE `$r->sfo_primary_key` = '$O->value'
        
    ";

    $t = nuRunQuery($s);
    
    return db_fetch_row($t);
    
}


function nuSelectOptions($sql) {

    $a = array();

    if (substr(strtoupper(trim($sql)), 0, 6) == 'SELECT') {                      //-- sql statement
        $t = nuRunQuery($sql);
        if (nuErrorFound()) {
            return;
        }

        while ($r = db_fetch_row($t)) {
            $a[] = $r;
        }
    } else {                                                                     //-- comma delimited string
        $t = explode('|', $sql);

        for ($i = 0; $i < count($t); $i++) {

            $r    = array();
            $r[0] = $t[$i];
            $r[1] = $t[$i + 1];
            $a[]  = $r;
            $i++;
        }
    }

    return $a;
}



function nuGetSubformRecords($R, $A){

    $f = nuGetEditForm($R->sob_subform_zzzzsys_form_id);
    $s = "SELECT `$f->primary_key` FROM `$f->table` WHERE `$R->sob_subform_foreign_key` = '$R->subform_fk'";
    $t = nuRunQuery($s);
    $a = array();
    
    while($r = db_fetch_row($t)){
        
        $o   = nuGetFormObject($R->sob_subform_zzzzsys_form_id, $r[0]);
        $a[] = $o;

    }

    if($A == 1){  //-- add blank record
    
        $o   = nuGetFormObject($R->sob_subform_zzzzsys_form_id, -1);
        $a[] = $o;
        
    }
    
    return $a;

}

function nuBuildTabList($i){
    
    $o = 0;
    $a = array();
    $s = "
    
        SELECT zzzzsys_tab.* 
        FROM zzzzsys_tab 
        INNER JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = syt_zzzzsys_form_id
        WHERE syt_zzzzsys_form_id = '$i'
        GROUP BY syt_zzzzsys_form_id,syt_title
        ORDER BY syt_order
    
    ";
    
    $t = nuRunQuery($s);

    while($r = db_fetch_object($t)){
        
        $r->number = $o;
        $o++;
        $a[] = $r;
        
    }
    
    return $a;
    
}


function nuRefineTabList($t){

    $a = array();

    for($i = 0 ; $i < count($t) ; $i++){
        
        $t[$i]->title = $t[$i]->syt_title;
        unset($t[$i]->syt_zzzzsys_form_id, $t[$i]->syt_title, $t[$i]->syt_order, $t[$i]->zzzzsys_tab_id);
        
    }

    return $t;
   
}


function nuGetDefaultValue($s){
    
    if(trim($s) == ''){
        return '';
    }else{
    
        $t = nuRunQuery($s);
        $r = db_fetch_row($t);
        return $r[0];
        
    }
    
}


?>
