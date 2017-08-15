<?php

    $nuConfigDBHost                 = "127.0.0.1";
    $nuConfigDBName                 = "nubuilder";
    $nuConfigDBUser                 = "root";
    $nuConfigDBPassword             = "";
    $nuConfigDBGlobeadminUsername   = "globeadmin";     //-- globeadmin username
    $nuConfigDBGlobeadminPassword   = "nu";             //-- globeadmin password
    $nuConfigTitle                  = "nuBuilder 4";
    $nuConfigIsDemo                 = false;

    if(array_key_exists('REQUEST_URI', $_SERVER)){
        if(strpos($_SERVER['REQUEST_URI'], basename(__FILE__)) !== false){
            header('HTTP/1.0 404 Not Found', true, 404);
            die();
        }
    }

?>