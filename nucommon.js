window.nuDialog 				= new nuCreateDialog('');
window.nuOPENER					= [];
window.nuSUBFORMROW				= [];
window.nuSUBFORMJSON			= [];
window.nuSCHEMA					= [];
window.nuLANGUAGE				= [];
window.nuFIELD					= [];
window.nuFORM					= new nuFormObject();
window.nuHASH					= [];
window.nuBEFORE					= [];
window.nuAFTER					= [];
window.nuSESSION				= '';
window.nuTYPE 					= 'browse';
window.nuDRAGLINEVSTART			= '';
window.nuDRAGLINEVID			= '';
window.nuNEW					= '';

function nuOpener(f, r, filter){

	this.form_id			= f;
	this.record_id			= r;
	
	if(arguments.length 	= 3){
		this.filter			= filter;
	}else{
		this.filter			= '';
	}
	
}

function nuOpenerAppend(t, k) {
	window.nuOPENER[window.nuOPENER.length - 1][t] = k;
}

function nuGetBreadcrumb(b, t = ''){

	if(window.nuEDITED && window.nuTYPE != 'runreport' && window.nuTYPE != 'getphp'){
		if(!confirm(nuTranslate('Leave this form without saving?'))){
			return;
		}
	}

	if(t == '') {
		window.nuTYPE = "browse";
	}
	
	window.nuFORM.removeAfter(b);
	
	var c	= window.nuFORM.current;
	
	nuGetForm(c.form_id, c.record_id, c.filter,  1);
	
}


