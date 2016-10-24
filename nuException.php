<?php

//==================CLASS=================================================================

function nuException($errorMessage, $errorCode, $exceptionInfo = array()) {
  
	cssinclude('nubuilder4.css');
  
	nuDisplayHeaderHTML();
  
	/*
		0 = Any Exception not requiring special action
		1 = PHP exception
	*/
	echo $errorMessage;

	/*if($errorCode == 1) {
		
		$phpNum = sizeof($exceptionInfo[1]);
		$phpCode = '';
		$line = 0;

		for($i = 0; $i < sizeof($exceptionInfo[1]); $i++) {

			$eof = $exceptionInfo[1][$i]->start + $exceptionInfo[1][$i]->length;
			
			if(intval($exceptionInfo[0]->getLine()) <= intval($eof)) {
				
				$phpCode = $exceptionInfo[1][$i]->code;
				$line = $exceptionInfo[0]->getLine() - $exceptionInfo[1][$i]->start;
				$i = sizeof($exceptionInfo[1]);
			}
			
		}
		
		echo '<br><br> PHP Procedure: '.$phpCode;
		echo '<br> Line: '.$line;
		echo '<br> Error Thrown: '.$exceptionInfo[0]->getMessage();		
		echo '<br><br> PHP: ';
		for($i = 0; $i < $phpNum; $i++) {
			echo '<br>'.$exceptionInfo[1][$i]->code;
		}
		
		echo '<br><br>PHP Code<br><br>';

		$trace = $exceptionInfo[0]->getTrace();
		$php = $trace[0]['args'][0]->sph_php;
		
		$phpLines = explode("\n",$php);

		$phpEnd = $exceptionInfo[1][0]->start + $exceptionInfo[1][0]->length;
		$j = 0;
		
		echo 'PHP: '.$exceptionInfo[1][0]->code.'<br><br>';
		
		for($i = 0; $i < sizeof($phpLines); $i++){
			
			if($i == $phpEnd) {
				$j++;

				if($i < sizeof($phpLines) - 1) {
					echo '<br>PHP: '.$exceptionInfo[1][$j]->code.'<br><br>';
					$phpEnd = $exceptionInfo[1][$j]->start + $exceptionInfo[1][$j]->length;
				}
			}
			
			if($i == ($exceptionInfo[0]->getLine() - 1)) {
				echo '<span style="background-color: #FFFF20">'.$phpLines[$i].'</span><br>';
			} else{				
				echo $phpLines[$i].'<br>';
			}
	
		}
				
	}*/
		
	nuDisplayFooterHTML();
	
	die();
	
}

?>