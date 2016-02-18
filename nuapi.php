<?php
	header("Content-Type: application/json");
	header("Cache-Control: no-cache, must-revalidate");
	require_once('nucommon.php');
	require_once('nuformobject.php');

	$_POST['nuErrors']					= array();
	$f->forms[0]							= new stdClass;
	$s									= nuCheckSession();
	
	$P									= $_POST['nuSTATE'];
		
	if($P['call_type'] == 'getlookupid')	{$f->forms[0]->lookup_values 	= nuGetAllLookupValues();}
	if($P['call_type'] == 'getlookupcode')	{$f->forms[0]->lookup_values 	= nuGetAllLookupList();}
	if($P['call_type'] == 'getform')		{$f->forms[0] 				= nuGetFormObject($s->form_id, $s->record_id, 0, $P);}

	$f->forms[0]->dimensions				= $s->dimensions;
	$f->forms[0]->session_id				= $s->session_id;
	$f->forms[0]->errors					= $_POST['nuErrors'];
	$f->forms[0]->log_again				= $_POST['nuLogAgain'];
	$f->forms[0]->target					= $P['target'];
	$j									= json_encode($f);
	
	print $j;
/*		
	w.call_type	= 'getlookupcode';
	w.object_id	= t.attr('data-nu-object-id');
	w.code		= t.value;
*/
?>