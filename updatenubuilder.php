<?php

ini_set('max_execution_time', 300);

$t[] = 'zzzzsys_access_level';
$t[] = 'zzzzsys_access_level_form';
$t[] = 'zzzzsys_access_level_php';
$t[] = 'zzzzsys_access_level_report';
$t[] = 'zzzzsys_browse';
$t[] = 'zzzzsys_debug';
$t[] = 'zzzzsys_event';
$t[] = 'zzzzsys_file';
$t[] = 'zzzzsys_form';
$t[] = 'zzzzsys_format';
$t[] = 'zzzzsys_function';
$t[] = 'zzzzsys_object';
$t[] = 'zzzzsys_php';
$t[] = 'zzzzsys_php_library';
$t[] = 'zzzzsys_report';
$t[] = 'zzzzsys_select';
$t[] = 'zzzzsys_select_clause';
$t[] = 'zzzzsys_session';
$t[] = 'zzzzsys_setup';
$t[] = 'zzzzsys_tab';
$t[] = 'zzzzsys_timezone';
$t[] = 'zzzzsys_translate';
$t[] = 'zzzzsys_user';

try {
    require dirname(__FILE__) . DIRECTORY_SEPARATOR . 'config.php';
    $nuDB = new PDO("mysql:host=$nuConfigDBHost;dbname=$nuConfigDBName;charset=utf8", $nuConfigDBUser, $nuConfigDBPassword, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    $nuDB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $nuDB->exec("SET CHARACTER SET utf8");
} catch (Exception $exception){
    die('Could not connect to the database from config.php. Exception: '.$exception);
}

try {
    $temp_database = 'tempupdatenubuilder4'.date('Ymd');
    nuRunQuery("DROP DATABASE IF EXISTS $temp_database ");
    nuRunQuery("CREATE DATABASE $temp_database ");
} catch(Exception $exception){
    die('Could not create temp database. Exception: '.$exception);
}

try {
    $sql = file_get_contents(dirname(__FILE__) . DIRECTORY_SEPARATOR . 'nubuilder4.sql');
    $nuTempDB = new PDO("mysql:host=$nuConfigDBHost;dbname=$temp_database;charset=utf8", $nuConfigDBUser, $nuConfigDBPassword, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    $nuTempDB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $nuTempDB->exec("SET CHARACTER SET utf8");
    $nuTempDB->exec($sql);
} catch(Exception $exception){
    die('Could not load nubuilder4.sql into database '.$temp_database.'. Exception: '.$exception);
}

try {

    $nuTempDB->exec("
        DELETE FROM zzzzsys_form 
        WHERE zzzzsys_form_id NOT LIKE 'nu%' 
    ");
    $nuTempDB->exec("
        DELETE FROM zzzzsys_tab 
        WHERE syt_zzzzsys_form_id NOT IN (SELECT zzzzsys_form_id FROM zzzzsys_form)
    ");
    $nuTempDB->exec("
        DELETE FROM zzzzsys_object 
        WHERE sob_all_zzzzsys_tab_id NOT IN (SELECT zzzzsys_tab_id FROM zzzzsys_tab)
    ");
    $nuTempDB->exec("
        DELETE FROM zzzzsys_php 
        WHERE sph_zzzzsys_form_id NOT LIKE 'nu%'
        AND sph_zzzzsys_form_id NOT IN (SELECT zzzzsys_object_id FROM zzzzsys_object)
    ");
    $nuTempDB->exec("
        DELETE FROM zzzzsys_php_library 
        WHERE spl_zzzzsys_php_id NOT IN (SELECT zzzzsys_php_id FROM zzzzsys_php)
    ");
    $nuTempDB->exec("
        DELETE FROM zzzzsys_browse 
        WHERE sbr_zzzzsys_form_id NOT IN (SELECT zzzzsys_form_id FROM zzzzsys_form)
    ");
    $nuTempDB->exec("
        DELETE FROM zzzzsys_event 
        WHERE sev_zzzzsys_object_id NOT IN (SELECT zzzzsys_object_id FROM zzzzsys_object)
    ");


} catch (Exception $exception){
    die('Could not alter database '.$temp_database.'. Exception: '.$exception);
}

try {

    for($i = 0 ; $i < count($t) ; $i++){

        $table  = $t[$i];

        $backup_tablename = "backupsys" . date('Ymd') . "_$table";
        nuRunQuery("DROP TABLE IF EXISTS $backup_tablename ");
        nuRunQuery("CREATE TABLE $backup_tablename SELECT * FROM $table ");

    }

} catch (Exception $exception){
    die('Could not copy current zzzzsys tables to backup tables. Exception: '.$exception);
}

try {
    $to_delete_tablename_prefix = "todelete".date('Ymd')."_";
    for($i = 0 ; $i < count($t) ; $i++){
        $table  = $t[$i];
        $to_delete_tablename = $to_delete_tablename_prefix."$table";
        nuRunQuery("DROP TABLE IF EXISTS $to_delete_tablename ");
        nuRunQuery("CREATE TABLE $to_delete_tablename LIKE $table ");
    }
    nuRunQuery("
        INSERT INTO $to_delete_tablename_prefix"."zzzzsys_form
        SELECT * FROM zzzzsys_form
        WHERE zzzzsys_form_id LIKE 'nu%' 
    ");
    nuRunQuery("
        INSERT INTO $to_delete_tablename_prefix"."zzzzsys_tab
        SELECT * FROM zzzzsys_tab
        WHERE syt_zzzzsys_form_id IN (SELECT zzzzsys_form_id FROM $to_delete_tablename_prefix"."zzzzsys_form)
    ");
    nuRunQuery("
        INSERT INTO $to_delete_tablename_prefix"."zzzzsys_object
        SELECT * FROM zzzzsys_object
        WHERE sob_all_zzzzsys_tab_id IN (SELECT zzzzsys_tab_id FROM $to_delete_tablename_prefix"."zzzzsys_tab)
    ");
    nuRunQuery("
        INSERT INTO $to_delete_tablename_prefix"."zzzzsys_php
        SELECT * FROM zzzzsys_php
        WHERE sph_zzzzsys_form_id LIKE 'nu%'
        AND sph_zzzzsys_form_id IN (SELECT zzzzsys_object_id FROM $to_delete_tablename_prefix"."zzzzsys_object)
    ");
    nuRunQuery("
        INSERT INTO $to_delete_tablename_prefix"."zzzzsys_php_library
        SELECT * FROM zzzzsys_php_library
        WHERE spl_zzzzsys_php_id IN (SELECT zzzzsys_php_id FROM $to_delete_tablename_prefix"."zzzzsys_php)
    ");
    nuRunQuery("
        INSERT INTO $to_delete_tablename_prefix"."zzzzsys_browse
        SELECT * FROM zzzzsys_browse
        WHERE sbr_zzzzsys_form_id IN (SELECT zzzzsys_form_id FROM $to_delete_tablename_prefix"."zzzzsys_form)
    ");
    nuRunQuery("
        INSERT INTO $to_delete_tablename_prefix"."zzzzsys_event
        SELECT * FROM zzzzsys_event
        WHERE sev_zzzzsys_object_id IN (SELECT zzzzsys_object_id FROM $to_delete_tablename_prefix"."zzzzsys_object)
    ");
} catch(Exception $exception){
    die('Could not create todelete tables. Exception: '.$exception);
}

try {
    for($i = 0 ; $i < count($t) ; $i++){
        $table  = $t[$i];
        nuRunQuery("DELETE FROM $table WHERE $table"."_id IN (SELECT $table"."_id FROM $to_delete_tablename_prefix"."$table) ");
    }
} catch(Exception $exception) {
    die('Could not delete from tables. Exception: '.$exception);
}

try {
    $to_delete_tablename_prefix = "todelete".date('Ymd')."_";
    for($i = 0 ; $i < count($t) ; $i++){
        $table  = $t[$i];
        $to_delete_tablename = $to_delete_tablename_prefix."$table";
        nuRunQuery("DROP TABLE IF EXISTS $to_delete_tablename ");
    }
} catch(Exception $exception){
    die('Could not delete todelete tables. Exception: '.$exception);
}

/*

THIS IS WHERE THE COLUMN SYNC SHOULD HAPPEN

*/

try {
    for($i = 0 ; $i < count($t) ; $i++){
        $table  = $t[$i];
        nuRunQuery("REPLACE INTO $nuConfigDBName.$table SELECT * FROM $temp_database.$table ");
    }
} catch(Exception $exception) {
    die('Could not replace system rows from update into live. Exception: '.$exception);
}

try {
    nuRunQuery("DROP DATABASE IF EXISTS $temp_database ");
} catch(Exception $exception) {
    die('Could not drop temp database. Exception: '.$exception);
}

die('Finished updating.');

function nuRunQuery($sql, $values = array())
{
    global $nuDB;
    $preparedQRY = $nuDB->prepare($sql);
    $preparedQRY->execute($values);
    return $preparedQRY;
}

function db_num_rows($o)
{
    if(!is_object($o)){return 0;}
    return $o->rowCount();
}