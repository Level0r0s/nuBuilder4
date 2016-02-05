<?php
	header("Content-Type: application/json");
	header("Cache-Control: no-cache, must-revalidate");
	require_once('nucommon.php');
	require_once('nuformobject.php');

	$s							= nuCheckSession();
	$_POST['nuErrors']			= array();
	
	if(count($_POST['nuErrors']) > 0){
		
		$f						= new stdClass;
		$f->forms[]				= new stdClass;
		$f->forms[0]->errors		= $_POST['nuErrors'];
		$j						= json_encode($f);
		print $j;
		return;
		
	}else{
	
	$P							= $_POST['nuSTATE'];
	$P['form_id']					= $s->form_id;
	$P['record_id']				= $s->record_id;
	$P['session_id']				= $s->session_id;

	$f							= new stdClass;
	$f->forms[]					= nuGetFormObject($P['form_id'], $P['record_id'], 0, $P);
	$f->forms[0]->session_id		= $s->session_id;
	$f->forms[0]->dimensions		= $s->dimensions;
	$f->forms[0]->errors			= $_POST['nuErrors'];
	
	$j							= json_encode($f);
	
	print $j;
	
	}

?>