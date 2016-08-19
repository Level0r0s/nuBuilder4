<html>

<head>
<meta http-equiv='Content-type' content='text/html;charset=UTF-8'>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
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

	$nuFormats	= json_encode(nuTextFormats(true));
		
	print "
	
	window.nuFormats	=	$nuFormats;
	
	";
		
	$h	= "
	
	var nuFrame	= '$iframe';

	if(window.opener == null && nuFrame != '1'){

parent.console.log('opener null and not iframe');
		var from	= window['parent'];
		
		function nuLoad(){
			nuBindCtrlEvents();
			nuLogin();
		}
		
	}else{
		
		function nuLoad(){

			if(nuFrame == '1'){
				var from		= window['parent'];
			}else{
				var from		= window['opener'];
			}
			
			window.nuTYPE		= '$type';
			window.nuTARGET	= '$target';
			window.nuSESSION	= from.nuSESSION;
			var p			= from.nuOPENER[0$opener];
parent.console.log(p);
			nuSetHash('type', 'igetreport');

			nuBindCtrlEvents();
parent.console.log(p);

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
	
	nudebug($h);
	print $h;
	
?>

</script>

</head>

<body onload="nuLoad()" >

</body>

</html>

