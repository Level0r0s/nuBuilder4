<?php 
require_once('nucommon.php'); ?>
<!DOCTYPE html>
<html>

<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<script>


<?php

	$bc	= $_GET['bc'];
	
	if($bc != ''){
		
		print "
		
		function nuLoad(){
			
			window.nuTYPE		= 'lookup';
			window.nuSESSION	= parent.nuSESSION;
			var p			= parent.nuOPENER[$bc];

			nuGetForm(p.form_id, p.record_id);

		}
		
		";
		
	}else{
		
		print "
		
		function nuLoad(){

			nuLogin();
		
		}
		
		";
		
	}
?>

</script>

<?php
cssinclude('nubuilder4.css');
jsinclude('nuform.js');
jsinclude('nucommon.js');
?>

</head>

<body onload="nuLoad()" >

</body>

</html>

