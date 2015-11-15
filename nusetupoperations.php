<?php

    require_once('nudatabase.php');
    require_once('nuschema.php');
    require_once('nucommon.php');
    require_once('nuconfig.php');

    global $nuConfigDBName;
    global $nuSchema;

    $op = $_REQUEST['op'];
    $q = '';
    if(array_key_exists('q', $_REQUEST))
        $q = $_REQUEST['q'];

    $response = array();
    $response['success'] = true;

    if($op == 'addtables'){
        nuRunQuery("ALTER DATABASE $nuConfigDBName CHARACTER SET utf8 COLLATE utf8_general_ci ");
        foreach($nuSchema as $table => $fields){
            $primaryKeySQL = '';
            $createTableSQL = "CREATE TABLE IF NOT EXISTS $table ( ";
            foreach($fields as $fieldname => $props){
                $createTableSQL .= " $fieldname ";
                $typeSQL = '';
                $nullSQL = '';
                $defaultSQL = '';
                foreach($props as $prop => $value){
                    if($prop == 'null'){
                        if($value){
                            $nullSQL = " NULL ";
                        } else {
                            $nullSQL = " NOT NULL ";
                        }
                    }
                    if($prop == 'type'){
                        $typeSQL = " $value ";
                    }
                    if($prop == 'default'){
                        $defaultSQL = " DEFAULT '$value' ";
                    }
                    if($prop == 'pk'){
                        $primaryKeySQL = " , PRIMARY KEY($fieldname) ";
                    }
                }
                $createTableSQL .= $typeSQL.$nullSQL.$defaultSQL.",";
            }
            $createTableSQL = substr($createTableSQL,0,strlen($createTableSQL)-1).$primaryKeySQL." ) ";
            if(!nuRunQuery($createTableSQL)){
                $response['success'] = false;
                die(json_encode($response));
            }
        }
    } else if($op == 'addcolumn'){
        if(!nuRunQuery($q)){
            $response['success'] = false;
            die(json_encode($response));
        }
    } else if($op == 'insertdata'){
        global $nuDB;
        if(!exec_sql_from_file('nusetup.sql', $nuDB)){
            $response['success'] = false;
            die(json_encode($response));
        }
    }

    die(json_encode($response));

    function exec_sql_from_file($path, PDO $pdo) {
        if (! preg_match_all("/('(\\\\.|.)*?'|[^;])+/s", file_get_contents($path), $m))
            return;
        foreach ($m[0] as $sql) {
            if (strlen(trim($sql))){
                try {
                    $pdo->exec($sql);
                } catch(Exception $e){
                    nuError("Error installing nuBuilder. SQL = ".$sql);
                    return false;
                }
            }
        }
        return true;
    }

?>