<html>

<head>
<meta http-equiv='Content-type' content='text/html;charset=UTF-8'>

<?php

require_once('nucommon.php');	

jsinclude('jquery/jquery.js');
jsinclude('dropzone/dropzone.js');
jsinclude('nuformclass.js');
jsinclude('nuform.js');
jsinclude('nuformdrag.js');
jsinclude('nucalendar.js');
jsinclude('nucommon.js');
jsinclude('nuajax.js');       //-- calls to server
jsinclude('nufunctions.js');

cssinclude('nubuilder4.css');
cssinclude('dropzone/dropzone.css');

?>

<script>

	
function nuValidCaller(o){
	
	if(o === null){return false;}
	
	return o.hasOwnProperty('nuVersion');
	
}
  
function nuHomeWarning(){

	if(window.nuEDITED){
		return nuTranslate('Leave this form without saving?')+'  '+nuTranslate('Doing this will return you to the login screen.');
	}
	
	return nuTranslate('Doing this will return you to the login screen.');
	
}

window.nuVersion 		= 'nuBuilder4';
window.onbeforeunload	= nuHomeWarning;
window.nuHASH			= [];




<?php

	$opener		= $_GET['opener'];
	$iframe		= $_GET['iframe'];
	$target		= $_GET['target'];
	nudebug('get type: ' . $_GET['type']);
	nudebug('get opener: ' . $_GET['opener']);
	$type		= $_GET['type'];
	$type		= $_GET['type'] == '' ? 'browse' : $_GET['type'];

	$nuFormats	= json_encode(nuTextFormats(true));
	$nuHeader	= nuHeader();
	
	print "
	window.nuVersion		= 'nuBuilder4';
	window.nuFormats		= $nuFormats;
	
	";

	$h	= "
	if(window.parent == window && window.opener == null){
		
		function nuLoad(){
			
			nuBindCtrlEvents();
			nuLogin();

		}
	}else{

		function nuLoad(){

			if(nuIsOpener(window)){
				var from			= window.opener;

			}else{
				var from			= window.parent;
			}

			window.nuFORM.caller	= from.nuFORM.getCurrent();
			window.nuTYPE			= '$type';
			window.nuTARGET			= '$target';
			window.nuSESSION		= from.nuSESSION;
			
			if('$opener' != '') {
				var p				= getOpenerById(from.nuOPENER, Number($opener));
				removeOpenerById(from.nuOPENER, Number($opener));
			} else {
				var p				= from.nuOPENER[from.nuOPENER.length -1];
				removeOpenerById(from.nuOPENER, from.nuOPENER[from.nuOPENER.length -1]);
			}
		
			nuBindCtrlEvents();
			window.filter			= p.filter;

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
	
$nuHeader

	";
	
	print $h;
	
?>

</script>

</head>


<body onload="nuLoad()" >

</body>

</html>

