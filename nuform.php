<?php

function nuFormProperties($f){

	$s	= "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = ? ";
	$t	= nuRunQuery($s, array($f));
	$r	= db_fetch_object($t);
	
	return $r;
	
}


function nuBeforeBrowse($f){
	
	$r			= nuFormProperties($f);
	$evalPHP 	= new nuEvalPHPClass($f . '_BB');
	
}


function nuBeforeEdit($f, $o){
	
	$r					= nuFormProperties($f);
    $GLOBALS['EXTRAJS']	= $r->sfo_javascript;
	$evalPHP 			= new nuEvalPHPClass($f . '_BE');
	
}


function nuFormCode($f){
	
	$r	= nuFormProperties($f);
	
	return $r->sfo_code;
	
}

function nuGetFormObject($F, $R, $OBJS, $P = stdClass){

    $tabs 			= nuBuildTabList($F);
    $f				= nuGetEditForm($F, $R);
    $f->form_id		= $F;
    $f->record_id	= $R;
	
	if(!array_key_exists($f->table, $_POST['nuTableSchema'])){
		
		$A			= array();
		
	}else{
		
		$s 			= "Select * From `$f->table` Where `$f->primary_key` = '$R'";
		$t 			= nuRunQuery($s);
		$A 			= db_fetch_array($t);
		
	}


	$s 				= "
 
    SELECT * 
    FROM zzzzsys_form
    INNER JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = zzzzsys_form_id
    WHERE zzzzsys_form_id = ?
    ORDER BY (sob_all_type = 'run'), sob_all_order    

    ";

	if($R != ''){

		$t 							= nuRunQuery($s, array($F));
		$a 							= array();
		
		while($r = db_fetch_object($t)){
			
			$o 						= nuDefaultObject($r, $tabs);
			
			if($R == '-1'){
				$o->value			= nuGetSQLValue($r->sob_all_default_value_sql);
			}else{
				$o->value			= $A[$r->sob_all_id];
			}

			if($r->sob_all_type == 'calc'){
				
				$o->formula			= $r->sob_calc_formula;
				$o->format			= $r->sob_calc_format;
				$o->align 			= $r->sob_all_align;
				
			}
				
			if($r->sob_all_type == 'textarea'){
				
				$o->align 			= $r->sob_all_align;
				$o->read 			= $r->sob_all_access;
				
			}
				
			if($r->sob_all_type == 'input' || $r->sob_all_type == 'display'){

				$o->align 			= $r->sob_all_align;
				$o->format 			= '';
				
				if($r->sob_input_type == 'nuNumber' || $r->sob_input_type == 'nuDate'){
					$o->format 		= $r->sob_input_format;
				}
					
				if($r->sob_input_type == 'nuAutoNumber'){
					
					$o->counter 	= $o->value;
					
				}
					
				$o->input 			= $r->sob_input_type;
				$o->read 			= $r->sob_all_access;

				if($r->sob_input_type == 'button' && $r->sob_all_type == 'input'){
					$o->value		= $r->sob_all_label;
				}

				if($r->sob_input_type == 'nuScroll' && $r->sob_all_type == 'input'){
					$o->scroll		= $r->sob_input_javascript;
				}

				if($r->sob_all_type == 'display'){
					
					$disS			= nuReplaceHashVariables($r->sob_display_sql);
					$disT			= nuRunQuery($disS);
					$disR			= db_fetch_row($disT);
					$o->value		= $disR[0];
					
				}

			}
			
			if($r->sob_all_type == 'html'){
				$o->html 			= $r->sob_html_code;
			}

			if($r->sob_all_type == 'select'){

				$o->multiple		= $r->sob_select_multiple;
				$o->options			= nuSelectOptions(nuReplaceHashVariables($r->sob_select_sql));
				
			}

			if($r->sob_all_type == 'run'){
				
				$type				= $r->sob_run_zzzzsys_form_id;
				$o->form_id			= $type;
				$o->record_id		= $r->sob_run_id;
				
				if(isProcedure($type)){
					
					$o->run_type	= 'P';
					$o->src			= 'nurunphp.php?i=' . nuRunPHP($type);
					
				}else if(isReport($type)){
					
					$o->run_type	= 'R';
					$o->src			= 'nurunpdf.php?i=' . nuRunReport($type);
					
				}else{
					
					$o->run_type	= 'F';
					$o->src			= 'index.php?';
					
				}

				$o->filter			= nuReplaceHashVariables($r->sob_run_filter);
				$o->run_method  	= $r->sob_run_method;

			}
			
				
			if($r->sob_all_type == 'lookup'){

				$o->description_width	= $r->sob_lookup_description_width;
				$o->form_id				= $r->sob_lookup_zzzzsys_form_id;
				$o->values				= nuGetLookupValues($r, $o);
				
			}

			if($r->sob_all_type == 'subform'){

				// need to set both subform_fk in $r and $o for later use
				$r->subform_fk      	= $R;
				$o->subform_fk      	= $R;
				$o->subform_type    	= $r->sob_subform_type;
				$o->delete          	= $r->sob_subform_delete;
				$f->foreign_key_name 	= $r->sob_subform_foreign_key;
				$o->foreign_key_name 	= $r->sob_subform_foreign_key;
				$o->primary_key_name	= nuFormProperties($r->sob_subform_zzzzsys_form_id)->sfo_primary_key;
				$f->primary_key_name	= $o->primary_key_name;
				$o->add             	= $r->sob_subform_add;
				$o->dimensions			= nuFormDimensions($r->sob_subform_zzzzsys_form_id);
				$o->forms           	= nuGetSubformRecords($r, $o->add, $R);
				$o->sf_form_id			= $r->sob_subform_zzzzsys_form_id;
				$o->browse_columns  	= array();
				
			}

			if($r->sob_all_type == 'word'){
				$o->word				= $r->sob_all_label;
				$o->align				= $r->sob_all_align;
			}

			$o->display					= nuDisplay($r->sob_all_display_condition);
			$o->js						= nuObjectEvents($r->zzzzsys_object_id);

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

			$a[]    		= $o;
			
		}
		
	}

    $f->tabs 				= nuRefineTabList($tabs);
    $f->browse_columns		= nuBrowseColumns($f);
    $B						= nuBrowseRows($f);
    $f->browse_rows			= $B[0];
    $f->browse_height		= $B[1];
    $f->browse_sql			= $B[2];
    $f->pages				= ceil($B[1]/$f->rows);
    $f->objects 			= $a;
    $O 						= new stdClass();
    $O->forms[] 			= $f;

    return $O->forms[0];

}

