window.nuBC 		= [];

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
	this.nosearch_columns = [];
	this.sort             = '-1';
	this.sort_direction   = 'asc';
	this.tab_start      	= [];
	this.username         = '';
	
}

function nuGetBreadcrumb(b){

	window.nuBC 	= window.nuBC.slice(0, b + 1);

	nuGetForm(window.nuBC[b].form_id, window.nuBC[b].record_id, 0);
	
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

