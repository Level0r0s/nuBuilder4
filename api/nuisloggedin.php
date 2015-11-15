<?php

    $response = array();
    $response['success'] = false;

    $sessionID = '';
    $userID = '';
    if(array_key_exists('session_id', $_REQUEST)){
        $sessionID = $_REQUEST['session_id'];
    } else {
        die(json_encode($response));
    }
    if(array_key_exists('session_id', $_REQUEST)){
        $userID = $_REQUEST['user_id'];
    } else {
        die(json_encode($response));
    }

    require_once('../nusession.php');

    if(nuIsLoggedIn($userID, $sessionID))
        $response[success] = true;

    die(json_encode($response));

?>