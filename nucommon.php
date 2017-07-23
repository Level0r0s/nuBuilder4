<?php

error_reporting( error_reporting() & ~E_NOTICE );

require_once('config.php'); 
require_once('nubuilders.php'); 
//require_once('nuexception.php'); 
require_once('nuevalphpclass.php'); 
require_once dirname(__FILE__) . '/sql-parser/src/PHPSQLParser.php';
require_once dirname(__FILE__) . '/sql-parser/src/PHPSQLCreator.php';
require_once dirname(__FILE__) . '/nusqlclass.php';
require_once dirname(__FILE__) . '/nusearchclass.php';
require_once('nudatabase.php');

set_time_limit(0);
mb_internal_encoding('UTF-8');

$setup								= $GLOBALS['nuSetup'];                                   //--  setup php code just used for this database

nuClientTimeZone();

//==================FUNCTIONS============================================================

function nuClientTimeZone(){

    global $setup;

    // get time zone setting
    if ($setup->set_timezone){
            $zone	= $setup->set_timezone;
    } else {
            $zone	= "Australia/Adelaide";
    }

    // set time zone setting for PHP
    date_default_timezone_set($zone);

    // calculate offset
    $dateObj		= new DateTime();
    $mins			= $dateObj->getOffset() / 60;
    $sgn			= ($mins < 0 ? -1 : 1);
    $mins			= abs($mins);
    $hrs			= floor($mins / 60);
    $mins			-= $hrs * 60;
    $offset			= sprintf('%+d:%02d', $hrs*$sgn, $mins);

    // set timezone setting for MYSQL
    nuRunQuery("SET time_zone = '$offset'");       
 
}


function nuDebugResult($t){
	
    global $nuDB;
	
	if(is_object($t)){
		$t	= print_r($t,1);
	}

    $i		= nuID();
    $s		= $nuDB->prepare("INSERT INTO zzzzsys_debug (zzzzsys_debug_id, deb_message, deb_added) VALUES (? , ?, ?)");

    $s->execute(array($i, $t, time()));
    
    if($nuDB->errorCode() !== '00000'){
        error_log($nuDB->errorCode() . ": Could not establish nuBuilder database connection");
    }

	return $i;
}


function nuDebug($a0 = '', $a1 = '', $a2 = '', $a3 = '', $a4 = '', $a5 = '', $a6 = '', $a7 = '', $a8 = '', $a9 = ''){
	
	$b					= debug_backtrace();
	$f					= $b[0]['file'];
	$l					= $b[0]['line'];

	$m					= date("Y-m-d H:i:s") . " ($f:$l)\n\n<br>\n" ;

	
	for($i = 0 ; $i < count(func_get_args()) ; $i++){

		$p			= func_get_arg($i);

		$m		.= "\n[$i] : ";

		if(gettype($p) == 'object' or gettype($p) == 'array'){
			$m	.= print_r($p,1);
		}else{
			$m	.= $p;
		}

		$m	.= "\n";

	}
	
	nuDebugResult($m);

}



function nuTT(){

	$fn	= '___nu'.uniqid('1').'___';
	
	return $fn;                                                         //--create a unique name for a Temp Table
    
}


function nuErrorFound(){
    
    if(isset($GLOBALS['ERRORS'])){
        return count($GLOBALS['ERRORS']) > 0;
    }else{
        return false;
    }
    
}


function nuID(){

	if(!isset($_POST['nuCounter2'])){
		
		$_POST['nuCounter2']	= rand(1, 9999);
		$_POST['nuCounter2ID']	= 's' . time();
		
	}

	if($_POST['nuCounter2'] == 9999){
		
		$_POST['nuCounter2']	= 0;
		$_POST['nuCounter2ID']	=  's' . time();
		
	}else{
		$_POST['nuCounter2']++;
	}
	
	$id							= $_POST['nuCounter2ID'] . str_pad($_POST['nuCounter2'], 4, '0', STR_PAD_LEFT);
		
	return $id;

}


class nuSqlString{

    public  $from         = '';
    public  $where        = '';
    public  $groupBy      = '';
    public  $having       = '';
    public  $orderBy      = '';
    public  $fields       = array();
    public  $Dselect      = '';
    public  $Dfrom        = '';
    public  $Dwhere       = '';
    public  $DgroupBy     = '';
    public  $Dhaving      = '';
    public  $DorderBy     = '';
    public  $Dfields      = array();
    public  $SQL          = '';

