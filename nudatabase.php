<?php

    require_once('nuconfig.php');
    require_once('nucommon.php');

    global $nuConfigDBHost;
    global $nuConfigDBName;
    global $nuConfigDBUser;
    global $nuConfigDBPassword;

    try{
        $nuDB = new PDO("mysql:host=$nuConfigDBHost;dbname=$nuConfigDBName;charset=utf8", $nuConfigDBUser, $nuConfigDBPassword, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
        $nuDB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (Exception $e) {
        header("Location: nuerror.php?error=pdodbconnect&msg=".$e->getMessage());
    }

    function nuRunQuery($sql, $replaceInSQLArray = array()){

        global $nuDB;

        if(!$nuDB)
            return false;

        $query = $nuDB->prepare($sql);

        try {
            $query->execute($replaceInSQLArray);
        } catch(PDOException $ex){

            $message     = $ex->getMessage();
            $array       = debug_backtrace();
            $trace       = '';

            for($i = 0 ; $i < count($array) ; $i ++){
                $trace  .= $array[$i]['file'] . ' - line ' . $array[$i]['line'] . ' (' . $array[$i]['function'] . ")\n\n";
            }

            $error       = "PDO MESSAGE: $message, SQL: ".addslashes($sql).", BACK TRACE: $trace";
            nuError($error);

            return false;

        }

        return $query;

    }

    function db_is_auto_id($t, $p){
        $t       = nuRunQuery("SHOW COLUMNS FROM $t WHERE `Field` = '$p'");   //-- mysql's way of checking if its an auto-incrementing id primary key
        $r       = db_fetch_object($t);
        return $r->Extra == 'auto_increment';
    }

    function db_fetch_array($o){
        if (is_object($o)) {
            return $o->fetch(PDO::FETCH_BOTH);
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
        global $nuConfigDBName;
        $a       = array();
        $d       = $nuConfigDBName;
        $s       = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = '$d' AND TABLE_NAME = '$n' ORDER BY ORDINAL_POSITION ";
        $t       = nuRunQuery($s);
        while($r = db_fetch_object($t)){
            $a[] = $r->COLUMN_NAME;
        }
        return $a;
    }

    function db_num_rows($o) {
        if($o == false)
            return false;
        return $o->rowCount();
    }

?>