function nuDisplayError(e, g = 0){
	
	for(var i = 0 ; i < e.length ; i++){

		if( e[i][2]) {
			$('#' + e[i][1]).addClass('nuValidate');			
		}
				
	}

	if(e.length > 0){

		nuPopup("nuerror", "-1", e);
		
	}
	
	return e.length > 0;
	
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

function loginInputKeyup(event){
    if(event.keyCode == 13){
        $('input#submit').click();
    }
}

function nuLogin(){
	
	window.nuSESSION = '';
	
	$('body').html('');
	
	var l1	= '<div id="login" class="nuLogin" style="  border-style: solid;border-width: 1px;border-color: rgba(0, 0, 0, 0.08);">';
	var i 	= '<br><img id="thelogo" src="logo.png">';
	var u 	= '<br><br><span style="width:90px;display:inline-block;">Username</span><input id="nuusername" style="padding: 2px;" />';
	var p 	= '<br><br><span style="width:90px;display:inline-block;">Password</span><input id="nupassword" onkeyup="loginInputKeyup(event);" style="padding: 2px;" type="password"/>';
	var s 	= '<br><br><input id="submit" type="button" class="nuButton" style="height:30px;" onclick="nuGetForm()" value="Log in"/>';
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


function nuBuildLookup(t, p){

	var f	= $('#' + t.id).attr('data-nu-form-id');
	var tar	= $('#' + t.id).attr('data-nu-target');
	
	window.nuOPENER.push(new nuOpener(f, ''));
	
	var l 	= window.nuOPENER.length -1;
	
	for(var i = 0 ; i < p.length ; i++){
		
		window.nuOPENER[l][p[i][0]]	= p[i][1];
	
	}
	
	window.nuDialog.createDialog(50, 50, 50, 50, '');
	
	$('#nuDragDialog')
	.css('visibility', 'hidden')
	.append('<iframe style="left:5px;top:35px;width:400px;height:400px;position:absolute" id="nuLookup" src="index.php?opener=' + l + '&target=' + tar + '&type=lookup&iframe=1"></iframe>');

}

function nuPopup(f, r, filter){
	
	$('#nuOptionsListBox').remove();
	
	window.nuOPENER.push(new nuOpener(f, r, filter));
	
	var l 	= window.nuOPENER.length -1;
console.log('opening popup :', f, r, l);

	window.nuDialog.createDialog(50, 50, 50, 50, '');
	
	$('#nuDragDialog')
	.css('visibility', 'hidden')
	.append('<iframe style="left:5px;top:35px;width:400px;height:400px;position:absolute" id="nuLookup" src="index.php?opener=' + l + '&type=browse&iframe=1"></iframe>')
	.prepend('<div id="nuDraggingBox" style="position:absolute; bottom:0px; right:0px; width:20px; height:20px; z-index:200"></div>');
	
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

		$('body').append('<div id="nuModal"></div>')
		.append(e);

		$('#nuDragDialog').addClass('nuDragDialog nuDragNoSelect')
		.css({'left':l, 'top':t, 'width':w, 'height':h, 'background-color':'#E0E0E0', 'z-index': 3000, 'position':'absolute'})
		.html('<div id="dialogTitle" style="background-color:#CCCCCC ;position:absolute;width:100%;height:35px;font-size:16px;font-family:Helvetica"><div id="dialogTitleWords" style="padding-top: 6px;height:30px;">&nbsp;&nbsp;'+title+'</div><img id="dialogClose" src="close.png" style="position:absolute; top:0px; right:0px"></div>')
		.on('mousemove', 	function(event){nuDialog.move(event);})
		.on('mouseout', 	function(event){$('#dialogClose').css('background-color','');})
		.on('click',     	function(event){nuDialog.click(event);});

		this.startX = l;
		this.startY = t;

	}
	
}

function nuReformat(t){

	var o			= $('#' + t.id);
	var f			= o.attr('data-nu-format');
	var v			= String(o.val());
	
	if(f == '' || v == ''){return v;}
	
	var F			= nuFormats[f];
	
	if(F.type == 'number'){
		
		var n		= v.split(F.decimal);
		n[1]		= n.length == 1 ? '0' : n[1];
		n[0] 		= String(Number(String(n[0]).replaceAll(',', '', true).replaceAll('.', '', true)));
		n[1]		= String(n[1] + '0000000').substr(0, F.format);
		
		if(isNaN(n[0] + F.decimal + n[1])){
			
			alert("Invalid Number");
			o.val('');
			return;
			
		}

		n[0] = n[0].replace(/\B(?=(\d{3})+(?!\d))/g, F.separator);
		
		if(F.format == 0){
			o.val(n[0]);
		}else{
			
			if(n[0] == ''){
				o.val('0' + F.decimal + n[1]);
			}else{
				o.val(n[0] + F.decimal + n[1]);
			}
			
		}
		
	}else if(F.type == 'date'){

		var vd	= nuJavascriptDateParse(v, F.format);

		if(vd === null){
			
			alert("Invalid Format (expecting '" + F.sample + "')");
			o.val('');
			return;
			
		}

		var nd		= String(F.format);
		var full	= String(vd).split(' ');
		var mthno	= ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'];
		
		nd	= nd.replace('yyyy', full[3])
		nd	= nd.replace('yy', String(full[3]).substr(-2))
		nd	= nd.replace('mmm', full[1])
		nd	= nd.replace('mm', mthno[full[1]])
		nd	= nd.replace('dd', String('0' + '' + vd.getDate()).substr(-2))
		
		o.val(nd);
		
	}
	
}

function nuJavascriptDate(t){

	var o	= $('#' + t.id);
	var f	= o.attr('data-nu-format');
	var v	= String(o.val());
	var F   = nuFormats[f];

    if(v == ''){return v;}

    return nuJavascriptDateParse(v, F.format);

}

function nuJavascriptDateParse(valueStr, FormatStr){

    var msk = FormatStr.split('-');
    var s   = [];
    var d   = valueStr.split('-');

    if(msk[0] == 'mm'){s[0] = d[0];}
    if(msk[1] == 'mm'){s[0] = d[1];}
    if(msk[2] == 'mm'){s[0] = d[2];}
    if(msk[0] == 'mmm'){s[0] = nu2Month(d[0]);}
    if(msk[1] == 'mmm'){s[0] = nu2Month(d[1]);}
    if(msk[2] == 'mmm'){s[0] = nu2Month(d[2]);}
    
    if(msk[0] == 'dd'){s[1] = d[0];}
    if(msk[1] == 'dd'){s[1] = d[1];}
    if(msk[2] == 'dd'){s[1] = d[2];}
    
    if(msk[0] == 'yy'){s[2] = d[0] >= 50 ? ((new Date().getFullYear())-1).toString().substr(0,2) + d[0] : new Date().getFullYear().toString().substr(0,2) + d[0];}
    if(msk[1] == 'yy'){s[2] = d[1] >= 50 ? ((new Date().getFullYear())-1).toString().substr(0,2) + d[1] : new Date().getFullYear().toString().substr(0,2) + d[1];}
    if(msk[2] == 'yy'){s[2] = d[2] >= 50 ? ((new Date().getFullYear())-1).toString().substr(0,2) + d[2] : new Date().getFullYear().toString().substr(0,2) + d[2];}
    if(msk[0] == 'yyyy'){s[2] = d[0];}
    if(msk[1] == 'yyyy'){s[2] = d[1];}
    if(msk[2] == 'yyyy'){s[2] = d[2];}

    var returnDate = new Date(s[2] + '-' + s[0] + '-' + s[1]);
	
    if(returnDate == 'Invalid Date'){returnDate = null;}
	
    return returnDate;

}


function nuOpenAce(lang, obj){

	var ts			= new Date().getTime();
	window.nuAce	= [lang, obj];
	
	window.open('nuace.html?' + ts);

}

function nuGetSFArrays(){
	
	var s 	= window.nuSUBFORMJSON;
	var j	= [];
	
	for(var i = 0 ; i < s.length ; i++){
		j.push(nuSubformToArray(s[i], 1));
	}
	
	return j;
}



function nuRunIt(t, email, type){

	var r   = $('#' + t.id).attr('data-nu-row');
	var c   = '000';
	var p   = $('#' + r + c).html();
	
	if(arguments.length < 3){										//-- set type
		
		var type		= $('#' + r + '001').html();					//-- report - PDF,or procedure - PHP
		
	}
	
	if(arguments.length == 1){										//-- set email
		
		var email	= 0;
		
	}
	
	var f	= $('#' + t.id).attr('data-nu-primary-key');
	var i    = window.nuFORM.current.record_id;

	if(email == 1){
		
		if(type == 'php'){
			nuEmailPHP(i);
		}
		
		if(type == 'pdf'){
			nuEmailPDF(i);
		}
		
	}else{
		
		if(type == 'php'){
			nuGetPHP(f, p);
		}
		
		if(type == 'pdf'){
			nuGetPDF(f, p);
		}
		
	}
		
}

function nuBindCtrlEvents(){

	var nuCtrlKeydownListener = function(e){	
		if(e.keyCode == 17) { //Ctrl
			window.nuNEW = 1;
		}
	}
	
	var nuCtrlKeyupListener = function(e){	
		
		window.nuNEW = 0;
	}
	
    $(document).on('keydown.nubindctrl', nuCtrlKeydownListener);
	
	$(document).on('keyup.nubindctrl', nuCtrlKeyupListener);

}

function nuUnbindDragEvents(){
    $(document).off('.nubindctrl');
}


function nuTranslate(s){

	for(var i = 0 ; i < window.nuLANGUAGE.length ; i ++){
		
		if(window.nuLANGUAGE[i].trl_english == s){
			
			return window.nuLANGUAGE[i].trl_translation;
			
		}
		
	}
	
	return s;
	
}



function nuIsOpener() {
	
	if(window.opener != null) {
		return true;
	}
	
	return false;
}

function nuFormValues(){  //-- list of changed fields and values

    var list   = {};
    
    $("[data-nu-data]").each(function() {
        
        list[$(this).attr('id')] = $(this).val();
        
    });
    
    var f = {};
    
    for (var fld in list) {
		
        f[fld] = $('#' + fld).val();
		
    }

	return f;
    
}

function nuCloseAllnuOptionsLists(){

	$('#nuOptionsList').remove();
	
	parent.$('#nuOptionsList').remove();
	
	$('iframe').each(function() {
		
		$('#' + this.id).contents().find('#nuOptionsList').remove();
		
	});	

}



function nuSubformArray(sf, all){

    var a 	= Array();
    var i 	= 0;
    var p 	= '';

    if(arguments.length == 1){
        all = true;
    }
    
    while($('#' + sf + nuPad3(i) + 'nuDelete').length == 1){
    
        p 	= sf + nuPad3(i);
		
        if(!$('#' + p + 'nuDelete').is(':checked') || all){
			a.push(p);
        }
		
        i++;
		
    }
    
    return a;

}

function nuSortSubform(sf, fld){
	
	var rows	= nuSubformArray(sf);
	var value	= [];
	var row		= []
	
	for(var i = 0 ; i < rows.length ; i++){

		$("[data-nu-subform-sort=1][id^=" + rows[i] + "]").each(function( index ) {
			value.push(new nuSubformRecordValues(this.id, rows[i]));
		});
		
		row.push(value);
		value	= [];

	}
	
	row.sort(function(a, b, fld){
		return a-(b + fld)
	});
	
	return row;

}

function nuSubformRecordValues(i, r){

	this.old_id = i;
	this.new_id = '';
	this.new_value = $('#' + i).val();

}



function nuSortSubformBy(row, col){


	
	for(var i = 0 ; i < col.length ; i++){
		
	}
	
		return function(a, b) {
			
			return a[col] - b[col];
			
		}
	
}

function nuEditPHP(ev){

	var i	= window.nuFORM.current.record_id + '_' + ev;
	
	if(b.current.record_id == '-1'){
	
		alert('Must Save Record Before Adding Procedures');
		return;
		
	}
	
	c	= $('#sfo_code').val();
	d	= $('#sfo_description').val();
	
	nuSetHash('the_form', d + ' (' + c + ')');
	nuSetHash('nuSystemPHP', 1);
	nuPopup("nuphp", i);

}