    function __construct($sql){

        $sql              = str_replace(chr(13), ' ', $sql);//----remove carrige returns
        $sql              = str_replace(chr(10), ' ', $sql);//----remove line feeds

        $select_string    = $sql;
        $from_string      = stristr($sql, ' from ');
        $where_string     = stristr($sql, ' where ');
        $groupBy_string   = stristr($sql, ' group by ');
        $having_string    = stristr($sql, ' having ');
        $orderBy_string   = stristr($sql, ' order by ');

        $from             = str_replace($where_string,   '', $from_string);
        $from             = str_replace($groupBy_string, '', $from);
        $from             = str_replace($having_string,  '', $from);
        $from             = str_replace($orderBy_string, '', $from);
        
        $where            = str_replace($groupBy_string, '', $where_string);
        $where            = str_replace($having_string,  '', $where);
        $where            = str_replace($orderBy_string, '', $where);
        
        $groupBy          = str_replace($having_string,  '', $groupBy_string);
        $groupBy          = str_replace($orderBy_string, '', $groupBy);
        
        $having           = str_replace($orderBy_string, '', $having_string);
        
        $orderBy          = $orderBy_string;
        $this->from       = $from;
        $this->where      = $where == '' ? 'WHERE 1' : $where;
        $this->groupBy    = $groupBy;
        $this->having     = $having;
        $this->orderBy    = $orderBy;

        $this->Dfrom      = $this->from;
        $this->Dwhere     = $this->where;
        $this->DgroupBy   = $this->groupBy;
        $this->Dhaving    = $this->having;
        $this->DorderBy   = $this->orderBy;

    	$this->buildSQL();
    }

    public function restoreDefault($pString){

    	if($pString == 'f'){$this->from      = $this->Dfrom;}
    	if($pString == 'w'){$this->where     = $this->Dwhere;}
    	if($pString == 'g'){$this->groupBy   = $this->DgroupBy;}
    	if($pString == 'h'){$this->having    = $this->Dhaving;}
    	if($pString == 'o'){$this->orderBy   = $this->DorderBy;}
    	$this->buildSQL();

    }

    public function getTableName(){

    	return trim(substr($this->from, 5));

    }

    public function setFrom($pString){

    	$this->from          = $pString; 
    	$this->buildSQL();

    }

    public function setWhere($pString){

		$this->where		= $pString;
		$this->buildSQL();

    }

    public function getWhere(){
    	return $this->where; 
    }

    public function setGroupBy($pString){

    	$this->groupBy		= $pString; 
    	$this->buildSQL();

    }

    public function setHaving($pString){

    	$this->having		= $pString; 
    	$this->buildSQL();

    }

    public function setOrderBy($pString){

    	$this->orderBy		= $pString; 
    	$this->buildSQL();

    }

    public function addField($pString){

		$this->fields[]		= $pString; 
    	$this->buildSQL();

    }

    public function removeAllFields(){

		$this->fields		= array();

    }

    private function buildSQL(){
		
		$this->SQL		= 'SELECT '; 
		$this->SQL		= $this->SQL . nuSQLTrim(implode(',', $this->fields), 1);
		$this->SQL		= $this->SQL . nuSQLTrim($this->from);
		$this->SQL		= $this->SQL . nuSQLTrim($this->where);
		$this->SQL		= $this->SQL . nuSQLTrim($this->groupBy);
		$this->SQL		= $this->SQL . nuSQLTrim($this->having);
		$this->SQL		= $this->SQL . nuSQLTrim($this->orderBy);
			
    }

}

function nuSQLTrim($s, $noCR = 0){
	
	if(trim($s) == ''){
		return '';
	}else{
		if($noCR == 0){
			return "\n$s";
		}else{
			return $s;
		}
	}

}


