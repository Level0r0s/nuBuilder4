<?php

    require_once('nuconfig.php');
    require_once('nudatabase.php');
    require_once('nuschema.php');

    global $nuConfigDBHost;
    global $nuConfigDBName;
    global $nuConfigDBUser;
    global $nuConfigDBPassword;

    $errors = array();
    $nuBuilderTablesMissing = false;

    global $nuSchema;

    // LOOP THROUGH $nuSchema AND FIND ERRORS
    // ADD ERRORS TO $errors[] = "ERROR MESSAGE";

?>

<html>
    <head>
        <script src="lib/jquery-2.1.4.js"></script>
        <script type="text/javascript">
            
            window.errors = <?php echo json_encode($errors); ?>;

            $(document).ready(function(){
                var errorHTML = '';
                for(var i=0; i<errors.length; i++){
                    if(i == 0){
                        errorHTML = errorHTML+'<h3>Errors</h3>'+errors[i];
                    } else {
                        errorHTML = errorHTML+'<br>'+errors[i];
                    }
                }
                $('div#error').html(errorHTML);
            });

        </script>
    </head>
    <body>
        <img src="img/logo.png" />
        <div id="config">
            <h3>Config</h1>
            <p>Host: <?php echo $nuConfigDBHost; ?><br>
            Database: <?php echo $nuConfigDBName; ?><br>
            Username: <?php echo $nuConfigDBUser; ?><br>
            Password: <?php echo $nuConfigDBPassword; ?></p>
        </div>
        <div id="error"></div>
    </body>
</html>