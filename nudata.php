<?php

function nuUpdateData(){
	
	$d	= $_POST['nuSTATE']['data'];
	
	for($i = 0 ; $i < count($d) ; $i++){
		if($d[$i]['pk'] == '-1'){
			$d[$i]['pk']	= nuID();
		}
	}
	
	
	for($i = 0 ; $i < count($d) ; $i++){
		if($d[$i]['fk'] == ''){
			$d[$i]['fk']	= $d[0]['pk'];
		}
	}
	
	
nudebug(print_r(nuTextFormats(),1));
nudebug(print_r(nuTextFormats(true),1));

	for($i = 0 ; $i < count($d) ; $i++){

		$pk		= $d[$i]['pk'];
		$t		= nuRunQuery("SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = ? ", array($d[$i]['fm']));
		$r		= db_fetch_object($t);
		
		if($d[$i]['d']	== '1' or $d[0]['d'] == '1' ){
			nuDeleteRow($r, $pk);
		}else{
			nuInsertRow($r, $pk);
			nuUpdateRow($r, $pk, $d[$i]);
		}
		
	}
	
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

function nuUpdateRow($r, $p, $row){
	
	if($row['fk'] != $row['pk']){		//-- (if == it's the parent record)
	
		$row['f'][]	= $row['ff'];
		$row['v'][]	= $row['fk'];
	
	}
	
	$set		= array();
	
	for($i = 0 ; $i < count($row['f']) ; $i++){
		
		$set[] 	= $row['f'][$i] . ' = "' . nuFormatValue($row, $i) . '"';
		
	}
	
	$s	= "UPDATE `$r->sfo_table` SET " . implode(', ', $set) . " WHERE `$r->sfo_primary_key` = ? ";

	nuRunQuery($s, array($p));
	
}

function nuFormatValue($row, $i){
	
	$form_id	= $row['fm'];
	$field	= $row['f'][$i];
	
	$s		= "SELECT * FROM zzzzsys_object WHERE sob_all_zzzzsys_form_id = ? AND sob_all_id = ? ";
	$t		= nuRunQuery($s, array($form_id, $field));
	$r		= db_fetch_object($t);
	
	if($r->sob_all_type == 'select'){
		return implode('#nuSep#', $row['v'][$i]);
	}else{
		return $row['v'][$i];
	}

}



?>