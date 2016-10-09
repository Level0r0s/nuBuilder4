<?php

//==================CLASS=================================================================

class nuException extends Exception
{
    public function __construct($message, $code, $exceptionInfo = array()) 
	{ 
		parent::__construct($message,$code,$previous=null); 
		$this->exceptionInfo = $exceptionInfo;
		$this->code = $code;
	}    

	/*
		0 = Any Exception not requiring special action
		1 = PHP exception
	*/
	public function __toString() 
	{ 

		echo $this->message;

		if($this->code == 1) {
			
			$code = '';
			$line = 0;
			
			for($i = 0; $i < sizeof($this->exceptionInfo[1]); $i++) {
				
				$eof = $this->exceptionInfo[1][$i]->start + $this->exceptionInfo[1][$i]->length;

				if(intval($this->exceptionInfo[0]) <= intval($eof)) {
					
					$code = $this->exceptionInfo[1][$i]->code;
					$line = $this->exceptionInfo[0] - $this->exceptionInfo[1][$i]->start;

				}
				
			}
			
			echo ' happened in PHP '.$code.' on line '.$line;
			
		}
		die();
	} 
}

?>