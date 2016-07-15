<?php 
require_once('nucommon.php'); 
require_once('nudata.php'); 

$jsonID				= $_GET['i'];
$t					= nuRunQuery("SELECT deb_message AS json FROM zzzzsys_debug WHERE zzzzsys_debug_id = ? ", array($jsonID));
$r					= db_fetch_object($t);
$JSON				= json_decode($r->json);
$DATA				= $JSON->sph_php;
$TABLE_ID			= nuTT();
$hashData			= nuAddToHashList($JSON, 'php');
$hashData['TABLE_ID']	= $TABLE_ID;
$GLOBALS['TABLE_ID']	= $TABLE_ID;
$_POST['nuHash']		= $hashData;
$PHP					= nuReplaceHashVariables($JSON->sph_php);

eval($PHP);                                                                            //-- run php code

nuRunQuery("DELETE FROM zzzzsys_debug WHERE zzzzsys_debug_id = ? ", array($jsonID));

?>
