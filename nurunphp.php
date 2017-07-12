<?php 
session_start();
require_once('nuform.php'); 
require_once('nucommon.php'); 
require_once('nudata.php'); 

$jsonID					= $_GET['i'];
$JSON					= json_decode($_SESSION[$jsonID]);
$TABLE_ID				= nuTT();
$hashData				= nuAddToHashList($JSON, 'php');
$hashData['TABLE_ID']	= $TABLE_ID;
$GLOBALS['TABLE_ID']	= $TABLE_ID;
$_POST['nuHash']		= $hashData;

$evalPHP = new nuEvalPHPClass($JSON->parentID);

?>
