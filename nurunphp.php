<?php 
require_once('nucommon.php'); 
require_once('nudata.php'); 

$jsonID					= $_GET['i'];
$s						= "SELECT deb_message AS json FROM zzzzsys_debug WHERE zzzzsys_debug_id = ? ";		//-- created by nuRunPHP()
$t						= nuRunQuery($s, array($jsonID));
$r						= db_fetch_object($t);
$JSON					= json_decode($r->json);
$TABLE_ID				= nuTT();
$hashData				= nuAddToHashList($JSON, 'php');
$hashData['TABLE_ID']	= $TABLE_ID;
$GLOBALS['TABLE_ID']	= $TABLE_ID;
$_POST['nuHash']		= $hashData;
$PHP					= $JSON;
$PHPData				= $PHP->lines;

nuEvalPHP($PHP->sph_php, $PHPData);

nuRunQuery("DELETE FROM zzzzsys_debug WHERE zzzzsys_debug_id = ? ", array($jsonID));

?>
