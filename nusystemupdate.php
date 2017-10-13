<?php 

function nuRunSystemUpdate(){
	
	$i					= nuID();
	
	nuSetJSONData($i, 'valid');
	
	return $i;
	
}


function nuRenameAndDeleteSystemFiles(){
    
    $t      	= nuSystemList();

	$sql		= "DROP VIEW IF EXISTS zzzzsys_report_data";
	nuRunQuery($sql);
	print "$sql<br>";

	$sql		= "DROP VIEW IF EXISTS zzzzsys_run_list";
	nuRunQuery($sql);
	print "$sql<br>";

    for($i = 0 ; $i < count($t) ; $i++){
        
        $table  = $t[$i];

		$sql	= "DROP TABLE IF EXISTS sys_$table";
        nuRunQuery($sql);
		print "$sql<br>";

		$sql	= "CREATE TABLE sys_$table SELECT * FROM $table";
        nuRunQuery($sql);
		print "$sql<br>";
		
		if($table != 'zzzzsys_debug'){

			$sql= "DROP TABLE IF EXISTS $table";
			nuRunQuery($sql);
			print "$sql<br>";
			
		}
        
    }
	
    print '<br>All zzzzsys_ files copied to sys_zzzzsys_ !<br><br>';
    
}



function nuImportSystemFiles(){

//	nuRunQuery("DROP TABLE IF EXISTS zzzzsys_debug");

	try{

		$file						= realpath(dirname(__FILE__))."/nubuilder4.sql";
		@$handle					= fopen($file, "r");
		$temp						= "";

		if($handle){

			while(($line = fgets($handle)) !== false){

				if($line[0] != "-" AND $line[0] != "/"  AND $line[0] != "\n"){
				
					$line 			= trim($line);

					$temp 			.= $line;

					if(substr($line, -1) == ";"){

							$temp	= rtrim($temp,';');
							nuRunQuery($temp);
							$temp	= "";
							
					}

				}

			}
				
			print "<br>nubuilder4.sql imported!<br><br>";

		}else{
			throw new nuInstallException("error opening the file: $file");
		}

	}catch (Throwable $e) {
		nuInstallException($e);
	}catch (Exception $e) {
		nuInstallException($e);
	}

}


function nuInstallException($e){

	$ce		= $_POST['nuProcedureEval'];
	$se		= $_POST['nuSystemEval'];
	
	print "$ce $se<br>" . $e->getFile() .'<i>' . $e->getMessage() . '</i>' . '<br><b><i>Traced from...</i></b><br>';
	
	$a		= $e->getTrace();
	$t		= array_reverse($a);

	for($i = 0 ; $i < count($t) ; $i++){
		
		$m	= '(line:<i>' . $t[$i]['line'] . '</i>) ' . $t[$i]['file'] . ' <b> - ' . $t[$i]['function'] . '<b>';
		
		print $m . '<br>';
		
	}

}



function nuUpdateSystemRecords(){									//-- after zzzzsys files have been imported

	nuAddNewSystemTables();
	
	$ts				= nuBuildTableSchema();
	$t				= nuListSystemTables();

    for($i = 0 ; $i < count($t) ; $i++){
        
        $table  	= $t[$i];
		$new		= $ts["$table"]['names'];
		$old		= $ts["sys_$table"]['names'];
		
		for($c = 0 ; $c < count($old) ; $c++){						//-- remove unused fields from old
			
			$field	= $old[$c];
			
			if(!in_array($field, $new)){
				
				$sql= "ALTER TABLE sys_$table DROP COLUMN $field";
				nuRunQuery($sql);
				print "$sql<br>";
				
			}
			
		}
		
	}
	
	$ts				= nuBuildTableSchema();

	for($i = 0 ; $i < count($t) ; $i++){
        
		$table  	= $t[$i];
		$lfield		= 'FIRST';
		
		for($c = 0 ; $c < count($new) ; $c++){						//-- insert extra new fields into old

			$new	= $ts["$table"]['names'];
			$newt	= $ts["$table"]['types'];
			$old	= $ts["sys_$table"]['names'];
			$oldt	= $ts["sys_$table"]['types'];
			$ofield	= $old[$c];
			$nfield	= $new[$c];
			$otype	= $oldt[$c];
			$ntype	= $newt[$c];

			if($ofield != $nfield){
				
				$sql= "ALTER TABLE sys_$table ADD COLUMN $nfield $ntype $lfield";
				nuRunQuery($sql);
				print "$sql<br>";
				$ts	= nuBuildTableSchema();
				$c	= -1;											//-- start from the beginning again
				
			}else if($otype != $ntype){
				
				$sql= "ALTER TABLE sys_$table MODIFY COLUMN $nfield $ntype";
				nuRunQuery($sql);
				print "$sql<br>";
				
			}
			
			if($ofield == ''){
				$lfield	= '';
			}else{
				$lfield	= "AFTER $ofield";
			}
			
		}
		
	}
	
}