function nuUpdateCounter($i){

	$times	= 0;

	while($r->sob_input_count == ''){
		
		$times++;
		
		if($times > 10){
			
			nuDisplayError("AutoNumber for <b>$r->sob_all_id</b>) cannot be updated");
			return 0;
			
		}
		
		$u	= $_SESSION['SESSIONID'];
		
		$s	= "
		
			UPDATE zzzzsys_object 
			SET 
				sob_input_javascript = ?, 
				sob_input_count = IF(sob_input_count IS NULL OR sob_input_count = '', 0, sob_input_count + 1)
			WHERE zzzzsys_object_id = ? 
		
		";
		
		nuRunQuery($s, [$u, $i]);
		
		$s	= "
		
			SELECT *
			FROM zzzzsys_object
			WHERE sob_input_javascript = ?
		
		";

		$t	= nuRunQuery($s, [$u]);
		$r	= db_fetch_object($t);
	}
	
	return $r->sob_input_count;
	
}



function nuDisplay($s){

	$s	= nuReplaceHashVariables(trim($s));

	if($s == ''){
		return 1;
	}else{
		
		$t	= nuRunQuery($s);
		$r	= db_fetch_row($t);
		
		if($r[0] == '0'){
			return 0;
		}else{
			return 1;
		}

	}
	
}

function nuObjectEvents($i){

	$a	= array();
	$s	= "SELECT sev_event AS event, sev_javascript AS js FROM zzzzsys_event WHERE sev_zzzzsys_object_id = '$i'";
	$t	= nuRunQuery($s);
	
	while($r = db_fetch_object($t)){
		$a[]	= $r;
	}

	return $a;

}


function nuDefaultObject($r, $t){
    
	$o					= new stdClass();
	$v					= $r->sob_all_validate;

	$o->type 	  		= $r->sob_all_type;
	$o->object_id		= $r->zzzzsys_object_id;
	$o->id  	 		= $r->sob_all_id;
	$o->label   		= $r->sob_all_label;
	$o->top   			= $r->sob_all_top;
	$o->left			= $r->sob_all_left;
	$o->width   		= $r->sob_all_width;
	$o->height			= $r->sob_all_height;
	$o->valid			= $r->sob_all_validate;
	$o->format			= '';

	for($i = 0 ; $i < count($t) ; $i++){

		if($r->sob_all_zzzzsys_tab_id == $t[$i]->zzzzsys_tab_id){
			$o->tab     = $t[$i]->number;
		}

	}

	return $o;

}

function nuGetEditForm($F, $R){
	
	$r					= nuFormProperties($F);

	$SQL 				= new nuSqlString($r->sfo_browse_sql);

    $f              	= new stdClass();
    $f->id          	= $r->zzzzsys_form_id;
    $f->type        	= $r->sfo_type;
    $f->table       	= nuReplaceHashVariables($r->sfo_table);
    $f->primary_key 	= $r->sfo_primary_key;
    $f->order			= $SQL->orderBy;
    $f->from			= $SQL->from;
    $f->javascript		= $r->sfo_javascript;

	if(intval($r->sfo_browse_row_height) == 0){
		$f->row_height	= 25;
	}else{
		$f->row_height	= intval($r->sfo_browse_row_height);
	}
    
	if(intval($r->sfo_browse_rows_per_page) == 0){
		$f->rows	= 20;
	}else{
		$f->rows	= intval($r->sfo_browse_rows_per_page);
	}

    $f->title		= nuBreadcrumbDescription($r, $R);

    return $f;
    
}

function nuBreadcrumbDescription($r, $R){
	
	if($R 								== '')	{return $r->sfo_description;}		//-- Browse Form
	if($R 								== '-1'){return $r->sfo_description;}		//-- new record
	if(trim($r->sfo_breadcrumb_title) 	== '')	{return $r->sfo_description;}		//-- no breadcrumb
	
	$b		= nuReplaceHashVariables($r->sfo_breadcrumb_title);
	
	if(strtolower(substr(trim($b), 0, 6)) == 'select'){
		
		$t	= nuRunQuery($b);
		$r	= db_fetch_row($t);
		
		return $r[0];
	
	}

	return nuReplaceHashVariables($r->sfo_breadcrumb_title);
	
}

