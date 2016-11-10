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
			
			try {

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
				$nuT							= nuRunQuery($s);
				if(db_num_rows($nuT) > 0) {
					$nuA = db_fetch_object($nuT);
					
					$phpCode				= $nuA->sph_code;
					$phpToEval				= nuReplaceHashVariables($nuA->sph_php);
					
					$this->evalPHP($phpCode, $phpToEval);
				} else {
					echo "PHP Doesn't Exist";
				}

			}catch(Throwable $e) {
				nuExceptionHandler("Error Building PHP");       
			}catch(Exception $e) {
				nuExceptionHandler("Error Building PHP");
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

			$error			= new stdClass;
			$error->code	= $phpCode;
			$error->trace	= array_reverse($e->getTrace());
nudebug(print_r($error,1));			
			return $trace;
			
		}
	   
	}
	
?>