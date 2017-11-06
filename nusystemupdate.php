<?php 
session_start();
require_once('nucommon.php'); 
require_once('nudata.php'); 

$jsonID					= $_GET['i'];
$J						= nuGetJSONData($jsonID);

if($J != 'valid'){
	
	print "Something's wrong. Try logging in again...";	
	return;
	
}

print '<br>Merge current data with new system tables<br>==================================================<br><br>';

nuCopySystemFiles();
nuImportSystemFiles();
nuAddNewSystemTables();
nuUpdateSystemRecords();
nuRemoveNuRecords();
nuJustNuRecords();
nuAppendToSystemTables();

print '<br>All Done!<br><br>';



function nuCopySystemFiles(){
    
    $t      	= nuSystemList();

    print '<br>Copy SYSTEM FILES to TEMP FILES<br>--------------------------------------------------<br>';

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
	
	print "Done!<br><br>";
    
}



function nuImportSystemFiles(){

    print '<br>Import new SYSTEM FILES (nubuilder4.sql)<br>--------------------------------------------------<br>';

	try{

		$file						= realpath(dirname(__FILE__))."/nubuilder4.sql";
		@$handle					= fopen($file, "r");
		$temp						= "";

		if($handle){

			nuRunQuery("DROP TABLE IF EXISTS zzzzsys_debug");
			
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
				
			print "Done!<br><br>";

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

    print "<br>Update TEMP FILE table structure's to SYSTEM FILES<br>--------------------------------------------------<br>";

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
				print "<BR>$sql<BR><BR><br>";
				
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

	print "Done!<br><br>";

	
}


function nuAddNewSystemTables(){
	
    print '<br>Copy SYSTEM FILES to TEMP FILES for any new tables added from the import.<br>--------------------------------------------------<br>';

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
	
	print "Done!<br><br>";

}


function nuJustNuRecords(){
    
    print '<br>Remove all ids not starting with nu from SYSTEM FILES<br>--------------------------------------------------<br>';

    $s  =  "DELETE FROM zzzzsys_event WHERE zzzzsys_event_id NOT LIKE 'nu%'"; 															
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM zzzzsys_file WHERE zzzzsys_file_id NOT LIKE 'nu%'"; 															
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM zzzzsys_format WHERE zzzzsys_format_id NOT LIKE 'nu%'"; 															
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM zzzzsys_php WHERE sph_zzzzsys_form_id NOT LIKE 'nu%' AND zzzzsys_php_id NOT LIKE 'nu%' ";  		  				//-- delete records that start with ids starting with 'nu' or linked to forms starting with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM zzzzsys_setup";
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM zzzzsys_tab WHERE  syt_zzzzsys_form_id NOT LIKE 'nu%' OR syt_zzzzsys_form_id = 'nuuserhome'"; 															//-- delete tabs with forms starting with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    print 'Done!<br><br>';
    
}



function nuRemoveNuRecords(){
    
    print '<br>Remove all ids starting with nu from TEMP FILES<br>--------------------------------------------------<br>';

	$O	= nuTT();
	
    
    $s  =  "DELETE FROM sys_zzzzsys_event WHERE zzzzsys_event_id LIKE 'nu%'";   				 										//-- delete if attached to objects on forms with ids starting with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM sys_zzzzsys_file WHERE zzzzsys_file_id LIKE 'nu%'"; 															
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM sys_zzzzsys_format WHERE zzzzsys_format_id LIKE 'nu%'"; 															
    nuRunQuery($s);
    print "$s<br>";

    $s  =  "DELETE FROM sys_zzzzsys_object WHERE sob_all_zzzzsys_form_id LIKE 'nu%'  AND sob_all_zzzzsys_form_id != 'nuuserhome'";   	//-- delete all objects on forms with ids that start with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM sys_zzzzsys_tab WHERE syt_zzzzsys_form_id LIKE 'nu%' AND syt_zzzzsys_form_id != 'nuuserhome'"; 					//-- delete tabs with forms starting with 'nu'
    nuRunQuery($s);
    print "$s<br><br>";
	
    $s  =  "DELETE FROM sys_zzzzsys_form WHERE zzzzsys_form_id LIKE 'nu%' ";    														//-- delete all forms with ids that start with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM sys_zzzzsys_php WHERE sph_zzzzsys_form_id LIKE 'nu%' OR zzzzsys_php_id LIKE 'nu%' ";  		  					//-- delete records that start with ids starting with 'nu' or linked to forms starting with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM sys_zzzzsys_browse WHERE sbr_zzzzsys_form_id LIKE 'nu%'";  					  									//-- KEEP BROWSEs from FORMs with ids that start with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    $s  =  "DELETE FROM sys_zzzzsys_timezone";									   				 										//-- delete if attached to objects on forms with ids starting with 'nu'
    nuRunQuery($s);
    print "$s<br>";
    
    print 'Done!<br><br>';
    
}


function nuAppendToSystemTables(){

    print '<br>Insert TEMP FILES into SYSTEM FILES<br>--------------------------------------------------<br>';

	try{

		$t      	= nuSystemList();
		
		for($i = 0 ; $i < count($t) ; $i++){
			
			$table  = $t[$i];

			$s		= "INSERT INTO $table SELECT * FROM sys_$table";
			nuRunQuery($s);
			print "$s<br>";

			$s		= "DROP TABLE sys_$table";
			nuRunQuery($s);
			print "$s<br>";
			
		}

		$s		= "DROP TABLE sys_zzzzsys_report_data";
		nuRunQuery($s);
		print "$s<br>";
		
		$s		= "DROP TABLE sys_zzzzsys_run_list";
		nuRunQuery($s);
		print "$s<br>";
		
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