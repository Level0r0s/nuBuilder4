<?php

    function nuLoadBase($request){
        $nuFORMJSON = json_encode($request);
        $baseHTML =<<<END
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
            <script src="nuloadform.js"></script>
            <script type="text/javascript">
                $(document).ready(function(){
                    window.nuFORM = $nuFORMJSON;
                    nuLoadForm();
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

            <div id="actionbuttonholder" class="text-center" style="background-color: #F3F3F3;height: 34px;">
                <div id="actionbuttongroup" class="btn-group" role="group" aria-label="..." style="margin-left:auto;margin-right:auto;">

                </div>
            </div>

            <div id="breadcrumbholder" style="height:36px;">

            </div>

            <div style="margin: 0px 5px 5px 5px;min-height: 500px;background: white;border-width: 1px;border-style: solid;border-color: #C5C5C5;box-shadow: 3px 3px 10px rgba(136, 136, 136, 0.66);">
                <div id="tabheadingsholder">

                </div>

                <div id="tabcontentholder" class="tab-content">

                </div>

                <div class="small" style="top:580px;position: absolute;left: 15px;">Powered By nuBuilder</div>
                <a href="#" class="small" onclick="logout();" style="top:580px;position: absolute;right: 15px;">Logout</a>

            </div>

            </body>

            </html>
END;
        print $baseHTML;
    }

?>