<?php

session_start();

error_reporting( error_reporting() & ~E_NOTICE );
require_once('config.php'); 

$_SESSION['DBHost']                 = $nuConfigDBHost;
$_SESSION['DBName']                 = $nuConfigDBName;
$_SESSION['DBUser']                 = $nuConfigDBUser;
$_SESSION['DBPassword']             = $nuConfigDBPassword;
$_SESSION['DBGlobeadminPassword']   = $nuConfigDBGlobeadminPassword;
$_SESSION['DBGlobeadminUsername']   = $nuConfigDBGlobeadminUsername;
$_SESSION['title']                  = $nuConfigTitle; 
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
	
	if(is_object($t)){
		$t = print_r($t,1);
	}

    $i = nuID();
    $d = date('Y-m-d H:i:s');
    $s = $nuDB->prepare("INSERT INTO zzzzsys_debug (zzzzsys_debug_id, deb_message, deb_added) VALUES (? , ?, ?)");

    $s->execute(array($i, $t, $d));
    
    if($nuDB->errorCode() !== '00000'){
        error_log($nuDB->errorCode() . ": Could not establish nuBuilder database connection");
    }

	return $i;
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
        $this->where      = $where;
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



    public function addWhereClause($pClause){

        if(trim($this->where) == ''){
            $this->where = "WHERE $pClause";
        }else{
            $clause      = substr($this->where, 6);
            $this->where = "WHERE ($clause) AND ($pClause)";
        }

    }

    
    public function getTableName(){

    	return trim(substr($this->from, 5));

    }

    public function setFrom($pString){

    	$this->from          = $pString; 
    	$this->buildSQL();

    }

    public function setWhere($pString){

		$this->where = $pString;
		$this->buildSQL();

    }

    public function getWhere(){
    	return $this->where; 
    }

    public function setGroupBy($pString){

    	$this->groupBy       = $pString; 
    	$this->buildSQL();

    }

    public function setHaving($pString){

    	$this->having        = $pString; 
    	$this->buildSQL();

    }

    public function setOrderBy($pString){

    	$this->orderBy       = $pString; 
    	$this->buildSQL();

    }

    public function addField($pString){

		$this->fields[]      = $pString; 
    	$this->buildSQL();

    }

    public function removeAllFields(){

		$this->fields        = array();

    }

    private function buildSQL(){
    	$this->SQL           = 'SELECT '; 
    	$this->SQL           = $this->SQL . ' ' . implode(',', $this->fields);
    	$this->SQL           = $this->SQL . ' ' . $this->from;
    	$this->SQL           = $this->SQL . ' ' . $this->where;
    	$this->SQL           = $this->SQL . ' ' . $this->groupBy;
    	$this->SQL           = $this->SQL . ' ' . $this->having;
    	$this->SQL           = $this->SQL . ' ' . $this->orderBy;
    }

}