function nuGetLookupValues($R, $O){

    $s 			= "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$O->form_id'";
    $t 			= nuRunQuery($s);
    $r 			= db_fetch_object($t);
	
	$S 			= new nuSqlString($r->sfo_browse_sql);
	
    $s 			= "
		SELECT 
			$r->sfo_primary_key,
			$R->sob_lookup_code,
			$R->sob_lookup_description
			$S->from
		WHERe 
			`$r->sfo_primary_key` = '$O->value'
        
    ";

    $t 			= nuRunQuery($s);
    $l 			= db_fetch_row($t);
	$f			= $_POST['nuSTATE']['prefix'] . $O->id;
	
	$v			= array();
	$v[]		= array($f, 				isset($l[0]) ? $l[0] : '');
	$v[]		= array($f . 'code', 		isset($l[1]) ? $l[1] : '');
	$v[]		= array($f . 'description', isset($l[2]) ? $l[2] : '');
	
	return $v;
	
}


function nuGetOtherLookupValues($nuO){

	$_POST['lookup_values']	= array();

	$evalPHP 				= new nuEvalPHPClass($nuO->object_id . '_AB');
	
	return $_POST['lookup_values'];
	
}


function nuSetFormValue($f, $v){

	$f							=  str_replace('#ROW#', $_POST['nuSTATE']['prefix'], $f);

	$_POST['lookup_values'][]	= array($f, $v);
	
}


function nuSelectOptions($sql) {

    $a 				= array();
 
    if (substr(strtoupper(trim($sql)), 0, 6) == 'SELECT') {                      //-- sql statement

        $t			= nuRunQuery($sql);
		
        if (nuErrorFound()) {
            return;
        }

        while ($r = db_fetch_row($t)) {
            $a[]	= $r;
        }

    } else {                                                                     //-- comma delimited string

        $t 			= explode('|', nuRemoveNonCharacters($sql));

        for ($i = 0; $i < count($t); $i++) {

            $r    	= array();
            $r[0] 	= $t[$i];
            $r[1] 	= $t[$i + 1];
            $a[]  	= $r;
            $i++;

        }

    }
	
    return $a;
}

function nuRemoveNonCharacters($s){

	$snip = str_replace("\t", '', $s); // remove tabs
	$snip = str_replace("\n", '', $snip); // remove new lines
	$snip = str_replace("\r", '', $snip); // remove carriage returns	
	
	return $snip;

}


function nuGetSubformRecords($R, $A){

    $f = nuGetEditForm($R->sob_subform_zzzzsys_form_id, '');
    $s = "SELECT `$f->primary_key` $f->from WHeRE `$R->sob_subform_foreign_key` = '$R->subform_fk' $f->order";
    $t = nuRunQuery($s);
    $a = array();

    while($r = db_fetch_row($t)){

		$o						= nuGetFormObject($R->sob_subform_zzzzsys_form_id, $r[0], count($a));
		$o->foreign_key			= $R->subform_fk;
		$o->foreign_key_name	= $R->sob_subform_foreign_key;
		$a[] 					= $o;

    }

    if($A == 1){  //-- add blank record
    
        $o						= nuGetFormObject($R->sob_subform_zzzzsys_form_id, -1, count($a));
        $o->foreign_key			= $R->subform_fk;
        $o->foreign_key_name	= $R->sob_subform_foreign_key;
        $a[] 					= $o;
        
    }
	
    return $a;

}

function nuBuildTabList($i){

    $o 				= 0;
    $a 				= array();
    $s 				= "
    
        SELECT * 
        FROM zzzzsys_tab 
        INNER JOIN zzzzsys_object ON sob_all_zzzzsys_form_id = syt_zzzzsys_form_id
        WHERE syt_zzzzsys_form_id = '$i'
        GROUP BY syt_zzzzsys_form_id, syt_title
        ORDER BY syt_order
    
    ";

    $t = nuRunQuery($s);

    while($r = db_fetch_object($t)){
        
        $r->number	= $o;
        $o++;
        $a[]		= $r;
        
    }
	
    return $a;
    
}


function nuRefineTabList($t){

    $a 			= array();

    for($i = 0 ; $i < count($t) ; $i++){
		
		$a[]	= array(title => $t[$i]->syt_title, id => $t[$i]->zzzzsys_tab_id);
        
    }

    return $a;
   
}


function nuGetSQLValue($s){
	
	$s		= nuReplaceHashVariables(trim($s));
    
    if(trim($s) == ''){
        return '';
    }else{
    
        $t	= nuRunQuery($s);
        $r	= db_fetch_row($t);
		
        return $r[0];
        
    }
    
}