function nuSetHashList($p){

	$fid		= addslashes($p['form_id']);
	$rid		= addslashes($p['record_id']);
	$r			= array();
	$A			= nuGetUserAccess();
	$s			= "SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = '$fid'";
	$t			= nuRunQuery($s);
	$R			= db_fetch_object($t);
	$h			= array();

	if(trim($R->sfo_table) != ''){
		
		$s		= "SELECt * FROM $R->sfo_table WHERE $R->sfo_primary_key = '$rid'";
		$t		= nuRunQuery($s);
		$f		= db_fetch_object($t);

		if(is_object($f) ){
			
			foreach ($f as $fld => $value ){								//-- add parent Breadcrumb Object
				$r[$fld] = addslashes($value);
			}
			
		}
	}

	foreach ($p as $key => $value){

		if(gettype($value) == 'string'){
			$h[$key]			= addslashes($value);
		}else{
			$h[$key]			= '';
		}
		
	}

	$h['PREVIOUS_RECORD_ID']	= addslashes($rid);
	$h['RECORD_ID']				= addslashes($rid);
	$h['FORM_ID']				= addslashes($fid);
	$h['SUBFORM_ID']			= addslashes($_POST['nuSTATE']['object_id']);
	$h['ID']					= addslashes($_POST['nuSTATE']['primary_key']);
	$h['CODE']					= addslashes($_POST['nuSTATE']['code']);

	return array_merge($r, $h, $A);

}


function nuRunReport($report_id, $record_id){
	
	$nuID								= nuID();
	$nuT								= nuRunQuery("SELECT * FROM zzzzsys_report WHERE sre_code = '$report_id'");
	$nuA								= db_fetch_object($nuT);
	$_POST['nuHash']['code']			= $nuA->sre_code;
	$_POST['nuHash']['description']		= $nuA->sre_description;
	$_POST['nuHash']['sre_layout']		= nuReplaceHashVariables($nuA->sre_layout);
	$_POST['nuHash']['parentID']		= $nuA->sre_zzzzsys_php_id;
	$nuJ								= json_encode($_POST['nuHash']);
	
	nuSetJSONData($nuID, $nuJ);
	
	$O									= new stdClass;
	$O->id								= $nuID;
	$O->record_id						= $record_id;
	
	return $O;
	
}

function nuRunPHP($report_id, $record_id){

	$nuID								= nuID();
	$nuT								= nuRunQuery("SELECT * FROM zzzzsys_php WHERE sph_code = '$report_id'");
	$nuA								= db_fetch_object($nuT);
	$_POST['nuHash']['code']			= $nuA->sph_code;
	$_POST['nuHash']['description']		= $nuA->sph_description;
	$_POST['nuHash']['parentID']		= $nuA->zzzzsys_php_id;
	$nuJ								= json_encode($_POST['nuHash']);

	nuSetJSONData($nuID, $nuJ);
	
	$O									= new stdClass;
	$O->id								= $nuID;
	$O->record_id						= $record_id;
	
	return $O;
	
}


function nuRunPHPHidden($nuCode){
	
	$_POST['nuHash']['RECORD_ID']		= $_POST['nuHash']['hash_record_id'];

	$s						= "SELECT * FROM zzzzsys_php WHERE sph_code = ? ";
	$t						= nuRunQuery($s, [$nuCode]);
	$r						= db_fetch_object($t);
	
	$evalPHP = new nuEvalPHPClass($r->zzzzsys_php_id);

	return 1;

}


function nuSetJSONData($i, $nj){
	
	$s					= "SELECT * FROM zzzzsys_session WHERE zzzzsys_session_id = ? ";
	$t					= nuRunQuery($s, array($_SESSION['SESSION_ID']));			 
	$r					= db_fetch_object($t);
	$j					= json_decode($r->sss_access, true);
	$j[$i]				= $nj;
	$J					= json_encode($j);
	
	$s					= "UPDATE zzzzsys_session SET sss_access = ? WHERE zzzzsys_session_id = ? ";
	$t					= nuRunQuery($s, array($J, $_SESSION['SESSION_ID']));
	
}




function nuGetJSONData($i){
	
	$s					= "SELECT * FROM zzzzsys_session WHERE zzzzsys_session_id = ? ";
	$t					= nuRunQuery($s, array($_SESSION['SESSION_ID']));			 
	$r					= db_fetch_object($t);
	$j					= json_decode($r->sss_access, true);
	
	return $j[$i];
	
}



function nuGetProcedure($i){
	
	$a		= array();
	$a[]	= $i;
	$s		= "

	SELECT sph_php 
	FROM zzzzsys_php
	WHERE zzzzsys_php_id = ?

	";
	$t		= nuRunQuery($s, $a);
	$r		= db_fetch_row($t);
	
	return $r[0];
	
}


