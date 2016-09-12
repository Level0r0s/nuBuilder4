<html>

<head>
<meta http-equiv='Content-type' content='text/html;charset=UTF-8'>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<?php
require_once('nucommon.php');	
cssinclude('nubuilder4.css');
jsinclude('nuform.js');
jsinclude('nuformdrag.js');
jsinclude('nucalendar.js');
jsinclude('nucommon.js');
jsinclude('nuajax.js');       //-- calls to server
jsinclude('nufunctions.js');
?>

<script>


function nuHomeWarning(){

	if(nuEDITED){
		return nuTranslate('Leave this form without saving?')+'  '+nuTranslate('Doing this will return you to the login screen.');
	}
	
	return nuTranslate('Doing this will return you to the login screen.');
	
}

window.onbeforeunload = nuHomeWarning;


	window.nuHASH	= [];




<?php

	$opener		= $_GET['opener'];
	$iframe		= $_GET['iframe'];
	$target		= $_GET['target'];
	$type		= $_GET['type'];
	$type		= $_GET['type'] == '' ? 'browse' : $_GET['type'];

	$nuFormats	= json_encode(nuTextFormats(true));
		
	print "
	
	window.nuVersion		= 'nuBuilder4';
	window.nuFormats		= $nuFormats;
	window.nuCALLERHASH	= [];
	
	";
		
	$h	= "
	if(window.parent == window && !nuValidCaller(window.opener)){
		

		function nuLoad(){
			nuBindCtrlEvents();
			nuLogin();
		}
		
	}else{
		
		function nuLoad(){
			
			if(nuValidCaller(window.parent)){
				var from		= window['parent'];
			}else{
				var from		= window['opener'];
			}
			
			nuCALLERHASH      = from.nuHashFromEditForm();
			window.nuTYPE		= '$type';
			window.nuTARGET	= '$target';
			window.nuSESSION	= from.nuSESSION;
			var p			= from.nuOPENER[0$opener];
			
			nuBindCtrlEvents();

			if(p.type == 'getreport') {
				nuGetPDF(p.form_id, p.record_id)
			} else if(p.type == 'getphp') {
				nuGetPHP(p.form_id, p.record_id)
			} else {
				nuGetForm(p.form_id, p.record_id, p.filter);
			}
			
			if(p.record_id == '-2'){
				nuBindDragEvents();		
			}
		}		
	}
	
	";
	
	print $h;
	
?>

</script>

</head>

<body onload="nuLoad()" >

</body>

</html>

