<?php

    require_once('nuconfig.php');

    $errorCode = $_REQUEST['error'];
    $errorMessage = $_REQUEST['msg'];
    $errorMsg = '';

    $nuErrorList = array(
        "pdodbconnect" => "Cannot connect to the nuBuilder MySQL database using PDO with details from nuconfig.php<br><br>Host: ".$GLOBALS['nuConfigDBHost']."<br>Database: ".$GLOBALS['nuConfigDBName']."<br>Username: ".$nuConfigDBUser. "<br>Password: ".$nuConfigDBPassword."<br><br>Message: ".$errorMessage."<br><br><a href=\"./\">Refresh</a>",
        "errortable" => "Cannot find nuBuilder error table in database."
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