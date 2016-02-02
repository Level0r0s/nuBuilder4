<?php

function nuGetFormObject($F, $R, $OBJS, $P = stdClass){

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
            $o->V   = nuGetSQLValue($r->sob_all_default_value_sql);
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
			$o->browse_columns  = array();

        }
        
		if($OBJS > 0){

			unset($o->type);
			unset($o->id);
			unset($o->label);
			unset($o->top);
			unset($o->left);
			unset($o->width);
			unset($o->height);
			unset($o->align);
			
		}

        $a[]    			= $o;
		
    }
    
    $f->buttons			= nuButtonList($f);
    $f->tabs 				= nuRefineTabList($tabs);
    $f->browse_columns	= nuBrowseColumns($f, $P);
    $B					= nuBrowseRows($f);
    $f->browse_rows		= $B[0];
    $f->pages				= ceil($B[1]/$f->rows);
    $f->objects 			= $a;

    $O 					= new stdClass();
    $O->forms[] 			= $f;

    return $O->forms[0];

}


function nuButtonList($f){
	
	$s = "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$f->id'";
	$t = nuRunQuery($s);
	$a = db_fetch_array($t);
	$A = array();
	
	if($f->record_id == ''){
		
		$b = nuGetButton('add', $a);	if(count($b) == 2){$A[] = $b;}
		$b = nuGetButton('print', $a);	if(count($b) == 2){$A[] = $b;}
		
	}else{
		
		$b = nuGetButton('save', $a);	if(count($b) == 2){$A[] = $b;}
		$b = nuGetButton('new', $a);	if(count($b) == 2){$A[] = $b;}
		$b = nuGetButton('clone', $a);	if(count($b) == 2){$A[] = $b;}
		$b = nuGetButton('delete', $a);if(count($b) == 2){$A[] = $b;}
		
	}

	return $A;
}



function nuGetButton($b, $a){

	if($a['sfo_' . $b . '_button'] == '1'){
		
		if(nuGetSQLValue($a['sfo_' . $b . '_display_condition']) != '0'){

			$t = $a['sfo_' . $b . '_title'];
			$T = ucfirst($b);
			
			return array($t == '' ? $T : $t, $T);
			
		}
		
	}
	
	return array();
	
}




function nuDefaultObject($r, $t){
    
    $o      = new stdClass();

    $o->type   	= $r->sob_all_type;
    $o->id   		= $r->sob_all_id;
    $o->label   	= $r->sob_all_label;
    $o->top   	= $r->sob_all_top;
    $o->left   	= $r->sob_all_left;
    $o->width   	= $r->sob_all_width;
    $o->height	= $r->sob_all_height;

    for($i = 0 ; $i < count($t) ; $i++){

		if($r->sob_all_zzzzsys_tab_id == $t[$i]->zzzzsys_tab_id){
			$o->tab     = $t[$i]->number;
		}
    
    }
    
    return $o;
    
}


