<?php
	header("Content-Type: application/json");
	header("Cache-Control: no-cache, must-revalidate");
	require_once('nucommon.php');
	require_once('nuform.php');
	require_once('nudata.php');
    require_once('nudrag.php');

	$P									= $_POST['nuSTATE'];
	$_POST['nuHash']						= nuSetHashList($P['hash']);
	$_POST['nuValidate']					= array();
	$_POST['nuErrors']					= array();
	$_POST['forms']						= array();  //
	$_POST['reports']						= array();  // -- level access
	$_POST['procedures']					= array();  //
	$f->forms[0]							= new stdClass;
	$s									= nuCheckSession();
	
	$_POST['nuHash']['PREVIOUS_RECORD_ID'] 	= $s->record_id;
	$_POST['nuHash']['RECORD_ID'] 			= $s->record_id;
	$_POST['nuHash']['FORM_ID'] 			= $s->form_id;

	if($P['call_type'] == 'getlookupid')	{$f->forms[0]->lookup_values 			= nuGetAllLookupValues();}
	if($P['call_type'] == 'getlookupcode')	{$f->forms[0]->lookup_values 			= nuGetAllLookupList();}
	if($P['call_type'] == 'getform')		{nuBeforeOpen($s->form_id, $s->record_id);$f->forms[0] = nuGetFormObject($s->form_id, $s->record_id, 0, $P);}
	if($P['call_type'] == 'runreport')		{$f->forms[0] = nuGetFormObject($s->form_id, $s->record_id, 0, $P);}
	if($P['call_type'] == 'update')		{$f->forms[0]->record_id				= nuUpdateData();}
    if($P['call_type'] == 'nudragsave')		{$f->forms[0]							= nuDragSave($P);}

	$f->forms[0]->dimensions				= $s->dimensions;
	$f->forms[0]->schema					= $s->schema;
	$f->forms[0]->session_id				= $s->session_id;
	$f->forms[0]->errors					= $_POST['nuErrors'];
	$f->forms[0]->log_again			    = $_POST['nuLogAgain'];
	$f->forms[0]->target					= $P['target'];
	$j								    = json_encode($f->forms[0]);

	print $j;

?>