<?php

    require_once('nuconfig.php');
    require_once('nudatabase.php');
    require_once('nuschema.php');

    global $nuConfigDBHost;
    global $nuConfigDBName;
    global $nuConfigDBUser;
    global $nuConfigDBPassword;
    global $nuSchema;

    $errors = array();
    $nuBuilderTablesMissing = false;

    $nuBuilderCollation = 'utf8_general_ci';

    $checkDBCollationQRY = nuRunQuery("SELECT * FROM information_schema.SCHEMATA WHERE schema_name = '$nuConfigDBName' AND default_collation_name = '$nuBuilderCollation' ");
    if(db_num_rows($checkDBCollationQRY) == 0)
        $errors[] = "Database's collation is not '$nuBuilderCollation'";

    foreach($nuSchema as $table => $fields){
        $foundTable = true;
        $checkTableExistsQRY = nuRunQuery("SHOW TABLES LIKE '$table'");
        if(db_num_rows($checkTableExistsQRY) != 1){
            $foundTable = false;
            $errors[] = "Unable to find 1 system table with the name of '$table'";
        }
        foreach($fields as $fieldname => $fieldproperties){
            $addFieldIfNeededSQL = "ALTER TABLE $table ADD $fieldname ";
            $typeSQL = '';
            $nullSQL = '';
            $defaultSQL = '';
            $primaryKeySQL = '';
            $checkNull = '';
            $checkType = '';
            $checkDefault = '';
            $checkPK = '';
            foreach($fieldproperties as $prop => $value){
                if($prop == 'null'){
                    if($value){
                        $nullSQL = " NULL ";
                        $checkNull = " AND IS_NULLABLE = 'YES' ";
                    } else {
                        $nullSQL = " NOT NULL ";
                        $checkNull = " AND IS_NULLABLE = 'NO' ";
                    }
                }
                if($prop == 'type'){
                    $typeSQL = " $value ";
                    preg_match('/([A-Za-z])+/',$value,$matches,PREG_OFFSET_CAPTURE);
                    $checkType = " AND DATA_TYPE = '".strtolower($matches[0][0])."' ";
                }
                if($prop == 'default'){
                    $defaultSQL = " DEFAULT '$value' ";
                    $checkDefault = " AND COLUMN_DEFAULT = '$value' ";
                }
                if($prop == 'pk'){
                    $primaryKeySQL = " , ADD PRIMARY KEY ($fieldname) ";
                    $checkPK = " AND COLUMN_KEY = 'PRI' ";
                }
            }
            $addFieldIfNeededSQL .= $typeSQL.$nullSQL.$defaultSQL.$primaryKeySQL;
            $columnChecks = $checkNull.$checkType.$checkDefault.$checkPK;
            $checkFieldExistsQRY = nuRunQuery("
                SELECT * 
                FROM information_schema.COLUMNS
                WHERE TABLE_SCHEMA = '$nuConfigDBName' 
                AND TABLE_NAME = '$table' 
                AND COLUMN_NAME = '$fieldname' ".$columnChecks
            );
            if(db_num_rows($checkFieldExistsQRY) == 0){
                $checkFieldExistsWithDiffPropsQRY = nuRunQuery("
                    SELECT * 
                    FROM information_schema.COLUMNS
                    WHERE TABLE_SCHEMA = '$nuConfigDBName' 
                    AND TABLE_NAME = '$table' 
                    AND COLUMN_NAME = '$fieldname'
                ");
                if(db_num_rows($checkFieldExistsWithDiffPropsQRY) == 1){
                    $errors[] = "Field '$fieldname' for table '$table' was found, but properties must be like COLUMN_NAME = '$fieldname' ".$columnChecks;
                } else {
                    if($foundTable){
                        $errors[] = "Field '$fieldname' for table '$table' ".$columnChecks." was not found. <a href=\"#\" onclick=\"addColumn('".$addFieldIfNeededSQL."');\">Add column to table?</a>";
                    } else {
                        $errors[] = "Field '$fieldname' for table '$table' ".$columnChecks." was not found.";
                    }
                }
            }
        }
    }

    $installOperationHTML = '';
    if(count($errors) === 0){
        $installOperationHTML = '<a id="install" href="#" onclick="installnuBuilder();">Install nuBuilder</a>';
    }

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
                        errorHTML = errorHTML+'<h3>Current Errors</h3>'+'<div id="'+i+'">'+errors[i]+'</div>';
                    } else {
                        errorHTML = errorHTML+'<br>'+'<div id="'+i+'">'+errors[i]+'</div>';
                    }
                }
                if(errors.length == 0)
                    errorHTML = '<h3>No Errors!</h3>';
                $('div#error').html(errorHTML);
                if($('a#install').length == 1)
                    $('a#installtables').hide();
            });

            function addSysTablesIfNotExist(){
                $.ajax({
                    url: "nusetupoperations.php?op=addtables",
                    dataType: "json",
                    success: function(data){
                        if(data.success){
                            alert('Successfully added tables!');
                            window.location.reload();
                        } else {
                            alert('Could not update database: Database error, check zzzzsys_error table.');
                            window.location.reload();
                        }
                    },
                    error: function(){
                        alert('Could not update database: Network error.');
                        window.location.reload();
                    }
                });
            }

            function addColumn(query){
                $.ajax({
                    url: "nusetupoperations.php?op=addcolumn&q="+query,
                    dataType: "json",
                    success: function(data){
                        if(data.success){
                            alert('Successfully added column!');
                            window.location.reload();
                        } else {
                            alert('Could not update database: Database error, check zzzzsys_error table.');
                            window.location.reload();
                        }
                    },
                    error: function(){
                        alert('Could not update database: Network error.');
                        window.location.reload();
                    }
                });
            }

            function installnuBuilder(){
                $.ajax({
                    url: "nusetupoperations.php?op=insertdata",
                    dataType: "json",
                    success: function(data){
                        if(data.success){
                            alert('Successfully installed nuBuilder!');
                            window.location.assign('./');
                        } else {
                            alert('Could not update database: Database error, check zzzzsys_error table.');
                            window.location.reload();
                        }
                    },
                    error: function(){
                        alert('Could not update database: Network error.');
                        window.location.reload();
                    }
                });
            }

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
        <div id="installs">
            <h1>Quick Install</h1>
            <a id="installtables" href="#" onclick="addSysTablesIfNotExist();">Add nuBuilder system tables</a>
            <?php print $installOperationHTML; ?>
        </div>
        <div id="error"></div>
    </body>
</html>