function nuRunHTML(){

	$id								= nuID();
	$P								= $_POST['nuSTATE'];
	$o								= new stdClass;
	$o->sql							= $P['browse_sql'];
	$o->columns						= $P['browse_columns'];
	$j								= json_encode($o);
	
	$nuS							= "INSERT INTO zzzzsys_debug (zzzzsys_debug_id, deb_message) VALUES (?, ?)";
	nuRunQuery($nuS, array($id, $j));

	return $id;
	
}


function nuReplaceHashVariables($s){

	$s		= trim($s);
	
	if($s == ''){
		return '';
	}
	$a 		= $_POST['nuHash'];

	if (!is_array($a)) {
		return $s;
	}

	foreach ($a as $k => $v) {
		if(!is_object ($a[$k])) {
			$s	= str_replace ('#' . $k . '#', $v, $s);
		}
	}

	return $s;

}


function hex2rgb($hexOrColor) {

    $hex   = ColorToHex($hexOrColor);
    $hex   = str_replace("#", "", $hex);

    if(strlen($hex) == 3) {
        $r = hexdec(substr($hex,0,1).substr($hex,0,1));
        $g = hexdec(substr($hex,1,1).substr($hex,1,1));
        $b = hexdec(substr($hex,2,1).substr($hex,2,1));
    } else {
        $r = hexdec(substr($hex,0,2));
        $g = hexdec(substr($hex,2,2));
        $b = hexdec(substr($hex,4,2));
    }
    $rgb   = array($r, $g, $b);

    return $rgb;

}


