<?php

    $nuConfigDBHost                 = "127.0.0.1";
    $nuConfigDBName                 = "nubuilder4";
    $nuConfigDBUser                 = "root";
    $nuConfigDBPassword             = "";
    $nuConfigDBGlobeadminUsername   = "globeadmin";     //-- globeadmin username
    $nuConfigDBGlobeadminPassword   = "nu";             //-- globeadmin password
    $nuConfigTitle                  = "nuBuilder 4";
    $nuConfigIsDemo                 = false;
    //$nuWelcomeBodyInnerHTML			= ""; 
/*    $nuWelcomeBodyInnerHTML			= " 
	
									<div id='login' class='nuLogin' style='width:330;position:absolute;top:50px;height:300px;left:50px;border-style:solid;border-width:1px;border-color: rgba(0, 0, 0, 0.08);'>
										<div id='nulogo' style='background-size:100% 100%;background-image:url(\"graphics/logo.png\");position:absolute;width:200px;height:80px;top:45px;left:65px;'></div>
										<br>
											<div style='position:absolute;top:170px;left:20px;text-align:right;width:70px;display:inline-block;'>Username</div>
											<input id='nuusername' style='position:absolute;top:170px;left:100px;'/>
										<br>
										<br>
											<div style='position:absolute;top:200px;left:20px;text-align:right;width:70px;display:inline-block;'>Password</div>
											<input id='nupassword' style='position:absolute;top:200px;left:100px;' type='password'/>
										<br>
										<br>
											<input id='submit' type='button' class='nuButton'  style='position:absolute;width:90px;height:30px;top:240px;left:130px;' onclick='nuLoginRequest()' value='Log in'/>
										<br>
										<br>
									</div>

									";
*/									

    if(array_key_exists('REQUEST_URI', $_SERVER)){
        if(strpos($_SERVER['REQUEST_URI'], basename(__FILE__)) !== false){
            header('HTTP/1.0 404 Not Found', true, 404);
            die();
        }
    }

?>