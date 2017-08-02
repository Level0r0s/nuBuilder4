<?php


function nuCheckTables(){

	$nudata	= $_POST['nuHash']['nuFORMdata'];
	$rid	= $_POST['nuSTATE']['record_id'];
	$fid	= $_POST['nuSTATE']['form_id'];
	$DEL	= $_POST['nuSTATE']['deleteAll'];
	
	if($nudata[0]->action == 'delete'){return;}
	
		
	for($d = 0 ; $d < count($nudata) ; $d++){
		
		$sf			= $nudata[$d];
		$rows		= $sf->rows;
		$edited		= $sf->edited;
		$deleted	= $sf->deleted;
		$fields		= $sf->fields;
		$table		= $sf->table;
		$pk			= $sf->primary_key;
		$fk			= $sf->foreign_key;
		$fv			= $_POST['nuHash']['record_id'];
		
		for($r = 0 ; $r < count($rows) ; $r++){

			if(nuEditedRow($edited[$r])){
				
				$F			= array();
				$I			= array();
				$V			= array();
				$edit		= $edited[$r];
				$row		= $rows[$r];
				$pv			= $row[0];
				$nv			= nuID();
				
				if($pv == '-1'){
					$id		= "'$nv'";
				}else{
					$id		= "'$pv'";
				}
				
				$V[]		= $id;												//-- primary key id
				$I[]		= $pk;
				
				if($fk == ''){
					$rec_id	= $id;
				}else{
					
					$V[]	= $rec_id;
					$I[]	= "`$fk`";
					
				}
				
				for($R = 1 ; $R < count($row) ; $R++){

					if($edit[$R] == 1){											//-- has been edited
							
						$add	= addslashes($row[$R]);
						$fld	= $fields[$R];
						$V[]	= "'$add'";
						$I[]	= "`$fld`";
						$F[]	= "`$fld` = '$add'";
						
					}
					
				}
				
				$fs			= implode(', ', $F);								//-- for update statement
				$vs			= ' VALUES (' . implode(', ', $V) . ')';
				$is			= '        (' . implode(', ', $I) . ')';

				if($action == 'save'){
					
					if($pv == '-1'){
						$sql	= "INSERT INTO $table $is $vs;";
					}else{
						$sql	= "UPDATE $table SET $fs WHERE `$pk` = '$pv';";
					}
				
				}
				
				$S[]		= $sql;
				
			}
			
		}

		for($i = 0 ; $i < count($deleted) ; $i++){
			
			$del	= $deleted[$i];
			$sql	= "DELETE FROM $table WHERE `$pk` = '$del';";
			$S[]	= $sql;
			
		}
		
	}
	
}


function nuValidateSubforms(){
	

	$nudata	= $_POST['nuHash']['nuFORMdata'];
	$DEL	= $_POST['nuHash']['deleteAll'];
	
	for($d = 0 ; $d < count($nudata) ; $d++){
		
		$sf			= $nudata[$d];
		
		//nudebug($sf);
		
	}
	
}


