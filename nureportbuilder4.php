<!DOCTYPE html>
<html>
<head>
<?php

require_once('nucommon.php');	

jsinclude('jquery/jquery.js');
jsinclude('nuformclass.js');
jsinclude('nuform.js');
jsinclude('nuformdrag.js');
jsinclude('nudrag.js');
jsinclude('nudragreport.js');
jsinclude('nucalendar.js');
jsinclude('nucommon.js');
jsinclude('nuajax.js');       //-- calls to server
jsinclude('nufunctions.js');
jsinclude('nureportjson.js');

cssinclude('nubuilder4.css');
cssinclude('nudrag.css');

$f	= nuFormatList();

$h	= "
<script>

	window.nuFormats = $f;

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
