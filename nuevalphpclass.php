<?php

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
				
				$_POST['nuCode']	= '';
				
			}catch(Throwable $e){
				$this->exceptionHandler($e, $phpCode, $phpToEval);   
				 
			}catch(Exception $e){
				$this->exceptionHandler($e, $phpCode, $phpToEval);
				
			}
			
		}
		
		function exceptionHandler($e, $phpCode, $phpToEval){
			
			$_POST['nuCode']	= '';
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