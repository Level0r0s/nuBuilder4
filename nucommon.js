function nuPostRedirect(url, data){
    var formHTML = '<form id="postredirect" method="post" action="'+url+'">';
    for (var key in data) {
        if (data.hasOwnProperty(key)) {
            formHTML = formHTML + '<input id="'+key+'" name="'+key+'" type="hidden" value="'+data[key]+'" />';
        }
    }
    formHTML = formHTML + '</form>';
    $(document.body).append(formHTML);
    $('#postredirect').submit();
}