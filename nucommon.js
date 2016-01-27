window.nuBreadcrumbs 		= [];
//window.nuBreadcrumbs[0] 	= new nuFormState();

function nuFormState(){

	this.call_type        = '';
	this.form_id          = '';
	this.record_id        = '';
	this.tab_start      	= [];
	this.search           = '';
	this.search_columns   = '';
	this.sort             = '0';
	this.sort_direction   = 'asc';
	this.filter           = '';
	this.page_number      = '1';
	this.lookup_id        = '';
	this.object_id        = '1';
	this.username         = '';
	this.password     	= '';
	this.iframe       	= 0;
	this.forms        	= [];
	
}

function nuGetBreadcrumb(b){

	window.nuBreadcrumbs 	= window.nuBreadcrumbs.slice(0, b + 1);

	nuGetForm(window.nuBreadcrumbs[b].form_id, window.nuBreadcrumbs[b].record_id, 0);
	
}

function nuGetForm(f, r, n){

	if(arguments.length != 3){   //-- add a new breadcrumb
		
		window.nuBreadcrumbs.push(new nuFormState());
		
	}

	var w 		= nuGetFormState();
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

	var l = window.nuBreadcrumbs.length;
	var o = window.nuBreadcrumbs[l-1];
	var j = JSON.stringify(o);
	return  JSON.parse(j);
	
}


function nuSetFormState(){

	var l = window.nuBreadcrumbs.length;
	var o = window.nuBreadcrumbs[l];
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

