<?php

require 'nuconfig.php';

return array(
    'paths' => array(
        'migrations' => '%%PHINX_CONFIG_DIR%%/db/migrations',
        'seeds' => '%%PHINX_CONFIG_DIR%%/db/seeds'
    ),
    'environments' => array(
        'default_migration_table' => 'zzzzsys_phinxlog',
        'default_database' => 'nubuilder',
        'nubuilder' => array(
            'adapter' => 'mysql',
            'host' => $nuConfigDBHost,
            'name' => $nuConfigDBName,
            'user' => $nuConfigDBUser,
            'pass' => $nuConfigDBPassword,
            'port' => 3306,
            'charset' => 'utf8'
        )
    )
);