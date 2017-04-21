
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
window.nuDRAGLINEVSTART			= '';
window.nuDRAGLINEVID			= '';
window.nuNEW					= '';

function nuOpener(f, r, filter, parameters){
	
	this.id					= Date.now();
	this.form_id			= f;
	this.record_id			= r;
	
	if(arguments.length 	= 3){
		this.filter			= filter;
	}else{
		this.filter			= '';
	}
	
	if(arguments.length 	= 4){
		this.parameters		= parameters;
	}else{
		this.parameters		= '';
	}
	
}

function nuOpenerAppend(t, k) {
	window.nuOPENER[window.nuOPENER.length - 1][t] = k;
}

function getOpenerById(pOPENER, pid) {
	
	for (var i = 0; i < pOPENER.length; i++) {
		if(pOPENER[i].id == pid) {
			return pOPENER[i];
		}
	}
	
	return;
}

function removeOpenerById(o, pid) {

	for (var i = 0; i < o.length; i++) {
		
		if(o[i].id == pid) {
			o.splice(i,1);
		}
		
	}

}

function nuGetBreadcrumb(bc, ind){
	
	var a			= arguments.length;
	var e			= nuFORM.edited;
	var f			= nuFORM.formType;
	
	if(a == 0){
		var b		= nuFORM.breadcrumbs.length -1;
	}else{
		
		var b		= bc;
		
		if(a == 2){
			nuFORM.breadcrumbs[b].tab_start[0].tabNumber	= String(ind);
		}
		
	}
	
	if(e && f != 'launch'){
		
		if(!confirm(nuTranslate('Leave this form without saving?'))){
			return;
		}
		
	}

	window.nuFORM.removeAfter(b);
	
	var c				= window.nuFORM.getCurrent();
	
	if(c === undefined){
		$('#nuDragDialog iframe').remove();
	}else{
		nuForm(c.form_id, c.record_id, c.filter, c.search, 1);
	}

	
}


function nuDisplayError(e){

	if(e.errors === undefined || e.errors.length == 0){			//-- no error messages
		return false;
	}
	

	var im	= '<img src="nuerror.png" width="30px" height="30px" style="position:absolute;left:10px;top:10px"><br>';

	e.errors.splice(0, 0, im);

	nuAlert(e.errors);

	return true;
	
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
	window.nuFORM = new nuFormObject();
	
	$('body').html('');
	
	var l1	= '<div id="login" class="nuLogin" style="  border-style: solid;border-width: 1px;border-color: rgba(0, 0, 0, 0.08);">';
	var i 	= '<br><img id="thelogo" src="logo.png">';
	var u 	= '<br><br><span style="width:90px;display:inline-block;">Username</span><input id="nuusername" style="padding: 2px;" />';
	var p 	= '<br><br><span style="width:90px;display:inline-block;">Password</span><input id="nupassword" onkeyup="loginInputKeyup(event);" style="padding: 2px;" type="password"/>';
	var s 	= '<br><br><input id="submit" type="button" class="nuButton" style="height:30px;" onclick="nuForm()" value="Log in"/>';
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


function nuBuildLookup(t, s){

	var f			= $('#' + t.id).attr('data-nu-form-id');
	var tar			= $('#' + t.id).attr('data-nu-target');
	
	window.nuOPENER.push(new nuOpener(f, ''));
	
	var open 		= window.nuOPENER[window.nuOPENER.length - 1];
	
	window.nuDialog.createDialog(50, 50, 50, 50, '');
	
	$('#nuDragDialog')
	.css('visibility', 'hidden')
	.append('<iframe style="right:5px;top:35px;width:400px;height:400px;position:absolute" id="nuWindow" src="index.php?&opener=' +open.id + '&target=' + tar + '&search=' + s + '&browsefunction=lookup&iframe=1"></iframe>');

}

function nuPopup(f, r, filter){

	$('#nuOptionsListBox').remove();
	$('#nuCalendar').remove();
	
	window.nuOPENER.push(new nuOpener(f, r, filter));

	var id 	= window.nuOPENER[window.nuOPENER.length - 1].id;
	
	window.nuDialog.createDialog(50, 50, 50, 50, '');
	
	$('#nuDragDialog')
	.css('visibility', 'hidden')
	.append('<iframe style="right:5px;top:35px;width:400px;height:400px;position:absolute" id="nuWindow" src="index.php?opener=' + id + '&browsefunction=browse&iframe=1"></iframe>')
	.prepend('<div id="nuDraggingBox" style="position:absolute; bottom:0px; right:0px; width:20px; height:20px; z-index:200"></div>');
	
}

//-- object for dragging dialog --//

function nuCreateDialog(t){

	this.startX     = 0;
	this.startY     = 0;
	this.moveX      = 0;
	this.moveY      = 0;
	this.title      = t;
	this.pos		= {};
	
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

		var s 	= document.getElementById('nuDragDialog');
		var o 	= s.style;
		var l 	= parseInt(o.left) + this.moveX;
		var t 	= parseInt(o.top)  + this.moveY;
		
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
		.css({
			'left'				: l, 
			'top'				: t, 
			'width'				: w, 
			'height'			: h, 
			'background-color'	: '#E0E0E0', 
			'z-index'			: 3000, 
			'position'			: 'absolute'
		})
		.on('mousemove', 	function(event){nuDialog.move(event);})
		.on('mouseout', 	function(event){$('#dialogClose').css('background-color','');})
		.on('click',     	function(event){nuDialog.click(event);})
		.html('<div id="dialogTitle" ondblclick="nuResizeWindow(event)" style="background-color:#CCCCCC ;position:absolute;width:100%;height:35px;font-size:16px;font-family:Helvetica"><div id="dialogTitleWords" style="padding-top: 6px;height:30px;">&nbsp;&nbsp;'+title+'</div><img id="dialogClose" src="close.png" style="position:absolute; top:0px; left:0px"></div>')

		this.startX = l;
		this.startY = t;

	}
	
}

