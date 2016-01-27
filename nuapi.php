<?php
header("Content-Type: application/json");
header("Cache-Control: no-cache, must-revalidate");
require_once('nucommon.php');
require_once('nuformobject.php');

	$P				= $_POST['nuSTATE'];
	$f				= new stdClass();
//	$f->forms[]       = nuGetFormObject('56773cb405f4913', '5678d262e048faa');
	$f->forms[]		= nuGetFormObject($P['form_id'], $P['record_id'], 0);
	nuDebug(json_encode($f->forms[0]));

	$j				= json_encode($f);
	
	print $j;

?>