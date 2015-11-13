<?php
    $nuSchema = array(
        "zzzzsys_error" => array(
            "zzzzsys_error_id" => array(
                "type" => "VARCHAR(25)",
                "null" => false
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
                "null" => false
            ),
            "dbg_message" => array(
                "type" => "LONGTEXT",
                "null" => false
            ),
            "dbg_added" => array(
                "type" => "DATETIME",
                "null" => false
            ),
        )
    );
?>