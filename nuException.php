<?php

//==================CLASS=================================================================

function nuException($errorMessage, $errorCode, $exceptionInfo) {
  
	/*
		0 = Any Exception not requiring special action
		1 = PHP exception
	*/
	echo $errorMessage;

	if($errorCode == 1) {
		
		$phpCode = '';
		$line = 0;
		
		for($i = 0; $i < sizeof($exceptionInfo[1]); $i++) {
			
			$eof = $exceptionInfo[1][$i]->start + $exceptionInfo[1][$i]->length;

			if(intval($exceptionInfo[0]->getLine()) <= intval($eof)) {
				
				$phpCode = $exceptionInfo[1][$i]->code;
				$line = $exceptionInfo[0]->getLine() - $exceptionInfo[1][$i]->start;

			}
			
		}
		
		echo '<br><br> PHP Procedure: '.$phpCode;
		echo '<br> Line: '.$line;
		echo '<br> Error Thrown: '.$exceptionInfo[0]->getMessage();
		echo '<textarea>';
		print_r($exceptionInfo);
		echo '</texarea>';
		echo '<br> <hr>';
		
	}
	
	die();
	
}

?>