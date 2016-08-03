

function nuGetForm(f, r, filter, n){

	if(window.nuEDIT == 1) {
		if(!confirm("Leave This Form Without Saving?")) {
			return
		}
	}
	
	if(window.nuNEW == 1) {
		window.nuNEW = 0;
		window.nuOPENER.push(new nuOpener(f, r, filter));
		window.open(window.location.href);

		} else {
		var u 	= '';
		var p 	= '';
		var s	= '';

		filter	= (filter === undefined ? filter = '' : filter);
		
		if($('#nuusername').length == 1){
			
			u 			= $('#nuusername').val();
			p	 		= $('#nupassword').val();
			window.nuBC	= [];
			window.nuBC.push(new nuFormState());
			
		}else{
			
			s			= nuSESSION;
			
			if(arguments.length != 4){   //-- add a new breadcrumb
				window.nuBC.push(new nuFormState());
			}
			
		}

		var w 		= nuGetFormState();

		w.username	= u;
		w.password	= p;
		w.session_id	= s;
		w.call_type	= 'getform';
		w.form_id	= f;
		w.record_id	= r;
		w.filter		= filter;
		nuBC[nuBC.length - 1].filter = filter;	
		w.hash		= parent.nuHashFromEditForm();
		
		var request 	= $.ajax({
			url      : "nuapi.php",
			type     : "POST",
			data     : {nuSTATE : w},
			dataType : "json"
			}).done(function(data){

				var fm 	= data;

				if(nuErrorMessages(fm.errors)){
					if(fm.log_again == 1){nuLogin();}
				}else{
					
					nuBC[nuBC.length-1].record_id	= fm.record_id;
					
					nuBuildForm(fm);
				}
				
			}).fail(function(xhr, err){
				alert(nuFormatAjaxErrorMessage(xhr, err));
		});
	}
}

function nuGetPDF(f, r){

	if(window.nuNEW == 1) {
		window.nuNEW = 0;
		window.nuOPENER.push(new nuOpener(f, r, ''));
		nuOpenerAppend('type','getreport');
		window.open(window.location.href);
		return;
	}

	window.nuBC.push(new nuFormState());

	var w 		= nuGetFormState();

	w.session_id	= nuSESSION;
	w.call_type	= 'getreport';
	w.form_id	= f;
	w.record_id	= r;
	w.hash		= nuHashFromEditForm();
	
	var request 	= $.ajax({
		url      : "nuapi.php",
		type     : "POST",
		data     : {nuSTATE : w},
		dataType : "json"
		}).done(function(data){

			var fm 	= data;

			if(nuErrorMessages(fm.errors)){
			}else{
				nuBC[nuBC.length-1].record_id	= fm.record_id;
				nuBuildForm(fm);	
			}
			
		}).fail(function(xhr, err){
			alert(nuFormatAjaxErrorMessage(xhr, err));
	});

}



function nuRunReport(f, iframe){

	window.nuBC.push(new nuFormState());

	var w 		= nuGetFormState();

	w.session_id	= nuSESSION;
	w.call_type	= 'runreport';
	w.form_id	= f;
	w.hash		= nuHashFromEditForm();

	var request 	= $.ajax({
		url      : "nuapi.php",
		type     : "POST",
		data     : {nuSTATE : w},
		dataType : "json"
		}).done(function(data){

			var fm 	= data;

			if(nuErrorMessages(fm.errors)){
			}else{
				var pdfUrl   = 'nurunpdf.php?i=' + fm.id;

				if(iframe === undefined){
					
					window.open(pdfUrl);
				
				}else{
					
					$('#'+iframe).attr('src',pdfUrl);
				
				}

			}
			
		}).fail(function(xhr, err){
			alert(nuFormatAjaxErrorMessage(xhr, err));
	});

}


function nuGetPHP(f, r){

	if(window.nuNEW == 1) {
		window.nuNEW = 0;
		window.nuOPENER.push(new nuOpener(f, r, ''));
		nuOpenerAppend('type','getphp');
		window.open(window.location.href);
		return;
	}

	window.nuBC.push(new nuFormState());

	var w 		= nuGetFormState();

	w.session_id	= nuSESSION;
	w.call_type	= 'getphp';
	w.form_id	= f;
	w.record_id	= r;
	w.hash		= nuHashFromEditForm();

	var request 	= $.ajax({
		url      : "nuapi.php",
		type     : "POST",
		data     : {nuSTATE : w},
		dataType : "json"
		}).done(function(data){

			var fm 	= data;
			
			if(nuErrorMessages(fm.errors)){
			}else{
				
				nuBC[nuBC.length-1].record_id	= fm.record_id;
				nuBuildForm(fm);
				
			}
			
		}).fail(function(xhr, err){
			alert(nuFormatAjaxErrorMessage(xhr, err));
	});

}