function nuBrowseColumns($f){
	
	if($f->record_id != ''){return array();}

	nuBeforeBrowse($f->id);
	
	$s				= "SELECT * FROM zzzzsys_browse WHERE sbr_zzzzsys_form_id = '$f->id' ORDER BY sbr_order";
	$t				= nuRunQuery($s);
	$a				= array();

	while($r = db_fetch_object($t)){
	
		$r->title	= $r->sbr_title;
		$r->display	= $r->sbr_display;
		$r->align	= $r->sbr_align;
		$r->width	= $r->sbr_width;
		$r->order	= $r->sbr_order;
		$r->format	= $r->sbr_format;

		unset($r->zzzzsys_browse_id);
		unset($r->sbr_zzzzsys_form_id);
		unset($r->sbr_title);
		unset($r->sbr_display);
		unset($r->sbr_align);
		unset($r->sbr_format);
		unset($r->sbr_sort);
		unset($r->sbr_order);
		unset($r->sbr_width);

		$a[]		= $r;

	}
	
	return $a;
	
}


function nuBrowseRows($f){
	
	if(trim($f->record_id) != ''){return array();}
	
	$P				= $_POST['nuSTATE'];
	$rows			= $P['rows'];

	$page_number	= $P['page_number'];
	$start			= $page_number * $rows;
	$search			= str_replace('&#39;', "'", $P['search']);
	$filter			= str_replace('&#39;', "'", $P['filter']);
	$s 				= "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$f->id'";
	$t 				= nuRunQuery($s);
	$r 				= db_fetch_object($t);
	
	if(trim($r->sfo_browse_sql) == ''){
		return array(array(), 0);
	}
	
    $S 				= new nuSqlString(nuReplaceHashVariables($r->sfo_browse_sql));

	$S->addField($f->primary_key);
	
	for($i = 0 ; $i < count($f->browse_columns) ; $i++){
		$S->addField($f->browse_columns[$i]->display);
	}
	
	$flds			= array();
	$fields 		= array_slice($S->fields,1);
	
	if(count($_POST['nuSTATE']['nosearch_columns']) == 0){
		$_POST['nuSTATE']['nosearch_columns']	= array();
	}
	
	for($i = 0 ; $i < count($fields) ; $i++){
		
		if(!in_array($i, $_POST['nuSTATE']['nosearch_columns'])){
			$flds[]	= $fields[$i];
		}
		
	}

	$w				= nuBrowseWhereClause($flds, $filter . ' ' . $search);

	if(trim($w) != '()'){
		$S->setWhere(' WHERE ' . $w);
	}
	
	if($P['sort'] != '-1'){
		$S->setOrderBy(' ORDER BY ' . $S->fields[$P['sort'] + 1] . ' ' . $P['sort_direction']);
	}
	
	$a				= array();
	$s				= nuReplaceHashVariables($S->SQL);
	$t 				= nuRunQuery($s);
	$rowData		= db_num_rows($t);
	$s				.= " LIMIT $start, $rows";
	$t 				= nuRunQuery($s);

	while($r = db_fetch_row($t)){
		$a[] 		= $r;
	}
	
	nuRunQuery(nuReplaceHashVariables('DROP TABLE if EXISTS #TABLE_ID#'));

	return array($a, $rowData, $S->SQL);
	
}



