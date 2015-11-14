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
            ),
            "set_timeout" => array(
                "type" => "INT",
                "null" => false
            ),
            "set_extra_head" => array(
                "type" => "LONGTEXT",
                "null" => false
            )
        ),
        "zzzzsys_user" => array(
            "zzzzsys_user_id" => array(
                "type" => "VARCHAR(25)",
                "null" => false,
                "pk" => true
            ),
            "sus_username" => array(
                "type" => "VARCHAR(50)",
                "null" => false
            ),
            "sus_password" => array(
                "type" => "VARCHAR(50)",
                "null" => false
            )
        ),
        "zzzzsys_session" => array(
            "zzzzsys_session_id" => array(
                "type" => "VARCHAR(25)",
                "null" => false,
                "pk" => true
            ),
            "ses_zzzzsys_user_id" => array(
                "type" => "VARCHAR(25)",
                "null" => false
            ),
            "ses_logged_in" => array(
                "type" => "DATETIME",
                "null" => false
            ),
            "ses_last_activity" => array(
                "type" => "DATETIME",
                "null" => false
            )
        )
    );

?>