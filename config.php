<?php

    if(strpos($_SERVER['REQUEST_URI'], basename(__FILE__)) !== false){
        header('HTTP/1.0 404 Not Found', true, 404);
        die();
    } else {
        $nuConfigDBHost                 = "127.0.0.1";
        $nuConfigDBName                 = "nubuilder4";
        $nuConfigDBUser                 = "root";
        $nuConfigDBPassword             = "";
        $nuConfigDBGlobeadminUsername   = "globeadmin";     //-- globeadmin username
        $nuConfigDBGlobeadminPassword   = "nu";             //-- globeadmin password
        $nuConfigTitle                  = "nuBuilder 4";
        $nuConfigIsDemo                 = false;
    }

<<<<<<< HEAD
=======
    if(array_key_exists('REQUEST_URI', $_SERVER)){
        if(strpos($_SERVER['REQUEST_URI'], basename(__FILE__)) !== false){
            header('HTTP/1.0 404 Not Found', true, 404);
            die();
        }
    }

>>>>>>> 3f0b04d1ea896696f828951a5c072d160e3e58be
?>