function nuBrowseWhereClause($searchFields, $searchString, $returnArray = false) {

    $pos					= -1;
    $start					= -1;
	$where					= array();
    $phrases      			= array();
    $SEARCHES     			= array();
    $wordSearches 			= array();
    $highlight    			= array();

    while (true) {
		
        $pos = strpos($searchString, '"', $pos + 1);                              //-- search for double quotes
		
        if ($pos === false) {
			
            break;                                                                            //-- stop searching
			
        } else {
			
            if ($start == -1) {
				
                $start     	= $pos;                                                            //-- find start position of phrase
				
            } else {
				
                $phrases[] 	= "$start," . ($pos + 1);                                             //-- add start and end to array
                $start     	= -1;
				
            }
			
        }
		
    }

    for ($i = 0; $i < count($phrases); $i++) {

        $p          		= explode(',', $phrases[$i]);
        $SEARCHES[] 		= substr($searchString, $p[0], $p[1] - $p[0]);
    }
    
    for ($i = 0; $i < count($SEARCHES); $i++) {

        $pos = strpos($searchString, '-' . $SEARCHES[$i]);                                      //-- check for a preceeding minus
		
        if ($pos === false) {
			
            $task[]       	= 'include';
            $searchString 	= str_replace($SEARCHES[$i], ' ', $searchString);             //-- include phrase
            $highlight[]  	= substr($SEARCHES[$i], 1, -1);
			
        } else {
			
            $task[]			= 'exclude';
            $searchString	= str_replace('-' . $SEARCHES[$i], ' ', $searchString);                   //-- remove phrase
			
        }
		
        $SEARCHES[$i] 		= ' "%' . substr($SEARCHES[$i], 1, -1) . '%" ';
        
    }

    $wordSearches 			= explode(' ', $searchString);
    $quo 					= '"';
    
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

	$isGlobeadmin			= $_POST['nuSTATE']['username'] == $_SESSION['DBGlobeadminUsername'] ? true : false;
	$isGlobeadminPassword	= $_POST['nuSTATE']['password'] == $_SESSION['DBGlobeadminPassword'] ? true : false;
	$timeout 				= $_SESSION['Timeout'];
	$u						= $_POST['nuSTATE']['username'];
	$p						= $_POST['nuSTATE']['password'];
	$s						= $_POST['nuSTATE']['session_id'];
	$ct						= $_POST['nuSTATE']['call_type'];
	$_POST['nuLogAgain']	= 0;
	$_POST['nuIsGlobeadmin']= 0;

	$c						= new stdClass;
	$c->record_id			= '-1';
	$c->form_id				= $_POST['nuSTATE']['form_id'];
	$c->session_id			= $s;
	$c->call_type			= $ct;
	$c->filter				= $_POST['nuFilter'];
	$c->errors				= array();
	$c->tableSchema			= array();
	$c->formSchema			= array();
	$c->translation			= array();
	$c->dimensions			= nuFormDimensions($c->form_id);

    if($s == ''){										//-- no session id yet

		if($isGlobeadmin){           					//-- globeadmin's username

			if($isGlobeadminPassword){      			// -- globeadmin's password
			
				$s						= nuSetAccessibility($u);
				$c->session_id			= $s;
				$c->form_id				= 'nuhome';
				$c->record_id			= '-1';
				$c->tableSchema			= $_POST['nuTableSchema'];
				$c->formSchema			= nuFormSchema();
				$c->translation			= nuTranslate('');

			}else{
				
				nuDisplayError('Invalid Login..');
				$_POST['nuLogAgain']	= 1;
				return;
				
			}

		}else{                                       //-- normal user
		
			$q	= "
				SELECT * 
				FROM zzzzsys_user 
				JOIN zzzzsys_access_level ON zzzzsys_access_level_id = sus_zzzzsys_access_level_id				
				WHERE sus_login_name = ? AND sus_login_password = ?
				";
				
			$t						= nuRunQuery($q, array($u, md5($p)));

			if(db_num_rows($t) > 0){

				$r 					= db_fetch_object($t);
				$s					= nuSetAccessibility($r->zzzzsys_user_id);
				$c->session_id		= $s;
				$c->form_id			= $r->sal_zzzzsys_form_id;			//-- home Form
				$c->record_id		= '-1';
				$c->tableSchema		= $_POST['nuTableSchema'];
				$c->formSchema		= nuFormSchema();
				$c->translation		= nuTranslate($r->sus_language);

			}else{
				
				nuDisplayError('Invalid Login..');
				
				$_POST['nuLogAgain']	= 1;
				
				return;
				
			}
			
		}
		
	}else{

		$t							= nuRunQuery("SELECT * FROM zzzzsys_session WHERE zzzzsys_session_id = ? ", array($_SESSION['SESSIONID']));		
		
		if(db_num_rows($t) > 0){

			$r 						= db_fetch_object($t);
			
			if(nuHasSessionTimedOut($r->sss_timeout)) {

				$c->session_id		= $_SESSION['SESSIONID'];
				$c->form_id			= $_POST['nuSTATE']['form_id'];
				$c->record_id		= $_POST['nuSTATE']['record_id'];
				$c->tableSchema		= array();	
				$c->formSchema		= array();	
				$c->translation		= nuTranslate($r->sus_language);
				
				nuUpdateSession();
				
			} else {
			
				nuDisplayTimeout();	
				return;
				
			}
			
		}else{
		
			nuDisplayTimeout();
			return;
			
		}

	}

	$t						= nuRunQuery("SELECT * FROM zzzzsys_session WHERE zzzzsys_session_id = ? ", array($_SESSION['SESSIONID']));		
	$r 						= db_fetch_object($t);
	$nuJ 					= json_decode($r->sss_access);
	$_POST['forms']			= $nuJ->forms;
	$_POST['reports']		= $nuJ->reports;
	$_POST['procedures']	= $nuJ->procedures;
	$_POST['session']		= $nuJ->session;
	$c->translation			= nuTranslate($nuJ->language);

	if($nuJ->session->zzzzsys_user_id != $_SESSION['DBGlobeadminUsername'] && $c->form_id != 'nuhome') {

		if($c->call_type == 'getreport'){
		
			if(!in_array($c->record_id, $_POST['reports'])) { 													//form_id is record_id for getreport
			
				$nuT		= nuRunQuery("SELECT * FROM zzzzsys_report WHERE zzzzsys_report_id = '$c->record_id'");
				$nuR		= db_fetch_object($nuT);
				
				nuDisplayError("Access To Report Denied... ($nuR->sre_code)");
				
			}	
			
		}

		if($c->call_type == 'getphp'){

			if(!in_array($c->record_id, $_POST['procedures'])) { 												//form_id is record_id for getphp
			
				$nuT	= nuRunQuery("SELECT * FROM zzzzsys_php WHERE zzzzsys_php_id = '$c->record_id'");
				$nuR	= db_fetch_object($nuT);
				
				nuDisplayError("Access To Procedure Denied... ($nuR->sph_code)");
				
			}
				
		}
		
		$f				= nuAddOtherFormsUsed($nuJ);		//-- form list including forms id used in reports and procedures
		
		if(!in_array($c->form_id, $f) && $c->call_type == 'getform'){

			$nuT		= nuRunQuery("SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$c->form_id'");
			$nuR		= db_fetch_object($nuT);

			nuDisplayError("Access To Form Denied... ($nuR->sfo_code)");
			
		}
		
	}

//	$c->dimensions		= nuFormDimensions($c->form_id);

	return $c;
	
}

