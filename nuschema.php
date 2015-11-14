<?php

    $nuSchema = array(
        "zzzzsys_error" => array(
            "zzzzsys_error_id" => array(
                "type" => "VARCHAR(25)",
                "null" => false,
                "pk" => true
            ),
            "err_message" => array(
                "type" => "LONGTEXT",
                "null" => false
            ),
            "err_added" => array(
                "type" => "DATETIME",
                "null" => false
            ),
        ),
        "zzzzsys_debug" => array(
            "zzzzsys_debug_id" => array(
                "type" => "VARCHAR(25)",
                "null" => false,
                "pk" => true
            ),
            "dbg_message" => array(
                "type" => "LONGTEXT",
                "null" => false
            ),
            "dbg_added" => array(
                "type" => "DATETIME",
                "null" => false
            ),
        ),
        "zzzzsys_setup" => array(
            "zzzzsys_setup_id" => array(
                "type" => "VARCHAR(25)",
                "null" => false,
                "pk" => true
            ),
            "set_site_name" => array(
                "type" => "VARCHAR(50)",
                "null" => false
            )
        )
    );

?>