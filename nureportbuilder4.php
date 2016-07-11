<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="nudrag.css">

<script src='nureportjson.js' type='text/javascript'></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src='nudrag.js' type='text/javascript'></script>
<script src='nudragreport.js' type='text/javascript'></script>
<script src='nudragdialog.js' type='text/javascript'></script>

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
