
function nuAjax(w,successCallback,errorCallback){

 	$.ajax({

		async    : true,  
		dataType : "json",
		url      : "nuapi.php",
		method   : "POST",
		data     : {nuSTATE : w},
		dataType : "json",			
		success	 : function(data,textStatus,jqXHR){
				successCallback(data,textStatus,jqXHR);
		},
		error    : function(jqXHR,textStatus,errorThrown){
			
			console.log('jqXHR : ', jqXHR);
 			console.log('textStatus : ', textStatus);
 			console.log('errorThrown : ', errorThrown);
 				
 			var errorLog 	= [];
 			errorLog[0] 	= [];
 			errorLog[0][0] 	= jqXHR.responseText;
 			errorLog[0][1] 	= "";
 			errorLog[0][2] 	= 0;
            
 			nuPopup("nuerror", "-1", errorLog);

			if (errorCallback !== undefined) {
				errorCallback(jqXHR,textStatus,errorThrown);
			}
			
			nuFormatAjaxErrorMessage(jqXHR, errorThrown);
			
		},

		complete: function(jqXHR,textStatus){
			//todo - probably not needed
		}
		
	});    

}

function nuForm(f, r, filter, search, n){
	
	if(nuOpenNewBrowserTab('getform', f, r, filter)){return;}

	var u 				= '';
	var p 				= '';
	var s				= '';
	
	if($('#nuusername').length == 1){
		
		var last		= window.nuFORM.addBreadcrumb();
		
		last.username	= $('#nuusername').val();
		last.password	= $('#nupassword').val();
		
	}else{
		
		s				= window.nuSESSION;
		
		if(arguments.length != 5){   //-- add a new breadcrumb
			window.nuFORM.addBreadcrumb();
		}
		
	}

	var last			= window.nuFORM.getCurrent();

	last.session_id 	= window.nuSESSION;
	last.call_type		= 'getform';
	last.form_id 		= f;
	last.record_id		= r;
	last.filter 		= filter;
	last.search 		= search;
	
    if(f != 'nuerror'){
        last.hash 		= parent.nuHashFromEditForm();
    } else {
        last.hash 		= [];
    }

	var successCallback = function(data,textStatus,jqXHR){

		var fm 			= data;

		if(nuDisplayError(fm)){

			if(fm.log_again == 1){nuLogin();}
		
		}else{
			
			var last		= window.nuFORM.getCurrent();
			last.record_id	= fm.record_id;
			last.FORM 		= fm.form;
			
			nuBuildForm(fm);
			
		}
     };

	nuAjax(last,successCallback);
	
}


function nuGetPHP(f, r){

	if(nuOpenNewBrowserTab('getphp', f, r, '')){return;}

	window.nuFORM.addBreadcrumb();

	var last			= window.nuFORM.getCurrent();

	last.session_id 	= window.nuSESSION;
	last.call_type 		= 'getphp';
	last.form_id 		= f;
	last.record_id		= r;
	last.hash 			= parent.nuHashFromEditForm();

	var successCallback = function(data,textStatus,jqXHR){
		
		var fm  		= data;
		
		if(!nuDisplayError(fm)){

			nuFORM.setProperty('record_id', fm.record_id);
			nuBuildForm(fm);
			
		} else {
			window.nuFORM.breadcrumbs.pop();
		}
	}
	
	nuAjax(last, successCallback);
	
}


function nuGetPDF(f, r){

	if(nuOpenNewBrowserTab('getreport', f, r, '')){return;}

	var last			= window.nuFORM.addBreadcrumb();

	last.session_id 	= window.nuSESSION;
	last.call_type 		= 'getreport';
	last.form_id 		= f;
	last.record_id		= r;
	last.hash 			= parent.nuHashFromEditForm();

	var successCallback = function(data,textStatus,jqXHR){
	
		var fm  = data;
		
		if(!nuDisplayError(fm)){
			
			nuFORM.setProperty('record_id', fm.record_id);
			nuBuildForm(fm);
		   
		}
			
	}
		
     nuAjax(last, successCallback);
		
}


function nuRunReport(f, iframe){
	
	window.nuFORM.addBreadcrumb();

	var last			= window.nuFORM.getCurrent();

	last.session_id 	= window.nuSESSION;
	last.call_type		= 'runreport';
	last.form_id 		= f;
	last.record_id		= 'report';
	last.hash 			= nuHashFromEditForm();

	var successCallback = function(data,textStatus,jqXHR){
		
		var fm 	= data;
		
		if(!nuDisplayError(fm)){
			
			var pdfUrl   = 'nurunpdf.php?i=' + fm.id;
			
			if(iframe === undefined){
				window.open(pdfUrl);
			}else{
				$('#'+iframe).attr('src',pdfUrl);
			}
			
		}
		
	}
	
	nuAjax(last,successCallback);
	
}


function nuRunPHP(f, iframe){

	var last		= window.nuFORM.addBreadcrumb();

	last.session_id	= window.nuSESSION;
	last.call_type 	= 'runphp';
	last.form_id  	= f;
	last.record_id	= 'php';
	last.data 		= nuGetFormData();
	last.hash  		= nuHashFromEditForm();
	
	var successCallback = function(data,textStatus,jqXHR){
		
		var fm 	= data;
		
		if(!nuDisplayError(fm)){
			
			var pdfUrl   = 'nurunphp.php?i=' + fm.id;
			
			if(iframe === undefined){
				window.open(pdfUrl);
			}else{
				$('#'+iframe).attr('srfdc',pdfUrl);
			}
			
		}
		
	};
	
	nuAjax(last,successCallback);
	
}


