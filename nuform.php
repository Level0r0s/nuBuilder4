<?php

function nuGetFormObject($F, $R, $OBJS, $P = stdClass){

    $tabs = nuBuildTabList($F);
    $f              = nuGetEditForm($F);

    $f->form_id     = $F;
    $f->record_id   = $R;
    

    $s = "Select * From `$f->table` Where `$f->primary_key` = '$R'";
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

		$o 					= nuDefaultObject($r, $tabs);

        if($R == '-1'){
            $o->value			= nuGetSQLValue($r->sob_all_default_value_sql);
        }else{
            $o->value			= $A[$r->sob_all_id];
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

		$o->description_width		= $r->sob_lookup_description_width;
		$o->auto_complete			= $r->sob_lookup_autocomplete;
		$o->form_id				= $r->sob_lookup_zzzzsys_form_id;
		$o->values				= nuGetLookupValues($r, $o);
		
	}

	if($r->sob_all_type == 'subform'){

		$r->subform_fk      	= $R;
		$o->subform_type    	= $r->sob_subform_type;
		$o->delete          	= $r->sob_subform_delete;
		$o->add             	= $r->sob_subform_add;
		$o->dimensions		= nuFormDimensions($r->sob_subform_zzzzsys_form_id);
		$o->forms           	= nuGetSubformRecords($r, $o->add);
		$o->browse_columns  	= array();

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

	$o->type   		= $r->sob_all_type;
	$o->object_id		= $r->zzzzsys_object_id;
	$o->id   		= $r->sob_all_id;
	$o->label   		= $r->sob_all_label;
	$o->top   		= $r->sob_all_top;
	$o->left			= $r->sob_all_left;
	$o->width   		= $r->sob_all_width;
	$o->height		= $r->sob_all_height;

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

    $S = new nuSqlString($r->sfo_browse_sql);
	
    $s = "
		SELECT 
		$r->sfo_primary_key,
		$R->sob_lookup_code,
		$R->sob_lookup_description
		$S->from 
		WHERe `$r->sfo_primary_key` = '$O->value'
        
    ";

    $t = nuRunQuery($s);

    $l = db_fetch_row($t);
	
	$v		= array();
	$v[]		= array($O->id, isset($l[0]) ? $l[0] : '');
	$v[]		= array($O->id . 'code', isset($l[1]) ? $l[1] : '');
	$v[]		= array($O->id . 'description', isset($l[2]) ? $l[2] : '');

	return $v;
	
}


function nuGetOtherLookupValues($nuO){

	$nuS			= "SELECT * FROM zzzzsys_object WHERE zzzzsys_object_id = '$nuO->object_id'";
	$nuT			= nuRunQuery($nuS);
	$nuR 		= db_fetch_object($nuT);
	$nuPHP		= trim($nuR->sob_lookup_php);
	$nuS 		= "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$nuO->form_id'";
	$nuT 		= nuRunQuery($nuS);
	$nuR 		= db_fetch_object($nuT);
	$nuPK 		= $nuR->sfo_primary_key;
	$nuSQL 		= new nuSqlString($nuR->sfo_browse_sql);
	$nuFROM		= $nuSQL->from;
	
	$nuS 		= "
				SELECT 
				TRIM(zzzzsys_slo_object_name) AS obj,
				TRIM(zzzzsys_slo_field_function_name) AS fld
				FROM zzzzsys_lookup 
				WHERE slo_zzzzsys_object_id = '$nuO->object_id'
	";

	$nuT 		= nuRunQuery($nuS);
	$nuID 		= array();
	$nuVAL 		= array();
	$nuVALUES	= array();
	
	eval($nuPHP);

	while($nuR = db_fetch_object($nuT)){
		
		$nuID[]			= $nuR->obj;
		$nuFLD			= $nuR->fld;
		
		if(substr($nuFLD, -2) == '()' && strpos($nuPHP, $nuFLD) !== false){
			
			eval('$nuVAR = ' . $nuFLD . ';');
			$nuVAL[]		=  "'" . str_replace("'", "\\'", $nuVAR) . "'";

		}else{
			
			$nuVAL[]		= $nuFLD;
			
		}
		
	}

	if(count($nuVAL) > 0){

		$nuFLDS	= implode(", ", $nuVAL);
		$nuS 	= "SELECT $nuFLDS $nuFROM WHERE `$nuPK` = '$nuO->value'";
		$nuT 	= nuRunQuery($nuS);
		
		if(db_num_rows($nuT) > 0){
			$nuL	= db_fetch_row($nuT);
		}else{
			for($nuCT = 0 ; $nuCT < count($nuID) ; $nuCT++){$nuL[] = '';}
		}

		for($nuCT = 0 ; $nuCT < count($nuID) ; $nuCT++){

			$nuVALUES[]	= array($nuID[$nuCT], $nuL[$nuCT]);
			
		}
		
	}
	
	return $nuVALUES;

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
        $o->foreign_key	= $R->subform_fk;
        $a[] = $o;

    }

    if($A == 1){  //-- add blank record
    
        $o   = nuGetFormObject($R->sob_subform_zzzzsys_form_id, -1, count($a));
        $o->foreign_key	= $R->subform_fk;
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
	
	if(trim($r->sfo_browse_sql) == ''){
		return array(array(), 0);
	}
	
	
    $S = new nuSqlString($r->sfo_browse_sql);
	
	$S->addField($f->primary_key);
	
	for($i = 0 ; $i < count($f->browse_columns) ; $i++){
		$S->addField($f->browse_columns[$i]->display);
	}
	
	$flds 	= array();
	$fields 	= array_slice($S->fields,1);

	if(count($_POST['nuSTATE']['nosearch_columns']) == 0){
		$_POST['nuSTATE']['nosearch_columns']	= array();
	}
	
	for($i = 0 ; $i < count($fields) ; $i++){
		if(!in_array($i, $_POST['nuSTATE']['nosearch_columns'])){
			$flds[]	= $fields[$i];
		}
	}

	$w	= nuBrowseWhereClause($flds, $search);
	
	if(trim($w) != '()'){
		$S->setWhere(' WHERE ' . $w);
	}
	
	if($P['sort'] != '-1'){
		$S->setOrderBy(' ORDER BY ' . $S->fields[$P['sort'] + 1] . ' ' . $P['sort_direction']);
	}
	
	$a		= array();
	$s		= $S->SQL;
	$t 		= nuRunQuery($s);
	$rows	= db_num_rows($t);
	$s		= $S->SQL . " LIMIT $start, $rows";
	$t 		= nuRunQuery($s);

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


function nuCheckSession(){
	
	$u					= $_POST['nuSTATE']['username'];
	$p					= $_POST['nuSTATE']['password'];
	$s					= $_POST['nuSTATE']['session_id'];
	$_POST['nuLogAgain']	= 0;
	$c					= new stdClass;
	$c->session_id		= '';
	$c->form_id			= '';
	$c->record_id			= '-1';
	$c->errors			= array();
	
	
	if($s == ''){
		
		if($u == $_SESSION['DBGlobeadminUsername']){
			
			if($p == $_SESSION['DBGlobeadminPassword']){
				$c->session_id		= nuSetSession($u);
				$c->form_id			= 'nuhome';
				$c->record_id			= '-1';
			}else{
				$_POST['nuErrors'][]	= 'Invalid Login';
				$_POST['nuLogAgain']	= 1;
			}

		}else{
			
			$t						= nuRunQuery("SELECT * FROM zzzzsys_user WHERE sus_login_name = ? AND sus_login_password = ?", array($u, $p));
			if(db_num_rows($t) > 0){
				$r 					= db_fetch_object($t);
				$c->session_id		= nuSetSession($u);
				$c->form_id			= 'nuhome';
				$c->record_id			= '-1';
			}else{
				$_POST['nuErrors'][]	= 'Invalid Login';
				$_POST['nuLogAgain']	= 1;
			}
			
		}
			
	}else{
		$t							= nuRunQuery("SELECT * FROM zzzzsys_session WHERE zzzzsys_session_id = ?", array($s));
		if(db_num_rows($t) > 0){
			$c->session_id			= $s;
			$c->form_id				= $_POST['nuSTATE']['form_id'];
			$c->record_id				= $_POST['nuSTATE']['record_id'];
		}else{
			$_POST['nuErrors'][]		= 'Timeout';
			$_POST['nuLogAgain']		= 1;
		}
	}
	
	$c->dimensions					= nuFormDimensions($c->form_id);

	return $c;
	
}


function nuSetSession($u){

	$i	= nuID();
	
	nuRunQuery("INSERT INTO zzzzsys_session (zzzzsys_session_id, sss_zzzzsys_user_id) VALUES ('$i', '$u')");
	
	return $i;
	
}

function nuFormDimensions($f){

	$d	= array();
	$t	= nuRunQuery("SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$f'");
	$r	= db_fetch_object($t);
	
	$rh	= intval($r->sfo_row_height)    == 0 ? 25 : $r->sfo_row_height;
	$rs	= intval($r->sfo_rows_per_page) == 0 ? 25 : $r->sfo_rows_per_page;
	
	$d[]	= ($rs * $rh) + 225;    //-- lookup browse height
	
	$t	= nuRunQuery("SELECT * FROM zzzzsys_browse WHERE sbr_zzzzsys_form_id = '$f'");
	$w	= 0;
	
	while($r	= db_fetch_object($t)){
		$w = $w + $r->sbr_width;
	}
	
	$d[]	= $w + 40;             //-- lookup browse width
	
	$t	= nuRunQuery("SELECT * FROM zzzzsys_object WHERE sob_all_zzzzsys_form_id = '$f'");
	$h	= 0;
	$w	= 0;
	$gh	= 0;
	$gw	= 0;
	
	while($r	= db_fetch_object($t)){
		
		if($r->sob_all_type == 'lookup'){
			$w 	= max($w, $r->sob_all_left + $r->sob_all_width + $r->sob_lookup_description_width + 40);
			$gw	= $gw + $r->sob_all_left + $r->sob_all_width + $r->sob_lookup_description_width + 40;
		}else{
			$w 	= max($w, $r->sob_all_left + $r->sob_all_width + 40);
			$gw 	= $gw + $r->sob_all_width;
		}

		if($r->sob_all_type == 'input'){
			$h 	= max($h, $r->sob_all_top + 25);
			$gh 	= max($gh, 25);
		}else{
			$h	= max($h, $r->sob_all_top + $r->sob_all_height);
			$gh 	= max($gh, $r->sob_all_height);
		}

	}
	
	$d[]	= $h  + 200;			//-- lookup form height
	$d[]	= $w  + 20;			//-- lookup form width
	$d[]	= $h  + 25;			//-- form height
	$d[]	= $w  + 50;			//-- form width
	$d[]	= $gh + 0;			//-- grid height
	$d[]	= $gw + 50;			//-- grid width

	return $d;
	
}


function nuGetAllLookupValues(){

	$a						= array();
	$OID						= $_POST['nuSTATE']['object_id'];
	$PK						= $_POST['nuSTATE']['primary_key'];
	$s						= "SELECT * FROM zzzzsys_object WHERE zzzzsys_object_id = '$OID'";
	$t						= nuRunQuery($s);
	$r						= db_fetch_object($t);
	$o						= nuDefaultObject($r, array());
	$o->description_width		= $r->sob_lookup_description_width;
	$o->auto_complete			= $r->sob_lookup_autocomplete;
	$o->form_id				= $r->sob_lookup_zzzzsys_form_id;
	$o->value				= $PK;
	$l						= nuGetLookupValues($r, $o);
	$e						= nuGetOtherLookupValues($o);

	return array_merge($l, $e);
	
}


function nuGetAllLookupList(){

	$O			= $_POST['nuSTATE']['object_id'];
	$C			= $_POST['nuSTATE']['code'];
	$s			= "SELECT * FROM zzzzsys_object WHERE zzzzsys_object_id = '$O'";
	$t			= nuRunQuery($s);
	$r	 		= db_fetch_object($t);
	$code		= $r->sob_lookup_code;
	$description	= $r->sob_lookup_description;
	
	$s	 		= "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$r->sob_lookup_zzzzsys_form_id'";
	$t			= nuRunQuery($s);
	$r	 		= db_fetch_object($t);
	$id	 		= $r->sfo_primary_key;
	$SQL 		= new nuSqlString($r->sfo_browse_sql);

	$s			= "
				SELECT $id, $code, $description
				$SQL->from
				WHERE $code LIKE '%$C%'
				ORDER BY $code
				LIMIT 0 , 10
				";

	$t			= nuRunQuery($s);
	$a			= array();
	
	while($r = db_fetch_row($t)){
		$a[]		= $r;
	}

	return $a;
	
}


?>