function ColorToHex($pColor){

    $vColor    = strtoupper($pColor);
   
    if($vColor =='ALICEBLUE'){return 'F0F8FF';}
    if($vColor == 'ANTIQUEWHITE'){return 'FAEBD7';}
    if($vColor == 'AQUA'){return '00FFFF';}
    if($vColor == 'AQUAMARINE'){return '7FFFD4';}
    if($vColor == 'AZURE'){return 'F0FFFF';}
    if($vColor == 'BEIGE'){return 'F5F5DC';}
    if($vColor == 'BISQUE'){return 'FFE4C4';}
    if($vColor == 'BLACK'){return '000000';}
    if($vColor == 'BLANCHEDALMOND'){return 'FFEBCD';}
    if($vColor == 'BLUE'){return '0000FF';}
    if($vColor == 'BLUEVIOLET'){return '8A2BE2';}
    if($vColor == 'BROWN'){return 'A52A2A';}
    if($vColor == 'BURLYWOOD'){return 'DEB887';}
    if($vColor == 'CADETBLUE'){return '5F9EA0';}
    if($vColor == 'CHARTREUSE'){return '7FFF00';}
    if($vColor == 'CHOCOLATE'){return 'D2691E';}
    if($vColor == 'CORAL'){return 'FF7F50';}
    if($vColor == 'CORNFLOWERBLUE'){return '6495ED';}
    if($vColor == 'CORNSILK'){return 'FFF8DC';}
    if($vColor == 'CRIMSON'){return 'DC143C';}
    if($vColor == 'CYAN'){return '00FFFF';}
    if($vColor == 'DARKBLUE'){return '00008B';}
    if($vColor == 'DARKCYAN'){return '008B8B';}
    if($vColor == 'DARKGOLDENROD'){return 'B8860B';}
    if($vColor == 'DARKGRAY'){return 'A9A9A9';}
    if($vColor == 'DARKGREY'){return 'A9A9A9';}
    if($vColor == 'DARKGREEN'){return '006400';}
    if($vColor == 'DARKKHAKI'){return 'BDB76B';}
    if($vColor == 'DARKMAGENTA'){return '8B008B';}
    if($vColor == 'DARKOLIVEGREEN'){return '556B2F';}
    if($vColor == 'DARKORANGE'){return 'FF8C00';}
    if($vColor == 'DARKORCHID'){return '9932CC';}
    if($vColor == 'DARKRED'){return '8B0000';}
    if($vColor == 'DARKSALMON'){return 'E9967A';}
    if($vColor == 'DARKSEAGREEN'){return '8FBC8F';}
    if($vColor == 'DARKSLATEBLUE'){return '483D8B';}
    if($vColor == 'DARKSLATEGRAY'){return '2F4F4F';}
    if($vColor == 'DARKSLATEGREY'){return '2F4F4F';}
    if($vColor == 'DARKTURQUOISE'){return '00CED1';}
    if($vColor == 'DARKVIOLET'){return '9400D3';}
    if($vColor == 'DEEPPINK'){return 'FF1493';}
    if($vColor == 'DEEPSKYBLUE'){return '00BFFF';}
    if($vColor == 'DIMGRAY'){return '696969';}
    if($vColor == 'DIMGREY'){return '696969';}
    if($vColor == 'DODGERBLUE'){return '1E90FF';}
    if($vColor == 'FIREBRICK'){return 'B22222';}
    if($vColor == 'FLORALWHITE'){return 'FFFAF0';}
    if($vColor == 'FORESTGREEN'){return '228B22';}
    if($vColor == 'FUCHSIA'){return 'FF00FF';}
    if($vColor == 'GAINSBORO'){return 'DCDCDC';}
    if($vColor == 'GHOSTWHITE'){return 'F8F8FF';}
    if($vColor == 'GOLD'){return 'FFD700';}
    if($vColor == 'GOLDENROD'){return 'DAA520';}
    if($vColor == 'GRAY'){return '808080';}
    if($vColor == 'GREY'){return '808080';}
    if($vColor == 'GREEN'){return '008000';}
    if($vColor == 'GREENYELLOW'){return 'ADFF2F';}
    if($vColor == 'HONEYDEW'){return 'F0FFF0';}
    if($vColor == 'HOTPINK'){return 'FF69B4';}
    if($vColor == 'INDIANRED'){return 'CD5C5C';}
    if($vColor == 'INDIGO'){return '4B0082';}
    if($vColor == 'IVORY'){return 'FFFFF0';}
    if($vColor == 'KHAKI'){return 'F0E68C';}
    if($vColor == 'LAVENDER'){return 'E6E6FA';}
    if($vColor == 'LAVENDERBLUSH'){return 'FFF0F5';}
    if($vColor == 'LAWNGREEN'){return '7CFC00';}
    if($vColor == 'LEMONCHIFFON'){return 'FFFACD';}
    if($vColor == 'LIGHTBLUE'){return 'ADD8E6';}
    if($vColor == 'LIGHTCORAL'){return 'F08080';}
    if($vColor == 'LIGHTCYAN'){return 'E0FFFF';}
    if($vColor == 'LIGHTGOLDENRODYELLOW'){return 'FAFAD2';}
    if($vColor == 'LIGHTGRAY'){return 'D3D3D3';}
    if($vColor == 'LIGHTGREY'){return 'D3D3D3';}
    if($vColor == 'LIGHTGREEN'){return '90EE90';}
    if($vColor == 'LIGHTPINK'){return 'FFB6C1';}
    if($vColor == 'LIGHTSALMON'){return 'FFA07A';}
    if($vColor == 'LIGHTSEAGREEN'){return '20B2AA';}
    if($vColor == 'LIGHTSKYBLUE'){return '87CEFA';}
    if($vColor == 'LIGHTSLATEGRAY'){return '778899';}
    if($vColor == 'LIGHTSLATEGREY'){return '778899';}
    if($vColor == 'LIGHTSTEELBLUE'){return 'B0C4DE';}
    if($vColor == 'LIGHTYELLOW'){return 'FFFFE0';}
    if($vColor == 'LIME'){return '00FF00';}
    if($vColor == 'LIMEGREEN'){return '32CD32';}
    if($vColor == 'LINEN'){return 'FAF0E6';}
    if($vColor == 'MAGENTA'){return 'FF00FF';}
    if($vColor == 'MAROON'){return '800000';}
    if($vColor == 'MEDIUMAQUAMARINE'){return '66CDAA';}
    if($vColor == 'MEDIUMBLUE'){return '0000CD';}
    if($vColor == 'MEDIUMORCHID'){return 'BA55D3';}
    if($vColor == 'MEDIUMPURPLE'){return '9370D8';}
    if($vColor == 'MEDIUMSEAGREEN'){return '3CB371';}
    if($vColor == 'MEDIUMSLATEBLUE'){return '7B68EE';}
    if($vColor == 'MEDIUMSPRINGGREEN'){return '00FA9A';}
    if($vColor == 'MEDIUMTURQUOISE'){return '48D1CC';}
    if($vColor == 'MEDIUMVIOLETRED'){return 'C71585';}
    if($vColor == 'MIDNIGHTBLUE'){return '191970';}
    if($vColor == 'MINTCREAM'){return 'F5FFFA';}
    if($vColor == 'MISTYROSE'){return 'FFE4E1';}
    if($vColor == 'MOCCASIN'){return 'FFE4B5';}
    if($vColor == 'NAVAJOWHITE'){return 'FFDEAD';}
    if($vColor == 'NAVY'){return '000080';}
    if($vColor == 'OLDLACE'){return 'FDF5E6';}
    if($vColor == 'OLIVE'){return '808000';}
    if($vColor == 'OLIVEDRAB'){return '6B8E23';}
    if($vColor == 'ORANGE'){return 'FFA500';}
    if($vColor == 'ORANGERED'){return 'FF4500';}
    if($vColor == 'ORCHID'){return 'DA70D6';}
    if($vColor == 'PALEGOLDENROD'){return 'EEE8AA';}
    if($vColor == 'PALEGREEN'){return '98FB98';}
    if($vColor == 'PALETURQUOISE'){return 'AFEEEE';}
    if($vColor == 'PALEVIOLETRED'){return 'D87093';}
    if($vColor == 'PAPAYAWHIP'){return 'FFEFD5';}
    if($vColor == 'PEACHPUFF'){return 'FFDAB9';}
    if($vColor == 'PERU'){return 'CD853F';}
    if($vColor == 'PINK'){return 'FFC0CB';}
    if($vColor == 'PLUM'){return 'DDA0DD';}
    if($vColor == 'POWDERBLUE'){return 'B0E0E6';}
    if($vColor == 'PURPLE'){return '800080';}
    if($vColor == 'RED'){return 'FF0000';}
    if($vColor == 'ROSYBROWN'){return 'BC8F8F';}
    if($vColor == 'ROYALBLUE'){return '4169E1';}
    if($vColor == 'SADDLEBROWN'){return '8B4513';}
    if($vColor == 'SALMON'){return 'FA8072';}
    if($vColor == 'SANDYBROWN'){return 'F4A460';}
    if($vColor == 'SEAGREEN'){return '2E8B57';}
    if($vColor == 'SEASHELL'){return 'FFF5EE';}
    if($vColor == 'SIENNA'){return 'A0522D';}
    if($vColor == 'SILVER'){return 'C0C0C0';}
    if($vColor == 'SKYBLUE'){return '87CEEB';}
    if($vColor == 'SLATEBLUE'){return '6A5ACD';}
    if($vColor == 'SLATEGRAY'){return '708090';}
    if($vColor == 'SLATEGREY'){return '708090';}
    if($vColor == 'SNOW'){return 'FFFAFA';}
    if($vColor == 'SPRINGGREEN'){return '00FF7F';}
    if($vColor == 'STEELBLUE'){return '4682B4';}
    if($vColor == 'TAN'){return 'D2B48C';}
    if($vColor == 'TEAL'){return '008080';}
    if($vColor == 'THISTLE'){return 'D8BFD8';}
    if($vColor == 'TOMATO'){return 'FF6347';}
    if($vColor == 'TURQUOISE'){return '40E0D0';}
    if($vColor == 'VIOLET'){return 'EE82EE';}
    if($vColor == 'WHEAT'){return 'F5DEB3';}
    if($vColor == 'WHITE'){return 'FFFFFF';}
    if($vColor == 'WHITESMOKE'){return 'F5F5F5';}
    if($vColor == 'YELLOW'){return 'FFFF00';}
    if($vColor == 'YELLOWGREEN'){return '9ACD32';}
    return $vColor;
}


