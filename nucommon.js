window.nuDialog 			= new nuCreateDialog('');
window.nuBC 				= [];
window.nuOPENER			= [];
window.nuSESSION			= '';
window.nuTYPE 			= 'default';

function nuOpener(f, r){

	this.form_id          = f;
	this.record_id        = r;
	
}


function nuFormState(){

	this.call_type        = '';
	this.filter           = '';
	this.form_id          = '';
	this.forms        	= [];
	this.iframe       	= 0;
	this.lookup_id        = '';
	this.object_id        = '1';
	this.page_number      = 0;
	this.password     	= '';
	this.record_id        = '';
	this.rows        		= 25;
	this.row_height		= 25;
	this.search           = '';
	this.session_id		= window.nuSESSION;
	this.nosearch_columns = [];
	this.sort             = '-1';
	this.sort_direction   = 'desc';
	this.tab_start      	= [];
	this.username         = '';
	
}

function nuGetBreadcrumb(b){

	window.nuBC 	= window.nuBC.slice(0, b + 1);

	nuGetForm(window.nuBC[b].form_id, window.nuBC[b].record_id, 0);
	
}

function nuCheckPassword(){
	
	var u = $('#nuusername').val();
	var p = $('#nupassword').val();
	
	$('body').html('');

	window.nuBC	= [];
	
	window.nuBC.push(new nuFormState());
	
	var w 		= nuGetFormState();
	w.call_type	= 'login';
	w.username	= u;
	w.password	= p;

	var request 	= $.ajax({
		url      : "nuapi.php",
		type     : "POST",
		data     : {nuSTATE : w},
		dataType : "json"
		}).done(function(data){
			
			var fm 	= data.forms[0];
			
			nuBuildForm(fm);

		}).fail(function(xhr, err){
			alert(nuFormatAjaxErrorMessage(xhr,err));
	});

}


function nuGetForm(f, r, n){

	if(arguments.length != 3){   //-- add a new breadcrumb
		
		window.nuBC.push(new nuFormState());
		
	}
	
	var w 		= nuGetFormState();
	w.call_type	= 'getform';
	w.form_id	= f;
	w.record_id	= arguments.length == 1 ? '' : r;

	var request 	= $.ajax({
		url      : "nuapi.php",
		type     : "POST",
		data     : {nuSTATE : w},
		dataType : "json"
		}).done(function(data){
			
			var fm 	= data.forms[0];
			
			nuBuildForm(fm);

		}).fail(function(xhr, err){
			alert(nuFormatAjaxErrorMessage(xhr,err));
	});

}

function nuGetFormState(){

	var l = window.nuBC.length;
	var o = window.nuBC[l-1];
	var j = JSON.stringify(o);
	
	return  JSON.parse(j);
	
}


function nuSetFormState(){

	var l = window.nuBC.length;
	var o = window.nuBC[l];
	var j = JSON.stringify(o);
	return  JSON.parse(j);
	
}

function nuFormatAjaxErrorMessage(jqXHR, exception) {

    if (jqXHR.status === 0) {
        return ('Not connected.\nPlease verify your network connection.');
    } else if (jqXHR.status == 404) {
        return ('The requested page not found. [404]');
    } else if (jqXHR.status == 500) {
        return ('Internal Server Error [500].');
    } else if (exception === 'parsererror') {
        return ('Requested JSON parse failed.');
    } else if (exception === 'timeout') {
        return ('Time out error.');
    } else if (exception === 'abort') {
        return ('Ajax request aborted.');
    } else {
        return ('Uncaught Error.\n' + jqXHR.responseText);
    }
}

String.prototype.replaceAll = function(str1, str2, ignore){

   return this.replace(new RegExp(str1.replace(/([\,\!\\\^\$\{\}\[\]\(\)\.\*\+\?\|\<\>\-\&])/g, function(c){return "\\" + c;}), "g"+(ignore?"i":"")), str2);

};


