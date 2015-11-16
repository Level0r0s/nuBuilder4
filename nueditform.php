<?php

    function nuLoadEditForm($formID, $userID, $sessionID){
        $nuFORM = array();
        $nuFORM['nu_form_id'] = $formID;
        $nuFORM['nu_user_id'] = $userID;
        $nuFORM['nu_session_id'] = $sessionID;
        $nuFORMJSON = json_encode($nuFORM);
        $editFormHTML =<<<END
            <html>
            <head>
            <script src='lib/jquery-2.1.4.js' type='text/javascript'></script>
            <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <script src="lib/bootstrap/js/bootstrap.min.js"></script>
            <style type="text/css">
                .breadcrumb > li + li:before {
                    color: #000;
                    content: "> ";
                    padding: 0 5px;
                }
                .breadcrumb {
                    background-color: white;
                    margin-bottom: 0px;
                }
                .nav-tabs {
                    background-color: #E8E8E8;
                }
                .nav-tabs > li {
                    background-color: #E8E8E8;
                }
            </style>
            <script type="text/javascript">
                $(document).ready(function(){
                    window.nuFORM = $nuFORMJSON;
                });
                function logout(){
                    $(document.body).append('<div class="modal-backdrop fade in"></div>');
                    $.ajax({
                        url: 'api/nulogout.php',
                        dataType: 'json',
                        data: {
                            session_id: nuFORM.nu_session_id
                        }
                    }).always(function(){
                        window.location.assign('./');
                    });
                }
                function hideOtherTabs(tabHeading){
                    $('div[role="tabpanel"]').hide();
                    $('div[role="tabpanel"]'+$(tabHeading).prop('hash')).show();
                }
            </script>
            </head>
            <body style="background-color: #F3F3F3;">

            <img id="thelogo" src="img/logo.png" style='position:absolute;right:20px;top:20px;'>

            <div class="text-center" style="background-color: #F3F3F3;">
                <div class="btn-group" role="group" aria-label="..." style="margin-left:auto;margin-right:auto;">
                  <button type="button" class="btn btn-primary">Save</button>
                  <button type="button" class="btn btn-primary">Clone</button>
                  <button type="button" class="btn btn-danger">Delete</button>
                  <button type="button" class="btn btn-default">Print</button>
                </div>
            </div>

            <ol class="breadcrumb" style="background-color: #F3F3F3;">
              <li><a href="#">Home</a></li>
              <li><a href="#">Library</a></li>
              <li class="active">Data</li>
            </ol>

            <div style="margin: 0px 5px 5px 5px;min-height: 500px;background: white;border-width: 1px;border-style: solid;border-color: #C5C5C5;box-shadow: 3px 3px 10px rgba(136, 136, 136, 0.66);">

              <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" onclick="hideOtherTabs(this);">Home</a></li>
                <li role="presentation"><a href="#demo1" aria-controls="demo1" role="tab" data-toggle="tab" onclick="hideOtherTabs(this);">Demo 1</a></li>
                <li role="presentation"><a href="#demo2" aria-controls="demo2" role="tab" data-toggle="tab" onclick="hideOtherTabs(this);">Demo 2</a></li>
                <li role="presentation"><a href="#demo3" aria-controls="demo3" role="tab" data-toggle="tab" onclick="hideOtherTabs(this);">Demo 3</a></li>
              </ul>

              <div class="tab-content">
                <form>
                <div role="tabpanel" class="tab-pane" id="home">
                    <div id="demotext1holder" style="position:relative;top:10px;left:10px;width:370px;"><label style="width:70px;" for="demotext1">Name</label><input type="text" id="demotext1" style="width:300px;" value="10px top 10px left width 300px" /></div>
                    <div id="demotext2holder" style="position:relative;top:50px;left:20px;width:470px;"><label style="width:70px;" for="demotext2">Surname</label><input type="text" id="demotext2" style="width:400px;" value="50px top 20px left width 400px" /></div>
                    <div id="demoddholder" style="position:relative;top:100px;left:20px;width:170px;"><label style="width:70px;" for="demodd">Sex</label><select id="demodd" style="width:100px;"><option value="M">Male</option><option value="F">Female</option></select></div>
                </div>
                <div role="tabpanel" class="tab-pane" id="demo1"></div>
                <div role="tabpanel" class="tab-pane" id="demo2"></div>
                <div role="tabpanel" class="tab-pane" id="demo3"></div>
                </form>
              </div>

                <div class="small" style="top:580px;position: absolute;left: 15px;">Powered By nuBuilder</div>
                <a href="#" class="small" onclick="logout();" style="top:580px;position: absolute;right: 15px;">Logout</a>

            </div>

            </body>

            </html>
END;
        print $editFormHTML;
    }

?>