function nuAddOtherFormsUsed($j){
	
	$a			= array();
	
	for($i = 0 ; $i < count($j->forms) ; $i++){
		$a[]	= $j->forms[$i][0];
	}

	for($i = 0 ; $i < count($j->reports) ; $i++){
		$a[]	= $j->reports[$i][1];
	}

	for($i = 0 ; $i < count($j->procedures) ; $i++){
		$a[]	= $j->procedures[$i][1];
	}
	
	return $a;
	
}


function nuButtons($formid, $P){
	
	$t						= nuRunQuery("SELECT * FROM zzzzsys_session WHERE zzzzsys_session_id = ? ", array($_SESSION['SESSIONID']));		
	$r 						= db_fetch_object($t);
	$nuJ 					= json_decode($r->sss_access);
	$_POST['forms']			= $nuJ->forms;
	$_POST['reports']		= $nuJ->reports;
	$_POST['procedures']	= $nuJ->procedures;
	$_POST['session']		= $nuJ->session;

	$a						= nuFormAccess($formid, $nuJ->forms);
	$f						= nuFormProperties($formid);
	$c						= $P['call_type'];
	$rid					= $P['record_id'];
	
	if($c == 'getphp'){
		return array('Add' => 0, 'Print' => 0, 'Save' => 0, 'Clone' => 0, 'Delete' => 0, 'Run' => 'nuRunPHP("'.$rid.'")');
	}else if($c == 'getreport'){
		return array('Add' => 0, 'Print' => 0, 'Save' => 0, 'Clone' => 0, 'Delete' => 0, 'Run' => "nuPrintPDF('$rid')");
	}else{
		return array('Add' => $a[0], 'Print' => $a[1], 'Save' => $a[2], 'Clone' => $a[3], 'Delete' => $a[4], 'Run' => '');
	}
	
	
}


function nuFormAccess($s, $a){

	if($_POST['session']->zzzzsys_user_id == $_SESSION['DBGlobeadminUsername']){
		return array('1', '1', '1', '1', '1');
	}

	for($i = 0 ; $i < count($a) ; $i++){
		
		$F	= $a[$i];
		
		if($s == $F[0]){
			return array($F[1], $F[2], $F[3], $F[4], $F[5]);		//-- Add Print Save Clone Delete
		}
		
	}
	
	return array('0', '0', '0', '0', '0');

}


function nuUpdateSession() {
	
	$today 						= strtotime('now');
	$timeout 					= date("Y-m-d H:i:s", strtotime('+'.$_SESSION['Timeout'].' min', $today));

	nuRunQuery("UPDATE zzzzsys_session SET sss_timeout = '$timeout' WHERE zzzzsys_session_id = ?", array($_SESSION['SESSIONID']));
}

function nuHasSessionTimedOut($timeout) {
	
	$currentTime				= time();
	$sessionTimeoutScheduled 	= strtotime($timeout);
		
	if(intval($currentTime) <= intval($sessionTimeoutScheduled)) {
			return true;
	}
	
	return false;
}

function nuDisplayTimeout() {

	nuRunQuery("DELETE FROM zzzzsys_session WHERE zzzzsys_session_id = ?",array($_SESSION['SESSIONID']));
	
	//nuDisplayError('Timeout..');
	$_POST['nuLogAgain']	= 1;
	
	return;
}

function nuAccessForms($session){

	if($session->global_access == '1'){
		
		$s	= "SELECT zzzzsys_form_id AS id FROM zzzzsys_form";
		
	}else{
		
		
		$s	= "
		
			SELECT slf_zzzzsys_form_id 	AS id,
				slf_add_button 			AS a, 
				slf_save_button 		AS s, 
				slf_delete_button 		AS d,
				slf_clone_button 		AS c,
				slf_print_button 		AS p

			FROM zzzzsys_user
			JOIN zzzzsys_access_level ON zzzzsys_access_level_id = sus_zzzzsys_access_level_id
			JOIN zzzzsys_access_level_form ON zzzzsys_access_level_id = slf_zzzzsys_access_level_id
			WHERE zzzzsys_user_id = '$session->zzzzsys_user_id'				
				
		";


	}

	$t	= nuRunQuery($s);
	$a	= Array();

	while($r	= db_fetch_object($t)){
		$a[]	= [$r->id, $r->a, $r->p, $r->s, $r->c, $r->d];
	}

	return $a;
	
}


function nuAccessReports($session){
	
	if($session->global_access == '1'){
		
		$s	= "SELECT zzzzsys_report_id AS id, sre_zzzzsys_form_id AS form_id FROM zzzzsys_report";
		
	}else{

		$s	= "
		
		SELECT sre_zzzzsys_report_id AS id, sre_zzzzsys_form_id AS form_id
		FROM zzzzsys_user
		JOIN zzzzsys_access_level ON zzzzsys_access_level_id = sus_zzzzsys_access_level_id
		JOIN zzzzsys_access_level_report ON zzzzsys_access_level_id = sre_zzzzsys_access_level_id
		JOIN zzzzsys_report ON zzzzsys_report_id = sre_zzzzsys_report_id
		WHERE zzzzsys_user_id = '$session->zzzzsys_user_id'
		GROUP BY sre_zzzzsys_report_id
				
		";
		
	}

	$t	= nuRunQuery($s);
	$a	= Array();

	while($r	= db_fetch_row($t)){
		$a[]	= array($r[0],$r[1]);
	}

	return $a;
	
}