function nuAddToHashList($J, $run){

    $hash               = array();
    $ignore             = array();
    $ignore[]           = 'sre_layout';
    $ignore[]           = 'slp_php';
    $ignore[]           = 'sre_php';

    foreach($J as $key => $v){                                           //-- add current hash variables
        
        if(!in_array($key, $ignore)){
            $hash['' . $key . '']     = $v;
        }
        
    }

    $d                  		= new DateTime();

    $hash['nu_date_time']		= $d->format('Y-m-d H:i:s');
    $hash['nu_date']			= $d->format('Y-m-d');
    $hash['nu_time']			= $d->format('H:i:s');
    $hash['nu_year']			= $d->format('Y');
    $hash['nu_month']    		= $d->format('m');
    $hash['nu_day'] 			= $d->format('d');
    $hash['nu_hour']			= $d->format('H');
    $hash['nu_minute']			= $d->format('i');
	
	if($run == 'report'){
		
		$hash['sre_layout']		= $J->sre_layout;
		$hash['slp_php']		= $J->slp_php;
		
	}
	
	if($run == 'php'){
		
		$hash['sph_php']		= $J->sph_php;
		
	}

    return $hash;

}


function nuGetUserAccess(){

	$A					= array();

	$s					= "SELECT * FROM zzzzsys_session WHERE zzzzsys_session_id = ? ";
	$t					= nuRunQuery($s, array($_SESSION['SESSION_ID']));			 
	$r					= db_fetch_object($t);
	$j					= json_decode($r->sss_access);
	
	$A['USER_ID']		= $j->session->zzzzsys_user_id;
	$A['USER_GROUP_ID']	= $j->session->zzzzsys_user_group_id;
	$A['HOME_ID']		= $j->session->zzzzsys_form_id;
	$A['global_access']	= $j->session->global_access;
	
	return $A;
	
}