function nuTextFormats($dropdownList = false){

//-----number formats
	$format	= array();
	$ddl		= array();
	
 	for ($i = 0; $i < 33; $i++) {
		$format[$i] 	= new stdClass;
	}
	
	$format[0]->type         = 'number';
	$format[0]->format       = '0';
	$format[0]->decimal      = '.';
	$format[0]->separator    = '';
	$format[0]->sample       = '10000';
	$format[0]->phpdate      = '';
	$format[0]->sql          = 'REPLACE(FORMAT(??,0), ",", "")';

	$format[1]->type         = 'number';
	$format[1]->format       = '1';
	$format[1]->decimal      = '.';
	$format[1]->separator    = '';
	$format[1]->sample       = '10000.0';
	$format[1]->phpdate      = '';
	$format[1]->sql          = 'REPLACE(FORMAT(??,1), ",", "")';

	$format[2]->type         = 'number';
	$format[2]->format       = '2';
	$format[2]->decimal      = '.';
	$format[2]->separator    = '';
	$format[2]->sample       = '10000.00';
	$format[2]->phpdate      = '';
	$format[2]->sql          = 'REPLACE(FORMAT(??,2), ",", "")';

	$format[3]->type         = 'number';
	$format[3]->format       = '3';
	$format[3]->decimal      = '.';
	$format[3]->separator    = '';
	$format[3]->sample       = '10000.000';
	$format[3]->phpdate      = '';
	$format[3]->sql          = 'REPLACE(FORMAT(??,3), ",", "")';

	$format[4]->type         = 'number';
	$format[4]->format       = '4';
	$format[4]->decimal      = '.';
	$format[4]->separator    = '';
	$format[4]->sample       = '10000.0000';
	$format[4]->phpdate      = '';
	$format[4]->sql          = 'REPLACE(FORMAT(??,4), ",", "")';

	$format[5]->type         = 'number';
	$format[5]->format       = '5';
	$format[5]->decimal      = '.';
	$format[5]->separator    = '';
	$format[5]->sample       = '10000.00000';
	$format[5]->phpdate      = '';
	$format[5]->sql          = 'REPLACE(FORMAT(??,5), ",", "")';

//-----date formats

	$format[6]->type         = 'date';
	$format[6]->format       = 'dd-mmm-yyyy';
	$format[6]->decimal      = '.';
	$format[6]->separator    = '';
	$format[6]->sample       = '13-Jan-2007';
	$format[6]->phpdate      = 'd-M-Y';
	$format[6]->sql          = 'DATE_FORMAT(??,"%d-%b-%Y")';
	$format[6]->jquery       = 'dd-M-yy';

	$format[7]->type         = 'date';
	$format[7]->format       = 'dd-mm-yyyy';
	$format[7]->decimal      = '.';
	$format[7]->separator    = '';
	$format[7]->sample       = '13-01-2007';
	$format[7]->phpdate      = 'd-m-Y';
	$format[7]->sql          = 'DATE_FORMAT(??,"%d-%m-%Y")';
	$format[7]->jquery       = 'dd-mm-yy';

	$format[8]->type         = 'date';
	$format[8]->format       = 'mmm-dd-yyyy';
	$format[8]->decimal      = '.';
	$format[8]->separator    = '';
	$format[8]->sample       = 'Jan-13-2007';
	$format[8]->phpdate      = 'M-d-Y';
	$format[8]->sql          = 'DATE_FORMAT(??,"%b-%d-%Y")';
	$format[8]->jquery       = 'M-dd-yy';

	$format[9]->type         = 'date';
	$format[9]->format       = 'mm-dd-yyyy';
	$format[9]->decimal      = '.';
	$format[9]->separator    = '';
	$format[9]->sample       = '01-13-2007';
	$format[9]->phpdate      = 'm-d-Y';
	$format[9]->sql          = 'DATE_FORMAT(??,"%m-%d-%Y")';
	$format[9]->jquery       = 'mm-dd-yy';

	$format[10]->type        = 'date';
	$format[10]->format      = 'dd-mmm-yy';
	$format[10]->decimal     = '.';
	$format[10]->separator   = '';
	$format[10]->sample      = '13-Jan-07';
	$format[10]->phpdate     = 'd-M-y';
	$format[10]->sql         = 'DATE_FORMAT(??,"%d-%b-%y")';
	$format[10]->jquery       = 'dd-M-y';

	$format[11]->type        = 'date';
	$format[11]->format      = 'dd-mm-yy';
	$format[11]->decimal     = '.';
	$format[11]->separator   = '';
	$format[11]->sample      = '13-01-07';
	$format[11]->phpdate     = 'd-m-y';
	$format[11]->sql         = 'DATE_FORMAT(??,"%d-%m-%y")';
	$format[11]->jquery       = 'dd-mm-y';

	$format[12]->type        = 'date';
	$format[12]->format      = 'mmm-dd-yy';
	$format[12]->decimal     = '.';
	$format[12]->separator   = '';
	$format[12]->sample      = 'Jan-13-07';
	$format[12]->phpdate     = 'M-d-y';
	$format[12]->sql         = 'DATE_FORMAT(??,"%b-%d-%y")';
	$format[12]->jquery       = 'M-dd-y';

	$format[13]->type        = 'date';
	$format[13]->format      = 'mm-dd-yy';
	$format[13]->decimal     = '.';
	$format[13]->separator   = '';
	$format[13]->sample      = '01-13-07';
	$format[13]->phpdate     = 'm-d-y';
	$format[13]->sql         = 'DATE_FORMAT(??,"%m-%d-%y")';
	$format[13]->jquery       = 'mm-dd-y';

//-----number formats

	$format[14]->type        = 'number';
	$format[14]->format      = '0';
	$format[14]->decimal     = '.';
	$format[14]->separator   = ',';
	$format[14]->sample      = '10,000';
	$format[14]->phpdate     = '';
	$format[14]->sql         = 'FORMAT(??,0)';

	$format[15]->type        = 'number';
	$format[15]->format      = '1';
	$format[15]->decimal     = '.';
	$format[15]->separator   = ',';
	$format[15]->sample      = '10,000.0';
	$format[15]->phpdate     = '';
	$format[15]->sql         = 'FORMAT(??,1)';

	$format[16]->type        = 'number';
	$format[16]->format      = '2';
	$format[16]->decimal     = '.';
	$format[16]->separator   = ',';
	$format[16]->sample      = '10,000.00';
	$format[16]->phpdate     = '';
	$format[16]->sql         = 'FORMAT(??,2)';

	$format[17]->type        = 'number';
	$format[17]->format      = '3';
	$format[17]->decimal     = '.';
	$format[17]->separator   = ',';
	$format[17]->sample      = '10,000.000';
	$format[17]->phpdate     = '';
	$format[17]->sql         = 'FORMAT(??,3)';

	$format[18]->type        = 'number';
	$format[18]->format      = '4';
	$format[18]->decimal     = '.';
	$format[18]->separator   = ',';
	$format[18]->sample      = '10,000.0000';
	$format[18]->phpdate     = '';
	$format[18]->sql         = 'FORMAT(??,4)';

	$format[19]->type        = 'number';
	$format[19]->format      = '5';
	$format[19]->decimal     = '.';
	$format[19]->separator   = ',';
	$format[19]->sample      = '10,000.00000';
	$format[19]->phpdate     = '';
	$format[19]->sql         = 'FORMAT(??,5)';

//-----euro number formats

	$format[20]->type        = 'number';
	$format[20]->format      = '0';
	$format[20]->decimal     = ',';
	$format[20]->separator   = '';
	$format[20]->sample      = '10000';
	$format[20]->phpdate     = '';
	$format[20]->sql         = 'FORMAT(??,0)';

	$format[21]->type        = 'number';
	$format[21]->format      = '1';
	$format[21]->decimal     = ',';
	$format[21]->separator   = '';
	$format[21]->sample      = '10000,0';
	$format[21]->phpdate     = '';
	$format[21]->sql         = 'FORMAT(??,1)';

	$format[22]->type        = 'number';
	$format[22]->format      = '2';
	$format[22]->decimal     = ',';
	$format[22]->separator   = '';
	$format[22]->sample      = '10000,00';
	$format[22]->phpdate     = '';
	$format[22]->sql         = 'FORMAT(??,2)';

	$format[23]->type        = 'number';
	$format[23]->format      = '3';
	$format[23]->decimal     = ',';
	$format[23]->separator   = '';
	$format[23]->sample      = '10000,000';
	$format[23]->phpdate     = '';
	$format[23]->sql         = 'FORMAT(??,3)';

	$format[24]->type        = 'number';
	$format[24]->format      = '4';
	$format[24]->decimal     = ',';
	$format[24]->separator   = '';
	$format[24]->sample      = '10000,0000';
	$format[24]->phpdate     = '';
	$format[24]->sql         = 'FORMAT(??,4)';

	$format[25]->type        = 'number';
	$format[25]->format      = '5';
	$format[25]->decimal     = ',';
	$format[25]->separator   = '';
	$format[25]->sample      = '10000,00000';
	$format[25]->phpdate     = '';
	$format[25]->sql         = 'FORMAT(??,5)';

	$format[26]->type        = 'number';
	$format[26]->format      = '0';
	$format[26]->decimal     = ',';
	$format[26]->separator   = '.';
	$format[26]->sample      = '10.000';
	$format[26]->phpdate     = '';
	$format[26]->sql         = 'FORMAT(??,0)';

	$format[27]->type        = 'number';
	$format[27]->format      = '1';
	$format[27]->decimal     = ',';
	$format[27]->separator   = '.';
	$format[27]->sample      = '10.000,0';
	$format[27]->phpdate     = '';
	$format[27]->sql         = 'FORMAT(??,1)';

	$format[28]->type        = 'number';
	$format[28]->format      = '2';
	$format[28]->decimal     = ',';
	$format[28]->separator   = '.';
	$format[28]->sample      = '10.000,00';
	$format[28]->phpdate     = '';
	$format[28]->sql         = 'FORMAT(??,2)';

	$format[29]->type        = 'number';
	$format[29]->format      = '3';
	$format[29]->decimal     = ',';
	$format[29]->separator   = '.';
	$format[29]->sample      = '10.000,000';
	$format[29]->phpdate     = '';
	$format[29]->sql         = 'FORMAT(??,3)';

	$format[30]->type        = 'number';
	$format[30]->format      = '4';
	$format[30]->decimal     = ',';
	$format[30]->separator   = '.';
	$format[30]->sample      = '10.000,0000';
	$format[30]->phpdate     = '';
	$format[30]->sql         = 'FORMAT(??,4)';

	$format[31]->type        = 'number';
	$format[31]->format      = '5';
	$format[31]->decimal     = ',';
	$format[31]->separator   = '.';
	$format[31]->sample      = '10.000,00000';
	$format[31]->phpdate     = '';
	$format[31]->sql         = 'FORMAT(??,5)';

	$format[32]->type         = 'date';
	$format[32]->format       = 'yyyy-mm-dd';
	$format[32]->decimal      = '.';
	$format[32]->separator    = '';
	$format[32]->sample       = '2007-01-13';
	$format[32]->phpdate      = 'Y-m-d';
	$format[32]->sql          = 'DATE_FORMAT(??,"%Y-%m-%d")';
	
	
 	for ($i = 0; $i < 33; $i++) {
		$ddl[$i]		= $format[$i]->sample;
	}

	if($dropdownList){
		return $format;
	}else{
		return $ddl;
	}

}

