<?php 

require_once('nucommon.php'); 

mb_internal_encoding('UTF-8');

$DBHost                      = $_SESSION['DBHost'];
$DBName                      = $_SESSION['DBName'];
$DBUser                      = $_SESSION['DBUser'];
$DBPassword                  = $_SESSION['DBPassword'];

$nuDB = new PDO("mysql:host=$DBHost;dbname=$DBName;charset=utf8", $DBUser, $DBPassword, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
$nuDB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$nuDB->exec("SET CHARACTER SET utf8");

$GLOBALS['nuSetup']          = db_setup();


function db_setup(){
    
	static $setup;
	
    if (empty($setup)) {                                          //check if setup has already been called
		
		$rs 	= nuRunQuery("Select * From zzzzsys_setup");        //get setup info from db
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
        $id                      = $nuDB->lastInsertId();

//	if(nuV('nu_user_name') == 'globeadmin'){
            $GLOBALS['ERRORS'][] = $debug;
//        }else{
//            $GLOBALS['ERRORS'][] = "There has been an error on this page.\n Please contact your system administrator and quote the following number: $id ";
//        }
        
        return -1;
		
	}

        if($isInsert){
            
            return $nuDB->lastInsertId();
            
        }else{
            
            return $object;
        
        }
	
}


function db_is_auto_id($t, $p){

	$t       = nuRunQuery("SHOW COLUMNS FROM $t WHERE `Field` = '$p'");   //-- mysql's way of checking if its an auto-incrementing id primary key
	$r       = db_fetch_object($t);
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
		$o  = new stdClass;
		return $o;
	}

}
	
function db_fetch_row($o){

	if (is_object($o)) {
		return $o->fetch(PDO::FETCH_NUM);
	} else {
		return array();
	}

}


function db_columns($n){
    
    $a       = array();
    $s       = "DESCRIBE $n";
    $t       = nuRunQuery($s);

    while($r = db_fetch_row($t)){
        $a[] = $r[0];
    }
    
    return $a;
    
}

function db_num_rows($o) {

	if(!is_object($o)){return 0;}
		
	return $o->rowCount();
	
}

?>
