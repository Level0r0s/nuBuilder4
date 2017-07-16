<?php

require_once('nudatabase.php');
require_once('config.php');
require_once('nucommon.php');

if(array_key_exists('nuSTATE', $_POST)){
    if(array_key_exists('call_type', $_POST['nuSTATE'])){
        if($_POST['nuSTATE']['call_type'] == 'login'){

            $checkLoginDetailsSQL = "
                SELECT * 
                FROM zzzzsys_user 
                JOIN zzzzsys_access_level ON zzzzsys_access_level_id = sus_zzzzsys_access_level_id              
                WHERE sus_login_name = ? AND sus_login_password = ?
            ";

            $checkLoginDetailsQRY = nuRunQuery($checkLoginDetailsSQL, array($_POST['nuSTATE']['username'], md5($_POST['nuSTATE']['username'])));

            if(
                db_num_rows($checkLoginDetailsQRY) > 0 || 
                (
                    $_POST['nuSTATE']['username'] == $nuConfigDBGlobeadminUsername && 
                    $_POST['nuSTATE']['password'] == $nuConfigDBGlobeadminPassword
                )
            ){
                /*
                    Setup session on login
                */
                session_start();
                $_SESSION['SESSION_ID'] 			= nuIDTEMP();
                $_SESSION['SESSION_TIMESTAMP'] 		= time();
                $_SESSION['title']                  = $nuConfigTitle; 
                $_SESSION['IsDemo']                 = $nuConfigIsDemo; 
                $_SESSION['SafeMode']               = (isset($nuConfigSafeMode) ? $nuConfigSafeMode : false);
                $_SESSION['SafePHP']                = (isset($nuConfigSafePHP)  ? $nuConfigSafePHP  : array());
                $_SESSION['tableSchema']            = array();
                $_SESSION['tableList']            	= array();
                $tableSchemaQRY                     = nuRunQuery("SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE table_schema = DATABASE()");
        		
                while($tableSchemaOBJ = db_fetch_object($tableSchemaQRY)){
        			
                    $tn     						= $tableSchemaOBJ->table_name;
                    $_SESSION['tableSchema'][$tn] 	= array('names' => db_field_names($tn), 'types' => db_field_types($tn), 'primary_key' => db_primary_key($tn));
        			
                }
        		
                $_SESSION['formSchema']             = array();
                $formSchemaQRY                      = nuRunQuery("SELECT * FROM zzzzsys_form ORDER BY sfo_code");
        		
                while($formSchemaOBJ 				= db_fetch_object($formSchemaQRY)){
        			
                    $formID 						= $formSchemaOBJ->zzzzsys_form_id;
                    $objectSchema 					= array();
                    $objectSchemaQRY 				= nuRunQuery("SELECT * FROM zzzzsys_object WHERE sob_all_zzzzsys_form_id = '$formID' ORDER BY sob_all_id");
        			
                    while($objectSchemaOBJ = db_fetch_object($objectSchemaQRY)){
        				
                        if(in_array($objectSchemaOBJ->sob_all_type, array('input', 'lookup', 'select', 'textarea'))){
        					
        					$objectSchema[] 		= array(
                                $objectSchemaOBJ->zzzzsys_object_id, 
                                $objectSchemaOBJ->sob_all_id, 
                                $objectSchemaOBJ->sob_all_label, 
                                $objectSchemaOBJ->sob_all_type, 
                                $objectSchemaOBJ->sob_input_type
                            ); 
        					
                        }
        				
                    }
        			
                    $_SESSION['formSchema'][$formID] = $objectSchema;
        			
                }
        		
                $_SESSION['translation']            = array(); // this is populated for users other than globeadmin below
                
                /*
                    globeadmin
                */

                if($_POST['nuSTATE']['username'] == $nuConfigDBGlobeadminUsername && $_POST['nuSTATE']['password'] == $nuConfigDBGlobeadminPassword){
        			
                    $_SESSION['isGlobeadmin'] 				= true;
                    $sessionIds 							= new stdClass;
                    $sessionIds->zzzzsys_access_level_id 	= '';
                    $sessionIds->zzzzsys_user_id 			= $nuConfigDBGlobeadminUsername;
                    $sessionIds->zzzzsys_form_id 			= 'nuhome';
                    $sessionIds->global_access 				= '1';
                    $storeSessionInTable 					= new stdClass;
                    $storeSessionInTable->session 			= $sessionIds;
                    // setup globeadmin access ids
                    // form ids
                    $getAllFormsQRY 						= nuRunQuery("SELECT zzzzsys_form_id AS id FROM zzzzsys_form");
                    $formAccess 							= array();
        			
                    while($getAllFormsOBJ = db_fetch_object($getAllFormsQRY)){
                        $formAccess[] 						= [$getAllFormsOBJ->id];
                    }
        			
                    $storeSessionInTable->forms 			= $formAccess;
                    // report ids
                    $getAllReportsQRY 						= nuRunQuery("SELECT zzzzsys_report_id AS id, sre_zzzzsys_form_id AS form_id FROM zzzzsys_report");
                    $reportAccess 							= array();
        			
                    while($getAllReportsOBJ = db_fetch_object($getAllReportsQRY)){
                        $reportAccess[] 					= [$getAllReportsOBJ->id, $getAllReportsOBJ->form_id];
                    }
        			
                    $storeSessionInTable->reports 			= $reportAccess;
                    // php ids
                    $getAllPHPsQRY 							= nuRunQuery("SELECT zzzzsys_php_id AS id, sph_zzzzsys_form_id AS form_id FROM zzzzsys_php");
                    $phpAccess 								= array();
        			
                    while($getAllPHPsOBJ = db_fetch_object($getAllPHPsQRY)){
                        $phpAccess[] 						= [$getAllPHPsOBJ->id, $getAllPHPsOBJ->form_id];
                    }
        			
                    $storeSessionInTable->procedures 		= $phpAccess;
                    $storeSessionInTableJSON 				= json_encode($storeSessionInTable);
                /*
                    Not globeadmin
                */
                } else {
        			
                    $checkLoginDetailsOBJ 					= db_fetch_object($checkLoginDetailsQRY);
                    $_SESSION['isGlobeadmin'] 				= false;
                    $translationQRY 						= nuRunQuery("SELECT * FROM zzzzsys_translate WHERE trl_language = '$checkLoginDetailsOBJ->sus_language' ORDER BY trl_english");
        			
                    while($translationOBJ = db_fetch_object($translationQRY)){
                        $_SESSION['translation'][] 			= $translationOBJ;
                    }

                    $getAccessLevelSQL 						= "
                        SELECT zzzzsys_access_level_id, zzzzsys_user_id, sal_zzzzsys_form_id AS zzzzsys_form_id FROM zzzzsys_user
                        INNER JOIN zzzzsys_access_level ON zzzzsys_access_level_id = sus_zzzzsys_access_level_id
                        WHERE zzzzsys_user_id = '$checkLoginDetailsOBJ->zzzzsys_user_id'
                        GROUP BY sus_zzzzsys_access_level_id 
                    ";
                    $getAccessLevelQRY 						= nuRunQuery($getAccessLevelSQL);
        			
                    if(db_num_rows($getAccessLevelQRY) == 0){
        				
                        $_SESSION['SESSION_ID'] 			= null;
                        $_SESSION['SESSION_TIMESTAMP'] 		= null;
        				
                        header("Content-Type: text/html");
                        header('HTTP/1.0 403 Forbidden');
                        die('No access levels setup.');
        				
                    }
        			
                    $getAccessLevelOBJ 						= db_fetch_object($getAccessLevelQRY);

                    $sessionIds 							= new stdClass;
                    $sessionIds->zzzzsys_access_level_id 	= $getAccessLevelOBJ->zzzzsys_access_level_id;
                    $sessionIds->zzzzsys_user_id 			= $checkLoginDetailsOBJ->zzzzsys_user_id;
                    $sessionIds->zzzzsys_form_id 			= $getAccessLevelOBJ->zzzzsys_form_id;
                    $sessionIds->global_access 				= '0';

                    $storeSessionInTable                    = new stdClass;
                    $storeSessionInTable->session           = $sessionIds;
                    
                    // form ids
                    $getFormsQRY 							= nuRunQuery("
                        SELECT slf_zzzzsys_form_id  AS id,
                            slf_add_button          AS a, 
                            slf_save_button         AS s, 
                            slf_delete_button       AS d,
                            slf_clone_button        AS c,
                            slf_print_button        AS p
                        FROM zzzzsys_user
                        JOIN zzzzsys_access_level ON zzzzsys_access_level_id = sus_zzzzsys_access_level_id
                        JOIN zzzzsys_access_level_form ON zzzzsys_access_level_id = slf_zzzzsys_access_level_id
                        WHERE zzzzsys_user_id = '$checkLoginDetailsOBJ->zzzzsys_user_id'
                    ");
        			
                    $formAccess 							= array();
        			
                    while($getFormsOBJ 						= db_fetch_object($getFormsQRY)){
                        $formAccess[] 						= [$getFormsOBJ->id, $getFormsOBJ->a, $getFormsOBJ->p, $getFormsOBJ->s, $getFormsOBJ->c, $getFormsOBJ->d];
                    }
        			
                    $storeSessionInTable->forms 			= $formAccess;
                    // report ids
                    $getReportsQRY 							= nuRunQuery("
                        SELECT sre_zzzzsys_report_id AS id, sre_zzzzsys_form_id AS form_id
                        FROM zzzzsys_user
                        JOIN zzzzsys_access_level ON zzzzsys_access_level_id = sus_zzzzsys_access_level_id
                        JOIN zzzzsys_access_level_report ON zzzzsys_access_level_id = sre_zzzzsys_access_level_id
                        JOIN zzzzsys_report ON zzzzsys_report_id = sre_zzzzsys_report_id
                        WHERE zzzzsys_user_id = '$checkLoginDetailsOBJ->zzzzsys_user_id'
                        GROUP BY sre_zzzzsys_report_id
                    ");
        			
                    $reportAccess 							= array();
        			
                    while($getReportsOBJ = db_fetch_object($getReportsQRY)){
                        $reportAccess[] 					= [$getReportsOBJ->id, $getReportsOBJ->form_id];
                    }
        			
                    $storeSessionInTable->reports 			= $reportAccess;
                    // php ids
                    $getPHPsQRY								 = nuRunQuery("
                        SELECT 
                            slp_zzzzsys_php_id AS id,
                            sph_zzzzsys_form_id AS form_id
                        FROM zzzzsys_user
                        JOIN zzzzsys_access_level ON zzzzsys_access_level_id = sus_zzzzsys_access_level_id
                        JOIN zzzzsys_access_level_php ON zzzzsys_access_level_id = slp_zzzzsys_access_level_id
                        JOIN zzzzsys_php ON zzzzsys_php_id = slp_zzzzsys_php_id
                        WHERE zzzzsys_user_id = '$checkLoginDetailsOBJ->zzzzsys_user_id'
                        GROUP BY slp_zzzzsys_php_id
                    ");
                    $phpAccess 								= array();
        			
                    while($getPHPsOBJ = db_fetch_object($getPHPsQRY)){
                        $phpAccess[] 						= [$getPHPsOBJ->id, $getPHPsOBJ->form_id];
                    }
        			
                    $storeSessionInTable->procedures 		= $phpAccess;
                    $storeSessionInTableJSON 				= json_encode($storeSessionInTable);

                }

                nuRunQuery("INSERT INTO zzzzsys_session SET sss_access = ?, zzzzsys_session_id = ?", array(
                    $storeSessionInTableJSON, 
                    $_SESSION['SESSION_ID']
                ));
                
            } else {
                header("Content-Type: text/html");
                header('HTTP/1.0 403 Forbidden');
                die('Invalid login.');
            }
        }
    }
}

if(session_status() == PHP_SESSION_NONE){
    session_start();
}

if(isset($_SESSION['SESSION_ID'])){

    if($_SESSION['SESSION_ID'] == 'tempanonreport'){
        // only let the user have 1 temporary report run
        $_SESSION['SESSION_ID'] = null;
        $_SESSION['SESSION_TIMESTAMP'] = null;
    } else if(isset($_SESSION['SESSION_TIMESTAMP'])){
		
        $t = nuRunQuery("SELECT * FROM zzzzsys_setup");
        $r = db_fetch_object($t);
		
        if((($r->set_time_out_minutes * 60) + $_SESSION['SESSION_TIMESTAMP']) >= time()){
            $_SESSION['SESSION_TIMESTAMP'] = time();
        }else{
			
            $_SESSION['SESSION_ID'] = null;
            $_SESSION['SESSION_TIMESTAMP'] = null;
            header("Content-Type: text/html");
            header('HTTP/1.0 403 Forbidden');
            die('Your nuBuilder session has timed out.');
			
        }
		
    }else{
		
        $_SESSION['SESSION_ID'] = null;
        $_SESSION['SESSION_TIMESTAMP'] = null;
        header("Content-Type: text/html");
        header('HTTP/1.0 403 Forbidden');
        die('Your nuBuilder session has timed out.');
		
    }
	
}else{
	
    $_SESSION['SESSION_ID'] = null;
    $_SESSION['SESSION_TIMESTAMP'] = null;
    header("Content-Type: text/html");
    header('HTTP/1.0 403 Forbidden');
    die('You must be logged into nuBuilder.');
	
}


function nuIDTEMP(){

    if(!isset($_POST['nuCounter2'])){
        
        $_POST['nuCounter2']    = rand(1, 9999);
        $_POST['nuCounter2ID']  = 's' . time();
        
    }

    if($_POST['nuCounter2'] == 9999){
        
        $_POST['nuCounter2']    = 0;
        $_POST['nuCounter2ID']  =  's' . time();
        
    }else{
        $_POST['nuCounter2']++;
    }
    
    $id                         = $_POST['nuCounter2ID'] . str_pad($_POST['nuCounter2'], 4, '0', STR_PAD_LEFT);
        
    return $id;

}