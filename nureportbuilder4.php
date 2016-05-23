<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="nudrag.css">

<script src='nureportjson.js' type='text/javascript'></script>
<script src='jquery/jquery-1.8.3.js' type='text/javascript'></script>
<script src='nudrag.js' type='text/javascript'></script>
<script src='nudragreport.js' type='text/javascript'></script>
<script src='nudragdialog.js' type='text/javascript'></script>

<script>
$(document).ready(function() {
	if(window.opener){
		if(String(window.opener.document.getElementById('sre_layout').value) == '') {
			window.nuREPORT = window.nuREPORTdefault;
		} else {
			window.nuREPORT = $.parseJSON(window.opener.sre_layout.value);
		}
	} else {
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
        window.opener.nuSetEdited();
        window.close();
    }else{
        alert('Cannot be saved to Report Form');
    }
}
</script>

</head>

<body onscroll="moveToolbar()" style="margin:0px"></body>

</html>
