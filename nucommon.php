<?php

    require_once('nudatabase.php');
    require('nusession.php');

    function nuError($errorMsg){
        nuRunQuery("INSERT INTO zzzzsys_error (zzzzsys_error_id, err_message, err_time) VALUES('".nuID()."','".addslashes($errorMsg)."',NOW()) ");
    }

    function nuDebug($debugMsg){
        nuRunQuery("INSERT INTO zzzzsys_debug (zzzzsys_debug_id, dbg_message, dbg_time) VALUES('".nuID()."','".addslashes($debugMsg)."',NOW()) ");
    }

    function nuID(){
        $i = uniqid();
        $s = md5($i);
        while($i == uniqid()){}
        return uniqid().$s[0].$s[1];
    }

?>