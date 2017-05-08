<!DOCTYPE html>
<html>
<head>
<?php

require_once('nucommon.php');	

nuJSInclude('jquery/jquery.js');
nuJSInclude('nuformclass.js');
nuJSInclude('nuform.js');
nuJSInclude('nuformdrag.js');
nuJSInclude('nudrag.js');
nuJSInclude('nudragreport.js');
nuJSInclude('nucalendar.js');
nuJSInclude('nucommon.js');
nuJSInclude('nuajax.js');       //-- calls to server
nuJSInclude('nufunctions.js');
nuJSInclude('nureportjson.js');

nuCSSInclude('nubuilder4.css');
nuCSSInclude('nudrag.css');

$f	= nuFormatList();
$t	= nuTTList($_GET['tt'], $_GET['launch']);

$h	= "
<script>

	window.nuFormats	= $f;
	window.nuTT			= $t;

</script>

";

print $h;


?>


<script>


$(document).ready(function() {
	
	if(window.opener){
		
		if(String(window.opener.document.getElementById('sre_layout').value) == '') {
			window.nuREPORT = window.nuREPORTdefault;
		}else{
			window.nuREPORT = $.parseJSON(window.opener.sre_layout.value);
		}
	}else{
		window.nuREPORT 	= window.nuREPORTdefault;
    }
	 
	nuLoadReport();
	
});

function nuStringify(){

    if(window.opener){

		window.opener.$('#sre_layout')
		.val(JSON.stringify(window.nuREPORT))
		.change();
		
		alert('Copied to Report Successfully..');

		window.close();

	}else{

		alert('Cannot be saved to Report Form');
		
    }
}



</script>

</head>

<body onscroll="moveToolbar()" style="margin:0px"></body>

</html>
