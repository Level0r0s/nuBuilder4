
function nuBuildForm(){
	
	var request = $.ajax({
		url      : "nuapi.php",
		type     : "POST",
		data     : {nuWindow : 'hello world'},
		dataType : "json"
		}).done(function(data){
			nuBuildEditForm(data.forms[0], '')
		}).fail(function(xhr, err){
			alert(nuFormatAjaxErrorMessage(xhr,err));
	});

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

