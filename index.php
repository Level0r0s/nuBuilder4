<?php 
require_once('nucommon.php'); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>

<head>
<meta http-equiv='Content-type' content='text/html;charset=UTF-8'>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<script>




<?php

	$opener		= $_GET['opener'];
	$target		= $_GET['target'];
	$type		= $_GET['type'];

	$nuFormats	= json_encode(nuTextFormats(true));
		
	print "
	window.nuFormats	=	$nuFormats;
	";
		
	if($type == ''){			//-- login screen
		
		print "
		
		function nuLoad(){
			nuLogin();
		
		}
		
		";
		
	}else{
		
		$h	= "
		
		function nuLoad(){
			
			window.nuTYPE		= '$type';
			window.nuTARGET	= '$target';
			window.nuSESSION	= parent.nuSESSION;
			var p			= parent.nuOPENER[$opener];

			nuGetForm(p.form_id, p.record_id, p.filter);

			if(p.record_id == '-2'){
				nuBindDragEvents();
			}

		}
		
		";
		print $h;

	}
	
?>

</script>

<?php
cssinclude('nubuilder4.css');
jsinclude('nuform.js');
jsinclude('nuformdrag.js');
jsinclude('nucalendar.js');
jsinclude('nucommon.js');
	
?>

</head>

<body onload="nuLoad()" >

</body>

</html>