function nuDisplayHeaderHTML() {
	
	$h = "
		<html>
			<head>
			</head>
			<body>
	";
	
	echo $h;
	
}

function nuDisplayFooterHTML(){
	
	$h = "
			</body>
		</html>
	";
	
	echo $h;
	
}

function nuGetFormProperties($i){
	
	$t	= nuRunQuery("SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id = ? ", array($i));
	
	return db_fetch_object($t);
	
}



function nuFormatList(){
	
	$f	= [['','']];
	$s	= "
		SELECT 
			CONCAT(LEFT(srm_type, 1), '|', TRIM(srm_format)) AS a, 
			srm_format AS b 
		FROM zzzzsys_format
		ORDER BY srm_type
	";
	
	$t 	= nuRunQuery($s);
	
	while($r = db_fetch_object($t)){
		$f[] = [$r->a, $r->b];
	}

	return json_encode($f);
	
}




function nuAddFormatting($v, $f){

	if($v == '' || $f == ''){return $v;}
	
	if($f[0] == 'N'){									//-- number  '456.789','N|€ 1,000.00'

		$f			= substr($f, 2);
		$e			= explode(' ', $f);
		$s			= $e[0];							//-- sign
		$n			= $e[1];							//-- number
		$p			= nuPunctuation($f);				//-- returns [comma, decimal]
		$c			= $p[0];							//-- comma
		$dp			= $p[1];							//-- decimal point
		$o			= explode('.', $v);
		
		if(count($o) == 1){$o[1] = '';}
		
		$d			= $o[1];							//-- decimal number

		if($dp == ''){
			$p		= 0;								//-- decimal places
		}else{
			
			$pos	= strpos($f, $dp);					//-- decimal places
			$p		= strlen(substr($f, $pos));
		}

		$h			= nuAddThousandSpaces($o[0], $c);
		
		if($p == 0){ 									//-- no decimal numbers even if it has a decimal place
			$m		= $s . ' ' . $h;
		}else{
			
			$suf	= substr($d . str_repeat('0', 20), 0, $p - 1);
			$m		= $s . ' ' . $h . $dp . $suf;
			
		}

		return $m;
	
	}
	
	if($f[0] == 'D'){	//-- date

		if($v == '0000-00-00' or $v == ''){return '';}
		
		$split	= explode(' ', $v);
		$d		= explode('-', $split[0]);
		$t		= explode(':', $split[1]);

		if($t[0] == ''){
			$t	= [0, 0, 0];
		}
		
		$o	 	= new DateTime();

		$o->setDate($d[0], $d[1], $d[2]);
		$o->setTime($t[0], $t[1], $t[2]);
		
		
		$s 		= '';
		
		$s 		= str_replace('pp', 	$o->format('a'), $f);
		$s 		= str_replace('PP', 	$o->format('A'), $s);
		$s 		= str_replace('yyyy',	$o->format('Y'), $s);
		$s 		= str_replace('yy',		$o->format('y'), $s);
		$s 		= str_replace('mmmm',	$o->format('F'), $s);
		$s 		= str_replace('mmm',	$o->format('M'), $s);
		$s 		= str_replace('mm',		$o->format('n'), $s);
		$s 		= str_replace('dddd',	$o->format('l'), $s);
		$s 		= str_replace('ddd',	$o->format('D'), $s);
		$s 		= str_replace('dd',		$o->format('d'), $s);
		$s 		= str_replace('hh',		$o->format('h'), $s);
		$s 		= str_replace('nn',		$o->format('i'), $s);
		$s 		= str_replace('ss', 	$o->format('s'), $s);
		
		return substr($s,2);
		
	}
	
	return $v;
	
}




