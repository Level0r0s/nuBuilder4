<?php
	header("Content-Type: application/json");
	header("Cache-Control: no-cache, must-revalidate");
	require_once('nucommon.php');
	require_once('nuform.php');
	require_once('nudata.php');
    require_once('nudrag.php');
	
	if(!isset($_SESSION['SESSIONID'])){
		$_SESSION['SESSIONID'] 				= nuID();
	}
	
	
	$_POST['nuErrors']						= array();
	$s										= nuCheckSession();
	$P										= $_POST['nuSTATE'];
	$_POST['nuHash']						= nuSetHashList($P);
	$u										= nuGetUserAccess();
	$_POST['nuHash']						= array_merge($u, $_POST['nuHash']);
	$_POST['nuHash']['PREVIOUS_RECORD_ID'] 	= $s->record_id;
	$_POST['nuHash']['RECORD_ID'] 			= $s->record_id;
	$_POST['nuHash']['FORM_ID'] 			= $s->form_id;
	$_POST['nuHash']['TABLE_ID'] 			= nuTT();
	$_POST['nuHash']['SESSION_ID'] 			= $s->session_id;
	$_POST['nuValidate']					= array();

	$f->forms[0]							= new stdClass;

	if($P['call_type'] == 'getform')		{nuBeforeOpen($s->form_id, $s->record_id);$f->forms[0] = nuGetFormObject($s->form_id, $s->record_id, 0, $P);}
	if($P['call_type'] == 'update')			{$f->forms[0]->record_id		= nuUpdateData();}
	if($P['call_type'] == 'getlookupid')	{$f->forms[0]->lookup_values 	= nuGetAllLookupValues();}
	if($P['call_type'] == 'getlookupcode')	{$f->forms[0]->lookup_values 	= nuGetAllLookupList();}
	if($P['call_type'] == 'getphp')			{$f->forms[0] 					= nuGetFormObject($s->form_id, $s->record_id, 0, $P); nuSetupButtons($f, 'PHP');}
	if($P['call_type'] == 'getreport')		{$f->forms[0] 					= nuGetFormObject($s->form_id, $s->record_id, 0, $P); nuSetupButtons($f, 'Report');}
	if($P['call_type'] == 'runphp')			{$f->forms[0]->id				= nuRunPHP($s->form_id);}
	if($P['call_type'] == 'runreport')		{$f->forms[0]->id				= nuRunReport($s->form_id);}
	if($P['call_type'] == 'runhtml')		{$f->forms[0]->id				= nuRunHTML();}
    if($P['call_type'] == 'nudragsave')		{$f->forms[0]					= nuDragSave($P);}

	$f->forms[0]->user_id					= $u['USER_ID'];
	$f->forms[0]->dimensions				= $s->dimensions;
	$f->forms[0]->schema					= $s->schema;
	$f->forms[0]->translation				= $s->translation;
	$f->forms[0]->session_id				= $_SESSION['SESSIONID'];
	$f->forms[0]->errors					= $_POST['nuErrors'];
	$f->forms[0]->log_again				    = $_POST['nuLogAgain'];
	$f->forms[0]->target					= $P['target'];
	$f->forms[0]->global_access				= $_POST['nuHash']['global_access'];
	$f->forms[0]->javascript				= $GLOBALS['EXTRAJS'];

	$j								    	= json_encode($f->forms[0]);
//  nudebug($j);
//	print ;
print $j;
	
	
?>