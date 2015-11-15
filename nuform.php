<?php

    require_once('nueditform.php');
    require_once('nubrowseform.php');

    function nuLoadForm($request){

        if(!array_key_exists('call_type', $request)){
            header("Location: nuerror.php?error=nocalltype");
        } else {
            if($request['call_type'] == 'home'){
                $formID = determineHomePageID($request['user_id']);
                nuLoadEditForm($formID,$request['user_id'],$request['session_id']);
            } else {
                header("Location: nuerror.php?error=invalidcalltype");
            }
        }

    }

    function determineHomePageID($userID){
        require_once('nudatabase.php');
        if($userID == 'globeadmin'){
            return 'globeadminhome';
        } else {
            $getAccessLevelQRY = nuRunQuery("
                SELECT sug_zzzzsys_access_level_id FROM zzzzsys_user 
                INNER JOIN zzzzsys_user_group ON zzzzsys_user_group_id = sus_zzzzsys_user_group_id 
                WHERE zzzzsys_user_id = '$userID'
            ");
            $getAccessLevelOBJ = db_fetch_object($getAccessLevelQRY);
            $accessLevelID = $getAccessLevelOBJ->sug_zzzzsys_access_level_id;
            $getHomePageQRY = nuRunQuery("SELECT acl_zzzzsys_form_id FROM zzzzsys_access_level WHERE zzzzsys_access_level_id = '$accessLevelID' ");
            $getHomePageOBJ = db_fetch_object($getHomePageQRY);
            return $getHomePageOBJ->acl_zzzzsys_form_id;
        }
    }

?>