function nuUpdateTables(){
	
	nuValidateSubforms();

	$nudata	= $_POST['nuHash']['nuFORMdata'];
	$rid	= $_POST['nuHash']['record_id'];
	$fid	= $_POST['nuHash']['form_id'];
	$DEL	= $_POST['nuHash']['deleteAll'];
	
	$rid	= $rid == '-1' ? nuID() : $rid;
	$S		= array();

	if($rid == -3){
		
		nuDisplayError('Cannot be Saved..');
		return;
		
	}
		
	for($d = 0 ; $d < count($nudata) ; $d++){
		
		$sf			= $nudata[$d];
		$action		= $sf->action;
		$rows		= $sf->rows;
		$edited		= $sf->edited;
		$deleted	= $sf->deleted;
		$fields		= $sf->fields;
		$table		= $sf->table;
		$pk			= $sf->primary_key;
		$fk			= $sf->foreign_key;
		$fv			= $_POST['nuHash']['record_id'];
		
		for($r = 0 ; $r < count($rows) ; $r++){

			if(nuEditedRow($edited[$r])){
				
				$F			= array();
				$I			= array();
				$V			= array();
				$edit		= $edited[$r];
				$row		= $rows[$r];
				$pv			= $row[0];
				$nv			= nuID();
				$validate	= nuValidArray($fv, $fields);
				
				if($pv == '-1'){
					$id		= "'$nv'";
				}else{
					$id		= "'$pv'";
				}
				
				$V[]		= $id;												//-- primary key id
				$I[]		= $pk;
				
				if($fk == ''){
					$rec_id	= $id;
				}else{
					
					$V[]	= $rec_id;
					$I[]	= "`$fk`";
					
				}

				for($R = 1 ; $R < count($row) ; $R++){

					if($edit[$R] == 1){											//-- has been edited
						$v		= $row[$R];
						$add	= addslashes($v);
						$fld	= $fields[$R];
						$V[]	= "'$add'";
						$I[]	= "`$fld`";
						$F[]	= "`$fld` = '$add'";
						
					}
					
				}
	
				$fs				= implode(', ', $F);							//-- for update statement
				$vs				= ' VALUES (' . implode(', ', $V) . ')';
				$is				= '        (' . implode(', ', $I) . ')';

				if($action == 'save'){
					
					if($pv == '-1'){
						
						if($deleted[$r] == '0'){
							
							$sql	= "INSERT INTO $table $is $vs;";
							$S[]	= $sql;
							
						}
						
					}else{
						$sql		= "UPDATE $table SET $fs WHERE `$pk` = '$pv';";
						$S[]		= $sql;
					}
				
				}
				
				
			}
			
		}

		for($i = 0 ; $i < count($deleted) ; $i++){
			
			$id				= $rows[$i][0];

			if($action == 'delete' || $deleted[$i] == '1'){
			
				if($id != '-1'){
						
					$sql	= "DELETE FROM $table WHERE `$pk` = '$id';";
					$S[]	= $sql;
					
				}
				
			}
		
		}
		
	}
	
	//nudebug($S);
	
}

function nuValidArray($v, $f){
	
	$a			= Array();
	
	$s			= "	
	
				SELECT sob_all_validate 
				FROM zzzzsys_object 
				WHERE sob_all_zzzzsys_form_id = ?
				AND sob_all_id = ?
				
				";
	
	for($i = 0; $i < count($f) ; $i++){
		
		$t		= nuRunQuery($s, array($v, $f[$i]));
		$r		= db_fetch_row($t);
		$a[$i]	= $r[0];
		
	}

	return $a;
	
}


function nuEditedRow($e){
	
	$t	= 0;
	
	for($i = 0 ; $i < count($e) ; $i++){
		$t	= $t + $e[$i];
	}
	
	return $t > 0;			//-- something has been edited
	
}



