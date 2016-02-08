<?php
	header("Content-Type: application/json");
	header("Cache-Control: no-cache, must-revalidate");
	require_once('nucommon.php');
	require_once('nuformobject.php');

	$_POST['nuErrors']			= array();
	$s							= nuCheckSession();
	
	if(count($_POST['nuErrors']) > 0){
		
		$f->forms[]				= new stdClass;
		$f->forms[0]->errors		= $_POST['nuErrors'];
		
	}else{
		
		$P						= $_POST['nuSTATE'];
		$f						= new stdClass;
		
		if($P['call_type'] == 'getlookup'){
			
			$f->forms[]				= nuGetLookupValues();
		
		}
	
		if($P['call_type'] == 'getform'){
			
			$f->forms[]				= nuGetFormObject($s->form_id, $s->record_id, 0, $P);
			$f->forms[0]->dimensions	= $s->dimensions;
			
		}

		$f->forms[0]->session_id		= $s->session_id;
		$f->forms[0]->errors			= $_POST['nuErrors'];
		$f->forms[0]->log_again		= $_POST['nuLogAgain'];
		$j							= json_encode($f);
		
		print $j;
		
	}

?>