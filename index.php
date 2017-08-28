<html onclick="nuClick(event)">

<head>
<title>nuBuilder 4</title>
<meta http-equiv='Content-type' content='text/html;charset=UTF-8'>

<?php

function nuJSIndexInclude($pfile){

    $timestamp = date("YmdHis", filemtime($pfile));                                         //-- Add timestamp so javascript changes are effective immediately
    print "<script src='$pfile?ts=$timestamp' type='text/javascript'></script>\n";
    
}



function nuCSSIndexInclude($pfile){

    $timestamp = date("YmdHis", filemtime($pfile));                                         //-- Add timestamp so javascript changes are effective immediately
    print "<link rel='stylesheet' href='$pfile?ts=$timestamp' />\n";
    
}

function nuHeader(){

    require('nuconfig.php');

    $nuDB 				= new PDO("mysql:host=$nuConfigDBHost;dbname=$nuConfigDBName;charset=utf8", $nuConfigDBUser, $nuConfigDBPassword, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    $nuDB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $nuDB->exec("SET CHARACTER SET utf8");

    $getHTMLHeaderSQL  	= "
        SELECT set_header
        FROM zzzzsys_setup
        WHERE zzzzsys_setup_id = 1
    ";

    $getHTMLHeaderQRY 	= $nuDB->prepare($getHTMLHeaderSQL);
    $HTMLHeader 		= '';
    try {
		
        $getHTMLHeaderQRY->execute();
        $HTMLHeader 	= $getHTMLHeaderQRY->fetch(PDO::FETCH_OBJ)->set_header;
		
    }catch(PDOException $ex){
        die('nuBuilder cannot access the database. Please check your database configuration in nuconfig.php.');
    }

    $j  = "\n\n" . $HTMLHeader . "\n\n";
    
    return $j;
    
}

nuJSIndexInclude('jquery/jquery.js');
nuJSIndexInclude('nuformclass.js');
nuJSIndexInclude('nuform.js');
nuJSIndexInclude('nuformdrag.js');
nuJSIndexInclude('nucalendar.js');
nuJSIndexInclude('nucommon.js');
nuJSIndexInclude('nuajax.js');       //-- calls to server

nuCSSIndexInclude('nubuilder4.css');

?>

<script>


function nuValidCaller(o){
	
	if(o === null){return false;}
	
	return o.hasOwnProperty('nuVersion');
	
}
  
function nuHomeWarning(){

	if(window.nuEDITED){
		return nuTranslate('Leave this form without saving ?')+'  '+nuTranslate('Doing this will return you to the login screen.');
	}
	
	return nuTranslate('Doing this will return you to the login screen.');
	
}

function nuLoginRequest(){

    $.ajax({
        async    : true,  
        dataType : "json",
        url      : "nuapi.php",
        method   : "POST",
        data     : {nuSTATE : {call_type: 'login', username: $('#nuusername').val(), password: $('#nupassword').val()}},
        dataType : "json",          
        success  : function(data,textStatus,jqXHR){
            if(nuDisplayError(data)){
                if(data.log_again == 1){location.reload();}
            } else {
                window.nuFORM.addBreadcrumb();
                var last            = window.nuFORM.getCurrent();
                last.call_type      = 'getform';
                last.form_id        = data.form_id;
                last.record_id      = data.record_id;
                last.filter         = data.filter;
                last.search         = data.search;
                last.hash           = parent.nuHashFromEditForm();
                last.FORM           = data.form;
                nuBuildForm(data);
            }
        },
        error    : function(jqXHR,textStatus,errorThrown){
            
            var msg         = String(jqXHR.responseText).split("\n");
            nuMessage(msg);
            window.test = jqXHR.responseText;
            
            nuFormatAjaxErrorMessage(jqXHR, errorThrown);
            
        },
    }); 

}

window.nuVersion 		= 'nuBuilder4';
window.nuDocumentID		= Date.now();

if(parent.window.nuDocumentID == window.nuDocumentID){
	window.onbeforeunload	= nuHomeWarning;
}

window.nuHASH			= [];

<?php
    require('nuconfig.php');

	$welcome			= AddSlashes($nuWelcomeBodyInnerHTML);
	$nuHeader			= nuHeader();
    $opener             = '';
    $search             = '';
    $iframe             = '';
    $target             = '';
    if(isset($_GET['opener']))
       $opener = $_GET['opener'];
    if(isset($_GET['search']))
       $search = $_GET['search'];
    if(isset($_GET['iframe']))
       $iframe = $_GET['iframe'];
    if(isset($_GET['target']))
       $target = $_GET['target'];	
	
    $nuBrowseFunction = 'browse';
    if(isset($_GET['browsefunction']))
        $nuBrowseFunction = $_GET['browsefunction'];

	$h			= "

	window.nuIsWindow						= '$iframe';
	window.nuImages							= [];
	
	if('$opener' == ''){
		
		function nuLoad(){

			nuBindCtrlEvents();
			window.nuDefaultBrowseFunction	= '$nuBrowseFunction';
			window.nuBrowseFunction			= '$nuBrowseFunction';
			var welcome						= `$welcome`;
			nuLogin(welcome);

		}
		
	}else{

		function nuLoad(){

			if(nuIsOpener(window)){
				var from					= window.opener;
			}else{
				var from					= window.parent;
			}

			window.nuFORM.caller			= from.nuFORM.getCurrent();
			nuFORM.tableSchema				= from.nuFORM.tableSchema;
			nuFORM.formSchema				= from.nuFORM.formSchema;
			window.nuDefaultBrowseFunction	= '$nuBrowseFunction';
			window.nuBrowseFunction			= '$nuBrowseFunction';
			window.nuTARGET					= '$target';
			window.nuSESSION				= from.nuSESSION;
			window.nuSuffix					= 1000;
			
			if('$opener' != '') {
				
				var p						= nuGetOpenerById(from.nuOPENER, Number($opener));
				nuRemoveOpenerById(from.nuOPENER, Number($opener));

			} else {
				
				var p						= from.nuOPENER[from.nuOPENER.length -1];
				nuRemoveOpenerById(from.nuOPENER, from.nuOPENER[from.nuOPENER.length -1]);
				
			}
			
			nuBindCtrlEvents();
			
			if(p.type == 'R') {
				nuRunReport(p.record_id, p.parameters);
			} else if(p.type == 'P') {
				nuRunPHP(p.record_id, p.parameters);
			} else {
				
				window.filter				= p.filter;
				nuForm(p.form_id, p.record_id, p.filter, '$search');
				
			}
			
			if(p.record_id == '-2'){
				nuBindDragEvents();		
			}
			
		}	
		
	}
	

	function nuResize(){

	   $('#nuActionHolder').css('width', window.innerWidth);
	   $('#nuBreadcrumbHolder').css('width', window.innerWidth);
	   $('#nuTabHolder').css('width', window.innerWidth);
	   
	}
	
	
	</script>
	<script id='nuheader'>
$nuHeader


	</script>
	<script>
	
	";
	
	print $h;
	
?>

</script>

</head>


<body id='nubody' onload="nuLoad()" onresize="nuResize()">

</body>

</html>

