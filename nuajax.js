
function nuAjax(w,successCallback,errorCallback){

	w	= nuAddEditFieldsToHash(w);
	
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
			
			var msg			= String(jqXHR.responseText).split("\n");
 			nuMessage(msg);
			window.test = jqXHR.responseText;

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
		
	if(arguments.length != 5){   //-- add a new breadcrumb
		window.nuFORM.addBreadcrumb();
	}

	var last			= window.nuFORM.getCurrent();

	last.call_type		= 'getform';
	last.form_id 		= f;
	last.record_id		= r;
	last.filter 		= filter;
	last.search 		= search;
    last.hash	 		= parent.nuHashFromEditForm();
    last.AAA	 		= 'hw';

	var successCallback = function(data,textStatus,jqXHR){

		var fm 			= data;

		if(nuDisplayError(fm)){

			parent.$('#nuModal').remove();
			
			if(fm.log_again == 1){location.reload();}
		
		}else{
			
			var last		= window.nuFORM.getCurrent();
			last.record_id	= fm.record_id;
			last.FORM 		= fm.form;

			nuBuildForm(fm);
			
		}
     };

	nuAjax(last,successCallback);
	
}


function nuGetReport(f, r){

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
			nuBuildForm(fm);
		}
			
	}
		
     nuAjax(last, successCallback);
		
}


function nuRunReport(f, iframe){

	nuFORM.addBreadcrumb();

	var last			= nuFORM.getCurrent();

	last.session_id 	= window.nuSESSION;
	last.call_type		= 'runreport';
	last.form_id		= f;
	last.hash 			= nuHashFromEditForm();
	
	var successCallback = function(data,textStatus,jqXHR){
		
		var fm 			= data;
		
		if(!nuDisplayError(fm)){
			
			var pdfUrl	= 'nurunpdf.php?i=' + fm.id;
			
			if(iframe === undefined){
				window.open(pdfUrl);
			}else{
				parent.$('#'+ iframe).attr('src', pdfUrl);
			}
			
		}
		
	}
	
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

function nuRunPHP(pCode, iframe){
	
	if(window.nuBeforeSave){
		if(!nuBeforeSave()){return;}
	}

	var last				= nuFORM.addBreadcrumb();
	
	last.session_id			= nuSESSION;
	last.call_type 			= 'runphp';
	last.form_id 			= pCode;
	last.nuFORMdata			= nuFORM.data();
	last.hash  				= nuHashFromEditForm();
	
	var successCallback 	= function(data,textStatus,jqXHR){
		
		var fm				= data;
		
		if(!nuDisplayError(fm)){
			
			var pdfUrl		= 'nurunphp.php?i=' + fm.id;
			
			if(iframe === undefined){
				window.open(pdfUrl);
			}else{
				parent.$('#' + iframe).attr('src', pdfUrl);
			}
			
		}
		
	};
	
	nuAjax(last,successCallback);
	
}


function nuRunPHPHidden(i, h){

	if(window.nuBeforeSave){
		if(!nuBeforeSave()){return;}
	}

	var current				= nuFORM.getCurrent();
	var last		 		= $.extend(true, {}, current);

	last.session_id			= window.nuSESSION;
	last.call_type 			= 'runhiddenphp';
	last.form_id  			= 'doesntmatter';
	last.hash_record_id		= last.record_id;
	last.record_id			= i;								//-- php code
	last.nuFORMdata			= nuFORM.data();
	last.hash  				= nuHashFromEditForm();
	last.HIDDEN_ID			= arguments.length == 2 ? h : '';
	
	var successCallback 	= function(data,textStatus,jqXHR){
		
		var fm				= data;
		
		if(nuDisplayError(fm)){return;};

		eval(fm.callback + ';');
			
	};
	
	nuAjax(last,successCallback);
	
}



function nuButtonImage(i, c){
	
	if(nuImages[c] !== undefined){
		
		var p				= JSON.parse(nuImages[c]);
		var b				= atob(p.file);
		
		$(i)
		.css('background-image', 'url("' + b + '")')
		.css('background-repeat', 'no-repeat')
		.css('background-size', '30px')
		.css('padding', '0px 0px 0px 30px')
		.css('text-align', 'left')

		return;
		
	}
	
	var current				= nuFORM.getCurrent();
	var last		 		= $.extend(true, {}, current);

	last.session_id			= window.nuSESSION;
	last.call_type 			= 'getfile';
	last.fileCode			= c;
	
	var successCallback 	= function(data,textStatus,jqXHR){
		
		if(nuDisplayError(data)){return;};

		if(data.JSONfile !== null){
			
			nuImages[c] 	= data.JSONfile;
			var p			= JSON.parse(window.nuImages[c]);
			var b			= atob(p.file);
			
			$(i)
			.css('background-image', 'url("' + b + '")')
			.css('background-repeat', 'no-repeat')
			.css('background-size', '30px')
			.css('padding', '0px 0px 0px 30px')
			.css('text-align', 'left')
		
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
	
		nuSERVERRESPONSELU 	= data;

		if(!nuDisplayError(data)){
			
			$('#' + id).change();	
			nuPopulateLookup(data, id);
			
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
		
		nuSERVERRESPONSELU 	= data;
	
		if(!nuDisplayError(data)){
			nuChooseOneLookupRecord(e, data);
		}
			
	};

	nuAjax(last,successCallback);
	
}


function nuPrintAction(){

	var last			= window.nuFORM.getCurrent();

	last.call_type 		= 'runhtml';
	last.browse_columns	= nuSERVERRESPONSE.browse_columns;
	last.browse_sql 	= nuSERVERRESPONSE.browse_sql;
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

function nuUpdateData(action, instruction){
	
	if(window.nuBeforeSave){
		if(!nuBeforeSave()){return;}
	}

	var last				= window.nuFORM.getCurrent();

	var f					= last.form_id;
	var r					= last.record_id;

	if(arguments.length == 2){
		last.instruction	= instruction;
	}
	
	last.call_type 			= 'update';
	last.deleteAll 			= $('#nuDelete').is(":checked") ? 'Yes' : 'No';
	last.nuFORMdata			= nuFORM.data(action);
	last.hash 				= nuHashFromEditForm();
	last.session_id 		= window.nuSESSION;
	
	$('.nuactionbutton').hide();
	
	var successCallback 	= function(data,textStatus,jqXHR){
		
		var fm 				= data;

		$('.nuactionbutton').show();
		
		if(nuDisplayError(fm)){
			
			nuAbortSave();
			
		}else{
			
			if($('#nuDelete').prop('checked')){
				
				window.nuFORM.removeLast();						//-- return to browse
				nuGetBreadcrumb();
				
				if(nuCurrentProperties() == undefined){

					parent.$('#nuModal').remove();
					parent.$('#nuDragDialog').remove();
					
				}
				
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
		
		window.nuOPENER.push(new nuOpener('F', f, r, filter));

		nuOpenerAppend('type', c);
		
	    var len 	  	= window.nuOPENER.length - 1;
		var id 	    	= window.nuOPENER[window.nuOPENER.length - 1].id;
		var u			= window.location.origin + window.location.pathname + '?i=' + len + '&opener=' + id ;
		
		window.open(u);

		return true;

	}else{
		
		return false;
		
	}
		
}


function nuAbortSave(){
	
    $("#nuProgressSaved").hide();
    $('.nuActionButton').show();
	
}

