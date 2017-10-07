<?php 
session_start();
require_once('nusystemupdate.php'); 
require_once('nucommon.php'); 
require_once('nudata.php'); 

$jsonID					= $_GET['i'];
$J						= nuGetJSONData($jsonID);

if($J != 'valid'){
	
	print 'not ok';	
	return;
	
}

nuRenameAndDeleteSystemFiles();
nuImportSystemFiles();
nuUpdateSystemRecords();
nuRemoveNuRecords();
nuAppendToSystemTables();

print '<br>All Done!<br><br>';


?>