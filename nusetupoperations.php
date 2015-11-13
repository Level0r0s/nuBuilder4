<?php

    require_once('nudatabase.php');
    require_once('nuschema.php');

    global $nuSchema;

    $op = $_REQUEST['op'];
    $q = $_REQUEST['q'];

    $response = array();
    $response['success'] = true;

    if($op == 'addtables'){
        foreach($nuSchema as $table => $fields){
            $createTableSQL = "CREATE TABLE IF NOT EXISTS $table ( ";
            foreach($fields as $fieldname => $props){
                $createTableSQL .= " $fieldname ";
                foreach($props as $prop => $value){
                    if($prop == 'null'){
                        if($value){
                            $createTableSQL .= " NULL ";
                        } else {
                            $createTableSQL .= " NOT NULL ";
                        }
                    }
                    if($prop == 'type'){
                        $createTableSQL .= " $value ";
                    }
                    if($prop == 'default'){
                        $createTableSQL .= " DEFAULT '$value' ";
                    }
                }
                $createTableSQL .= ",";
            }
            $createTableSQL = substr($createTableSQL,0,strlen($createTableSQL)-1)." ) ";
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
    }

    die(json_encode($response));

?>