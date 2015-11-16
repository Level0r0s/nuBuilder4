<?php

    function nuLoadLoginForm(){
        require_once('nudatabase.php');
        $checkInstalledQRY = nuRunQuery("SHOW TABLES LIKE 'zzzzsys_setup' ");
        $installHTML = '';
        $siteName = '';
        $siteExtraHead = '';
        if(db_num_rows($checkInstalledQRY) == 0){
            $installHTML = 'nuBuilder is not installed. <a href="nusetup.php">Setup nuBuilder.</a>';
        } else {
            $setupQRY = nuRunQuery("SELECT * FROM zzzzsys_setup WHERE zzzzsys_setup_id = '1' ");
            $setupOBJ = db_fetch_object($setupQRY);
            $siteName = $setupOBJ->set_site_name;
            $siteExtraHead = $setupOBJ->set_extra_head;
        }
        $loginScreenHTML = <<<END
            <html>
                <head>
                    <script src="lib/jquery-2.1.4.js"></script>
                    <script src="lib/spin.min.js"></script>
                    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
                    <script src="nucommon.js"></script>
                    <script type="text/javascript">

                        $(document).ready(function(){
                            $("#username, #password").keyup(function(event){
                                if(event.keyCode == 13){
                                    $("#loginbutton").click();
                                }
                            });
                            $('#username').focus();
                        });

                        function login(){
                            $('#loader').html('');
                            var opts = {
                              lines: 13 // The number of lines to draw
                            , length: 7 // The length of each line
                            , width: 5 // The line thickness
                            , radius: 3 // The radius of the inner circle
                            , scale: 1 // Scales overall size of the spinner
                            , corners: 1 // Corner roundness (0..1)
                            , color: '#000' // #rgb or #rrggbb or array of colors
                            , opacity: 0.25 // Opacity of the lines
                            , rotate: 0 // The rotation offset
                            , direction: 1 // 1: clockwise, -1: counterclockwise
                            , speed: 1 // Rounds per second
                            , trail: 60 // Afterglow percentage
                            , fps: 20 // Frames per second when using setTimeout() as a fallback for CSS
                            , zIndex: 2e9 // The z-index (defaults to 2000000000)
                            , className: 'spinner' // The CSS class to assign to the spinner
                            , top: '280px' // Top position relative to parent
                            , left: '50%' // Left position relative to parent
                            , shadow: false // Whether to render a shadow
                            , hwaccel: false // Whether to use hardware acceleration
                            , position: 'absolute' // Element positioning
                            };
                            var spinner = new Spinner(opts).spin($('#loader')[0]);
                            $.ajax({
                                url: 'api/nulogin.php',
                                data: {
                                    username: $('#username').val(),
                                    password: $('#password').val()
                                },
                                dataType: 'json'
                            }).done(function(data){
                                $('.spinner').remove();
                                if(data.success){
                                    $(document.body).append('<div class="modal-backdrop fade in"></div>');
                                    nuPostRedirect('./', {
                                        user_id: data.user_id,
                                        session_id: data.session_id,
                                        call_type: 'home'
                                    });
                                } else {
                                    $('#loader').html('Incorrect username / password.');
                                }
                            }).fail(function(){
                                $('.spinner').remove();
                                alert('Could not connect to nuBuilder.');
                            });
                        }

                    </script>
                    $siteExtraHead
                </head>
                <body>
                    <div id="installlink">$installHTML</div>
                    <div id="main" style="text-align: center;width: 500px;margin-left: auto;margin-right: auto;height: 250px;margin-top:50px;background-color:rgba(212, 212, 212, 0.52);box-shadow: 3px 3px 10px rgba(136, 136, 136, 0.66);border: rgba(0, 0, 0, 0.26);border-width: 1px;border-style: solid;">
                        <img src="img/logo.png" style="padding-bottom: 20px; padding-top: 20px;" />
                        <div id="loginfields">
                            <table style="margin-left:auto; margin-right:auto;">
                                <tbody>
                                    <tr><td colspan="3" style="text-align: center;font-weight:bold;">$siteName</td></tr>
                                    <tr style="height: 30px;">
                                        <td style="text-align: right;">
                                            <label for="username">Username: </label>
                                        </td>
                                        <td style="width:10px;"></td>
                                        <td>
                                            <input id="username" type="text" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right;">
                                            <label for="password">Password: </label>
                                        </td>
                                        <td style="width:10px;"></td>
                                        <td>
                                            <input id="password" type="password" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <button id="loginbutton" class="btn btn-default btn-lg" onclick="login();" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:5px;">Login</button>
                            <div id="loader"></div>
                        </div>
                    </div>
                </body>
            </html>
END;
        print $loginScreenHTML;
    }

?>