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
            $checkNull = '';
            $checkType = '';
            $checkDefault = '';
            foreach($fieldproperties as $prop => $value){
                if($prop == 'null'){
                    if($value){
                        $addFieldIfNeededSQL .= " NULL ";
                        $checkNull = " AND IS_NULLABLE = 'YES' ";
                    } else {
                        $addFieldIfNeededSQL .= " NOT NULL ";
                        $checkNull = " AND IS_NULLABLE = 'NO' ";
                    }
                }
                if($prop == 'type'){
                    $addFieldIfNeededSQL .= " $value ";
                    preg_match('/([A-Za-z])+/',$value,$matches,PREG_OFFSET_CAPTURE);
                    $checkType = " AND DATA_TYPE = '".strtolower($matches[0][0])."' ";
                }
                if($prop == 'default'){
                    $addFieldIfNeededSQL .= " DEFAULT '$value' ";
                    $checkDefault = " AND COLUMN_DEFAULT = '$value' ";
                }
            }
            $columnChecks = $checkNull.$checkType.$checkDefault;
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
            });

            function addSysTablesIfNotExist(){
                $.ajax({
                    url: "nusetupoperations.php?op=addtables",
                    dataType: "json",
                    success: function(data){
                        if(data.success){
                            alert('Successfully added tables!\nRefresh page to see updated database status.');
                        } else {
                            alert('Could not update database: Database error, please refresh the page and check zzzzsys_error table.');
                        }
                    },
                    fail: function(){
                        alert('Could not update database: Network error, please refresh the page.');
                    }
                });
            }

            function addColumn(query){
                $.ajax({
                    url: "nusetupoperations.php?op=addcolumn&q="+query,
                    dataType: "json",
                    success: function(data){
                        if(data.success){
                            alert('Successfully added column!\nRefresh page to see updated database status.');
                        } else {
                            alert('Could not update database: Database error, please refresh the page and check zzzzsys_error table.');
                        }
                    },
                    fail: function(){
                        alert('Could not update database: Network error, please refresh the page.');
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
            <a href="#" onclick="addSysTablesIfNotExist();">Add nuBuilder system tables</a>
        </div>
        <div id="error"></div>
    </body>
</html>