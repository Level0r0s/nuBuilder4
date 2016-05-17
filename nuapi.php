<?php
	header("Content-Type: application/json");
	header("Cache-Control: no-cache, must-revalidate");
	require_once('nucommon.php');
	require_once('nuform.php');
	require_once('nudata.php');

	$_POST['nuErrors']					= array();
	$f->forms[0]							= new stdClass;
	$s									= nuCheckSession();
	$P									= $_POST['nuSTATE'];
	$_POST['hash']						= nuSetHashList($P['hash']);

	if($P['call_type'] == 'getlookupid')	{$f->forms[0]->lookup_values 	= nuGetAllLookupValues();}
	if($P['call_type'] == 'getlookupcode')	{$f->forms[0]->lookup_values 	= nuGetAllLookupList();}
	if($P['call_type'] == 'getform')		{$f->forms[0] 				= nuGetFormObject($s->form_id, $s->record_id, 0, $P);}
	if($P['call_type'] == 'update')		{$f->forms[0]->record_id		= nuUpdateData();}

	$f->forms[0]->dimensions				= $s->dimensions;
	$f->forms[0]->session_id				= $s->session_id;
	$f->forms[0]->errors					= $_POST['nuErrors'];
	$f->forms[0]->log_again				= $_POST['nuLogAgain'];
	$f->forms[0]->target					= $P['target'];
	$j									= json_encode($f->forms[0]);

	print $j;

?>