function nuGetLookupId(pk, id){

	$('#nuLookupList').remove();
	
	var l				= $('#' + id);
	
	var last			= nuFORM.getCurrent();

	last.session_id		= nuSESSION;
	last.call_type 		= 'getlookupid';
	last.object_id		= l.attr('data-nu-object-id');
	last.target			= l.attr('data-nu-target');
	last.prefix			= l.attr('data-nu-prefix');
	last.primary_key 	= pk;

	var successCallback = function(data,textStatus,jqXHR){		
	
		var fm 	= data;

		if(!nuDisplayError(fm)){
			
			$('#' + id).change();	
			nuPopulateLookup(fm, id);
			
		}
		
	};
	
	nuAjax(last,successCallback);
}


function nuGetLookupCode(e){

	if(e.target.value == ''){			//-- set to blank
		
		var id			= e.target.id.substr(0, e.target.id.length - 4);
		
		$('#' + id).val('');
		$('#' + id + 'code').val('');
		$('#' + id + 'description').val('');
		
		$('#' + id).addClass('nuEdited');
		$('#nuSaveButton').addClass('nuSaveButtonEdited');
		
		return;
		
	}
	
	var last			= window.nuFORM.getCurrent();

	last.session_id		= window.nuSESSION;
	last.call_type 		= 'getlookupcode';
	last.object_id		= e.target.getAttribute('data-nu-object-id');
	last.target			= e.target.getAttribute('data-nu-target')
	last.code		 	= e.target.value;
	
	var successCallback = function(data,textStatus,jqXHR){		
		
		var fm 			= data;
	
		if(!nuDisplayError(fm)){

			nuChooseOneLookupRecord(e, fm);
			
		}
			
	};

	nuAjax(last,successCallback);
	
}


function nuPrintAction(){

	var last			= window.nuFORM.getCurrent();

	last.call_type 		= 'runhtml';
	last.browse_columns	= nuFORMPROPERTIES.browse_columns;
	last.browse_sql 	= nuFORMPROPERTIES.browse_sql;
	last.session_id 	= window.nuSESSION;
	
	var successCallback = function(data,textStatus,jqXHR){		

		var fm 					= data;
		
		if(!nuDisplayError(fm)){
			
			var p   			= 'nurunhtml.php?i=' + fm.id;
			
			window.open(p);

		}
		
	};

	nuAjax(last,successCallback);

}

function nuUpdateData(action){

	if(window.nuBeforeSave){
		if(!nuBeforeSave()){return;}
	}

	var last			= window.nuFORM.getCurrent();

	var f				= last.form_id;
	var r				= last.record_id;
	var d				= 

	last.call_type 		= 'update';
	last.deleteAll 		= $('#nuDelete').is(":checked") ? 'Yes' : 'No';
	last.data 			= nuGetFormData();
	last.nuFORMdata		= nuFORM.data(action);
	last.hash 			= nuHashFromEditForm();
	last.subforms		= nuGetSFArrays();
	last.session_id 	= window.nuSESSION;
	
	$('.nuactionbutton').hide();
	
	var successCallback = function(data,textStatus,jqXHR){
		
		var fm 	= data;

		$('.nuactionbutton').show();
		
		if(nuDisplayError(fm)){
			
			nuAbortSave();
			
		}else{
			
			if($('#nuDelete').prop('checked')){
				
				window.nuFORM.removeLast();						//-- return to browse
				nuGetBreadcrumb();
				
			}else{
				
				nuForm(f, fm.record_id, fm.filter, fm.search, 1);		//-- go to saved or created record
				
			}
			
			nuSavingMessage();
			
		}
	};

	nuAjax(last,successCallback,nuAbortSave);
	
}

function nuSaveAfterDrag() {
	
	var f				= $('#nuDragDialog iframe')[0].contentWindow.nuFORM;

	var last			= f.getCurrent();

    last.call_type		= 'nudragsave';
    last.nuDragState	= $('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState;
	
	var successCallback	= function(data,textStatus,jqXHR){

		if(nuDisplayError(data.errors)){
			alert(data.errors[0]);
		} else {
			
			$('div#nuDragDialog div#dialogTitle img#dialogClose').click();
			nuGetBreadcrumb();
			
		}
		
		$("#overlay").remove();
	};
		
	nuAjax(last,successCallback,nuAbortSaveDrag);
	
}

function nuOpenNewBrowserTab(c, f, r, filter){
	
	if(window.nuNEW == 1) {
		
		window.nuNEW 	= 0;
		
		window.nuOPENER.push(new nuOpener(f, r, filter));

		nuOpenerAppend('type', c);
		
	    var len   	= window.nuOPENER.length - 1;
		var id 	    = window.nuOPENER[window.nuOPENER.length - 1].id;
		var u		= window.location.origin + window.location.pathname + '?i=' + len + '&opener=' + id ;
		
		window.open(u);

		return true;

	}else{
		
		return false;
		
	}
		
}


function nuAbortSave(){
	
    $("#nuProgressSaved").hide();
    $('#nuActionHolder .nuButton').show();
	
}

