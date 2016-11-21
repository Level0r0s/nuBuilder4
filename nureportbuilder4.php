<!DOCTYPE html>
<html>
<head>
<?php

require_once('nucommon.php');	

jsinclude('jquery/jquery.js');
jsinclude('dropzone/dropzone.js');
jsinclude('nuformclass.js');
jsinclude('nuform.js');
jsinclude('nuformdrag.js');
jsinclude('nudrag.js');
jsinclude('nudragreport.js');
jsinclude('nudragdialog.js');
jsinclude('nucalendar.js');
jsinclude('nucommon.js');
jsinclude('nuajax.js');       //-- calls to server
jsinclude('nufunctions.js');
jsinclude('nureportjson.js');

cssinclude('nubuilder4.css');
cssinclude('nudrag.css');

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
		
		window.nuREPORT = window.nuREPORTdefault;
		
     }
	 
	nuLoadReport();
	
});
</script>

<script>

function nuStringify(){

    if(window.opener){

		window.opener.document.getElementById('sre_layout').value = JSON.stringify(window.nuREPORT);
		alert('Copied to Report Successfully..');
		window.opener.nuEditedReport();
		window.close();

	}else{

		alert('Cannot be saved to Report Form');
		
    }
}
</script>

</head>

<body onscroll="moveToolbar()" style="margin:0px"></body>

</html>
