<?php 

require_once('nuconfig.php');

mb_internal_encoding('UTF-8');

$DBHost                      = $nuConfigDBHost;
$DBName                      = $nuConfigDBName;
$DBUser                      = $nuConfigDBUser;
$DBPassword                  = $nuConfigDBPassword;

$nuDB = new PDO("mysql:host=$DBHost;dbname=$DBName;charset=utf8", $DBUser, $DBPassword, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
$nuDB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$nuDB->exec("SET CHARACTER SET utf8");

$GLOBALS['nuSetup']          = db_setup();


function db_setup(){
    
	static $setup;
	
    if (empty($setup)) {                                          //check if setup has already been called
		
		$rs 	= nuRunQuery("SeLect * From zzzzsys_setup");        //get setup info from db
		$setup 	= db_fetch_object($rs);
	}
	
	$gcLifetime  = 60 * $setup->set_time_out_minutes;             //setup garbage collect timeouts
	ini_set("session.gc_maxlifetime", $gcLifetime);
		
    return $setup;
}



function nuRunQuery($s, $a = array(), $isInsert = false){

	global $DBHost;
	global $DBName;
	global $DBUser;
	global $DBPassword;
	global $nuDB;
	if($s == ''){
		$a           = array();
		$a[0]        = $DBHost;
		$a[1]        = $DBName;
		$a[2]        = $DBUser;
		$a[3]        = $DBPassword;
		return $a;
	}

	$object = $nuDB->prepare($s);

	try {
		$object->execute($a);
	}catch(PDOException $ex){
	
		$user        = 'globeadmin';
		$message     = $ex->getMessage();
		$array       = debug_backtrace();
                $trace       = '';
                
                for($i = 0 ; $i < count($array) ; $i ++){
                    $trace  .= $array[$i]['file'] . ' - line ' . $array[$i]['line'] . ' (' . $array[$i]['function'] . ")\n\n";
                }

		$debug       = "
===USER==========

$user

===PDO MESSAGE=== 

$message

===SQL=========== 

$s

===BACK TRACE====

$trace

";
                
		nuDebug($debug);
	
		$id						= $nuDB->lastInsertId();
		$GLOBALS['ERRORS'][]	= $debug;

		return -1;
		
	}

        if($isInsert){
            
            return $nuDB->lastInsertId();
            
        }else{
            
            return $object;
        
        }
	
}


function db_is_auto_id($table, $pk){

	$s		= "SHOW COLUMNS FROM `$table` WHERE `Field` = '$pk'";
	$t      = nuRunQuery($s);   									//-- mysql's way of checking if its an auto-incrementing id primary key
	$r      = db_fetch_object($t);
	
	return $r->Extra == 'auto_increment';

}

function db_fetch_array($o){

	if (is_object($o)) {
		return $o->fetch(PDO::FETCH_ASSOC);
	} else {
		return array();
	}

}

function db_fetch_object($o){

	if (is_object($o)) {
		return $o->fetch(PDO::FETCH_OBJ);
	} else {
		return false;
	}

}
	
function db_fetch_row($o){

	if (is_object($o)) {
		return $o->fetch(PDO::FETCH_NUM);
	} else {
		return false;
	}

}


function db_field_names($n){
    
    $a       = array();
    $s       = "DESCRIBE $n";
    $t       = nuRunQuery($s);

    while($r = db_fetch_row($t)){
        $a[] = $r[0];
    }
    
    return $a;
    
}


function db_field_types($n){
    
    $a       = array();
    $s       = "dESCRIBE $n";
    $t       = nuRunQuery($s);

    while($r = db_fetch_row($t)){
        $a[] = $r[1];
    }
    
    return $a;
    
}


function db_primary_key($n){
    
    $a       = array();
    $s       = "DESCRIBE $n";
    $t       = nuRunQuery($s);

    while($r = db_fetch_row($t)){
		
		if($r[3] == 'PRI'){
			$a[] = $r[0];
		}
		
    }
    
    return $a;
    
}

function db_num_rows($o) {

	if(!is_object($o)){return 0;}
		
	return $o->rowCount();
	
}


function nuUpdateTables(){
	
	$a	= [];
	$t 	= nuRunQuery("SHOW TABLES");
	
	while($r = db_fetch_row($t)){
		$a[] = $r[0];
	}
		
	nuRunQuery('DELETE FROM zzzzsys_table');
	
	for($i = 0 ; $i < count($a) ; $i ++){
		
		$s	= "INSERT INTO zzzzsys_table (zzzzsys_table_id) VALUES (?)";
		nuRunQuery($s, [$a[$i]]);
		
	}
		
}


function nuUpdateTableSchema(){

	$ts	= $_POST['tableSchema'];
	$a 	= json_encode($ts);
	$b 	= json_encode(nuGetJSONData('clientTableSchema'));
	
	if($a == $b){
		return [];
	}else{
		
		nuSetJSONData('clientTableSchema', $ts);
		
		$a			= [];
		$t 			= nuRunQuery("SHOW TABLES");
		
		while($r = db_fetch_row($t)){
			$a[] 	= $r[0];
		}
			
		nuRunQuery('DELETE FROM zzzzsys_table');
		
		for($i = 0 ; $i < count($a) ; $i ++){
			
			$s		= "INSERT INTO zzzzsys_table (zzzzsys_table_id) VALUES (?)";
			
			nuRunQuery($s, [$a[$i]]);
			
		}
		
		return $ts;
		
	}
	
}



?>
