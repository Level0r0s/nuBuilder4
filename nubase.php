<?php

    function nuLoadBase($request){
        $nuFORMJSON = json_encode($request);
        $baseHTML =<<<END
			<!DOCTYPE html>
			<html>

			<head>

			  <link rel="stylesheet" type="text/css" href="nudrag.css">
			  <link rel="stylesheet" type="text/css" href="nubuilder4.css">

			  <script src='lib/jquery-2.1.4.js' type='text/javascript'></script>
			  <script src='nudrag.js' type='text/javascript'></script>
			  <script src='nudragdialog.js' type='text/javascript'></script>

			</head>

			<body>

			<script>
				window.nuFORM = $nuFORMJSON;
			</script>
			
			</div>

			  <div class='nuStatusHolder'>&nbsp;&nbsp;
			globeadmin :: Powered By nuBuilder
			  </div>

			  <div class='nuActionHolder'>&nbsp;&nbsp;
				<img id="thelogo" src="img/logo.png" style='position:absolute;right:20px'>
				<input id='nuSearchField' type='text' class='nuSearch'>
				<input id='t1' type='button' class='nuButton' value='Search'>
				<input id='t2' type='button' class='nuButton' value='Add'>
				<input id='t3' type='button' class='nuButton' value='Print'>
				<input id='t4' type='button' class='nuButton' value='Test'>
			  </div>

			  <div class='nuBreadcrumbHolder'>&nbsp;&nbsp;
				<div class='nuBreadcrumb'>Home</div>
				<div class='nuNotBreadcrumb'>&#9658;</div>
				<div class='nuNotBreadcrumb'>Milk</div>
			  </div>

			  <div class='nuTabHolder'>&nbsp;&nbsp;
				<div class='nuTab nuTabSelected'>Coffee</div>
				<div class='nuTab '>Tea</div>
				<div class='nuTab'>Milk</div>
			  </div>
			  </div>
			  
			<div id='nuFormsHolder'>

			<div id='nuFormHolder2' class='nuFormHolder'>
			gjgduydtyjtdyjtyjdyjdtyjtyj</div>

			<div id='nuFormHolder0' class='nuFormHolder' style='width:100%'>
			  <iframe id='nuiframe' style='position:absolute;left:200px;top:20px;width:900px' src="index.html">
			</iframe>
			  <input id='nubutton' type='button' style='position:absolute;left:50px;top:20px' value='button'>
			  <input id='nudisplay' style='position:absolute;left:50px;top:200px' readonly class='nuReadonly' value='display'>
			<select id='nuselect' style='position:absolute;left:50px;top:250px'>
			  <option value="volvo">select</option>
			  <option value="saab">Saab</option>
			  <option value="opel">Opel</option>
			  <option value="audi">Audi</option>
			</select>
			<select id='nuselectmultiple' multiple=true  style='position:absolute;left:200px;top:250px'>
			  <option value="volvo">select</option>
			  <option value="saab">Saab</option>
			  <option value="opel">Opel</option>
			  <option value="audi">Audi</option>
			</select>

			  <input id='nulookup' style='position:absolute;left:50px;top:350px;display:none'>
			  <input id='nulookupcode' style='position:absolute;left:50px;top:350px;width:50px;background-color:lightblue' readonly class='nuReadonly' value='code'>
			  <input id='nulookupbutton' style='position:absolute;left:102px;top:350px;width:17px;height:17px' type='button' value='B'>
			  <input id='nulookupdescription' style='position:absolute;left:121px;top:350px' readonly class='nuReadonly' value='description'>
			  
			  <div id='nusubform' style='position:absolute;left:50px;top:400px;width:425px;height:250px;background-color:grey'>subform
				  <div id='nusubformscroll' style='position:absolute;left:0px;top:40px;width:425px;height:210px;background-color:red;overflow:scroll'>
					  <div id='nusubform0' style='position:absolute;left:0px;top:0px;width:400px;height:40px;background-color:silver'>1</div>
					  <div id='nusubform1' style='position:absolute;left:0px;top:40px;width:400px;height:40px;background-color:lightgrey'>2</div>
					  <div id='nusubform2' style='position:absolute;left:0px;top:80px;width:400px;height:40px;background-color:silver'>3</div>
					  <div id='nusubform3' style='position:absolute;left:0px;top:120px;width:400px;height:40px;background-color:lightgrey'>4</div>
					  <div id='nusubform4' style='position:absolute;left:0px;top:160px;width:400px;height:40px;background-color:silver'>5</div>
					  <div id='nusubform5' style='position:absolute;left:0px;top:200px;width:400px;height:40px;background-color:lightgrey'>6</div>
					  <div id='nusubform6' style='position:absolute;left:0px;top:240px;width:400px;height:40px;background-color:silver'>7</div>
					  <div id='nusubform7' style='position:absolute;left:0px;top:280px;width:400px;height:40px;background-color:lightgrey'>8</div>
					  <div id='nusubform8' style='position:absolute;left:0px;top:320px;width:400px;height:40px;background-color:silver'>9</div>
				  </div>
			  </div>
			  
			  
			  
			  <input id='nutext' style='position:absolute;left:50px;top:700px' value='text'>
			  <div id='nuhtml' style='position:absolute;left:50px;top:750px;width:400px;height:250px;background-color:grey'>html</div>

			</div>
			</div>


			</body>

			</html>
END;
        print $baseHTML;
    }

?>