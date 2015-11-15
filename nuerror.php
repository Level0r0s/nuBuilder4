<?php

    require_once('nuconfig.php');

    $errorCode = $_REQUEST['error'];
    $errorMessage = '';
    if(array_key_exists('msg', $_REQUEST))
        $errorMessage = $_REQUEST['msg'];
    $errorMsg = '';

    $nuErrorList = array(
        "pdodbconnect" => "Cannot connect to the nuBuilder MySQL database using PDO with details from nuconfig.php<br><br>Host: ".$GLOBALS['nuConfigDBHost']."<br>Database: ".$GLOBALS['nuConfigDBName']."<br>Username: ".$nuConfigDBUser. "<br>Password: ".$nuConfigDBPassword."<br><br>Message: ".$errorMessage,
        "errortable" => "Cannot find nuBuilder error table in database.",
        "nocalltype" => "No call_type specified in request to nuBuilder. Please contact an Administrator.",
        "invalidcalltype" => "Invalid call_type in request to nuBuilder. Please contact an Administrator."
    );

    if(array_key_exists($errorCode, $nuErrorList)){
        $errorMsg = $nuErrorList[$errorCode];
    }

?>

<html>
    <body>
        <img src="img/logo.png" />
        <p><?php echo $errorMsg; ?></p>
        <br><br><a href="./">Back to login</a>
    </body>
</html>