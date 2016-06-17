<?php

function nuUpdateData(){

	$nudata	= $_POST['nuSTATE']['data'];
	$ID		= $_POST['nuSTATE']['record_id'];
	$DEL		= $_POST['nuSTATE']['deleteAll'];	
	$fid		= $_POST['nuSTATE']['form_id'];
	$s		= "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$fid'";
	$t		= nuRunQuery($s);
	$FORM	= db_fetch_object($t);
	$e		= array();

	
	for($i = 0 ; $i < count($nudata) ; $i++){
		$pk		= $nudata[$i]['pk'];
		$t		= nuRunQuery("SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = ? ", array($nudata[$i]['fm']));
		$r		= db_fetch_object($t);
		$del		= $nudata[$i]['d'];

		if($del == 'No'){
			
			$o		= $nudata[$i];
			$fmid	= $o['fm'];
			
			for($ii = 0 ; $ii < count($o['f']) ; $ii++){

				$fdid	= $o['f'][$ii];
				$sq		= "
				
				SELECT o.*, f.*, p.sob_all_label AS label
				FROM zzzzsys_object AS o
				INNER JOIN zzzzsys_form AS f ON zzzzsys_form_id = o.sob_all_zzzzsys_form_id
				INNER JOIN zzzzsys_object AS p ON zzzzsys_form_id = p.sob_subform_zzzzsys_form_id
				WHERE zzzzsys_form_id = '$fmid' AND o.sob_all_id = '$fdid'
				
				";
				
				$T			= nuRunQuery($sq);
				$O			= db_fetch_object($T);
				$m			= '';
				$value		= $o['v'][$ii];

				if($O->sob_all_validate == 'noblanks'){
					
					if($value == ''){
						
						$lab	= addslashes($O->sob_all_label);
						
						if($o['fk'] == ''){
							$m	= "$lab cannot be left blank";
						}else{
							$m	= "$lab (on row " . $o['r'][$ii] . ")  of $O->label cannot be left blank";
						}
						
						nuErrorMessage($m);
						
					}
					
				}else if($O->sob_all_validate == 'noduplicates'){
					
					$noS	= "
					
					SELECT COUNT(*)
					FROM `$O->sfo_table`
					WHERE `$O->sob_all_id` = '$value'
					AND `$O->sfo_primary_key` != '$O->label'
					
					";
					
					$noT	= nuRunQuery($noS);
					$noR	= db_fetch_row($noT);
					
					if($noR[0] != 0){
						
						$lab	= addslashes($O->sob_all_label);
						
						if($o['fk'] == ''){
							$m	= "There is another record where $lab = '$value'";
						}else{
							$m	= "There is another record where $lab = '$value' (on row " . $o['r'][$ii] . ") of $O->label";
						}
						
						nuErrorMessage($m);
						
					}
					
				}
				
			}
		}
		
	}
	
	if(count($_POST['nuErrors']) > 0){
		return;
	}
	
	if($DEL == 'Yes'){
		$before	= nuReplaceHashVariables($FORM->sfo_before_delete_php);
	}else{
		$before	= nuReplaceHashVariables($FORM->sfo_before_save_php);
	}

	eval($before);
	
	if(count($_POST['nuErrors']) > 0){return;}

	for($i = 0 ; $i < count($nudata) ; $i++){
		
		if($nudata[$i]['pk'] == '-1'){
			
			$nudata[$i]['pk']	= nuID();
			
			if($nudata[$i]['fk'] == ''){				//-- main Edit For record
				$ID	= $nudata[$i]['pk'];
				nuChangeHashVariable('RECORD_ID', $ID);
			}
			
		}
	}

	for($i = 0 ; $i < count($nudata) ; $i++){
		if($nudata[$i]['fk'] == '-1'){
			$nudata[$i]['fk']	= $nudata[0]['pk'];
		}
	}

	for($i = 0 ; $i < count($nudata) ; $i++){

		$pk		= $nudata[$i]['pk'];
		$t		= nuRunQuery("SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = ? ", array($nudata[$i]['fm']));
		$r		= db_fetch_object($t);
		$del		= $nudata[$i]['d'];

		if($del == 'Yes' or $DEL == 'Yes'){
			nuDeleteRow($r, $pk);
		}else{
			nuInsertRow($r, $pk);
			nuUpdateRow($r, $pk, $nudata[$i], $ID);
		}
		
	}
	
	if($DEL == 'Yes'){
		$after	= nuReplaceHashVariables($FORM->sfo_after_delete_php);
	}else{
		$after	= nuReplaceHashVariables($FORM->sfo_after_save_php);
	}

	eval($after);

	return $ID;
	
}

