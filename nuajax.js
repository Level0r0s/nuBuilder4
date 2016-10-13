
function nuAjax(w,successCallback,errorCallback) {

 	$.ajax({
		timeout  : 3000,
		async    : true,  
		dataType : "json",
		url      : "nuapi.php",
		method   : "POST",
		data     : {nuSTATE : w},
		dataType : "json",			
		success: function(data,textStatus,jqXHR){
				successCallback(data,textStatus,jqXHR);
		},
		error: function(jqXHR,textStatus,errorThrown){
			
			console.log('jqXHR : ' + jqXHR);
			console.log('textStatus : ' + textStatus);
			console.log('errorThrown : ' + errorThrown);
		
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
	//var b			= nuBC.length;
	var b			= window.nuFORM.getBCLength();
	
	if($('#nuusername').length == 1){
		
		u 			= $('#nuusername').val();
		p	 		= $('#nupassword').val();
		//window.nuBC	= [];
		//window.nuBC.push(new nuFormState());
		window.nuFORM.addBC();
		
	}else{
		
		s			= window.nuSESSION;
		
		if(arguments.length != 4){   //-- add a new breadcrumb
			//window.nuBC.push(new nuFormState());
			window.nuFORM.addBC();
		}
		
	}

	//var w 			= nuGetFormState();
	
	/*w.username		= u;
	w.password		= p;
	w.session_id	= window.nuSESSION;
	w.call_type		= 'getform';
	w.form_id		= f;
	w.record_id		= r;
	w.filter		= filter;
	nuBC[nuBC.length - 1].filter = filter;	
	w.hash			= parent.nuHashFromEditForm();*/
	
	var w 			= window.nuFORM.getLastBC();
	
	w.setBCField('username', u);
	w.setBCField('password', p);
	w.setBCField('session_id', window.nuSESSION);
	w.setBCField('call_type', 'getform');
	w.setBCField('form_id',	f);
	w.setBCField('record_id', r);
	w.setBCField('filter',filter);
	w.setBCField('hash', parent.nuHashFromEditForm());

	var successCallback = function(data,textStatus,jqXHR){

		var fm = data;
		
		if(nuDisplayError(fm.errors)){

			if(fm.log_again == 1){nuLogin();}
		
		}else{
				
			//nuBC[nuBC.length-1].record_id   = fm.record_id;
			window.nuFORM.getLastBC().setBCField('record_id', fm.record_id);
			
			nuBuildForm(fm);
			
		}
     };

	nuAjax(w,successCallback);
	
}


function nuGetPHP(f, r){

	if(nuOpenNewBrowserTab('getphp', f, r, '')){return;}

	//window.nuBC.push(new nuFormState());
	window.nuFORM.addBC();

	/*var w 			= nuGetFormState();

	w.session_id	= window.nuSESSION;
	w.call_type		= 'getphp';
	w.form_id		= f;
	w.record_id		= r;
	w.hash			= parent.nuHashFromEditForm();*/
	
	var w 			= window.nuFORM.getLastBC();
	
	w.setBCField('session_id', window.nuSESSION);
	w.setBCField('call_type', 'getphp');
	w.setBCField('form_id', f);
	w.setBCField('record_id', r);
	w.setBCField('hash', parent.nuHashFromEditForm());

	var successCallback = function(data,textStatus,jqXHR){
		
		var fm  = data;
		if(!nuDisplayError(fm.errors)){
			//nuBC[nuBC.length-1].record_id   = fm.record_id;
			window.nuFORM.getLastBC().setBCField('record_id', fm.record_id);
			nuBuildForm(fm);
		}
	}
	
	nuAjax(w,successCallback);
	
}


function nuGetPDF(f, r){

	if(nuOpenNewBrowserTab('getreport', f, r, '')){return;}

	//window.nuBC.push(new nuFormState());
	window.nuFORM.addBC();

	/*var w 			= nuGetFormState();

	w.session_id	= window.nuSESSION;
	w.call_type		= 'getreport';
	w.form_id		= f;
	w.record_id		= r;
	w.hash			= parent.nuHashFromEditForm();*/

	var w 			= window.nuFORM.getLastBC();
	
	w.setBCField('session_id', window.nuSESSION);
	w.setBCField('call_type', 'getreport');
	w.setBCField('form_id', f);
	w.setBCField('record_id', r);
	w.setBCField('hash', parent.nuHashFromEditForm());
	
	var successCallback = function(data,textStatus,jqXHR){
		
                var fm  = data;
				
                if(!nuDisplayError(fm.errors)){
					
				   //nuBC[nuBC.length-1].record_id   = fm.record_id;
				   window.nuFORM.getLastBC().setBCField('record_id', fm.record_id);
				   nuBuildForm(fm);
				   
                }
				
        }
		
        nuAjax(w,successCallback);
		
}


function nuRunReport(f, iframe){
	
	//window.nuBC.push(new nuFormState());
	window.nuFORM.addBC();

	/*var w 				= nuGetFormState();

	w.session_id		= window.nuSESSION;
	w.call_type			= 'runreport';
	w.form_id			= f;
	w.hash				= nuHashFromEditForm();*/
	
	var w 			= window.nuFORM.getLastBC();

	w.setBCField('session_id', window.nuSESSION);
	w.setBCField('call_type', 'runreport');
	w.setBCField('form_id', f);
	w.setBCField('hash', nuHashFromEditForm());
	
	var successCallback = function(data,textStatus,jqXHR){
		
		var fm 	= data;
		if(nuDisplayError(fm.errors)){
		}else{
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

	//window.nuBC.push(new nuFormState());
	window.nuFORM.addBC();

	/*var w 				= nuGetFormState();

	w.session_id		= window.nuSESSION;
	w.call_type			= 'runphp';
	w.form_id			= f;
	w.hash				= nuHashFromEditForm();*/
	
	var w 			= window.nuFORM.getLastBC();
	
	w.setBCField('session_id', window.nuSESSION);
	w.setBCField('call_type', 'runphp');
	w.setBCField('form_id', f);
	w.setBCField('hash', nuHashFromEditForm());
	
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
	
	//var w 				= nuGetFormState();
	var w 			= window.nuFORM.getLastBC();
	var l				= $('#' + id);

	/*w.call_type			= 'getlookupid';
	w.object_id			= l.attr('data-nu-object-id');
	w.target			= l.attr('data-nu-target');
	w.primary_key		= pk;
	w.session_id		= window.nuSESSION;*/
	
	w.setBCField('call_type', 'getlookupid');
	w.setBCField('object_id', l.attr('data-nu-object-id'));
	w.setBCField('target', l.attr('data-nu-target'));
	w.setBCField('primary_key', pk);
	w.setBCField('session_id', window.nuSESSION);
	
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

	/*var w 			= nuGetFormState();

	w.call_type			= 'getlookupcode';
	w.object_id			= e.target.getAttribute('data-nu-object-id');
	w.target			= e.target.getAttribute('data-nu-target');
	w.code				= e.target.value;
	w.session_id		= window.nuSESSION;*/
	
	var w 				= window.nuFORM.getLastBC();

	w.setBCField('call_type', 'getlookupcode');
	w.setBCField('object_id', e.target.getAttribute('data-nu-object-id'));
	w.setBCField('target', e.target.getAttribute('data-nu-target'));
	w.setBCField('code', e.target.value);
	w.setBCField('session_id', window.nuSESSION);
	
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

	/*var w				= nuGetFormState();
	w.call_type			= 'runhtml';
	w.browse_columns	= nuFORMPROPERTIES.browse_columns;
	w.browse_sql		= nuFORMPROPERTIES.browse_sql;
	w.session_id		= window.nuSESSION;*/
	
	var w 				= window.nuFORM.getLastBC();
	
	w.setBCField('call_type', 'runhtml');
	w.setBCField('browse_columns', nuFORMPROPERTIES.browse_columns);
	w.setBCField('browse_sql', nuFORMPROPERTIES.browse_sql);
	w.setBCField('session_id', window.nuSESSION);
	
	var successCallback = function(data,textStatus,jqXHR){		

		var fm 			= data;
		
		if(!nuDisplayError(fm.errors)){
			
			var p   	= 'nurunhtml.php?i=' + fm.id;
			window.open(p);

		}
	};

	nuAjax(w,successCallback);

}


function nuUpdateData(){

	/*var w 				= nuGetFormState();
	w.call_type			= 'update';
	w.data				= nuGetFormData();
	f					= w.form_id;
	r					= w.record_id;
	w.deleteAll			= $('#nuDelete').is(":checked") ? 'Yes' : 'No';
	w.hash				= nuHashFromEditForm();
	w.subforms			= nuGetSFArrays();
	w.session_id		= window.nuSESSION;*/
	
	var w 				= window.nuFORM.getLastBC();
	
	w.setBCField('call_type', 'update');
	w.setBCField('data', nuGetFormData());
	f					= w.getBCField('form_id');
	r					= w.getBCField('record_id');
	w.setBCField('deleteAll', $('#nuDelete').is(":checked") ? 'Yes' : 'No');
	w.setBCField('hash', nuHashFromEditForm());
	w.setBCField('subforms', nuGetSFArrays());
	w.setBCField('session_id', window.nuSESSION);
	
	var successCallback = function(data,textStatus,jqXHR){
		
		var fm 	= data;

		if(nuDisplayError(fm.errors, fm.global_access)){
			
			nuAbortSave();
			
		}else{
			
			if($('#nuDelete').prop('checked')){
				
				//nuBC.pop();  						//-- return to browse
				window.nuFORM.removeLastBC();		//-- return to browse
				//nuGetBreadcrumb(nuBC.length - 1);
				nuGetBreadcrumb(window.nuFORM.getBCLength() - 1);
				
			}else{
				
				nuGetForm(f, fm.record_id, fm.filter, 1);		//-- go to saved or created record
				
			}
			
			nuSavingMessage();
			
		}
	};

	nuAjax(w,successCallback,nuAbortSave);
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

