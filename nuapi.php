<?php
	header("Content-Type: application/json");
	header("Cache-Control: no-cache, must-revalidate");
	require_once('nucommon.php');
	require_once('nuformobject.php');

	$P				= $_POST['nuSTATE'];
	$f				= new stdClass();
	$f->forms[]		= nuGetFormObject($P['form_id'], $P['record_id'], 0, $P);

	$j				= json_encode($f);
	
	print $j;

?>