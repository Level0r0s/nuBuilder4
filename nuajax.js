
function nuAjax(w,successCallback,errorCallback){

 	$.ajax({

		timeout  : 3000,
		async    : true,  
		dataType : "json",
		url      : "nuapi.php",
		method   : "POST",
		data     : {nuSTATE : w.current},
		dataType : "json",			
		success	 : function(data,textStatus,jqXHR){
				successCallback(data,textStatus,jqXHR);
		},
		error: function(jqXHR,textStatus,errorThrown){
			
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

function nuGetForm(f, r, filter, n){

	filter	= (filter === undefined ? filter = '' : filter);

	if(nuOpenNewBrowserTab('getform', f, r, filter)){return;}

	var u 			= '';
	var p 			= '';
	var s			= '';
	
	if($('#nuusername').length == 1){
		
		window.nuFORM.add();
		window.nuFORM.current.username	= $('#nuusername').val();
		window.nuFORM.current.password	= $('#nupassword').val();
		
	}else{
		
		s			= window.nuSESSION;
		
		if(arguments.length != 4){   //-- add a new breadcrumb
			window.nuFORM.add();
		}
		
	}

	var w 					= window.nuFORM;

	w.current.session_id 	= window.nuSESSION;
	w.current.call_type 	= 'getform';
	w.current.form_id 		= f;
	w.current.record_id		= r;
	w.current.filter 		= filter;
	w.current.hash 			= parent.nuHashFromEditForm();
	w.setCurrent();

	var successCallback = function(data,textStatus,jqXHR){

		var fm = data;
	
		if(nuDisplayError(fm.errors)){

			if(fm.log_again == 1){nuLogin();}
		
		}else{
				
			window.nuFORM.current.record_id = fm.record_id;
			window.nuFORM.setCurrent();
			
			nuBuildForm(fm);
			
		}
     };

	nuAjax(w,successCallback);
	
}


function nuGetPHP(f, r){

	if(nuOpenNewBrowserTab('getphp', f, r, '')){return;}

	window.nuFORM.add();

	var w 					= window.nuFORM;
	
	w.current.session_id 	= window.nuSESSION;
	w.current.call_type 	= 'getphp';
	w.current.form_id 		= f;
	w.current.record_id		= r;
	w.current.hash 			= parent.nuHashFromEditForm();
	w.setCurrent();

	var successCallback 	= function(data,textStatus,jqXHR){
		
		var fm  			= data;

		if(!nuDisplayError(fm.errors)){
			
			window.nuFORM.current.record_id = fm.record_id;
			nuFORM.setCurrent();
			nuBuildForm(fm);
			
		}
	}
	
	nuAjax(w,successCallback);
	
}


function nuGetPDF(f, r){

	if(nuOpenNewBrowserTab('getreport', f, r, '')){return;}

	window.nuFORM.add();

	var w 					= window.nuFORM;
	
	w.current.session_id 	= window.nuSESSION;
	w.current.call_type 	= 'getreport';
	w.current.form_id 		= f;
	w.current.record_id		= r;
	w.current.hash 			= parent.nuHashFromEditForm();
	w.setCurrent();

	var successCallback = function(data,textStatus,jqXHR){
		
                var fm  = data;
				
                if(!nuDisplayError(fm.errors)){
					
				   window.nuFORM.current.record_id = fm.record_id;
				   nuFORM.setCurrent();
				   nuBuildForm(fm);
				   
                }
				
        }
		
        nuAjax(w,successCallback);
		
}


function nuRunReport(f, iframe){
	
	window.nuFORM.add();

	var w 					= window.nuFORM;

	w.current.session_id 	= window.nuSESSION;
	w.current.call_type 	= 'runreport';
	w.current.form_id 		= f;
	w.current.record_id		= 'report';
	w.current.hash 			= nuHashFromEditForm();
	w.setCurrent();

	var successCallback = function(data,textStatus,jqXHR){
		
		var fm 	= data;
		
		if(!nuDisplayError(fm.errors)){
			
			var pdfUrl   = 'nurunpdf.php?i=' + fm.id;
			
			if(iframe === undefined){
				window.open(pdfUrl);
			}else{
				$('#'+iframe).attr('src',pdfUrl);
			}
			
		}
		
	}
	
	nuAjax(w,successCallback);
	
}


function nuRunPHP(f, iframe){

	window.nuFORM.add();

	var w 					= window.nuFORM;
	
	w.current.session_id	= window.nuSESSION;
	w.current.call_type 	= 'runphp';
	w.current.form_id  		= f;
	w.current.record_id		= 'php';
	w.current.data 			= nuGetFormData();
	w.current.hash  		= nuHashFromEditForm();
	w.setCurrent();
	
	var successCallback = function(data,textStatus,jqXHR){
		
		var fm 	= data;
		
		if(!nuDisplayError(fm.errors)){
			
			var pdfUrl   = 'nurunphp.php?i=' + fm.id;
			
			if(iframe === undefined){
				window.open(pdfUrl);
			}else{
				$('#'+iframe).attr('srfdc',pdfUrl);
			}
			
		}
		
	};
	
	nuAjax(w,successCallback);
	
}


function nuGetLookupId(pk, id){

	$('#nuLookupList').remove();
	
	var l					= $('#' + id);
	var w 					= window.nuFORM;
	
	w.current.session_id	= window.nuSESSION;
	w.current.call_type 	= 'getlookupid';
	w.current.object_id		= l.attr('data-nu-object-id');
	w.current.target		= l.attr('data-nu-target');
	w.current.primary_key 	= pk;
	w.setCurrent();

	var successCallback = function(data,textStatus,jqXHR){		
	
		var fm 	= data;

		if(!nuDisplayError(fm.errors)){
			
			$('#' + id).change();	
			window.nuPopulateLookup(fm, id);
			
		}
		
	};
	
	nuAjax(w,successCallback);
}


function nuGetLookupCode(e, buildLookupList){

	var w 					= window.nuFORM;

	w.current.session_id	= window.nuSESSION;
	w.current.call_type 	= 'getlookupcode';
	w.current.object_id		= e.target.getAttribute('data-nu-object-id');
	w.current.target		= e.target.getAttribute('data-nu-target')
	w.current.code		 	= e.target.value;
	w.setCurrent();

	
	var successCallback = function(data,textStatus,jqXHR){		
		
		var fm 			= data;

		if(!nuDisplayError(fm.errors)){
			
			$('#nuLookupList').remove();
			
			if(buildLookupList){
				nuBuildLookupList(fm, e);
			}else{
				nuChooseOneLookupRecord(e, fm);
			}
			
		}
			
	};

	nuAjax(w,successCallback);
	
}


function nuPrintAction(){

	var w 						= window.nuFORM;
	
	w.current.call_type 		= 'runhtml';
	w.current.browse_columns	= nuFORMPROPERTIES.browse_columns;
	w.current.browse_sql 		= nuFORMPROPERTIES.browse_sql;
	w.current.session_id 		= window.nuSESSION;
	w.setCurrent();
	
	var successCallback = function(data,textStatus,jqXHR){		

		var fm 					= data;
		
		if(!nuDisplayError(fm.errors)){
			
			var p   			= 'nurunhtml.php?i=' + fm.id;
			
			window.open(p);

		}
		
	};

	nuAjax(w,successCallback);

}


function nuUpdateData(){

	var w 					= window.nuFORM;
	
	f						= w.current.form_id;
	r						= w.current.record_id;
	w.current.call_type 	= 'update';
	w.current.deleteAll 	= $('#nuDelete').is(":checked") ? 'Yes' : 'No';
	w.current.data 			= nuGetFormData();
	w.current.hash 			= nuHashFromEditForm();
	w.current.subforms		= nuGetSFArrays();
	w.current.session_id 	= window.nuSESSION;
	w.setCurrent();
	
	var successCallback = function(data,textStatus,jqXHR){
		
		var fm 	= data;

		if(nuDisplayError(fm.errors, fm.global_access)){
			
			nuAbortSave();
			
		}else{
			
			if($('#nuDelete').prop('checked')){
				
				window.nuFORM.removeLast();			//-- return to browse
				nuGetBreadcrumb(window.nuFORM.last);
				
			}else{
				
				nuGetForm(f, fm.record_id, fm.filter, 1);		//-- go to saved or created record
				
			}
			
			nuSavingMessage();
			
		}
	};

	nuAjax(w,successCallback,nuAbortSave);
}

function nuSaveAfterDrag() {
	
    var w					= $('#nuDragDialog iframe')[0].contentWindow.nuFORM;
    w.current.call_type		= 'nudragsave';
    w.current.nuDragState	= $('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState;
	w.setCurrent();
	
	var successCallback = function(data,textStatus,jqXHR){
		
		if(nuDisplayError(data.errors)){
			alert(data.errors[0]);
		} else {
			
			$('div#nuDragDialog div#dialogTitle img#dialogClose').click();
			nuGetBreadcrumb(window.nuFORM.last);
			
		}
		
		$("#overlay").remove();
	};
		
	nuAjax(w,successCallback,nuAbortSaveDrag);
	
}

function nuOpenNewBrowserTab(c, f, r, filter){
	
	if(window.nuNEW == 1) {
		
		window.nuNEW 	= 0;
		
		window.nuOPENER.push(new nuOpener(f, r, filter));

		nuOpenerAppend('type', c);
		
		var open 		= window.nuOPENER.length - 1;
		var u			= window.location.href + '?i=' + open;

		window.open(u);

		return true;

	}else{
		
		return false;
		
	}
		
}

