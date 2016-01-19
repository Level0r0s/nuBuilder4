<?php

session_start();

error_reporting( error_reporting() & ~E_NOTICE );
require_once('config.php'); 

$_SESSION['DBHost']                 = $nuConfigDBHost;
$_SESSION['DBName']                 = $nuConfigDBName;
$_SESSION['DBUser']                 = $nuConfigDBUser;
$_SESSION['DBPassword']             = $nuConfigDBPassword;
$_SESSION['DBGlobeadminPassword']   = $nuConfigDBGlobeadminPassword;
$_SESSION['title']                  = $nuConfigtitle; 
$_SESSION['IsDemo']                 = $nuConfigIsDemo; 
$_SESSION['SafeMode']               = (isset($nuConfigSafeMode) ? $nuConfigSafeMode : false);
$_SESSION['SafePHP']                = (isset($nuConfigSafePHP)  ? $nuConfigSafePHP  : array());
	
require_once('nudatabase.php');

set_time_limit(0);
mb_internal_encoding('UTF-8');

$setup                           = $GLOBALS['nuSetup'];                                   //--  setup php code just used for this database

nuClientTimeZone();


//==================FUNCTIONS============================================================

function nuClientTimeZone(){

    global $setup;

    // get time zone setting
    if ($setup->set_timezone){
            $zone = $setup->set_timezone;
    } else {
            $zone = "Australia/Adelaide";
    }

    // set time zone setting for PHP
    date_default_timezone_set($zone);

    // calculate offset
    $dateObj        = new DateTime();
    $mins           = $dateObj->getOffset() / 60;
    $sgn            = ($mins < 0 ? -1 : 1);
    $mins           = abs($mins);
    $hrs            = floor($mins / 60);
    $mins          -= $hrs * 60;
    $offset         = sprintf('%+d:%02d', $hrs*$sgn, $mins);

    // set timezone setting for MYSQL
    nuRunQuery("SET time_zone = '$offset'");       
 
}


function nuDebug($t){

    global $nuDB;

    $i = nuID();
    $d = date('Y-m-d H:i:s');
    $s = $nuDB->prepare("INSERT INTO zzzzsys_debug (zzzzsys_debug_id, deb_message, deb_added) VALUES (? , ?, ?)");

    $s->execute(array($i, $t, $d));
    
    if($nuDB->errorCode() !== '00000'){
        error_log($nuDB->errorCode() . ": Could not establish nuBuilder database connection");
    }

}



function jsinclude($pfile){

	$timestamp = date("YmdHis", filemtime($pfile));                                         //-- Add timestamp so javascript changes are effective immediately
	print "<script src='$pfile?ts=$timestamp' type='text/javascript'></script>\n";
    
}



function cssinclude($pfile){

	$timestamp = date("YmdHis", filemtime($pfile));                                         //-- Add timestamp so javascript changes are effective immediately
	print "<link rel='stylesheet' href='$pfile?ts=$timestamp' />\n";
    
}


function nuTT(){

	return '___nu'.uniqid('1').'___';                                                         //--create a unique name for a Temp Table
    
}


function nuErrorFound(){
    
    if(isset($GLOBALS['ERRORS'])){
        return count($GLOBALS['ERRORS']) > 0;
    }else{
        return false;
    }
    
}


function nuID(){

	$i   = uniqid();
	$s   = md5($i);
    while($i == uniqid()){}
    return uniqid().$s[0].$s[1];

}



?>