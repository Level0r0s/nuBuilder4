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
	$_POST['nuTableSchema']					= nuTableSchema();
	$s										= nuCheckSession();
	$P										= $_POST['nuSTATE'];
	//$_POST['nuHash']						= nuSetHashList($P);
	$u										= nuGetUserAccess();

	$_POST['FORM_ID'] 						= $s->form_id;
	$_POST['nuHash']						= array_merge($u, nuSetHashList($P));
	$_POST['nuHash']['PREVIOUS_RECORD_ID'] 	= $s->record_id;
	$_POST['nuHash']['RECORD_ID'] 			= $s->record_id;
	$_POST['nuHash']['FORM_ID'] 			= $s->form_id;
	$_POST['nuHash']['nuFORMdata']			= json_decode(json_encode($_POST['nuSTATE']['nuFORMdata']));
	$_POST['nuHash']['TABLE_ID'] 			= nuTT();
	$_POST['nuHash']['SESSION_ID'] 			= $s->session_id;
	$_POST['nuHash']['data']				= $_POST['nuSTATE']['data'];
	$_POST['nuValidate']					= array();

	$CT										= $P['call_type'];
	$f->forms[0]							= new stdClass;

	if($CT == 'getform')		{nuBeforeEdit($s->form_id, $s->record_id);}

	if($CT == 'getform')		{$f->forms[0] 					= nuGetFormObject($s->form_id, $s->record_id, 0, $P);}
	if($CT == 'getphp')			{$f->forms[0] 					= nuGetFormObject($s->form_id, $s->record_id, 0, $P);}
	if($CT == 'getreport')		{$f->forms[0] 					= nuGetFormObject($s->form_id, $s->record_id, 0, $P);}
	
	if($CT == 'update')			{$f->forms[0]->record_id		= nuUpdateData();nuUpdateTables();}
	if($CT == 'getlookupid')	{$f->forms[0]->lookup_values 	= nuGetAllLookupValues();}
	if($CT == 'getlookupcode')	{$f->forms[0]->lookup_values 	= nuGetAllLookupList();}
	if($CT == 'runphp')			{$f->forms[0]->id				= nuRunPHP($s->form_id);}
	if($CT == 'runreport')		{$f->forms[0]->id				= nuRunReport($s->form_id);}
	if($CT == 'runhtml')		{$f->forms[0]->id				= nuRunHTML();}
    if($CT == 'nudragsave')		{$f->forms[0]					= nuDragSave($P);}

	$f->forms[0]->user_id					= $u['USER_ID'];
	$f->forms[0]->dimensions				= $s->dimensions;
	$f->forms[0]->tableSchema				= $s->tableSchema;
	$f->forms[0]->formSchema				= $s->formSchema;
	$f->forms[0]->translation				= $s->translation;
	$f->forms[0]->session_id				= $_SESSION['SESSIONID'];
	$f->forms[0]->errors					= $_POST['nuErrors'];
	$f->forms[0]->log_again				    = $_POST['nuLogAgain'];
	$f->forms[0]->global_access				= $_POST['nuHash']['global_access'];
	$f->forms[0]->target					= $P['target'];
	$f->forms[0]->javascript				= $GLOBALS['EXTRAJS'];
	$f->forms[0]->buttons					= nuButtons($F, $P);

	$j								    	= json_encode($f->forms[0]);
	
	print $j;
	
?>