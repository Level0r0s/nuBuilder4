<?php

    require_once('nucommon.php');

    try{
        require_once('nuconfig.php');
        $GLOBALS['nuDB'] = new PDO("mysql:host=".$GLOBALS['nuConfigDBHost'].";dbname=".$GLOBALS['nuConfigDBName'].";charset=utf8", $GLOBALS['nuConfigDBUser'], $GLOBALS['nuConfigDBPassword'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
        $GLOBALS['nuDB']->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (Exception $e) {
        header("Location: nuerror.php?error=pdodbconnect&msg=".$e->getMessage());
    }

    function nuRunQuery($sql){

        if(!$GLOBALS['nuDB']){
            return false;
        }

        $query = $GLOBALS['nuDB']->prepare($sql);

        try {
            $query->execute();
        } catch(PDOException $ex){

            $message     = $ex->getMessage();
            $array       = debug_backtrace();
            $trace       = '';

            for($i = 0 ; $i < count($array) ; $i ++){
                $trace  .= $array[$i]['file'] . ' - line ' . $array[$i]['line'] . ' (' . $array[$i]['function'] . ")\n\n";
            }

            $error       = "PDO MESSAGE: $message, SQL: ".addslashes($sql).", BACK TRACE: $trace";
            try{
                $errorTableCheckQRY = $GLOBALS['nuDB']->prepare("SHOW TABLES LIKE 'zzzzsys_error' ");
                $errorTableCheckQRY->execute();
            } catch(Exception $e){
                header("Location: nuerror.php?error=errortable&msg=".$e->getMessage());
                return false;
            }
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
        require_once('nuconfig.php');
        $a       = array();
        $d       = $GLOBALS['nuConfigDBName'];
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