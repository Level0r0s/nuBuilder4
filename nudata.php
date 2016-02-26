<?php

function nuUpdateData(){
	
	$d	= $_POST['nuSTATE']['data'];
	
	for($i = 0 ; $i < count($d) ; $i++){
		if($d[$i]->pk == '-1'){
			$d[$i]->pk	= nuID();
		}
	}
	
	
	for($i = 0 ; $i < count($d) ; $i++){
		if($d[$i]->fk == ''){
			nudebug($d[$i]->fk .'--'.print_r($d[$i], 1));
			$d[$i]->fk	= nuGetPrimaryKey($d[$i]->p);
		}
	}
	
	nuDebug(print_r($d, 1));
	
}

function nuGetPrimaryKey($h){
	
	$d	= $_POST['nuSTATE']['data'];
	
	for($i = 0 ; $i < count($d) ; $i++){
		if($d[$i]->h == $h){
			return $d[$i]->pk;
		}
	}
	return '';
	
}

?>