function nuSetHashList($H){

	for($i = 1 ; $i < count($H) ; $i++){
		$r[$H[$i][0]]	= $H[$i][1];
	}

	return $r;

}


function nuRunReport($nuRID){
	
	$iii								= nuID();
	$nuT								= nuRunQuery("SELECT * FROM zzzzsys_report WHERE zzzzsys_report_id = '$nuRID'");
	$nuA								= db_fetch_object($nuT);
	$_POST['nuHash']['code']			= $nuA->sre_code;
	$_POST['nuHash']['description']		= $nuA->sre_description;
	$_POST['nuHash']['sre_layout']		= nuReplaceHashVariables($nuA->sre_layout);
	$nuI								= $nuA->sre_zzzzsys_php_id;
	$nuT								= nuRunQuery("SELECT * FROM zzzzsys_php WHERE zzzzsys_php_id = '$nuI'");
	$nuR								= db_fetch_object($nuT);
	$_POST['nuHash']['sph_php']		= $nuR->sph_php;
	$nuJ								= json_encode($_POST['nuHash']);
	$nuS								= "INSERT INTO zzzzsys_debug (zzzzsys_debug_id, deb_message) VALUES (?, ?)";
	nuRunQuery($nuS, array($iii, $nuJ));
	return $iii;
	
}


