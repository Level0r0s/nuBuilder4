<?php
	header("Content-Type: application/json");
	header("Cache-Control: no-cache, must-revalidate");
	require_once('nucommon.php');
	require_once('nuformobject.php');

	$P						= $_POST['nuSTATE'];
	$f						= new stdClass();
	
	$s						= nuCheckSession();
	$P['form_id']				= $s->form_id;
	$P['record_id']			= $s->record_id;
	$P['session_id']			= $s->session_id;

	$f->forms[]				= nuGetFormObject($P['form_id'], $P['record_id'], 0, $P);

	$f->forms[0]->session_id	= $s->session_id;
	$f->forms[0]->dimensions	= $s->dimensions;
	$j						= json_encode($f);
	
	print $j;

?>