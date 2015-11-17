function nuLoadForm(){

    if(window.nuFORM.call_type == 'home' || window.nuFORM.call_type == 'edit'){
        nuGetEditJS();
    } else if(window.nuFORM.call_type == 'browse'){
        nuGetBrowseJS();
    } else {
        window.location.assign('./');
    }

}

function nuGetEditJS(){
    $.ajax({
        url: 'nuloadedit.js',
        dataType: "script",
        success: function(){
            nuLoadEdit();
        },
        error: function(){
            window.location.assign('./');
        }
    });
}

function nuGetBrowseJS(){
    $.ajax({
        url: 'nuloadbrowse.js',
        dataType: "script",
        success: function(){
            nuLoadBrowse();
        },
        error: function(){
            window.location.assign('./');
        }
    });
}