function nuUpdateData(){

	$nudata	= $_POST['nuSTATE']['data'];
	$ID		= $_POST['nuSTATE']['record_id'];
	$DEL	= $_POST['nuSTATE']['deleteAll'];	
	$fid	= $_POST['nuSTATE']['form_id'];

	if($ID == -3){
		
		nuDisplayError('Cannot be Saved..');
		return;
		
	}
		
	
	$s		= "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$fid'";
	$t		= nuRunQuery($s);
	$FORM	= db_fetch_object($t);
	$e		= array();
	
	for($i = 0 ; $i < count($nudata) ; $i++){

		$pk		= $nudata[$i]['pk'];
		$t		= nuRunQuery("SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = ? ", array($nudata[$i]['fm']));
		$r		= db_fetch_object($t);
		$del	= $nudata[$i]['d'];

		if($del == 'No'){
			
			$o			= $nudata[$i];
			$fmid		= $o['fm'];

			for($ii = 0 ; $ii < count($o['f']) ; $ii++){

				$fdid	= $o['f'][$ii];
				$sq		= "
				
				SELECT 
					o.*, 
					f.*, 
					p.sob_all_label AS label,
					syt_title
				FROM zzzzsys_object AS o
				INNER JOIN zzzzsys_form AS f ON zzzzsys_form_id = o.sob_all_zzzzsys_form_id
				LEFT JOIN zzzzsys_object AS p ON zzzzsys_form_id = p.sob_subform_zzzzsys_form_id
				LEFT JOIN zzzzsys_tab ON zzzzsys_tab_id = o.sob_all_zzzzsys_tab_id
				WHERE 
					zzzzsys_form_id = '$fmid' AND 
					o.sob_all_id    = '$fdid'
					
				";
				$T			= nuRunQuery($sq);
				$O			= db_fetch_object($T);
				$m			= '';
				$value		= $o['v'][$ii];

				if($O->sob_all_validate == '1'){				//-- noblanks
				
					if($value == ''){
						
						$lab	= addslashes($O->sob_all_label);
						$tab	= addslashes($O->syt_title);
						$f 		= addslashes($O->sob_all_id);

						if($o['fk'] == ''){
							$m	= "<b>$lab</b> on tab <b>$tab</b> cannot be left blank...";
						}else{
							$m	= "$lab (on row " . $o['r'][$ii] . ")  of $O->label cannot be left blank..";
						}
						
						nuDisplayError($m, 'blank');
						
					}
					
				}else if($O->sob_all_validate == '2'){			// -- noduplicates

					$nuV	= $o['r'][$ii];
					$noS	= "
					
					SELECT COUNT(*)
					FROM `$O->sfo_table`
					WHERE `$O->sob_all_id` = '$value'
					AND `$O->sfo_primary_key` != '" . $o['pk'] . "'
					
					";

					$noT	= nuRunQuery($noS);
					$noR	= db_fetch_row($noT);
					
					if($noR[0] != 0){
						
						$lab	= addslashes($O->sob_all_label);
						
						if($o['fk'] == ''){
							$m	= "There is a duplicate record where $lab = '$value'..";
						}else{
							$m	= "There is a duplicate record where $lab = '$value' (on row " . $o['r'][$ii] . ") of $O->label..";
						}
						
						nuDisplayError($m, 'dupe');
						
					}
					
				}
				
			}
		}
		
	}
	
	if(count($_POST['nuErrors']) > 0){
		return;
	}
	
	if($DEL == 'Yes'){
		$evalPHP = new nuEvalPHPClass($FORM->zzzzsys_form_id . '_BD');
	}else{
		$evalPHP = new nuEvalPHPClass($FORM->zzzzsys_form_id . '_BS');
	}
	
	if(count($_POST['nuErrors']) > 0){return;}

	for($i = 0 ; $i < count($nudata) ; $i++){
		
		if($nudata[$i]['pk'] == '-1'){
			
			$nudata[$i]['pk']	= nuID();
			
			if($nudata[$i]['fk'] == ''){				//-- main Edit For record
			
				$ID				= $nudata[$i]['pk'];
				
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
		$del	= $nudata[$i]['d'];

		if($del == 'Yes' or $DEL == 'Yes'){
			nuDeleteRow($r, $pk);
		}else{

			if(count($nudata[$i]['f']) > 0){  //-- something to update
		
				nuInsertRow($r, $pk);
				nuUpdateRow($r, $pk, $nudata[$i], $ID);
				
			}
		}
		
	}
	
	$nuRecordID	= $ID;							//--
	
	if($DEL == 'Yes'){
		$event	= $FORM->zzzzsys_form_id . '_AD';
	}else{
		$event	= $FORM->zzzzsys_form_id . '_AS';
	}
	
	if(trim($event) != '') {
		$evalPHP = new nuEvalPHPClass($event);
	}

	return $nuRecordID;
	
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
	
	$set			= array();
	$columns		= db_field_names($r->sfo_table);
	$objects		= nuEditObjects($r->zzzzsys_form_id);
	$q				= array();
	
	for($i = 0 ; $i < count($row['f']) ; $i++){
		
		if(array_search($row['f'][$i], $columns) !== false){
			
			$set[] 	= $row['f'][$i] . ' = ? ';
			$q[]	= nuFormatValue($row, $i);
			
		}
		
	}

	if(count($set) > 0){
		
		$q[]		= $p;
		$s	= "UPDATE `$r->sfo_table` SET " . implode(', ', $set) . " WHERE `$r->sfo_primary_key` = ? ";
		nuRunQuery($s, $q);
		nudebug($s, $q);					

	}
	
}


function nuEditObjects($id){

	$a	= array();
	$s	= "SELECT sob_all_id FROM zzzzsys_object WHERE sob_all_zzzzsys_form_id = '$id' ORDER BY sob_all_order";
	$t	= nuRunQuery($s);
	
	while($r = db_fetch_object($t)){
	
		$a[]	= $r->sob_all_id;
	
	}
	
	return $a;
}


function nuFormatValue($row, $i){
	
	$form_id	= $row['fm'];
	$field		= $row['f'][$i];
	
	$s			= "SELECT * FROM zzzzsys_object WHERE sob_all_zzzzsys_form_id = ? AND sob_all_id = ? ";
	$t			= nuRunQuery($s, array($form_id, $field));
	$r			= db_fetch_object($t);
	
		nudebug($row['v'][$i], $r);
	if($r->sob_all_type == 'select' and $r->sob_select_multiple == '1' and $row['v'][$i] != ''){
		return json_encode($row['v'][$i]);
		
	}else if($r->sob_all_type == 'input' and $r->sob_input_type == 'nuAutoNumber'){
		
		if(nuHasNewRecordID()){
			return nuUpdateCounter($r->zzzzsys_object_id);
		}
		
	}else{
		
		return $row['v'][$i];
		
	}

}


function nuHasNewRecordID(){
	return $_POST['nuHash']['PREVIOUS_RECORD_ID'] != $_POST['nuHash']['RECORD_ID'];
}

function nuChangeHashVariable($h, $v){
	$_POST['nuHash'][$h]	= $v;
}


function nuDisplayError($m){
	$_POST['nuErrors'][]	= $m;
}


function nuDisplayMessage($m){
	$_POST['nuMessages'][]	= $m;
}

function nuCheckAccess($f, $r = ''){
	
	if(in_array($f, $_POST['forms'])){
		return 1;
	}else{

	
		if($r == '' or $r == '-1' or in_array($r, array_merge($_POST['reports'], $_POST['procedures']))){
			return 2;
		}else{

			nuDisplayError("Access Denied..");
			
			return 3;
			
		}
		
		nuDisplayError("Access Denied..");
		
		return 4;
		
	}
	
}

function nuSubformObject($id){

	if($id == ''){
		$id	= 'nuBuilder4Form';
	}
	
	$sfs	= $_POST['nuHash']['nuFORMdata'];
	
	for($i = 0 ; $i < count($sfs) ; $i++){
		
		if($sfs[$i]->id == $id){
			return $sfs[$i];
		}
		
	}
	
	return false;
	
}


function nuDeleteForm($f){
	
	$s		= "DELETE FROM zzzzsys_browse WHERE sbr_zzzzsys_form_id = ? ";
	$t		= nuRunQuery($s, [$f]);
	$s		= "DELETE FROM zzzzsys_tab WHERE syt_zzzzsys_form_id = ? ";
	$t		= nuRunQuery($s, [$f]);
	$s		= "DELETE FROM zzzzsys_php WHERE zzzzsys_php_id LIKE CONCAT(?, '_') ";
	$t		= nuRunQuery($s, [$f]);
	$s		= "DELETE FROM zzzzsys_object WHERE sob_all_type = 'run' AND sob_run_zzzzsys_form_id = ? ";
	$t		= nuRunQuery($s, [$f]);
	$s		= "SELECT * FROM zzzzsys_object WHERE sob_all_zzzzsys_form_id = ? ";
	$t		= nuRunQuery($s);

	while($r = db_fetch_object($t)){
		
		$i	= $r->zzzzsys_object;
		$s	= "DELETE FROM zzzzsys_event WHERE sev_zzzzsys_object_id = ? ";
		$t	= nuRunQuery($s, [$i]);
		$s	= "DELETE FROM zzzzsys_php WHERE zzzzsys_php_id  LIKE CONCAT(?, '_')";
		$t	= nuRunQuery($s, [$i]);

	}

	$s		= "DELETE FROM zzzzsys_object WHERE sob_all_type = 'run' AND sob_run_zzzzsys_form_id = ? ";
	$t		= nuRunQuery($s, [$f]);
	
}


?>