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

				$this->nuExceptionHandler($e, $phpCode, $phpToEval);   
				 
			} catch (Exception $e) {

				$this->nuExceptionHandler($e, $phpCode, $phpToEval);
				
			}
		}
		
		function nuExceptionHandler($e, $phpCode, $phpToEval) {

			echo '<br>Error Running PHP<br>';
			echo 'PHP: '.$phpCode.'<br>';
			echo 'Error: '.$e->getMessage().'<br><br>';
			
			$phpLines = explode("\n",$phpToEval);
			
			for($i = 0; $i < sizeof($phpLines); $i++){
				
				if($i == ($e->getLine() - 1)) {
					echo '<span style="background-color: #FFFF20">'.$phpLines[$i].'</span><br>';
				} else{				
					echo $phpLines[$i].'<br>';
				}
				
			}
			
			die();
			
		}
	   
	}
	
?>