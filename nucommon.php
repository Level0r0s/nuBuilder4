<?php

    require_once('nudatabase.php');
    require('nusession.php');

    // TODO - Add to nusetup for error table
    // TODO - Also make this use nuschema to determine error table name
    function nuError($errorMsg){
        nuRunQuery("INSERT INTO zzzzsys_error () VALUES() ");
    }

?>