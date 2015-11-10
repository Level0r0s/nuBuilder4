<?php

    // TODO - Add all system required fields

    $nuSchema = array(
        "collation" => "utf8_general_ci",
        "tables" => array(
            "nuerror" => array(
                "table_name" => "zzzzsys_error",
                "table_fields" => array(
                    array(
                        "field_name" => "zzzzsys_error_id",
                        "field_type" => "VARCHAR(25)",
                        "field_null" => false,
                        "field_default" => false,
                        "field_extra" => false,
                        "field_is_pk" => true
                    ),
                    array(
                        "field_name" => "err_message",
                        "field_type" => "LONGTEXT"
                    ),
                    array(
                        "field_name" => "err_added",
                        "field_type" => "DATETIME"
                    )
                )
            )
        )
    );

?>