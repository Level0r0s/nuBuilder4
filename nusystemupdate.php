<?php 

function nuRunSystemUpdate(){
	
	$i					= nuID();
	
	nuSetJSONData($i, 'valid');
	
	return $i;
	
}


function nuRenameAndDeleteSystemFiles(){
    
    $t      	= nuSystemList();

	nuRunQuery("DROP VIEW IF EXISTS zzzzsys_report_data");
	nuRunQuery("DROP VIEW IF EXISTS zzzzsys_run_list");

    for($i = 0 ; $i < count($t) ; $i++){
        
        print "$table<br>";
        
        $table  = $t[$i];
        
        nuRunQuery("DROP TABLE IF EXISTS sys_$table");
        nuRunQuery("CREATE TABLE sys_$table SELECT * FROM $table");
		
		if($table != 'zzzzsys_debug'){
			nuRunQuery("DROP TABLE IF EXISTS $table");
		}
        
    }
	
    print '<br>All zzzzsys_ files copied to sys_zzzzsys_ !';
    
}



function nuImportSystemFiles(){

	nuRunQuery("DROP TABLE IF EXISTS zzzzsys_debug");

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

		}else{
			throw new nuInstallException("error opening the file: $file");
		}

	}catch (Throwable $e) {
		nuInstallException("error opening the file :: nubuilder4.sql ");
	}catch (Exception $e) {
		nuInstallException("error opening the file :: nubuilder4.sql ");
	}

}


function nuInstallException($a){
	

	
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
			$old	= $ts["sys_$table"]['names'];
			$newt	= $ts["$table"]['types'];
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
	
	nuRemoveNuRecords();
	nuAppendToSystemTables();
	
    print '<br>Done!';
    
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


function nuRemoveNuRecords(){
    
    $s  =  "DELETE FROM sys_zzzzsys_form WHERE zzzzsys_form_id NOT LIKE 'nu%' ";    //-- KEEP FORM with ids that start with 'nu'
    nuRunQuery($s);
    
    $s  =  "DELETE FROM sys_zzzzsys_tab WHERE syt_zzzzsys_form_id NOT IN (SELECT zzzzsys_form_id FROM sys_zzzzsys_form)";    //-- KEEP TABs from FORMs with ids that start with 'nu'
    nuRunQuery($s);
    
    $s  =  "DELETE FROM sys_zzzzsys_object WHERE sob_all_zzzzsys_tab_id NOT IN (SELECT zzzzsys_tab_id FROM sys_zzzzsys_tab)";    //-- KEEP OBJECTs from TABs where FORMs with ids that start with 'nu'
    nuRunQuery($s);
    
    $s  =  "DELETE FROM sys_zzzzsys_php WHERE sph_zzzzsys_form_id NOT LIKE 'nu%' AND sph_zzzzsys_form_id NOT IN (SELECT zzzzsys_object_id FROM sys_zzzzsys_object)";    //-- KEEP PHP with ids that start with 'nu' or match the above OBJECT list.
    nuRunQuery($s);
    
    $s  =  "DELETE FROM sys_zzzzsys_php WHERE sph_zzzzsys_form_id NOT LIKE 'nu%' AND sph_zzzzsys_form_id NOT IN (SELECT zzzzsys_object_id FROM sys_zzzzsys_object)";    //-- ADD PHP_LIBRARY records to PHP that links to ids that start with 'nu'.
    nuRunQuery($s);
    
    $s  =  "DELETE FROM sys_zzzzsys_browse WHERE sbr_zzzzsys_form_id NOT IN (SELECT zzzzsys_form_id FROM sys_zzzzsys_form)";    //-- KEEP BROWSEs from FORMs with ids that start with 'nu'
    nuRunQuery($s);
    
    $s  =  "DELETE FROM sys_zzzzsys_event WHERE sev_zzzzsys_object_id NOT IN (SELECT zzzzsys_object_id FROM sys_zzzzsys_object)";    //-- KEEP EVENTs, from OBJECTs, from FORMs with ids that start with 'nu'
    nuRunQuery($s);
    
    print 'Done!';
    
}


function nuAppendToSystemTables(){
    
    $t      	= nuSystemList();
    
    for($i = 0 ; $i < count($t) ; $i++){
        
        $table  = $t[$i];
        nuRunQuery("INSERT INTO $table SELECT * FROM sys_$table");
        
    }
	
    print '<br>Appended to system tables!<br>';
    
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
    $t[]	= 'zzzzsys_phinxlog';
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