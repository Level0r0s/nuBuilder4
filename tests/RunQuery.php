<?php
/**
 * Created by PhpStorm.
 * User: David
 * Date: 7/12/2017
 * Time: 10:20 AM
 */

namespace Tests;

use PDO;


class RunQuery
{

    private $nuDB = null;

    public function __construct()
    {
        require dirname(dirname(__FILE__)).DIRECTORY_SEPARATOR.'config.php';
        $this->nuDB = new PDO("mysql:host=$nuConfigDBHost;dbname=$nuConfigDBName;charset=utf8", $nuConfigDBUser, $nuConfigDBPassword, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
        $this->nuDB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->nuDB->exec("SET CHARACTER SET utf8");
    }

    public function run($sql, $values = array())
    {
        $preparedQRY = $this->nuDB->prepare($sql);
        $preparedQRY->execute($values);
        return $preparedQRY;
    }
}