function nuAddThousandSpaces($s, $c){

	$r			= strrev($s);
	$a			= str_split($r, 3);
	$n			= [];
	
	for($i = 0 ; $i < count($a) ; $i++){
		
		$n[]	= strrev($a[$i]);
		
		if($i < count($a) - 1){
			
			$n[]	= $c;
		
		}
		
	}
		

	$r			= array_reverse($n);
	
	return implode('', $r);
	
}



function nuPunctuation($f){

	$c			= '';
	$d			= '';
		
	if(strpos($f , '1,' ) !== false){
		$c		= ',';
	}

	if(strpos($f , '1.' ) !== false){
		$c		= '.';
	}

	if(strpos($f , '0,' ) !== false){
		$d		= ',';
	}

	if(strpos($f , '0.' ) !== false){
		$d		= '.';
	}

	return [$c, $d];
	
}


function nuTTList($id, $l){

	$t								= nuRunQuery('SELECT * FROM zzzzsys_object WHERE  zzzzsys_object_id = ?' , [$l]);
	
	while($r = db_fetch_object($t)){						//-- add default empty hash variables
		$_POST['nuHash'][$r->sob_all_id]	= '';
	}
	
	$tt								= nuTT();
	$_POST['nuHash']['TABLE_ID']	= $tt;
	
	nuBuildTempTable($id, $tt);
	
	$f								= db_field_names($tt);
	
	nuRunQuery("DROP TABLE $tt");
	
	return $f;
	
}


function nuBuildTempTable($id, $tt){
		
	$s		= "
			SELECT COUNT(*) 
			FROM zzzzsys_php
			WHERE zzzzsys_php_id = ?
		";
		
	$t		= nuRunQuery($s,[$id]);
	$r		= db_fetch_row($t);


	if($r[0] == 0){							//-- if not from zzzzsys_php
		
		$s	= "
				SELECT sse_sql 
				FROM zzzzsys_select
				WHERE zzzzsys_select_id = ?
			";
			
		$t	= nuRunQuery($s,[$id]);
		$r	= db_fetch_row($t);
		$p	= nuReplaceHashVariables($r[0]);
		$P	= "	nuRunQuery('CREATE TABLE $tt $p');";
			
		eval($P);
		
	}else{
		$e	= new nuEvalPHPClass($id);
	}
	
}


function nuJSInclude($pfile){

    $timestamp = date("YmdHis", filemtime($pfile));                                         //-- Add timestamp so javascript changes are effective immediately
    print "<script src='$pfile?ts=$timestamp' type='text/javascript'></script>\n";
    
}

function nuCSSInclude($pfile){

    $timestamp = date("YmdHis", filemtime($pfile));                                         //-- Add timestamp so javascript changes are effective immediately
    print "<link rel='stylesheet' href='$pfile?ts=$timestamp' />\n";
    
}


function nuImageList($f){

	$a			= [];	
	$s			= "SELECT sfi_code FROM zzzzsys_file ORDER BY sfi_code";
	$t			= nuRunQuery($s);
	
	while($r = db_fetch_object($t)){
		$a[]	= 'Image:' . $r->sfi_code;
	}

	$c								= json_encode(array_merge($a, $f));

	return $c . ";\n";
	
}



function nuCreateFile($j){

	if($j == ''){return '';}

	$id		= nuID();
	$f		= json_decode($j);
	$t		= explode('/',$f->type)[1];
	$file	= sys_get_temp_dir()."/$id." . $t;
	$h		= fopen($file , 'w');
	$d		= base64_decode($f->file);
	$p		= explode(';base64,', $d)[1];
	$data 	= base64_decode($p);
	
	fwrite($h, $data);
	fclose($h);
	
	return $file;
}


function nuHash(){
	return $_POST['nuHash'];
}

?>