function nuReformat(t){

	var o			= $('#' + t.id);
	var f			= o.attr('data-nu-format');
	var v			= o.val();
	
	if(f == '' || v == ''){
		return v;
	}
	
	o.val(nuFORM.addFormatting(v, f));
	
}


function nuOpenAce(lang, obj){

	var ts			= new Date().getTime();
	window.nuAce	= [lang, obj];
	
	window.open('nuace.html?' + ts);

}
/*
function nuGetSFArrays(){

	var s 	= window.nuSUBFORMJSON;
	var j	= [];
	
	for(var i = 0 ; i < s.length ; i++){
		j.push(nuSubformToArray(s[i], 1));
	}
	
	return j;
}
*/


function nuRunIt(t, email, type){

	var r   = $('#' + t.id).attr('data-nu-row');
	var c   = '000';
	var p   = $('#' + r + c).html();
	
	if(arguments.length < 3){										//-- set type
		
		var type	= $('#' + r + '001').html();				//-- report - PDF,or procedure - PHP
		
	}
	
	if(arguments.length == 1){										//-- set email
		
		var email	= 0;
		
	}
	
	var f	= $('#' + t.id).attr('data-nu-primary-key');
	var i	= window.nuFORM.getProperty('record_id');

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
	
	$(document).keydown(function(e) {
		
        if (e.ctrlKey && e.shiftKey) {
			
			window.nuNEW = 0;
			e.preventDefault();
			
            if(e.keyCode == 65) {//A
			
//				e.preventDefault();
				nuPopup(window.nuFORM.getCurrent().form_id, "-2");

			} else if(e.keyCode == 70) {//F

//				e.preventDefault();
				nuPopup("nuform", window.nuFORM.getCurrent().form_id);
				
			} else if(e.keyCode == 79) {//O
			
//				e.preventDefault();
				nuPopup("nuobject", "", window.nuFORM.getCurrent().form_id);
				
			} else if (e.keyCode == 82) {//R
//				e.preventDefault();
				
				if(window.nuFORM.getCurrent().record_id != '') {
					nuGetBreadcrumb();
				}
				
			} else if(e.keyCode == 83) {//S
			
//				e.preventDefault();
				
				if(window.nuFORM.getCurrent().record_id != '') {
					nuSaveAction();
				} else {
					nuGetSearchList();
				}				

			}

			var nosearch = window.nuFORM.getProperty('nosearch_columns');
			var searchIndex = -1;
			
			//Numbers
			if(e.keyCode >= 49 && e.keyCode <= 57) {
				searchIndex = Math.abs(49 - e.keyCode);
			}

			if(searchIndex != -1) {
				if($.inArray(searchIndex,nosearch) != '-1') {
					nosearch.pop(searchIndex);
					$('#nusort_' + searchIndex).removeClass('nuNoSearch');					
				} else {
					nosearch.push(searchIndex);
					$('#nusort_' + searchIndex).addClass('nuNoSearch');
				}
			}
			
			window.nuFORM.setProperty('nosearch_columns', nosearch);
        }
    });
	
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



function nuEditPHP(ev){

	var r	= window.nuFORM.getProperty('record_id');
	var i	= r + '_' + ev;
	
	if(r == '-1'){
	
		alert('Must Save Record Before Adding Procedures');
		return;
		
	}
	
	c	= $('#sfo_code').val();
	d	= $('#sfo_description').val();
	
	nuSetHash('the_form', d + ' (' + c + ')');
	nuSetHash('nuSystemPHP', 1);
	nuPopup("nuphp", i);

}


function nuPreview(a){

	var	t	= String($('#sfo_type').val());
	var b	= t.indexOf('browse') != -1;
    var f   = nuFORM.getProperty('form_id');
    var r   = nuFORM.getProperty('record_id');
    
    if(r == '-1'){
        
        alert('Form must be saved first..');
        return;
        
    }
    
    if(arguments.length == 1){
        nuPopup(r, '');
    }else{
        nuPopup(r, '-3');
	}
    
}


function nuPopPHP(e, nuE){			//-- used in database

    var i   = nuFORM.getProperty('record_id');

    if(i == ''){
        
        alert('Cannot create Event Until This Form Has Been Saved..')
        return;
		
    }
	
    nuPopup('nuphp', i + '_' + nuE, 'justphp');

}

    

function nuPopJS(){

	var i  = $('#sob_all_zzzzsys_form_id').val();
	
	if(i == ''){
		
		alert('Cannot Create Event Until This Form Has Been Saved..')
		return;
		
	}
	
	nuPopup('nuform', i, 'justjs');
	
}

function  nuGetLookupFields(id){

	var i	= id.substr(0, id.length - 4);
	var o	= $('#' + id);
	var a	= [];
	
	if(o.length == 1){
		
		if(o.attr('data-nu-type') == 'subform'){
			
			a.push(i);
			a.push(id);
			a.push(i + 'description');

		}else{
			a.push('nunosuchfield');
			a.push(id);
			a.push('nunosuchfield');
		}

	}

	return a;
	
}

function nuEnable(i){                 //-- Enable Edit Form Object

	var o	= [i, i + 'code', i + 'button', i + 'description'];
	
	for(var c = 0 ; c < o.length ; c++){
			
		$('#' + o[c])
		.removeClass('nuReadOnly')
		.prop('readonly', false)
		.prop('disabled', false);
		
	}

}

function nuDisable(i){                 //-- Disable Edit Form Object

	var o	= [i, i + 'code', i + 'button', i + 'description'];
	
	for(var c = 0 ; c < o.length ; c++){
			
		$('#' + o[c])
		.addClass('nuReadOnly')
		.prop('readonly', true)
		.prop('disabled', true);
		
	}

}


function nuShow(i){                 //-- Show Edit Form Object

	var o	= [i, i + 'code', i + 'button', i + 'description', 'label_' + i];
	
	for(var c = 0 ; c < o.length ; c++){
		$('#' + o[c]).css('visibility', 'visible');
	}

	$("[id$='nuDelete'][id^='" + i + "']").show();

}


function nuHide(i){                 //-- Hide Edit Form Object

	var o	= [i, i + 'code', i + 'button', i + 'description', 'label_' + i];
	
	for(var c = 0 ; c < o.length ; c++){
		$('#' + o[c]).css('visibility', 'hidden');
	}
	
	$("[id$='nuDelete'][id^='" + i + "']").hide();

}

function nuAddThousandSpaces(s, c){

	var a	= String(s).split('');
	var r	= [];

	r		= a.reverse();
		
	if(r.length > 3){r.splice(3, 0, c);}
	if(r.length > 7){r.splice(7, 0, c);}
	if(r.length > 11){r.splice(11, 0, c);}
	if(r.length > 15){r.splice(15, 0, c);}
	if(r.length > 19){r.splice(19, 0, c);}
	if(r.length > 23){return 'toobig';}

	r		= r.reverse();
	
	return r.join('');
	
}

function nuDuplicates(arr){

	var s	= arr.slice().sort();
	var d	= [];
	
	for (var i = 0; i < arr.length - 1; i++) {
		
		if (s[i + 1] == s[i]) {
			d.push(s[i]);
		}
		
	}
	
	return d;

}



function nuID(){

	if(window.nuSuffix == 9999){
		
		window.nuSuffix		= 0
		window.nuUniqueID	= 'c' + String(Date.now());
		
	}else{
		window.nuSuffix	++;
	}
	
	id						= window.nuUniqueID + nuPad4(window.nuSuffix);
		
	return id;

}

function nuResizeWindow(e){

	var d	= $('#nuDragDialog');
	var D	= $('.nuDragOptionsBox');
	var W	= 0;
	var w	= $('#nuWindow');
	var f	= $('#nuDragDialog iframe')[0].contentWindow;
	var l	= parseInt(d.css('left'));

	if(D.length != 0){
		W	= parseInt(D.css('width'));
	}
	
	if(l == 2){

		if(D.length == 0){
			
			d.css(f.nuDialogSize);
			w.css(f.nuWindowSize);
			
		}
		
	}else{

		d.css({top:0, left:2, width:window.innerWidth - 30, height:window.innerHeight});
		
		var dh	= parseInt(d.css('height')) - 50;
		var dw	= parseInt(d.css('width')) - W - 10;
		
		w.css({top:30, width:dw, height:dh});
		
	}
		
}

