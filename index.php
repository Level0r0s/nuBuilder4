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
	
	";
		
	$h	= "

	if(window.parent == window && !nuValidCaller(window.opener)){
		
		function nuLoad(){
			nuBindCtrlEvents();
			nuLogin();
		}
		
	}else{

		function nuLoad(){
			
			if(nuIsOpener(window)){
				var from		= window['opener'];
			}else{
				var from		= window['parent'];
			}
			
			window.nuTYPE		= '$type';
			window.nuTARGET		= '$target';
			window.nuSESSION	= from.nuSESSION;
			if('$opener' != '') {
				var p			= from.nuOPENER[0$opener];
			} else {
				var p			= from.nuOPENER[from.nuOPENER.length -1];
			}
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

