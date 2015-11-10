<?php

    require 'Slim/Slim.php';
    \Slim\Slim::registerAutoloader();

    $nuApp = new \Slim\Slim();

    $nuApp->get('/', function() {
        include 'home.php';
    });

    $nuApp->run();

?>