<?php

    $loggedIn = false;

    if(array_key_exists('user_id', $_REQUEST) && array_key_exists('session_id', $_REQUEST)){
        require_once('nusession.php');
        if(nuIsLoggedIn($_REQUEST['user_id'],$_REQUEST['session_id'])){
            $loggedIn = true;
        }
    }

    if($loggedIn){
        require_once('nuform.php');
        nuLoadForm($_REQUEST);
    } else {
        require_once('nuloginform.php');
        nuLoadLoginForm();
    }

?>