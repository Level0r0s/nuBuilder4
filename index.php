<?php

    require_once('nucommon.php');

    $checkInstalledQRY = nuRunQuery("SELECT * FROM zzzzsys_setup ");
    $installHTML = '';
    $siteName = '';
    if(db_num_rows($checkInstalledQRY) == 0){
        $installHTML = 'nuBuilder is not installed. <a href="nusetup.php">Setup nuBuilder.</a>';
    } else {
        $checkInstalledOBJ = db_fetch_object($checkInstalledQRY);
        $siteName = $checkInstalledOBJ->set_site_name;
    }

?>

<html>
    <body>
        <div id="installlink"><?php print $installHTML; ?></div>
        <div id="main" style="text-align: center;width: 500px;margin-left: auto;margin-right: auto;padding-bottom: 30px;margin-top:100px;background-color:#D4D4D4;">
            <img src="img/logo.png" style="padding-bottom: 20px; padding-top: 20px;" />
            <div id="loginfields">
                <table style="margin-left:auto; margin-right:auto;">
                    <tbody>
                        <tr><td colspan="2" style="text-align: center;"><?php print $siteName; ?></td></tr>
                        <tr>
                            <td>
                                <label for="username">Username: </label>
                            </td>
                            <td>
                                <input id="username" type="text" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="password">Password: </label>
                            </td>
                            <td>
                                <input id="password" type="password" />
                            </td>
                        </tr>
                    </tbody>
                </table>
                <button style="margin-left:auto;margin-right:auto;margin-top:10px;">Login</button>
            </div>
        </div>
    </body>
</html>