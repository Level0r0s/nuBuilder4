<?php

	class nuEvalPHPClass {
			
		function __construct($parentID) {
			
			$this->parentID = $parentID;
		
			if($this->parentID != '') {
				$this->processPHP();
			}
			
		}
		
		function processPHP() {
		
			$s	= "SELECT sph_php FROM zzzzsys_php WHERE zzzzsys_php_id = '$this->parentID'";
			$t	= nuRunQuery($s);
			$r	= db_fetch_object($t);
			
			if(trim($r->sph_php) == ''){return;}

			$s = "
				SELECT * 
				FROM zzzzsys_php_library 
				LEFT JOIN zzzzsys_php ON zzzzsys_php_id = spl_library_zzzzsys_php_id 
				WHERE spl_zzzzsys_php_id = '$this->parentID'
			";
			
			$nuT							= nuRunQuery($s);
							
			while($nuA = db_fetch_object($nuT)) {

				$phpCode				= $nuA->sph_code;
				$phpToEval				= nuReplaceHashVariables($nuA->sph_php);
				$this->evalPHP($phpCode, $phpToEval);
				
			}
			
			$s = "
				SELECT * 
				FROM zzzzsys_php 
				WHERE zzzzsys_php_id = '$this->parentID'
			";
			
			$nuT						= nuRunQuery($s);

			if(db_num_rows($nuT) > 0) {
nudebug('hello ' . print_r($_POST['nuHash'],1));
				
				$nuA 		= db_fetch_object($nuT);
				$phpCode	= $nuA->sph_code;
				$phpToEval	= nuReplaceHashVariables($nuA->sph_php);
				
				$this->evalPHP($phpCode, $phpToEval);
				
			}

		}
		
		function evalPHP($phpCode, $phpToEval){
			
			try {
				eval($phpToEval); 
				
			} catch(Throwable $e) {

				$this->exceptionHandler($e, $phpCode, $phpToEval);   
				 
			} catch (Exception $e) {

				$this->exceptionHandler($e, $phpCode, $phpToEval);
				
			}
		}
		
		function exceptionHandler($e, $phpCode, $phpToEval){
			
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