<?php

    require_once('nuconfig.php');

    $errorCode = $_REQUEST['error'];
    $errorMsg = '';

    $nuErrorList = array(
        "pdodbconnect" => "Cannot connect to the nuBuilder MySQL database using PDO with details from nuconfig.php<br><br>Host: ".$nuConfigDBHost."<br>Database: ".$nuConfigDBName."<br>Username: ".$nuConfigDBUser. "<br>Password: ".$nuConfigDBPassword
    );

    if(array_key_exists($errorCode, $nuErrorList)){
        $errorMsg = $nuErrorList[$errorCode];
    }

?>

<html>
    <body>
        <img src="img/logo.png" />
        <p><?php echo $errorMsg; ?></p>
    </body>
</html>