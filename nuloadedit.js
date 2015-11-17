function nuLoadEdit(){

    // POPULATE BUTTONS FROM nuFORM.form.action_buttons or something
    var testActionButtonHTML = 
        '<button type="button" class="btn btn-primary">Save</button>'+
        '<button type="button" class="btn btn-primary">Clone</button>'+
        '<button type="button" class="btn btn-danger">Delete</button>'+
        '<button type="button" class="btn btn-default">Print</button>';
    $('#actionbuttongroup').html(testActionButtonHTML);

    // POPULATE BREADCRUMB FROM nuFORM.form.breadcrumb or something
    var testBreadcrumbHTML = 
        '<ol class="breadcrumb" style="background-color: #F3F3F3;">'+
        '    <li><a href="#">Home</a></li>'+
        '    <li><a href="#">Library</a></li>'+
        '    <li class="active">Data</li>'+
        '</ol>';
    $('#breadcrumbholder').html(testBreadcrumbHTML);

    // POPULATE TAB HEADINGS FROM nuFORM.form.tabs.headings or something
    var tabHeadingsHTML = 
        '<ul class="nav nav-tabs" role="tablist">'+
        '    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" onclick="hideOtherTabs(this);">Home</a></li>'+
        '    <li role="presentation"><a href="#demo1" aria-controls="demo1" role="tab" data-toggle="tab" onclick="hideOtherTabs(this);">Demo 1</a></li>'+
        '    <li role="presentation"><a href="#demo2" aria-controls="demo2" role="tab" data-toggle="tab" onclick="hideOtherTabs(this);">Demo 2</a></li>'+
        '    <li role="presentation"><a href="#demo3" aria-controls="demo3" role="tab" data-toggle="tab" onclick="hideOtherTabs(this);">Demo 3</a></li>'+
        '</ul>';
    $('#tabheadingsholder').html(tabHeadingsHTML);

    // POPULATE TAB CONTENT FROM nuFORM.form.tabs.fields or something
    var tabContentHTML = 
        '<form>'+
        '<div role="tabpanel" class="tab-pane" id="home">'+
        '    <div id="demotext1holder" style="position:relative;top:10px;left:10px;width:370px;"><label style="width:70px;" for="demotext1">Name</label><input type="text" id="demotext1" style="width:300px;" value="10px top 10px left width 300px" /></div>'+
        '    <div id="demotext2holder" style="position:relative;top:50px;left:20px;width:470px;"><label style="width:70px;" for="demotext2">Surname</label><input type="text" id="demotext2" style="width:400px;" value="50px top 20px left width 400px" /></div>'+
        '    <div id="demoddholder" style="position:relative;top:100px;left:20px;width:170px;"><label style="width:70px;" for="demodd">Sex</label><select id="demodd" style="width:100px;"><option value="M">Male</option><option value="F">Female</option></select></div>'+
        '</div>'+
        '<div role="tabpanel" class="tab-pane" id="demo1"></div>'+
        '<div role="tabpanel" class="tab-pane" id="demo2"></div>'+
        '<div role="tabpanel" class="tab-pane" id="demo3"></div>'+
        '</form>';
    $('#tabcontentholder').html(tabContentHTML);
    
}