function nuRunPHP(f, iframe){

	window.nuBC.push(new nuFormState());

	var w 		= nuGetFormState();

	w.session_id	= nuSESSION;
	w.call_type	= 'runphp';
	w.form_id	= f;
	w.hash		= nuHashFromEditForm();

	var request 	= $.ajax({
		url      : "nuapi.php",
		type     : "POST",
		data     : {nuSTATE : w},
		dataType : "json"
		}).done(function(data){

			var fm 	= data;

			if(nuErrorMessages(fm.errors)){
			}else{
				var pdfUrl   = 'nurunphp.php?i=' + fm.id;

				if(iframe === undefined){
					
					window.open(pdfUrl);
				
				}else{
					
					$('#'+iframe).attr('src',pdfUrl);
				
				}

			}
			
		}).fail(function(xhr, err){
			alert(nuFormatAjaxErrorMessage(xhr, err));
	});

}



function nuGetLookupId(pk, id){

	$('#nuLookupList').remove();
	
	var w 		= nuGetFormState();
	var l		= $('#' + id);

	w.call_type	= 'getlookupid';
	w.object_id	= l.attr('data-nu-object-id');
	w.target		= l.attr('data-nu-target');
	w.primary_key	= pk;
	w.session_id	= window.nuSESSION;
	
	var request 	= $.ajax({
		url      : "nuapi.php",
		type     : "POST",
		data     : {nuSTATE : w},
		dataType : "json"
		}).done(function(data){
			
			var fm 	= data;
			if(nuErrorMessages(fm.errors)){
			}else{
				$('#' + id).change();
                window.nuPopulateLookup(fm, id);
			}
			
		}).fail(function(xhr, err){
			alert(nuFormatAjaxErrorMessage(xhr, err));
	});

}


function nuGetLookupCode(e, buildLookupList){

	var w 		= nuGetFormState();

	w.call_type	= 'getlookupcode';
	w.object_id	= e.target.getAttribute('data-nu-object-id');
	w.target		= e.target.getAttribute('data-nu-target');
	w.code		= e.target.value;
	w.session_id	= window.nuSESSION;

	var request 	= $.ajax({
		url      : "nuapi.php",
		type     : "POST",
		data     : {nuSTATE : w},
		dataType : "json"
		}).done(function(data){
			
			var fm 	= data;
			if(nuErrorMessages(fm.errors)){
			}else{
				
				$('#nuLookupList').remove();
	
				if(buildLookupList){
					nuBuildLookupList(fm, e);
				}else{
					nuChooseOneLookupRecord(e, fm);
				}
				
			}
			
		}).fail(function(xhr, err){
			alert(nuFormatAjaxErrorMessage(xhr, err));
	});

}

function nuUpdateData(){


	var w 		= nuGetFormState();
	w.call_type	= 'update';
	w.data		= nuGetFormData();
	f			= w.form_id;
	r			= w.record_id;
	w.deleteAll	= $('#nuDelete').is(":checked") ? 'Yes' : 'No';
	w.hash		= nuHashFromEditForm();
	w.subforms	= nuGetSFArrays();
	w.session_id	= window.nuSESSION;

	var request 	= $.ajax({
		url      : "nuapi.php",
		type     : "POST",
		data     : {nuSTATE : w},
		dataType : "json"
		}).done(function(data){
			
			var fm 	= data;
			if(nuErrorMessages(fm.errors)){
			}else{

				if($('#nuDelete').prop('checked')){
					nuBC.pop();  						//-- return to browse
					nuGetBreadcrumb(nuBC.length - 1);
				}else{
					nuGetForm(f, fm.record_id, '', 1);		//-- go to saved or created record
				}

			}
			
		}).fail(function(xhr, err){
			alert(nuFormatAjaxErrorMessage(xhr, err));
	});

}