function nuAccessProcedures($session){

	if($session->global_access == '1'){
		
		$s	= "SELECT zzzzsys_php_id AS id, sph_zzzzsys_form_id AS form_id FROM zzzzsys_php";
		
	}else{

		$s	= "
		
			SELECT 
				slp_zzzzsys_php_id AS id,
				sph_zzzzsys_form_id AS form_id
			FROM zzzzsys_user
			JOIN zzzzsys_access_level ON zzzzsys_access_level_id = sus_zzzzsys_access_level_id
			JOIN zzzzsys_access_level_php ON zzzzsys_access_level_id = slp_zzzzsys_access_level_id
			JOIN zzzzsys_php ON zzzzsys_php_id = slp_zzzzsys_php_id
			WHERE 
				zzzzsys_user_id = '$session->zzzzsys_user_id'
			GROUP BY 
				slp_zzzzsys_php_id
				
		";
		
	}

	$t	= nuRunQuery($s);
	$a	= Array();

	while($r	= db_fetch_row($t)){
		$a[]	= array($r[0], $r[1]);
	}

	return $a;

}

function nuFormDimensions($f){

	$d			= array();
	$t			= nuRunQuery("SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$f'");
	$r			= db_fetch_object($t);
	
	$bt			= 57; 	//-- browse title
	$rh			= intval($r->sfo_browse_row_height)    == 0 ? 25 : $r->sfo_browse_row_height;
	$rs			= intval($r->sfo_browse_rows_per_page) == 0 ? 25 : $r->sfo_browse_rows_per_page;
	$bb			= 25;   //-- browse footer
	
	$t			= nuRunQuery("SELECT * FROM zzzzsys_object WHERE sob_all_zzzzsys_form_id = '$f'");
	$h			= 0;
	$w			= 0;
	$gh			= 0;
	$gw			= 0;
	
	while($r	= db_fetch_object($t)){
		
		if($r->sob_all_type == 'lookup'){
			
			$w 	= max($w, $r->sob_all_left + $r->sob_all_width + $r->sob_lookup_description_width + 40);
			$gw	= $gw + $r->sob_all_width + $r->sob_lookup_description_width + 40;
			
		}else{
			
			$w 	= max($w, $r->sob_all_left + $r->sob_all_width + 40);
			$gw = $gw + $r->sob_all_width;
			
		}

		$h		= max($h, $r->sob_all_top + $r->sob_all_height);
		$gh 	= max($r->sob_all_height, 25);

	}



	$bh			= $bt + ($rs * $rh) + $bb;
	$bw			= nuGetBrowseWidth($f);	

	$grid		= ['height'=>$gh, 'width'=> $gw];
	$browse		= ['height'=>$bh, 'width'=> $bw];
	$edit		= ['height'=>$h,  'width'=> $w];


	
	$d[]		= $bt + ($rs * $rh) + $bb;    		//-- lookup browse height (0)
	$d[]		= nuGetBrowseWidth($f);	
	$d[]		= $h  + 0;		//-- lookup form height 	(2)
	$d[]		= $w  + 0;		//-- lookup form width		(3)
	$d[]		= $h  + 0;		//-- form height			(4)
	$d[]		= $w  + 50;			//-- form width				(5)
	$d[]		= $gh + 0;			//-- grid height			(6)
	$d[]		= $gw + 55;			//-- grid width				(7)
	
	$d[]		= ['browse'=>$browse, 'edit'=>$edit, 'grid'=>$grid];
	return ['browse'=>$browse, 'edit'=>$edit, 'grid'=>$grid];
	
	return $d;
	
}


function nuGetBrowseWidth($f){
	
	$w			= 0;
	$t			= nuRunQuery("SELECT * FROM zzzzsys_browse WHERE sbr_zzzzsys_form_id = ? ", [$f]);
	
	while($r	= db_fetch_object($t)){
		$w = $w + $r->sbr_width;
	}
	
	return $w;

	
}



function nuGetAllLookupValues(){
	
	$a						= array();
	$OID					= $_POST['nuSTATE']['object_id'];
	$PK						= $_POST['nuSTATE']['primary_key'];
	$s						= "SELECT * FROM zzzzsys_object WHERE zzzzsys_object_id = '$OID'";
	$t						= nuRunQuery($s);
	$r						= db_fetch_object($t);
	$o						= nuDefaultObject($r, array());
	$o->description_width	= $r->sob_lookup_description_width;
	$o->form_id				= $r->sob_lookup_zzzzsys_form_id;
	$o->value				= $PK;
	$l						= nuGetLookupValues($r, $o);
	
	$_POST['nuHash']['LOOKUP_RECORD_ID'] = $l[0][1];

	$e						= nuGetOtherLookupValues($o);
	$m						= array_merge($l, $e);

	return $m;
	
}