function nuDeleteRow($r, $p){

	nuRunQuery("DELETE FROM `$r->sfo_table` WHERE `$r->sfo_primary_key` = ? ", array($p));
	
}

function nuInsertRow($r, $p){
	
	$T	= nuRunQuery("SELECT COUNT(*) FROM `$r->sfo_table` WHERE `$r->sfo_primary_key` = ? ", array($p));
	$R	= db_fetch_row($T);
	
	if($R[0] == 0){
		nuRunQuery("INSERT INTO `$r->sfo_table` (`$r->sfo_primary_key`) VALUES (?) ", array($p));
	}

}

function nuUpdateRow($r, $p, $row, $FK){
	
	if($row['fk'] != ''){		//-- (if == it's not the parent record add foreign key)
	
		$row['f'][]	= $row['ff'];
		$row['v'][]	= $FK;
		
	}
	
	$set		= array();
	$columns	= db_columns($r->sfo_table);
	$objects	= nuEditObjects($r->zzzzsys_form_id);
	$q		= array();
	
	for($i = 0 ; $i < count($row['f']) ; $i++){
		
		if(array_search($row['f'][$i], $columns) !== false){
			$set[] 	= $row['f'][$i] . ' = ? ';
			$q[]		= nuFormatValue($row, $i);
		}
		
	}
	
	$q[]		= $p;
	$s	= "UPDATE `$r->sfo_table` SET " . implode(', ', $set) . " WHERE `$r->sfo_primary_key` = ? ";

	nuRunQuery($s, $q);
	
}


function nuEditObjects($id){

	$a	= array();
	$s	= "SELECT sob_all_id FROM zzzzsys_object WHERE sob_all_zzzzsys_form_id = '$id'";
	$t	= nuRunQuery($s);
	
	while($r = db_fetch_object($t)){
	
		$a[]	= $r->sob_all_id;
	
	}
	
	return $a;
}


function nuFormatValue($row, $i){
	
	$form_id	= $row['fm'];
	$field	= $row['f'][$i];
	
	$s		= "SELECT * FROM zzzzsys_object WHERE sob_all_zzzzsys_form_id = ? AND sob_all_id = ? ";
	$t		= nuRunQuery($s, array($form_id, $field));
	$r		= db_fetch_object($t);
	
	if($r->sob_all_type == 'select' and $r->sob_select_multiple == '1' and $row['v'][$i] != ''){
		return implode('#nuSep#', $row['v'][$i]);
	}else{
		return $row['v'][$i];
	}

}

function nuReplaceHashVariables($s){

	$s		= trim($s);
	
	if($s == ''){
		return '';
	}
	
	$a		= $_POST['nuHash'];

	foreach ($a as $k => $v) {
		$s	= str_replace ('#' . $k . '#', $v, $s);
	}

	return $s;

}

function nuChangeHashVariable($h, $v){
	
	$_POST['nuHash'][$h] = $v;
	
}


function nuErrorMessage($m){

	$_POST['nuErrors'][]	= $m;

}

function nuSubformObject($sf){
	
	$s	= $_POST['nuSTATE']['subforms'];

	for($i = 0 ; $i < count($s) ; $i++){

		if($s[$i]['name'] == $sf){
			
			return $s[$i];
		
		}
		
	}
	
	return array();
	
}


?>