function nuGetEditForm($F){

    $s = "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$F'";
    $t = nuRunQuery($s);
    $r = db_fetch_object($t);
    
    $f              	= new stdClass();
    $f->id          	= $r->zzzzsys_form_id;
    $f->type        	= $r->sfo_type;
    $f->table       	= $r->sfo_table;
    $f->primary_key 	= $r->sfo_primary_key;
    
	if(intval($r->sfo_row_height) == 0){
		$f->row_height	= 25;
	}else{
		$f->row_height	= $r->sfo_row_height;
	}
    
	if(intval($r->sfo_rows_per_page) == 0){
		$f->rows	= 25;
	}else{
		$f->rows	= $r->sfo_rows_per_page;
	}

    $f->title		= $r->sfo_description;

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
        
        $o   = nuGetFormObject($R->sob_subform_zzzzsys_form_id, $r[0], count($a));
        $a[] = $o;

    }

    if($A == 1){  //-- add blank record
    
        $o   = nuGetFormObject($R->sob_subform_zzzzsys_form_id, -1, count($a));
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


function nuGetSQLValue($s){
    
    if(trim($s) == ''){
        return '';
    }else{
    
        $t = nuRunQuery($s);
        $r = db_fetch_row($t);
        return $r[0];
        
    }
    
}

function nuBrowseColumns($f, $P){
	
	if($f->record_id != ''){return array();}

	$s	= "SELECT * FROM zzzzsys_browse WHERE sbr_zzzzsys_form_id = '$f->id' ORDER BY sbr_order";
	$t	= nuRunQuery($s);
	$a	= array();
	
	while($r = db_fetch_object($t)){
	
		$r->title	= $r->sbr_title;
		$r->display	= $r->sbr_display;
		$r->align	= $r->sbr_align;
		$r->width	= $r->sbr_width;
		$r->order	= $r->sbr_order;

		unset($r->zzzzsys_browse_id);
		unset($r->sbr_zzzzsys_form_id);
		unset($r->sbr_title);
		unset($r->sbr_display);
		unset($r->sbr_align);
		unset($r->sbr_format);
		unset($r->sbr_sort);
		unset($r->sbr_order);
		unset($r->sbr_width);

		$a[]	= $r;

	}
	
	return $a;
	
}


function nuBrowseRows($f){
	
	if(trim($f->record_id) != ''){return array();}
	
	$P			= $_POST['nuSTATE'];
	$rows		= $P['rows'];
	$page_number	= $P['page_number'];
	$start		= $page_number * $rows;
	$search		= str_replace('&#39;', "'", $P['search']);
	
	$s 			= "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$f->id'";
	$t 			= nuRunQuery($s);
	$r 			= db_fetch_object($t);
	
	
    $S = new nuSqlString($r->sfo_browse_sql);
	
	$S->addField($f->primary_key);
	
	for($i = 0 ; $i < count($f->browse_columns) ; $i++){
		$S->addField($f->browse_columns[$i]->display);
	}
	
	$w	= nuBrowseWhereClause(array_slice($S->fields, 1), $search);
	
	if(trim($w) != '()'){
		$S->setWhere(' WHERE ' . $w);
	}
	
	if($P['sort'] != '-1'){
		$S->setOrderBy(' ORDER BY ' . $S->fields[$P['sort'] + 1] . ' ' . $P['sort_direction']);
	}
	
	$a	= array();
	$s	= $S->SQL . " LIMIT $start, $rows";
	nudebug($s);
	$t 	= nuRunQuery($s);
	
	$rows	= db_num_rows($t);
	
	while($r = db_fetch_row($t)){
	
		$a[] = $r;
		
	}
	
	return array($a, $rows);
	
}



function nuBrowseWhereClause($searchFields, $searchString, $returnArray = false) {

    $pos          = -1;
    $start        = -1;
	$where		= array();
    $phrases      = array();
    $SEARCHES     = array();
    $wordSearches = array();
    $highlight    = array();

    while (true) {
        $pos = strpos($searchString, '"', $pos + 1);                              //-- search for double quotes
        if ($pos === false) {
            break;                                                                            //-- stop searching
        } else {
            if ($start == -1) {
                $start     = $pos;                                                            //-- find start position of phrase
            } else {
                $phrases[] = "$start," . ($pos + 1);                                             //-- add start and end to array
                $start     = -1;
            }
        }
    }

    for ($i = 0; $i < count($phrases); $i++) {

        $p          = explode(',', $phrases[$i]);
        $SEARCHES[] = substr($searchString, $p[0], $p[1] - $p[0]);
    }
    
    for ($i = 0; $i < count($SEARCHES); $i++) {

        $pos = strpos($searchString, '-' . $SEARCHES[$i]);                                      //-- check for a preceeding minus
        if ($pos === false) {
            $task[]       = 'include';
            $searchString = str_replace($SEARCHES[$i], ' ', $searchString);             //-- include phrase
            $highlight[]  = substr($SEARCHES[$i], 1, -1);
        } else {
            $task[]       = 'exclude';
            $searchString       = str_replace('-' . $SEARCHES[$i], ' ', $searchString);                   //-- remove phrase
        }
        $SEARCHES[$i] = ' "%' . substr($SEARCHES[$i], 1, -1) . '%" ';
        
    }

    $wordSearches = explode(' ', $searchString);
    $quo = '"';
    
    for ($i = 0; $i < count($wordSearches); $i++) {

        if (strlen($wordSearches[$i]) > 0) {
            if (substr($wordSearches[$i], 0, 1) == '-' and strlen($wordSearches[$i]) > 1) {       //-- check for a preceeding minus
                $task[]      = 'exclude';
                $SEARCHES[]  = $quo . '%' . addslashes(substr($wordSearches[$i], 1)) . '%' . $quo;      //-- add word to exclude
            } else {
                $task[]      = 'include';
                $SEARCHES[]  = $quo . '%' . addslashes($wordSearches[$i]) . '%' . $quo;                //-- add word to include
                $highlight[] = $wordSearches[$i];
            }
        }
    }
    
    for ($i = 0; $i < count($SEARCHES); $i++) {                                                //-- search for (or exclude) these strings
	
        $include = array();
        $exclude = array();
        
        for ($SF = 0; $SF < count($searchFields); $SF++) {                                     //-- loop through searchable fields
            if ($task[$i] == 'include') {
                $include[] = $searchFields[$SF] . ' LIKE  ' . $SEARCHES[$i];
            } else {
                $exclude[] = $searchFields[$SF] . ' NOT LIKE  ' . $SEARCHES[$i];
            }
        }
		
		
        if (count($include) > 0) {
            $where[] = ' (' . implode(' OR ', $include) . ') ';
        }
		
        if (count($exclude) > 0) {
            $where[] = ' (' . implode(' AND ', $exclude) . ') ';
        }
		
    }

    if ($returnArray) {
        return $highlight;
    } else {
        return ' (' . implode(' AND ', $where) . ') ';
    }
}



?>