function nuGetAllLookupList(){

	$O				= $_POST['nuSTATE']['object_id'];
	$C				= $_POST['nuSTATE']['code'];
	$s				= "SELECT * FROM zzzzsys_object WHERE zzzzsys_object_id = '$O'";
	$t				= nuRunQuery($s);
	$r	 			= db_fetch_object($t);
	$code			= $r->sob_lookup_code;
	$description	= $r->sob_lookup_description;
	
	$s		 		= "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$r->sob_lookup_zzzzsys_form_id'";
	$t				= nuRunQuery($s);
	$r	 			= db_fetch_object($t);
	$id	 			= $r->sfo_primary_key;
	$SQL 			= new nuSqlString($r->sfo_browse_sql);

	$s				= "
					SELECT $id, $code, $description
					$SQL->from
					WHERE $code LIKE '%$C%'
					ORDER BY $code
					LIMIT 0 , 10
					";

	$t				= nuRunQuery($s);
	$a				= array();
	
	while($r = db_fetch_row($t)){
		$a[]		= $r;
	}

	return $a;
	
}

function nuSetAccessibility($userid = ''){

	$_SESSION['SESSIONID']		= nuID();
	
	$access						= new stdClass;
	$access->session			= nuSessionDetails($userid);
	$access->forms				= nuAccessForms($access->session);
	$access->reports			= nuAccessReports($access->session);
	$access->procedures			= nuAccessProcedures($access->session);
	
	$nuJ						= json_encode($access);
	$today 						= strtotime('now');
	$timeout 					= date("Y-m-d H:i:s", strtotime('+'.$_SESSION['Timeout'].' min', $today));
	$ses						= $_SESSION['SESSIONID'];

	nuRunQuery("INSERT INTO zzzzsys_session SET sss_timeout = '$timeout', sss_access = ?, zzzzsys_session_id = ?", array($nuJ, $ses));
	
	return $i;

}


function nuSessionDetails($u){
	
	$q	= "

		SELECT zzzzsys_access_level_id, zzzzsys_user_id, sal_zzzzsys_form_id AS zzzzsys_form_id FROM zzzzsys_user
		JOIN zzzzsys_access_level ON zzzzsys_access_level_id = sus_zzzzsys_access_level_id
		WHERE zzzzsys_user_id = '$u'
		GROUP BY sus_zzzzsys_access_level_id
		
	";

	$t								= nuRunQuery($q);
	
	if(db_num_rows($t) == 0){		//-- globeadmin so manually poulate object
		
		$r							= new stdClass;
		$r->zzzzsys_access_level_id	= '';
		$r->zzzzsys_user_id			= $_SESSION['DBGlobeadminUsername'];
		$r->zzzzsys_form_id			= 'nuhome';
		$r->global_access			= '1';
		
	}else{
		
		$r							= db_fetch_object($t);
		$r->global_access			= '0';
		
	}
	
	return $r;
	
}




function isForm($i){

	$s	= "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$i'";
	$t	= nuRunQuery($s);
	$r	= db_fetch_object($t);
	
	return db_num_rows($t) > 0;

}

function isProcedure($i){

	$s	= "SELECT * FROM zzzzsys_php WHERE zzzzsys_php_id = '$i'";
	$t	= nuRunQuery($s);
	$r	= db_fetch_object($t);
	
	return db_num_rows($t) > 0;

}

function isReport($i){

	$s	= "SELECT * FROM zzzzsys_report WHERE zzzzsys_report_id = '$i'";
	$t	= nuRunQuery($s);
	$r	= db_fetch_object($t);
	
	return db_num_rows($t) > 0;

}

function nuSetupButtons($f, $t) {
	
	if($t == 'Report') {
		
		nuAddPrintButtons($f, 'Run', 'Report');
		nuAddPrintButtons($f, 'Email', 'Report');
		
	} else if($t == 'PHP') {
		
		nuAddPrintButtons($f, 'Run', 'PHP');
		
	}
}

function nuAddPrintButtons($f, $t, $a){
	
	$i = sizeof($f->forms[0]->buttons);
	
	$f->forms[0]->buttons[$i][0] = $t;
	$f->forms[0]->buttons[$i][1] = $t.$a;
	
}


function nuAddSystemEvent($event){
	
	$F			= $_POST['nuHash']['RECORD_ID'];
	$events		= ['BB' => 'Before Browse','BE' => 'Before Edit','BS' => 'Before Save','AS' => 'After Save','BD' => 'Before Delete','AD' => 'After Delete'];
	
	foreach ($events as $key => $value) {
		
		$i		= $F . '_' . $key;
		$s		= "
				SELECT * 
				FROM zzzzsys_php 
				WHERE 
					zzzzsys_php_id = ?
				";

		$t		= nuRunQuery($s, array($i));

		if(db_num_rows($t) == 0){
	
			$r	= db_fetch_row($t);
			$e	= $value . ' for ' . $r->sfo_code . ' ' . $r->sfo_description;
			$s	= "

					INSERT INTO zzzzsys_php 
					(
						zzzzsys_php_id, 
						sph_description, 
						sph_group, 
						sph_system
					) 
					VALUES 
					(
						'$i',
						'$e',
						'nubuilder',
						'1'
					 );
		 
				";
			 
			$t	= nuRunQuery($s);
			
		}
		 
	}
	
}


function nuAddJavascript($js){
	$GLOBALS['EXTRAJS'] = $GLOBALS['EXTRAJS'] . "\n\n" . $js;
}




?>