function nuRunPHP($nuRID){

	$iii								= nuID();
	$nuT								= nuRunQuery("SELECT * FROM zzzzsys_php WHERE zzzzsys_php_id = '$nuRID'");
	$nuA								= db_fetch_object($nuT);
	$_POST['nuHash']['code']			= $nuA->sph_code;
	$_POST['nuHash']['description']		= $nuA->sph_description;
	$_POST['nuHash']['sph_php']		= nuReplaceHashVariables($nuA->sph_php);
	$nuJ								= json_encode($_POST['nuHash']);
	$nuS								= "INSERT INTO zzzzsys_debug (zzzzsys_debug_id, deb_message) VALUES (?, ?)";
	nuRunQuery($nuS, array($iii, $nuJ));

	return $iii;
	
}


function nuReplaceHashes($str, $arr){

	while(list($key, $value) = each($arr)){

		if( !is_object($value) and !is_array($value) and $str != '' and $key != ''){
			$newValue = addslashes($value);
			$str = str_replace('#'.$key.'#', $newValue, $str);
		}
		
	}

    $GLOBALS['latest_hashData'] = $arr;
    
	return $str;
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

    $d                  = new DateTime();

    $hash['nu_date_time']     = $d->format('Y-m-d H:i:s');
    $hash['nu_date']          = $d->format('Y-m-d');
    $hash['nu_time']          = $d->format('H:i:s');
    $hash['nu_year']          = $d->format('Y');
    $hash['nu_month']         = $d->format('m');
    $hash['nu_day']           = $d->format('d');
    $hash['nu_hour']          = $d->format('H');
    $hash['nu_minute']        = $d->format('i');
	
	if($run == 'report'){
		
		$hash['sre_layout']       = $J->sre_layout;
		$hash['slp_php']          = $J->slp_php;
		
	}
	
	if($run == 'php'){
		
		$hash['sph_php']          = $J->sph_php;
		
	}

    return $hash;

}




function nuSchema(){

	$t	= nuRunQuery("SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE table_schema = DATABASE()");
	$S	= array();

	while($r = db_fetch_object($t)){

		$tn		= $r->table_name; 
		$S[$tn]	= db_columns($tn);

	}

	return $S;

}


function nuDictionary($l){

	$t	= nuRunQuery("SELECT * FROM zzzzsys_translate WHERE trl_language = '$l' ORDER BY trl_english");
	$S	= array();

	if(db_num_rows($t) == 0){return $S;}
	
	while($r = db_fetch_object($t)){

		$S[]		= $r;

	}

	return $S;

}



?>