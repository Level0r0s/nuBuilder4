<!DOCTYPE html>
<html>
<head>
<?php

<<<<<<< HEAD
require_once('nuform.php'); 
require_once('nucommon.php'); 
require_once('nudata.php'); 
=======
require_once('nucommon.php');	
>>>>>>> 3f0b04d1ea896696f828951a5c072d160e3e58be

nuJSInclude('jquery/jquery.js');
nuJSInclude('nuselectclass.js');
nuJSInclude('nuformclass.js');
nuJSInclude('nuform.js');
nuJSInclude('nuformdrag.js');
nuJSInclude('nudrag.js');
nuJSInclude('nureportdrag.js');
nuJSInclude('nucalendar.js');
nuJSInclude('nucommon.js');
nuJSInclude('nuajax.js');       //-- calls to server
nuJSInclude('nufunctions.js');
nuJSInclude('nureportjson.js');

nuCSSInclude('nubuilder4.css');
nuCSSInclude('nudrag.css');

?>

<style>

body  {
    background-image: url("graphics/grid.png");
}

</style>

<script>

	window.nuSuffix				= Number(String(Math.random()).substr(-4));
	window.nuSQL				= new nuSelectObject();
	window.nuCurrentID			= '';
	window.nuY					= 0;
	window.nuX					= 0;
	
	function nuLoad(){
		
		nuSQL.rebuildGraphic();
		//nuSQL.buildSQL();
		
		$('body')
		.attr('onmousemove', 	'nuMove(event)')
		.attr('onmousedown', 	'nuDown(event)')
		.attr('onmouseup', 		'nuUp(event)')
		.css('zoom', Number(parent.$('#sse_resize').val()) / 100)

		parent.nuHasNotBeenEdited();
		
	}

</script>
</head><body onload='nuLoad()'></body></html>

