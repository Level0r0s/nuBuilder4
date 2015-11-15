<?php

    function nuLoadEditForm($formID, $userID, $sessionID){
        $nuFORM = array();
        $nuFORM['nu_form_id'] = $formID;
        $nuFORM['nu_user_id'] = $userID;
        $nuFORM['nu_session_id'] = $sessionID;
        $nuFORMJSON = htmlspecialchars(json_encode($nuFORM));
        // TODO add all form data needed to $nuFORM
        $editFormHTML =<<<END
            <!DOCTYPE html>
            <html>
            <head>

            <link rel="stylesheet" type="text/css" href="css/nudrag.css">
            <link rel="stylesheet" type="text/css" href="css/nubuilder.css">

            <script src='lib/jquery-2.1.4.js' type='text/javascript'></script>
            <script src='nudrag.js' type='text/javascript'></script>
            <script src='nudragdialog.js' type='text/javascript'></script>

            <script type="text/javascript">
                function logout(){
                    $.ajax({
                        url: 'api/nulogout.php',
                        dataType: 'json',
                        data: {
                            session_id: JSON.parse($('#nuFORM').val()).nu_session_id
                        }
                    }).always(function(){
                        window.location.assign('./');
                    });
                }
            </script>

            </head>

            <body>

            <a href="#" onclick="logout();">Logout</a>

            <input type="hidden" id="nuFORM" name="nuFORM" value="$nuFORMJSON" />

            <div class='nuActionHolder'>
              <img id="thelogo" src="img/logo.png" style='position:absolute;right:20px;'>
              <input id='t1' type='button' class='nuButton' value='Hello world'>
              <input id='t2' type='button' class='nuButton' value='Test'>
              <input id='t3' type='button' class='nuButton' value='Test'>
              <input id='t4' type='button' class='nuButton' value='Test'>
            </div>

            <ul class='nuBreadcrumbHolder'>
              <div class='nuBreadcrumb'>Coffee</div>
              <div class='nuNotBreadcrumb'>&#9658;</div>
              <div class='nuNotBreadcrumb'>Milk</div>
            </ul>

            <ul class='nuTabHolder'>
              <div class='nuTab'>Coffee</div>
              <div class='nuTab'>Tea</div>
              <div class='nuTab'>Milk</div>
            </ul>

            </body>

            </html>
END;
        print $editFormHTML;
    }

?>