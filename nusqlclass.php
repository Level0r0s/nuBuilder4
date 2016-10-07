<?php


class nuSqlClass{

    public  $STR			= '';
    public  $OBJ			= '';

    function __construct($sql){

		$this->STR			= $sql;
		$S					= new PHPSQLParser($sql, true);
		$this->OBJ			= $S->parsed;

    }
	
    public function nuRemoveSelectElements(){
		$this->OBJ['SELECT']		= array();
    }

    public function nuAddSelectElement($et, $be){
		
		
		if(!isset($this->OBJ['SELECT'])){
			$this->OBJ['SELECT']	= array();
		}
		
		$c							= array();
		$c['expr_type']				= $et;
		$c['base_expr']				= $be;
		
		$this->OBJ['SELECT'][] 		= $c;
		
		for($i = 0 ; $i < count($this->OBJ['SELECT']) ; $i++){
			$this->OBJ['SELECT'][$i]['delim'] = ',';
		}
		
		$this->OBJ['SELECT'][$i-1]['delim'] = '';
		
    }

    public function nuAddWhereElement($et, $be){
		
		
		if(!isset($this->OBJ['WHERE'])){
			$this->OBJ['WHERE']		= array();
		}
		
		$c							= array();
		$c['expr_type']				= $et;
		$c['base_expr']				= $be;
		
		$this->OBJ['WHERE'][] 		= $c;
		
    }


    public function nuAddBracketsToWhere(){
		
		if(!isset($this->OBJ['WHERE'])){
			
			$this->OBJ['WHERE']		= array();
			return;
			
		}
		
		$bo							= array();
		$bo['expr_type']			= 'bracket_expression';
		$bo['base_expr']			= '(';
		
		$bc							= array();
		$bc['expr_type']			= 'bracket_expression';
		$bc['base_expr']			= ')';
		
		array_unshift($this->OBJ['WHERE'], $bo);
		array_push($this->OBJ['WHERE'], $bc); 

		nudebug('where meger ' . print_r($this->OBJ['WHERE'],1));
		
    }

    public function SQL(){

			$s	= new PHPSQLCreator($this->OBJ);
			
			return $s->created;
			
    }

}



?>