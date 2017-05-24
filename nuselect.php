<!DOCTYPE html>
<html>
<head>
<?php

require_once('nucommon.php');	

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
<script>
window.nuSuffix				= Number(String(Math.random()).substr(-4));
window.nuSelect				= new nuSelectObject();
</script>
</head><body></body></html>

