<?php

    require_once('../nudatabase.php');
    require_once('../nuconfig.php');
    require_once('../nucommon.php');

    global $nuConfigDBGlobeadminPassword;

    $response = array();
    $response['success'] = false;

    if($_REQUEST['username'] == 'globeadmin' && $_REQUEST['password'] == $nuConfigDBGlobeadminPassword){
        $response['success'] = true;
        logUserIn('globeadmin');
        die(json_encode($response));
    }

    // TODO - make username / password hashed
    $checkUserQRY = nuRunQuery("SELECT * FROM zzzzsys_user WHERE sus_username = '".addslashes($_REQUEST['username'])."' AND sus_password = '".addslashes($_REQUEST['password'])."' ");
    if(db_num_rows($checkUserQRY) == 1){
        $checkUserOBJ = db_fetch_object($checkUserQRY);
        $response['success'] = true;
        logUserIn($checkUserOBJ->zzzzsys_user_id);
        die(json_encode($response));
    }

    die(json_encode($response));

    function logUserIn($userID){
        
        global $response;
        $response['session_id'] = nuID();

        require_once('../nusession.php');
        nuCreateSession($userID, $response['session_id']);

    }

?>