function nuAddNewSystemTables(){
	
	$ts			= nuBuildTableSchema();

	foreach ($ts as $k => $v) {

		if(substr($k,0,8) == 'zzzzsys_'){
			
			$v	= $ts["sys_$k"]['valid'];
			
			if($v == ''){
				
				$sql	= "CREATE TABLE sys_$k SELECT * FROM $k";
				nuRunQuery($sql);
				print "$sql<br>";
				
			}
			
		}
		
	}
	
}


function nuJustNuRecords(){
    
	$O	= nuTT();
	
    $s  =  "CREATE TABLE $O SELECT zzzzsys_object_id FROM sys_zzzzsys_object WHERE sob_all_zzzzsys_form_id NOT LIKE 'nu%' ";   		//-- create table with form ids that start with 'nu'
    nuRunQuery($s);
    print "$s<br>";
	
    $s  =  "DELETE FROM zzzzsys_form WHERE zzzzsys_form_id NOT LIKE 'nu%' ";    												//-- delete all forms with ids that start with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM zzzzsys_tab WHERE syt_zzzzsys_form_id NOT LIKE 'nu%'";    												//-- delete tabs with forms starting with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM zzzzsys_object WHERE sob_all_zzzzsys_form_id NOT LIKE 'nu%'";    										//-- delete records that have form ids starting with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM zzzzsys_php WHERE sph_zzzzsys_form_id NOT LIKE 'nu%' AND zzzzsys_php_id NOT LIKE 'nu%' ";    				//-- delete records that start with ids starting with 'nu' or linked to forms starting with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM zzzzsys_browse WHERE sbr_zzzzsys_form_id NOT LIKE 'nu%'";  					  							//-- KEEP BROWSEs from FORMs with ids that start with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM zzzzsys_event WHERE sev_zzzzsys_object_id IN (SELECT * FROM $O)";    								//-- delete if attached to objects on forms with ids starting with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    print 'Done!<br><br>';
    
}



function nuRemoveNuRecords(){
    
	$O	= nuTT();
	
    $s  =  "DELETE FROM sys_zzzzsys_object WHERE sob_all_zzzzsys_form_id LIKE 'nu%' ";   										//-- delete all objects on forms with ids that start with 'nu'
    nuRunQuery($s);
    print "$s<br>";
	
    $s  =  "DELETE FROM sys_zzzzsys_form WHERE zzzzsys_form_id LIKE 'nu%' ";    												//-- delete all forms with ids that start with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM sys_zzzzsys_tab WHERE syt_zzzzsys_form_id LIKE 'nu%'";    												//-- delete tabs with forms starting with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM sys_zzzzsys_php WHERE sph_zzzzsys_form_id LIKE 'nu%' OR zzzzsys_php_id LIKE 'nu%' ";    				//-- delete records that start with ids starting with 'nu' or linked to forms starting with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM sys_zzzzsys_browse WHERE sbr_zzzzsys_form_id LIKE 'nu%'";  					  							//-- KEEP BROWSEs from FORMs with ids that start with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM sys_zzzzsys_event WHERE zzzzsys_event_id LIKE 'nu%'";   				 								//-- delete if attached to objects on forms with ids starting with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    print 'Done!<br><br>';
    
}


function nuAppendToSystemTables(){


	try{

		
		$t      	= nuSystemList();
		
		for($i = 0 ; $i < count($t) ; $i++){
			
			$table  = $t[$i];
			$sql	= "INSERT INTO $table SELECT * FROM sys_$table";
			
			nuRunQuery($sql);
			print "$sql<br>";
			
		}
		
		print '<br>Appended to system tables!<br>';
    

	}catch (Throwable $e) {
		nuInstallException($e);
	}catch (Exception $e) {
		nuInstallException($e);
	}
	
}


function nuSystemList(){
	
    $t      = [];
    
    $t[]	= 'zzzzsys_access';
    $t[]	= 'zzzzsys_access_form';
    $t[]	= 'zzzzsys_access_php';
    $t[]	= 'zzzzsys_access_report';
    $t[]	= 'zzzzsys_browse';
    $t[]	= 'zzzzsys_debug';
    $t[]	= 'zzzzsys_event';
    $t[]	= 'zzzzsys_file';
    $t[]	= 'zzzzsys_form';
    $t[]	= 'zzzzsys_format';
    $t[]	= 'zzzzsys_object';
//    $t[]	= 'zzzzsys_phinxlog';
    $t[]	= 'zzzzsys_php';
    $t[]	= 'zzzzsys_report';
    $t[]	= 'zzzzsys_select';
    $t[]	= 'zzzzsys_select_clause';
    $t[]	= 'zzzzsys_session';
    $t[]	= 'zzzzsys_setup';
    $t[]	= 'zzzzsys_tab';
    $t[]	= 'zzzzsys_table';
    $t[]	= 'zzzzsys_timezone';
    $t[]	= 'zzzzsys_translate';
    $t[]	= 'zzzzsys_user';
	
    return $t;
    
}


?>