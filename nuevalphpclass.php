<?php

    require_once 'nucommon.php';

	
	function nuEval($phpid, $event = ''){

		if($event == ''){
			$s		= "SELECT * FROM zzzzsys_php WHERE sph_code = ? ";
		}else{
			$s		= "SELECT * FROM zzzzsys_php WHERE zzzzsys_php_id = ? ";
		}
		
		$t			= nuRunQuery($s, [$i]);
		$r			= db_fetch_object($t);

		if(trim($r->sph_php) == ''){return;}
		
		$code		= $r->sph_code;
		$php		= nuReplaceHashVariables($r->sph_php);
	
		if($event == ''){
			$_POST['nuCustomEval']	=  "$code run inside : ";
		}else{
			$_POST['nuSystemEval']	=  nuEvalMessage($phpid, $code);
		}
		
		try{
			eval($php); 
		}catch(Throwable $e){
			nuExceptionHandler($e, $code);   
		}catch(Exception $e){
			nuExceptionHandler($e, $code);
		}
	
		if($event == ''){
			$_POST['nuCustomEval']	=  '';
		}else{
			$_POST['nuSystemEval']	=  '';
		}
		
	}
	
	
	function nuExceptionHandler($e, $code){
		
		nuDisplayError("<b>Error Running Procedure !</b> ($code)<br>", "nuErrorPHP");
		nuDisplayError($e->getFile(), 'eval');
		nuDisplayError('<i>' . $e->getMessage() . '</i>', 'eval');
		nuDisplayError('<br><b><i>Traced from...</i></b><br>', 'nuErrorPHP');
		
		$a		= $e->getTrace();
		$t		= array_reverse($a);

		for($i = 0 ; $i < count($t) ; $i++){
			
			$m	= '(line:<i>' . $t[$i]['line'] . '</i>) ' . $t[$i]['file'] . ' <b> - ' . $t[$i]['function'] . '<b>';
			
			nuDisplayError($m . '<br>', 'eval');
			
		}
		
	}
	
	
	
	
	function nuEvalMessage($phpid, $code){
		
		$i			= explode('_', $phpid);
		
		if(count($i) == 1){
			return "Procedure ($code)";
		}
		
		if($i[1] != 'AB'){
			
			$event	= nuEventName($i[1]);
			return "$event for ($code)";
			
		}
			
		$s			= "SELECT * FROM zzzzsys_object JOIN zzzzsys_form ON zzzzsys_form_id = sob_all_zzzzsys_form_id	WHERE zzzzsys_object_id = ?	";
		$t			= nuRunQuery($s, [$i[0]]);
		$O			= db_fetch_object($t);
		
		return "Before Browse for `$O->sob_all_id` ($O->sfo_code)";
		
	}


	class nuEvalPHPClass {
			
		function __construct($parentID) {
			
			$_POST['nuCode']= '';
			$this->parentID = $parentID;
		
			if($this->parentID != '') {
				$this->processPHP();
			}
			
		}
		
		function processPHP() {
		
			$s				= "SELECT sph_php FROM zzzzsys_php WHERE zzzzsys_php_id = '$this->parentID'";
			$t				= nuRunQuery($s);
			$r				= db_fetch_object($t);
			
			if(trim($r->sph_php) == ''){return;}

			$s 				= "
				SELECT * 
				FROM zzzzsys_php_library 
				LEFT JOIN zzzzsys_php ON zzzzsys_php_id = spl_library_zzzzsys_php_id 
				WHERE spl_zzzzsys_php_id = '$this->parentID'
			";
			
			$nuT			= nuRunQuery($s);
			
			while($nuA = db_fetch_object($nuT)) {

				$phpCode	= $nuA->sph_code;
				$phpToEval	= nuReplaceHashVariables($nuA->sph_php);
				
				$this->evalPHP($phpCode, $phpToEval);
				
			}
			
			$s = "
				SELECT * 
				FROM zzzzsys_php 
				WHERE zzzzsys_php_id = '$this->parentID'
			";
			
			$nuT			= nuRunQuery($s);

			if(db_num_rows($nuT) > 0) {
				
				$nuA 		= db_fetch_object($nuT);
				$phpCode	= $nuA->sph_code;
				$phpToEval	= nuReplaceHashVariables($nuA->sph_php);
				
				$this->evalPHP($phpCode, $phpToEval);
				
			}

		}
		
		function evalPHP($phpCode, $phpToEval){
			
			if(trim($phpToEval) == ''){return;}
			
				$event['BB']	    =  'Before Browse';
				$event['AB']	    =  'After Browse';
				$event['BE']    	=  'Before Edit';
				$event['BS']    	=  'Before Save';
				$event['AS']    	=  'After Save';
				$event['BD']    	=  'Before Delete';
				$event['AD']    	=  'After Delete';
					
			try{
				
				$s					= 'SELECT COUNT(*) FROM zzzzsys_php WHERE zzzzsys_php_id = ?';
				$t					= nuRunQuery($s, [$phpCode]);
				$P					= db_fetch_row($t)[0];
				$e					= explode('_', $phpCode);
				$s					= '
										SELECT * 
										FROM zzzzsys_object 
										JOIN zzzzsys_form ON zzzzsys_form_id = sob_all_zzzzsys_form_id
										WHERE zzzzsys_object_id = ?
									';
				$t					= nuRunQuery($s, [$e[0]]);
				$O					= db_fetch_object($t);
				
				
				if($P == 0){
					$_POST['nuCode']= "Procedure ($phpCode)";
				}else if($O->zzzzsys_object_id != ''){
					$_POST['nuCode']= $event[$e[1]] . " for `$O->sob_all_id` ($O->sfo_code)";
				}else{
					
					$e				= explode('_', $phpCode);
					$s				= 'SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = ?';
					$t				= nuRunQuery($s, [$e[0]]);
					$r				= db_fetch_object($t)->sfo_code;
					$_POST['nuCode']= $event[$e[1]] . " ($r)";
					
				}
				
				eval($phpToEval); 
				
				$_POST['nuEval']	= '';
				
			}catch(Throwable $e){
				$this->exceptionHandler($e, $phpCode, $phpToEval);   
				 
			}catch(Exception $e){
				$this->exceptionHandler($e, $phpCode, $phpToEval);
				
			}
			
		}
		
		function exceptionHandler($e, $phpCode, $phpToEval){
			
			$_POST['nuEval']	= '';
			nuDisplayError("<b>Error Running Procedure !</b> ($phpCode)<br>", "nuErrorPHP");
			nuDisplayError($e->getFile(), 'eval');
			nuDisplayError('<i>' . $e->getMessage() . '</i>', 'eval');
			nuDisplayError('<br><b><i>Traced from...</i></b><br>', 'nuErrorPHP');
			
			$a	= $e->getTrace();
			$t	= array_reverse($a);

			for($i = 0 ; $i < count($t) ; $i++){
				
				$m	= '(line:<i>' . $t[$i]['line'] . '</i>) ' . $t[$i]['file'] . ' <b> - ' . $t[$i]['function'] . '<b>';
				
				nuDisplayError($m . '<br>', 'eval');
				
			}
			
		}
	   
	}
	
	
	
	
?>