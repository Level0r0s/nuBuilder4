<?php

    require_once('../nudatabase.php');

    $response = array();
    $response['success'] = false;

    $sessionID = '';
    if(array_key_exists('session_id', $_REQUEST))
        $sessionID = $_REQUEST['session_id'];

    if(nuRunQuery("UPDATE zzzzsys_session SET ses_logged_out = 1 WHERE zzzzsys_session_id = '$sessionID' "))
        $response['success'] = true;

    die(json_encode($response));

?>