function nuLogin(){
	
	$('body').html('');

	
	
	var l1	= '<div id="login" class="nuLogin">';
	var i 	= '<br><img id="thelogo" src="logo.png">';
	var u 	= '<br><br>Username <input id="nuusername"/>';
	var p 	= '<br><br>Password <input id="nupassword" type="password"/>';
	var s 	= '<br><br><input id="submit" type="button" onclick="nuCheckPassword()" value="Submit"/>';
	var l2	= '<br><br></div>';
	
	var e = document.createElement('div');
	e.setAttribute('id', 'loginbg');
	$('body').append(e);
	$('#' + e.id).css({
		'width'          	: '100%',
		'height'         	: '50%',
		'top'			: 20,
		'left'			: 20,
		'position'		: 'absolute',
		'text-align'     	: 'center',
	})
	.html(l1+i+u+p+s+l2);
	
    $('#nuusername').focus();
	
}


function nuPopupiFrame(f, r){

	window.nuOPENER.push(new nuOpener(f, r));
	var l = window.nuOPENER.length -1;
	
	window.nuDialog.createDialog(50, 50, 700, 600, '');
	$('#nuDragDialog')
	.css('visibility', 'hidden')
	.append('<iframe style="left:5px;top:35px;width:400px;height:400px;position:absolute" id="nuIframe" src="index.php?bc=' + l + '"></iframe>');

}



//-- object for dragging dialog --//

function nuCreateDialog(t){

	this.startX     = 0;
	this.startY     = 0;
	this.moveX      = 0;
	this.moveY      = 0;
	this.title      = t;
	
	this.move = function(event) {
	
		this.moveX  = event.clientX - this.startX ;
		this.moveY  = event.clientY - this.startY;
		this.startX = event.clientX;
		this.startY = event.clientY;
		if(event.buttons == 1 && event.target.id == 'dialogTitleWords'){

			this.moveDialog();
			
		}
		
		if(event.target.id == 'dialogClose'){
			$('#dialogClose').css('background-color','lightgrey');
		}else{
			$('#dialogClose').css('background-color','');
		}
		
	}
	
	this.click = function(event) {
	
		if(event.target.id == 'dialogClose'){
			$('#nuDragDialog').remove();
			$('#nuModal').remove();
		}
		
	}

	this.moveDialog = function() {

		var s = document.getElementById('nuDragDialog');
		var o = s.style;
		var l = parseInt(o.left) + this.moveX;
		var t = parseInt(o.top)  + this.moveY;
		
		o.left  = l + 'px';
		o.top   = t + 'px';

	}

	this.createDialog = function(l, t, w, h, title) {
		
		nuDialog.dialog = this.createDialog.caller.name;
		var e = document.createElement('div');

		e.setAttribute('id', 'nuDragDialog');

		$('body').append('<div id="nuModal"></div>');
		$('body').append(e);

		$('#nuDragDialog').addClass('nuDragDialog nuDragNoSelect');
		$('#nuDragDialog').css({'left':l, 'top':t, 'width':w, 'height':h, 'background-color':'#E0E0E0', 'z-index': 3000, 'position':'absolute'});
		$('#nuDragDialog').html('<div id="dialogTitle" style="background-color:#CCCCCC ;position:absolute;width:100%;height:30px;font-size:16px;font-family:Helvetica"><div id="dialogTitleWords" style="padding-top: 6px;height:30px;">&nbsp;&nbsp;'+title+'</div><img id="dialogClose" src="close.png" style="position:absolute; top:0px; right:0px"></div>');
		
		$('#nuDragDialog').on('mousemove', 	function(event){nuDialog.move(event);});
		$('#nuDragDialog').on('mouseout', 	function(event){$('#dialogClose').css('background-color','');});
		$('#nuDragDialog').on('click',     	function(event){nuDialog.click(event);});

		this.startX = l;
		this.startY = t;

	}
	
}

