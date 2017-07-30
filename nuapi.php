<?php
	header("Content-Type: application/json");
	header("Cache-Control: no-cache, must-revalidate");
    require_once('nusession.php');
	require_once('nucommon.php');
	require_once('nuform.php');
	require_once('nudata.php');
    require_once('nudrag.php');
		
	$_POST['nuCounter']						= rand(0, 999);
	$_POST['nuErrors']						= array();
	$_POST['nuMessages']					= array();
	$U										= nuGetUserAccess();
	$formAndSessionData						= nuGatherFormAndSessionData($U['HOME_ID']);
    $_POST['nuTableSchema']                 = $formAndSessionData->tableSchema;
	$F										= $formAndSessionData->form_id;
	$R										= $formAndSessionData->record_id;
	$P										= $_POST['nuSTATE'];
	
	$_POST['FORM_ID'] 						= $F;
	$_POST['nuHash']						= array_merge($U, nuSetHashList($P));
	$_POST['nuHash']['PREVIOUS_RECORD_ID'] 	= $R;
	$_POST['nuHash']['RECORD_ID'] 			= $R;
	$_POST['nuHash']['FORM_ID'] 			= $F;
	$_POST['nuHash']['nuFORMdata']			= json_decode(json_encode($_POST['nuSTATE']['nuFORMdata']));
	$_POST['nuHash']['TABLE_ID'] 			= nuTT();
	$_POST['nuHash']['SESSION_ID'] 			= $_SESSION['SESSION_ID'];
	$_POST['nuHash']['data']				= $_POST['nuSTATE']['data'];
	$_POST['nuValidate']					= array();

	$CT										= $P['call_type'];
	$f->forms[0]							= new stdClass;

    if(count($formAndSessionData->errors) == 0){
		
    	if($CT == 'login')			{nuBeforeEdit($F, $R);$f->forms[0] 	= nuGetFormObject($F, $R, 0, $P);}
    	if($CT == 'getform')		{nuBeforeEdit($F, $R);$f->forms[0] 	= nuGetFormObject($F, $R, 0, $P);}
    	if($CT == 'getphp')			{nuBeforeEdit($F, $R);$f->forms[0] 	= nuGetFormObject($F, $R, 0, $P);}
    	if($CT == 'getreport')		{nuBeforeEdit($F, $R);$f->forms[0] 	= nuGetFormObject($F, $R, 0, $P);}
    	if($CT == 'update')			{$f->forms[0]->record_id			= nuUpdateData(); nuUpdateTables();}
    	if($CT == 'getlookupid')	{$f->forms[0]->lookup_values 		= nuGetAllLookupValues();}
    	if($CT == 'getlookupcode')	{$f->forms[0]->lookup_values 		= nuGetAllLookupList();}
    	if($CT == 'runhiddenphp')	{$f->forms[0]->id					= nuRunPHPHidden($R);}
    	if($CT == 'runphp')			{$f->forms[0]						= nuRunPHP($F, $R);}
    	if($CT == 'runreport')		{$f->forms[0]						= nuRunReport($F, $R);}
    	if($CT == 'runhtml')		{$f->forms[0]->id					= nuRunHTML();}
        if($CT == 'nudragsave')		{$f->forms[0]						= nuDragSave($P);}
		
    }

	$f->forms[0]->user_id					= $U['USER_ID'];
	$f->forms[0]->dimensions				= $formAndSessionData->dimensions;
	$f->forms[0]->tableSchema				= $formAndSessionData->tableSchema;
	$f->forms[0]->formSchema				= $formAndSessionData->formSchema;
	$f->forms[0]->translation				= $formAndSessionData->translation;
	$f->forms[0]->session_id				= $_SESSION['SESSION_ID'];
	$f->forms[0]->errors					= $_POST['nuErrors'];
	$f->forms[0]->messages					= $_POST['nuMessages'];
	$f->forms[0]->log_again				    = $_POST['nuLogAgain'];
	$f->forms[0]->global_access				= $_POST['nuHash']['global_access'];
	$f->forms[0]->form_access				= $GLOBALS['nuSetup']->set_denied;
	$f->forms[0]->javascript				= $GLOBALS['EXTRAJS'];
	$f->forms[0]->target					= $P['target'];

	$b										= nuButtons($F, $P);
	
	$f->forms[0]->buttons					= $b[0];
	$f->forms[0]->run_code					= $b[1];
	$f->forms[0]->run_description			= $b[2];

	$j								    	= json_encode($f->forms[0]);
	
	print $j;
	
?>