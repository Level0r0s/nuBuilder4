<?php

    require_once('nudatabase.php');
    require_once('nucommon.php');

    function nuResetTimeout($userID, $sessionID){
        nuRunQuery("UPDATE zzzzsys_session SET ses_last_activity = NOW() WHERE zzzzsys_session_id = '$sessionID' AND ses_zzzzsys_user_id = '$userID' ");
    }

    function nuIsLoggedIn($userID, $sessionID){
        $getTimeoutQRY = nuRunQuery("SELECT set_timeout FROM zzzzsys_setup WHERE zzzzsys_setup_id = 1 ");
        $getTimeoutOBJ = db_fetch_object($getTimeoutQRY);
        $timeout = $getTimeoutOBJ->set_timeout;
        $checkIfLoggedInQRY = nuRunQuery("
            SELECT * FROM zzzzsys_session 
            WHERE zzzzsys_session_id = '$sessionID' 
            AND ses_zzzzsys_user_id = '$userID' 
            AND NOW() BETWEEN ses_last_activity AND DATE_ADD(ses_last_activity, INTERVAL $timeout SECONDS)
        ");
        if(db_num_rows($checkIfLoggedInQRY) == 0)
            return false;
        return true;
    }

    function nuCreateSession($userID, $sessionID){
        nuRunQuery("
            INSERT INTO zzzzsys_session (
                zzzzsys_session_id, ses_zzzzsys_user_id, ses_logged_in, ses_last_activity
            ) VALUES (
                '$sessionID', '$userID', NOW(), NOW()
            ) 
        ");
    }

?>