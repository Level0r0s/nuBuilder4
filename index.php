<html>

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

    require_once('config.php');

    $nuDB = new PDO("mysql:host=$nuConfigDBHost;dbname=$nuConfigDBName;charset=utf8", $nuConfigDBUser, $nuConfigDBPassword, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    $nuDB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $nuDB->exec("SET CHARACTER SET utf8");

    $getHTMLHeaderSQL  = "
        SELECT set_header
        FROM zzzzsys_setup
        WHERE zzzzsys_setup_id = 1
    ";

    $getHTMLHeaderQRY = $nuDB->prepare($getHTMLHeaderSQL);
    $HTMLHeader = '';
    try {
        $getHTMLHeaderQRY->execute();
        $HTMLHeader = $getHTMLHeaderQRY->fetch(PDO::FETCH_OBJ)->set_header;
    }catch(PDOException $ex){
        die('nuBuilder cannot access the database. Please check your database configuration in config.php.');
    }

    $j  = "\n\n//-- CREATED BY Setup -> Header\n\n\n" . $HTMLHeader;
    $j .= "\n\n//===========================================\n\n";
    
    return $j;
    
}

nuJSIndexInclude('jquery/jquery.js');
nuJSIndexInclude('nuformclass.js');
nuJSIndexInclude('nuform.js');
nuJSIndexInclude('nuformdrag.js');
nuJSIndexInclude('nucalendar.js');
nuJSIndexInclude('nucommon.js');
nuJSIndexInclude('nuajax.js');       //-- calls to server
nuJSIndexInclude('nufunctions.js');

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
window.onbeforeunload	= nuHomeWarning;
window.nuHASH			= [];

<?php

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
	
	if('$opener' == ''){
		
		function nuLoad(){

			nuBindCtrlEvents();
			window.nuDefaultBrowseFunction	= '$nuBrowseFunction';
			window.nuBrowseFunction			= '$nuBrowseFunction';
			nuLogin();

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
			
			if('$opener' != '') {
				
				var p						= getOpenerById(from.nuOPENER, Number($opener));
				removeOpenerById(from.nuOPENER, Number($opener));

			} else {
				
				var p						= from.nuOPENER[from.nuOPENER.length -1];
				removeOpenerById(from.nuOPENER, from.nuOPENER[from.nuOPENER.length -1]);
			}
		
			nuBindCtrlEvents();
			
			window.filter					= p.filter;

			if(p.type == 'getreport') {
				nuGetPDF(p.form_id, p.record_id)
			} else if(p.type == 'getphp') {
				nuGetPHP(p.form_id, p.record_id)
			} else {
				nuForm(p.form_id, p.record_id, p.filter, '$search');
			}
			
			if(p.record_id == '-2'){
				nuBindDragEvents();		
			}
		}		
	}
	
$nuHeader

	";
	
	print $h;
	
?>

</script>

</head>


<body onload="nuLoad()" >

</body>

</html>

