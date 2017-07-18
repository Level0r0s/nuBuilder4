

function nuBuildForm(f){
	
	if(f.tableSchema === null){  						//-- need to login again
	
		$('body').addClass('nuBrowseBody')
		$('body').removeClass('nuEditBody')
		sessionStorage.logout	= 'true';
		parent.parent.parent.parent.parent.location.reload();
		
		return;
		
	}
	
	window.nuBeforeSave			= null;
	window.onbeforeunload		= null;
	window.nuBrowseFunction		= window.nuDefaultBrowseFunction;
	window.nuSERVERRESPONSE		= f;
	window.nuSESSION			= f.session_id;
	window.nuSUBFORMROW			= [];
	window.nuHASH				= [];                       //-- remove any hash variables previously set.
	window.nuUniqueID			= 'c' + String(Date.now());
	window.nuSuffix				= Number(String(Math.random()).substr(-4));
	window.global_access		= f.global_access == '1';
	nuFORM.edited				= false;
	nuFORM.formType				= f.type;
	nuFORM.scroll				= [];
	nuSetBody(f);
	
	if(f.tableSchema.length != 0){  						//-- its an Object (load these once,  at login)

		nuFORM.tableSchema		= f.tableSchema;
		nuFORM.formSchema		= f.formSchema;
		window.nuLANGUAGE		= f.translation;
		
	}
	
	var b 						= window.nuFORM.getCurrent();

	b.form_id 					= f.form_id;
	b.record_id 				= f.record_id;
	b.session_id 				= f.session_id;
	b.user_id 					= f.user_id;
	b.redirect_form_id			= f.redirect_form_id;
	b.title 					= f.title;
	b.row_height 				= f.row_height;
	b.rows 						= f.rows;
	b.browse_columns 			= f.browse_columns;
	b.browse_sql				= f.browse_sql;
	b.browse_rows 				= f.browse_rows;
	b.pages 					= f.pages;
	
	nuAddHolder('nuActionHolder');
	nuAddHolder('nuBreadcrumbHolder');
	
	if(f.record_id != ''){
		nuAddHolder('nuTabHolder');
	}
	
	nuResizeBody(f);

	nuAddHolder('nuRECORD');
	$('#nuRECORD').attr('data-nu-table', f.table);
	$('#nuRECORD').attr('data-nu-primary-key-name', f.primary_key);
	
	nuAddBreadcrumbs();
	nuAddEditTabs('', f);
	nuOptions('', f.form_id, 'form', f.global_access);
	

	nuAddActionButtons(f);
	nuRecordProperties(f, '');

	if(f.record_id != ''){
		nuBuildEditObjects(f, '', '', f);
	}

	nuGetStartingTab();
	
	$('#nuSearchField').focus();

    if(f.record_id == '-2'){
        nuCreateDragOptionsBox(f);
	}else{
		nuAddJavascript(f);
	}
	
	if(f.messages.length > 0){

		var im		= ['<img src="graphics/numessage.png" width="30px" height="30px" style="position:absolute;left:10px;top:10px"><br>'];

		f.messages	= im.concat(f.messages);

		nuMessage(f.messages);
		
	}

}


function nuSetBody(f){

	$('body').html('');
	$('body').removeClass('nuBrowseBody nuEditBody');
	
	if(f.record_id == ''){
		$('body').addClass('nuBrowseBody')
	}else{
		$('body').addClass('nuEditBody')
	}
	
}

function nuGetTitleHeight(){

	var a			= ['nuActionHolder', 'nuBreadcrumbHolder', 'nuTabHolder'];
	var b			= 0;
	
	for(var i = 0 ; i < a.length ; i++){
		
		var o		= $('#' + a[i]);
		
		if(o.length == 1){
			
			var t	= o.offset().top;
			var h	= parseInt(o.css('height'));
			b		= Math.max(b, t + h);
			
		}
		
	}
	
	return Number(b + 50);

}


function nuResizeBody(f){

	var d				= f.dimensions[8];
	var d				= f.dimensions;
	var headers			= nuGetTitleHeight();
	
	if(f.record_id == ''){
		
		var h			= Number(d.browse.height) + headers;
		var w			= Number(d.browse.width);

		$('#nuDragDialog', window.parent.document).
		css({'height'		:	(h + 90) + 'px',
			'width' 		:	(w + 43) + 'px',
			'visibility' 	:	'visible'
		});

		$('#nuWindow', window.parent.document).
		css({'height'		:	(h + 47) + 'px',
			'width' 		:	(w + 30) + 'px'
		});
			
		$('body').css('height', h);
		
	}else{
		
		var h			= Number(d.edit.height) + headers;
		var w			= Number(d.edit.width);
		
		$('#nuDragDialog', window.parent.document).
		css({'height'		:	(h + 43) + 'px',
			'width' 		:	(w + 10) + 'px',
			'visibility' 	:	'visible'
		});

		$('#nuWindow', window.parent.document).
		css({'height'		:	(h) + 'px',
			'width' 		:	(w - 3) + 'px'
		});
			
		$('body').css('height', h);
		
	}
	
}


function nuDefine(v){

	if(v === undefined){
		v	= '';
	}
	
	return v;
	
}


function nuAddActionButtons(f){

	var draggable 	= 0;
	var rid			= window.nuFORM.getProperty('record_id');
	
	if(rid == '-2') {
		draggable = 1;
	}

	var button	= f.buttons;

	if(f.record_id == ''){

		var s 	= nuDefine(nuFORM.getProperty('search'));
		var f 	= nuDefine(nuFORM.getProperty('filter'));
		
		$('#nuActionHolder').append("<input id='nuSearchField' type='text' class='nuSearch' onfocus='this.value = this.value;' onkeypress='nuSearchPressed(event)' value='" + s + "'>&nbsp;");
		$('#nuActionHolder').append("<input id='nuFilter' style='visibility:hidden;width:0px' value='" + f + "'>");
		$('#nuActionHolder').append("<input id='nuSearchButton' type='button' class='nuActionButton ' value='Search' onclick='nuSearchAction()'>&nbsp;");
		
		if(button.Add == 1){nuAddActionButton('Add');}
		if(button.Print == 1){nuAddActionButton('Print');}
			
	}else{
		
		if(!draggable){
			
			if(button.Save == 1)		{nuAddActionButton('Save');}
			
			if(rid != -1){
				
				if(button.Clone == 1)	{nuAddActionButton('Clone');}
				if(button.Delete == 1)	{nuAddActionButton('Delete');}
				
			}
			
			if(button.RunHidden != '')	{nuAddActionButton('runhidden', 'Run', button.RunHidden);}
			if(button.Run != '')		{nuAddActionButton('run', 'Run', button.Run);}
			
		}
		
	}

	if(window.parent.length == 0){ //-- only if Main Form
		$('#nuActionHolder').append("<img id='thelogo' src='graphics/logo.png' style='position:absolute;right:20px'>");
	}
	
}



function nuAddActionButton(i, v, f){
	
	if(arguments.length == 1){
		
		v	= i;
		f	= 'nu' + i + 'Action()';
		
	}
	
	$('#nuActionHolder').append("<input id='nu" + i + "Button' type='button' class='nuActionButton' value='" + v + "' onclick='" + f + "'>&nbsp;");

}


function nuBuildEditObjects(f, p, o, prop){

	if(typeof(f.objects) != 'object'){return;}
	
	var l 			= 3;
	var draggable 	= 0;
	
	if(window.nuFORM.getProperty('record_id') == '-2'){
		draggable 	= 1;
	}
	
	for(var i = 0 ; i < f.objects.length  ; i++){
		
		if(!draggable) {

			var t                       = prop.objects[i].type;
			f.objects[i].parent_type    = o == '' ? '' : o.subform_type;

			if(t == 'input' || t == 'display' || t == 'lookup' || t == 'textarea' || t == 'calc'){
				l = l + nuINPUT(f, i, l, p, prop);
			}else if(t == 'run'){
				l = l + nuRUN(f, i, l, p, prop);
			}else if(t == 'html'){
				l = l + nuHTML(f, i, l, p, prop);
			}else if(t == 'image'){
				l = l + nuIMAGE(f, i, l, p, prop);
			}else if(t == 'select'){
				l = l + nuSELECT(f, i, l, p, prop);
			}else if(t == 'subform' && p == ''){
				l = l + nuSUBFORM(f, i, l, p, prop);
			}else if(t == 'word'){
				l = l + nuWORD(f, i, l, p, prop);
			}
			
			
			//if(prop.objects[i].display == 0){$('#' + p + prop.objects[i].id).css('visibility', 'hidden');}
			
			l 	= l + 2;
		
		} else{
			
			$("body").css("overflow", "hidden");
			l = l + nuDRAG(f, i, l, p, prop);
			
		}
		
	}
	
}

function nuAddJSObjectEvents(i, j){

	var o			= document.getElementById(i);

	for(var J = 0 ; J < j.length ; J++){

		var code 	= o.getAttribute(j[J].event);
		var ev		= j[J].event;
		code		= code === null ? '' : code + ';' ;
		
		if(ev == 'beforeinsertrow')		{ev	= 'data-nu-' + ev;}
		if(ev == 'afterinsertrow')		{ev	= 'data-nu-' + ev;}
		
		o.setAttribute(ev, code + j[J].js);

	}

}

function nuRecordProperties(w, p, l){

	var de    = p + 'nuDelete';
	var fh    = p + 'nuRECORD';                       //-- Edit Form Id
	var chk   = document.createElement('input');
	var sf    = p.substr(0, p.length - 3);

	chk.setAttribute('id', de);
	chk.setAttribute('title', 'Delete This Row When Saved');
	chk.setAttribute('type', 'checkbox');
	chk.setAttribute('onclick', 'nuChange(event)');

	$('#' + fh)
	.append(chk)
	.addClass('nuSection')
	.attr('data-nu-form-id', w.id)
	.attr('data-nu-table', w.table)
	.attr('data-nu-primary-key', w.record_id)
	.attr('data-nu-foreign-key', w.foreign_key)
	.attr('data-nu-foreign-field', p == '' ? '' : w.foreign_key_name);

	$('#' + de).attr('data-nu-data', '');

	if(arguments.length == 3){
		
		$('#' + de)
		.prop('checked', w.record_id == -1)
		.attr('data-nu-checkbox', sf)
		.css({'top'			: 3, 
			'left'			: Number(l) + 2, 
			'position' 		: 'absolute', 
			'visibility'	: 'visible'})
		
	}else{
		
		$('#' + de).css('visibility', 'hidden')
		.prop('checked', false)
		.attr('data-nu-checkbox', sf);
		
	}
	
}

function nuDRAG(w, i, l, p, prop){

	var id           = p + prop.objects[i].id;
	var ef           = p + 'nuRECORD';
	var nuObjectType = p + prop.objects[i].type;
	var drg          = document.createElement('div');
	drg.setAttribute('id', id);
	
	$('#' + ef).append(drg);
	
	$('#' + id).css({'top'      : Number(prop.objects[i].top),
					'left'		: Number(prop.objects[i].left),
					'width'		: Number(prop.objects[i].width),
					'height'	: Number(prop.objects[i].height),
					'text-align': prop.objects[i].align,
					'position'	: 'absolute',
					'overflow': 'hidden'
	}).addClass('nu_'+ nuObjectType);

	$('#' + id).text(id);
	$('#' + id).attr('data-drag',1);
    $('#' + id).attr('data-nu-object-id', prop.objects[i].object_id)
		
	nuAddDataTab(id, prop.objects[i].tab, p);
		
	return Number(prop.objects[i].width);
	
}


function nuINPUT(w, i, l, p, prop){
	
	var ID			= p + prop.objects[i].id;
	var id			= p + prop.objects[i].id;
	var ef			= p + 'nuRECORD';                 						//-- Edit Form Id
	var ty			= 'textarea';
	var vis			= prop.objects[i].display == 0 ? 'hidden' : 'visible';
	var input_type	= prop.objects[i].input;
	var hideSF		= '';
	
	if(prop.objects[i].type != 'textarea'){         						//-- Input Object
		ty			= 'input';
	}

	if(prop.objects[i].input == 'file'){
		
		var inp  	= document.createElement('textarea');

		inp.setAttribute('id', id);

		$('#' + ef).append(inp);

		$('#' + id)
		.css('visibility', 'hidden')
		.attr('data-nu-field', id)
		.attr('data-nu-prefix', p)
		.attr('onchange', 'this.className = "nuEdited"');

		id			= id + '_file';
		
	}
	
	var inp  		= document.createElement(ty);

	inp.setAttribute('id', id);

	$('#' + ef).append(inp);

	if(prop.objects[i].parent_type == 'g'){        							//--  in a grid subform
		
		prop.objects[i].left 	= l;
		prop.objects[i].top 	= 3;
		
	}else{

		if(input_type != 'button'){											//-- Input Object
			nuLabel(w, i, p, prop);
		}
		
	}

	if(ty == 'input'){														//-- Input Object

		inp.setAttribute('type', prop.objects[i].input);

		$('#' + id).addClass('input_' + input_type);

	}
	
	nuAddDataTab(id, prop.objects[i].tab, p);

	$('#' + id).css({'top'      : Number(prop.objects[i].top),
					'left'		: Number(prop.objects[i].left),
					'width'		: Number(prop.objects[i].width),
					'height'	: Number(prop.objects[i].height),
					'text-align': prop.objects[i].align,
					'position'	: 'absolute'
	})
	
	.attr('onchange', input_type == 'file' ? 'nuChangeFile(event)' : 'nuChange(event)')
	.attr('data-nu-field', input_type == 'button' || input_type == 'file' ? null : prop.objects[i].id)
	.attr('data-nu-object-id', w.objects[i].object_id)
	.attr('data-nu-format', '')
	.attr('data-nu-prefix', p)
	.attr('data-nu-type', w.objects[i].type)
	.attr('data-nu-subform-sort', 1)
	.attr('data-nu-label', w.objects[i].label);

	if(prop.objects[i].type != 'textarea'){

		$('#' + id)
		.focus(function(){$( this ).select();})
		
	}


	if(input_type == 'nuScroll'){
		
		var input_js	= 'nuFORM.scrollList(event, ' + w.objects[i].scroll + ')';
		
		$('#' + id)
		.addClass('nuScroll')
		.attr('onkeydown', input_js);
		
	}


	if(input_type == 'nuDate'){
		
		$('#' + id)
		.addClass('nuDate')
		.attr('data-nu-format', w.objects[i].format)
		
	}


	if(input_type == 'nuNumber'){
		
		$('#' + id)
		.addClass('nuNumber')
		.attr('data-nu-format', w.objects[i].format)
		
	}

	if(input_type != 'button'){
		$('#' + id).attr('data-nu-data', '');
	}
	
	if(w.objects[i].value != '' && window.nuFORM.getCurrent().record_id == '-1'){             //== check for Cannot be left blank
		$('#' + id).addClass('nuEdited');
	}
	
	if(input_type == 'nuDate'){
		$('#' + id).attr('onclick', 'nuPopupCalendar(this);');
	}

	if(input_type != 'file'){
		$('#' + id).val(nuFORM.addFormatting(w.objects[i].value, w.objects[i].format));
	}
	
	nuAddJSObjectEvents(id, prop.objects[i].js);
	
	if(w.objects[i].input == 'checkbox'){
		
		document.getElementById(id).checked	= (w.objects[i].value == '1');
		
	}

	
	if(prop.objects[i].type == 'display'){
		
		$('#' + id).addClass('nuReadonly');
		$('#' + id).prop('readonly', true);
		
	}

	if(prop.objects[i].type == 'calc'){
		
		var TOT	= String(w.objects[i].formula).replaceAll("al('", "al('" + p);

		$('#' + id).addClass('nuCalculator')
		.attr('data-nu-format', w.objects[i].format)
		.attr('data-nu-calc-order', w.objects[i].calc_order)
		.prop('readonly', true).prop('tabindex', -1)
		.attr('data-nu-formula', TOT);
		
		if(p != ''){
			$('#' + id).addClass('nuSubformObject');
		}
		
	}

	if(prop.objects[i].type == 'lookup'){
		
		$('#' + id).hide();
		$('#' + id).attr('data-nu-lookup-id','');
		$('#' + id).val(w.objects[i].values[0][1]);

		var target			= id;
		id					= target + 'code';
		var inp				= document.createElement('input');
		
		inp.setAttribute('id', id);
		
		$('#' + ef).append(inp);
		
		nuAddDataTab(id, prop.objects[i].tab, p);
		
		$('#' + id).css({'top'	: Number(prop.objects[i].top),
		    			'left'	: Number(prop.objects[i].left),
			    		'width'	: Number(prop.objects[i].width),
						'height': Number(prop.objects[i].height)
		})
		.attr('data-nu-form-id', w.objects[i].form_id)
		.attr('data-nu-object-id', w.objects[i].object_id)
		.attr('data-nu-target', target)
		.attr('data-nu-type', 'lookup')
		.attr('data-nu-subform-sort', 1)
		.css('visibility', vis)
		.addClass('nuLookupCode')
		.focus(function(){$( this ).select();})
		.attr('onchange', 'nuGetLookupCode(event)');
		
		w.objects[i].values[0][0]	= p + prop.objects[i].id;
		w.objects[i].values[1][0]	= p + prop.objects[i].id + 'code';
		w.objects[i].values[2][0]	= p + prop.objects[i].id + 'description';
		
		id 				= target + 'button';
		var inp 		= document.createElement('div');
		
		inp.setAttribute('id', id);
		
		$('#' + ef).append(inp);
		
		nuAddDataTab(id, prop.objects[i].tab, p);
		
		$('#' + id).css({'top'      	: Number(prop.objects[i].top),
						'left'      	: Number(prop.objects[i].left) + Number(prop.objects[i].width) + 2,
						'width'		: 15,
						'height'		: Number(prop.objects[i].height)
		})
		.attr('type','button')
		.attr('data-nu-form-id', w.objects[i].form_id)
		.attr('data-nu-object-id', w.objects[i].object_id)
		.attr('data-nu-target', target)
		.attr('data-nu-subform-sort', 1)
		.attr('onclick', 'nuBuildLookup(this,"")')
		.addClass('nuLookupButton')
		.html('<img border="0" src="graphics/magnify.png" class="nuLookupImg">')
		.css('visibility', vis);

		id = p + prop.objects[i].id + 'description';
		var inp = document.createElement('input');
		inp.setAttribute('id', id);
		
		$('#' + ef).append(inp);
		nuAddDataTab(id, prop.objects[i].tab, p);
		$('#' + id).css({'top'		: Number(prop.objects[i].top),
						'left'		: Number(prop.objects[i].left) + Number(prop.objects[i].width) + 21,
						'width'		: prop.objects[i].description_width,
						'visibility': prop.objects[i].description_width == 0 || prop.objects[i].display == 0 ? 'hidden' : 'visible',
						'height'	: Number(prop.objects[i].height)
		})
		.attr('tabindex','-1')
		.addClass('nuLookupDescription')
		.addClass('nuReadonly')
		.prop('readonly', true);
		
		nuPopulateLookup3(w.objects[i].values, p);
		
		nuSetAccess(ID, prop.objects[i].read);
		
		return Number(prop.objects[i].width) + Number(prop.objects[i].description_width) + 30;
		
	}else{
	
		if(prop.objects[i].type == 'input' && input_type == 'nuAutoNumber'){
			$('#' + id)
			.prop('readonly', true)
			.addClass('nuReadonly')
			.val(prop.objects[i].counter);
		}

		nuSetAccess(ID, prop.objects[i].read);
		
		return Number(prop.objects[i].width);
		
	}
	
}

function nuSetAccess(i, r){

	if(r == 2){

		var o	= [i, i + 'code', i + 'button', i + 'description', 'label_' + i];
		
		for(var c = 0 ; c < o.length ; c++){
			
			$('#' + o[c])
			.attr('data-nu-tab', 'x')
			.hide();
			
		}
		
	}

	if(r == 1){
		nuReadonly(i);
	}

}


function nuHTML(w, i, l, p, prop){

	var id  = p + prop.objects[i].id;
	var ef  = p + 'nuRECORD';                       //-- Edit Form Id
	var inp = document.createElement('div');
	
	inp.setAttribute('id', id);
	
	if(prop.objects[i].parent_type == 'g'){
		
		prop.objects[i].left = l;
		prop.objects[i].top = 3;
		
	}else{
		
		nuLabel(w, i, p, prop);
		
	}
	
	$('#' + ef).append(inp);
	
	nuAddDataTab(id, prop.objects[i].tab, p);
	
	$('#' + id).css({'top'     : Number(prop.objects[i].top),
					'left'     : Number(prop.objects[i].left),
					'width'    : Number(prop.objects[i].width),
					'height'   : Number(prop.objects[i].height),
					'position' : 'absolute'
	})
	.html(w.objects[i].html);
	
	nuSetAccess(id, prop.objects[i].read);
	
	return Number(prop.objects[i].width);

}


function nuIMAGE(w, i, l, p, prop){

	var id  = p + prop.objects[i].id;
	var ef  = p + 'nuRECORD';                       //-- Edit Form Id
	var inp = document.createElement('img');
	
	inp.setAttribute('id', id);
	
	if(prop.objects[i].parent_type == 'g'){
		
		prop.objects[i].left = l;
		prop.objects[i].top = 3;
		
	}else{
		
		nuLabel(w, i, p, prop);
		
	}
	
	$('#' + ef).append(inp);
	
	nuAddDataTab(id, prop.objects[i].tab, p);
	
	$('#' + id).css({'top'     : Number(prop.objects[i].top),
					'left'     : Number(prop.objects[i].left),
					'width'    : Number(prop.objects[i].width),
					'height'   : Number(prop.objects[i].height),
					'position' : 'absolute'
	})
	.attr('src', atob(w.objects[i].src));
	
	nuSetAccess(id, prop.objects[i].read);
	
	return Number(prop.objects[i].width);

}


function nuWORD(w, i, l, p, prop){

	var id  = p + prop.objects[i].id;
	var ef  = p + 'nuRECORD';                       //-- Edit Form Id
	var inp = document.createElement('div');
	
	inp.setAttribute('id', id);
	
	$('#' + ef).append(inp);
	
	nuAddDataTab(id, prop.objects[i].tab, p);
	
	$('#' + id).css({'top'     		: Number(prop.objects[i].top),
					'left'     		: Number(prop.objects[i].left),
					'width'    		: Number(prop.objects[i].width),
					'height'   		: Number(prop.objects[i].height),
					'position' 		: 'absolute',
					'text-align'	: prop.objects[i].align
	})
	.addClass('nuWord')
	.html(w.objects[i].word)
	.attr('ondblclick','nuPopup("nuobject", "' + prop.objects[i].object_id + '")');
	
	nuSetAccess(id, prop.objects[i].read);
	
	return Number(prop.objects[i].width);

}

function nuRUN(w, i, l, p, prop){

	var id  = p + prop.objects[i].id;
	var ef  = p + 'nuRECORD';                       //-- Edit Form Id
	var ele = 'input';
	
	if(prop.objects[i].parent_type == 'g'){
		
		prop.objects[i].left = l;
		prop.objects[i].top = 3;
		
	}
	
	if(prop.objects[i].run_method != 'b'){
		
		ele = 'iframe';

		if(!prop.objects[i].parent_type == 'g'){
			
			nuLabel(w, i, p, prop);
			
		}
		
	}

	var inp = document.createElement(ele);
	
	inp.setAttribute('id', id);
	
	$('#' + ef).append(inp);

	nuAddDataTab(id, prop.objects[i].tab, p);
	
	$('#' + id).css({'top'     		: Number(prop.objects[i].top),
					'left'     		: Number(prop.objects[i].left),
					'width'    		: Number(prop.objects[i].width),
					'height'   		: Number(prop.objects[i].height),
					'position' 		: 'absolute'
	});

	if(prop.objects[i].run_method == 'b'){
	
		var O			= prop.objects[i];
		var clicker		= '';
		
		if(O.run_type == 'R'){clicker = "nuRunReport('" + O.form_id + "')";}
		if(O.run_type == 'P'){clicker = "nuRunPHP('" + O.form_id + "')"}
		if(O.run_type == 'F'){clicker = "nuForm('" + O.form_id + "','" + O.record_id + "','" + O.filter + "', '')"}
		
		$('#' + id).attr({
					'type'		: 'button',
					'value'		: O.label,
					'onclick'	: clicker
		})
		.addClass('nuButton');
		
	}else{

		var O		= prop.objects[i];
		var F		= O.form_id;
		var R		= O.record_id;
		var L		= O.filter;
		var P		= window.location.pathname;
		var f		= P.substring(0,P.lastIndexOf('/') + 1)

		window.nuOPENER.push(new nuOpener(F, R, L));

		var open 	= window.nuOPENER[window.nuOPENER.length - 1];
		
		var u		= window.location.origin + f + O.src + '&opener=' + open.id;

		$('#' + id).attr('src', u).removeClass('').addClass('nuIframe');

	}

	nuAddJSObjectEvents(id, O.js);

	nuSetAccess(id, prop.objects[i].read);
	
	return Number(O.width);
	
}

function nuSELECT(w, i, l, p, prop){

	var id  = p + prop.objects[i].id;
	var ef  = p + 'nuRECORD';                       //-- Edit Form Id
	
	if(prop.objects[i].parent_type == 'g'){
		
		prop.objects[i].left = l;
		prop.objects[i].top = 3;
		
	}else{
		nuLabel(w, i, p, prop);
	}
	
	var sel = document.createElement('select');
	
	sel.setAttribute('id', id);

	$('#' + ef).append(sel);

	if(w.objects[i].value != '' && window.nuFORM.getCurrent().record_id == '-1'){
		$('#' + id).addClass('nuEdited');
	}
	
	nuAddDataTab(id, prop.objects[i].tab, p);

	$('#' + id).css({'top'     : Number(prop.objects[i].top),
					'left'     : Number(prop.objects[i].left),
					'width'    : Number(prop.objects[i].width),
					'position' : 'absolute'
	})
	.attr('onchange', 'nuChange(event)')
	.attr('data-nu-field', prop.objects[i].id)
	.attr('data-nu-object-id', w.objects[i].object_id)
	.attr('data-nu-format', '')
	.attr('data-nu-subform-sort', 1)
	.attr('data-nu-data', '')
	.attr('data-nu-label', w.objects[i].label)
	.attr('data-nu-prefix', p);

	if(prop.objects[i].multiple == 1){
	    
		$('#' + id).attr('multiple', 'multiple');
    	
	}
	
	$('#' + id).css('height', Number(prop.objects[i].height));

	var values = String(w.objects[i].value).split('#nuSep#');

	if(values.length == '0'){
		
		$('#' + id).append('<option  value=""></option>');		//-- add a blank option at the top
		
	}else{
		
		$('#' + id).append('<option  value=""></option>');

        if(prop.objects[i].options != null){

    		for(var n = 0 ; n < prop.objects[i].options.length ; n++){
    			
    			var opt	= String(prop.objects[i].options[n][1]).replaceAll(' ' ,'&#160;')

    			if(values.indexOf(prop.objects[i].options[n][0]) == -1){
    				
    				$('#' + id).append('<option  value="'+prop.objects[i].options[n][0]+'">' + opt + '</option>');
    				
    			}else{
    				
    				$('#' + id).append('<option selected="selected "value="'+prop.objects[i].options[n][0]+'">' + opt + '</option>');
    				
    			}

    		}

        }

	}
	
	nuAddJSObjectEvents(id, prop.objects[i].js);

	nuSetAccess(id, prop.objects[i].read);
	
	return Number(prop.objects[i].width);
	
}

function nuSUBFORM(w, i, l, p, prop){
	
    var SF  		= prop.objects[i];						//-- First row
    var SFR 		= w.objects[i];							//-- All rows
	var id  		= p + SF.id;
	var ef  		= p + 'nuRECORD';						//-- Edit Form Id
	var inp 		= document.createElement('div');
	var fms 		= SFR.forms;

	inp.setAttribute('id', id);
	
	if(SF.parent_type == 'g'){
		
		SF.left 	= l;
		SF.top 		= 3;
		
	}else{		
		nuLabel(w, i, p, prop);	
	}

	$('#' + ef).append(inp);
	
	nuAddDataTab(id, prop.objects[i].tab, p);
	
	$('#' + id).css({'top'         	: Number(SF.top),
					'left'       	: Number(SF.left),
					'width'      	: Number(SF.width),
					'height'		: Number(SF.height) + 2,
					'overflow-x'	: 'hidden',
					'overflow-y'	: 'hidden'
	})
	.attr('data-nu-object-id', SF.object_id)
	.attr('data-nu-foreign-key-name', SF.foreign_key_name)
	.attr('data-nu-primary-key-name', SF.primary_key_name)
	.attr('data-nu-subform', 'true')
	.addClass('nuSubform');

	nuAddJSObjectEvents(id, SF.js);
	
	if(SF.forms[0] !== undefined){
		nuGetSubformRowSize(SF.forms[0].objects, SF, id);
	}

	if(SF.subform_type == 'f'){
		
		var rowHeight   	= Number(SF.dimensions.edit.height + 10);
		var rowWidth    	= Number(SF.dimensions.edit.width  + 10);
		
	}else{
		
		var rowHeight   	= Number(SF.dimensions.grid.height);
		var rowWidth    	= Number(SF.dimensions.grid.width + 55);
		
	}
	
    if(SF.delete == '1'){

		rowWidth 			= rowWidth - 3;
		
    }else{
		
        rowWidth 			= rowWidth;
		
    }

	var rowTop      = 50;
	
	if(SF.subform_type == 'f'){
		rowTop      = 33;
	}
	
	var tabId  = id + 'nuTabHolder';
	var tabDiv = document.createElement('div');
	tabDiv.setAttribute('id', tabId);
	$('#' + id).prepend(tabDiv);
	$('#' + tabId).css({'top'      : 0,
					'left'       	: 0,
					'width'      	: rowWidth,
					'height'     	: rowTop,
					'overflow-x'	: 'hidden',
					'overflow-y'	: 'hidden',
					'position'	: 'absolute',
					'padding'	: '12px 0px 0px 0px'
	})
	.addClass('nuTabHolder')
	.attr('data-nu-subform', tabId);
		
	if(SF.subform_type == 'f'){
		nuAddEditTabs(id, SF.forms[0]);
	}
	
	nuOptions(id, SF.sf_form_id, 'subform', w.global_access);
	
    var scrId		= id + 'scrollDiv';
	var scrDiv		= document.createElement('div');
	
	scrDiv.setAttribute('id', scrId);
    scrDiv.setAttribute('class', 'nuSubformScrollDiv');
	
	$('#' + id).append(scrDiv);
	$('#' + scrId).css({'top'       	: rowTop,
					'left'        	: 0,
					'width'       	: Number(rowWidth) + 1,
					'height'      	: Number(SF.height) - rowTop + 1,
					'border-width'	: 1,
					'border-style'	: 'none solid solid solid',
					'border-color'	: '#C1C1C1',
					'overflow-x'  	: 'hidden',
					'overflow-y'  	: 'scroll',
					'position'		: 'absolute'
	});

	if(rowWidth > Number(SF.width)){
		
			$('#' + id).css('overflow-x', 'scroll');
			$('#' + scrId).css('height', SF.height - rowTop - 25);
			
	}
	
	rowTop 			= 0;
	var even		= 0;

	for(var c = 0 ; c < fms.length ; c++){

		var prefix 	= id + nuPad3(c);
		var frmId  	= prefix + 'nuRECORD';
		var frmDiv 	= document.createElement('div');
		
		frmDiv.setAttribute('id', frmId);
		$('#' + scrId).append(frmDiv);
		$('#' + frmId).css({'top'       : Number(rowTop),
						'left'          : 0,
						'width'         : Number(rowWidth),
						'height'        : Number(rowHeight),
						'position'      : 'absolute'
		})
		.addClass('nuSubform' + even);

		nuBuildEditObjects(SFR.forms[c], prefix, SF, SF.forms[0]);
		nuRecordProperties(SF.forms[c], prefix, rowWidth - 40);

		rowTop 		= Number(rowTop) + Number(rowHeight);
		even		= even == '0' ? '1' : '0'

	}
	
	if(SF.add == 1 && prefix != ''){
		nuNewRowObject(String(prefix));
	}
	
	nuSetAccess(id, prop.objects[i].read);
	
	return Number(SF.width);

}

function nuNewRowObject(p){

	var sf	= p.substr(0, p.length - 3);
	
	if($('#' + p + 'nuRECORD').length == 0){return;}
	
	var h	= document.getElementById(p + 'nuRECORD').outerHTML;
	
	window.nuSUBFORMROW[sf]	= String(h.replaceAll(p, '#nuSubformRowNumber#', true));
	
	$("[id^='" + p + "']").addClass('nuEdit')
	
}


function nuSubformLastRow(t){

	var i					= String($('#' + t.id).parent().attr('id'));
	var p					= i.substr(0, i.length - 17);
	var s					= parseInt(i.substr(11,3)) + 1;
	var n					= $('#' + p + nuPad3(s) + 'nuRECORD').length;

	return n == 0;
	
}


function nuRecordHolderObject(t){
	
	var h		= 'nuRECORD';
	var p		= $('#' + t.id).parent();
	var i		= String(p.attr('id'));
	var c		= 0;

	this.form	= i.substr(0, i.length - 3 - h.length);
	this.strNo	= i.substr(this.form.length, 3);
	this.intNo	= Number(this.strNo);
		
	while ($('#' + this.form + nuPad3(this.intNo + c) + h).length != 0){c++;}
	
	this.rows	= this.intNo + c;
	this.top	= parseInt(p.css('height')) * this.rows;
	var s		= this.form  + nuPad3(this.intNo + 1) + h;
	this.last	= $('#' + s).length == 0;
	var s		= this.form  + nuPad3(this.rows - 1);
	this.html	= window.nuSUBFORMROW[s];
	this.even	= parseInt(this.rows/2) == this.rows/2 ? '0' : '1';
	
}

function nuAddSubformRow(t, e){
	
	var sfid	= $('#' + t.id).parent().parent().parent()[0].id;
	var before	= $('#' + sfid).attr('data-nu-beforeinsertrow');
	var after	= $('#' + sfid).attr('data-nu-afterinsertrow');
	
	var nuCancel = false;
	
	eval(before);
	
	if(nuCancel){return;}
	
	e.stopPropagation();

	var o = new nuRecordHolderObject(t);
	
	if(!o.last){return;}
	
	var h	= window.nuSUBFORMROW[o.form].replaceAll('#nuSubformRowNumber#', o.form + nuPad3(o.rows), true);
	
	$('#' + o.form + 'scrollDiv').append(h);
	
	$('#' + o.form + nuPad3(o.rows) + 'nuRECORD').addClass('nuSubform'+ o.even);
	$('#' + o.form + nuPad3(o.rows) + 'nuRECORD').css('top', o.top);
	$('#' + o.form + nuPad3(o.rows)).attr('data-nu-primary-key', '-1');
	$('#' + o.form + nuPad3(o.rows) + 'nuDelete').prop('checked', true);
	$('#' + o.form + nuPad3(o.rows-1) + 'nuDelete').prop('checked', false);
	
	$("[id^='" + o.form + nuPad3(o.rows) + "']").addClass('nuEdited')
	
	$('.nuTabSelected').click();

	eval(after);
	
}







function nuPad4(i){
	
	return String('000' + Number(i)).substr(-4);

}


function nuPad3(i){
	
	return String('00' + Number(i)).substr(-3);

}


function nuPad2(i){
	
	return String('0' + Number(i)).substr(-2);

}


function nuLabel(w, i, p, prop){
	

	if(prop.objects[i].label == '' || prop.objects[i].display == 0){return;}
	
	var id     = 'label_' + p + prop.objects[i].id;
	var ef     = p + 'nuRECORD';                       //-- Edit Form Id
	
	if(prop.objects[i].input == 'file'){
		var lab    = document.createElement('div');
	}else{
		var lab    = document.createElement('label');
	}
	
	var lab    = document.createElement('label');
	var lwidth = nuGetWordWidth(nuTranslate(prop.objects[i].label));
	
	lab.setAttribute('id', id);
	lab.setAttribute('for',  p + prop.objects[i].id);
	
	$('#' + ef).append(lab);

	nuAddDataTab(id, prop.objects[i].tab, p);
	
	var l = String(nuTranslate(prop.objects[i].label));
	
	$('#' + id).css({'top'		: Number(prop.objects[i].top),
		              'left'	: Number(prop.objects[i].left) - lwidth + -27,
		              'width'	: Number(lwidth + 20)
	})
	.html(l)
	.attr('ondblclick','nuPopup("nuobject", "' + prop.objects[i].object_id + '")');

	if(prop.objects[i].valid == 1){$('#' + id).addClass('nuBlank');}
	if(prop.objects[i].valid == 2){$('#' + id).addClass('nuDuplicate');}
	
}

function nuPopulateLookup3(v, p){
	
		for(var i = 0 ; i < v.length ; i++){

			var fieldname	= String(v[i][0]).replace('#ROW#', p);
			
			$('#' + fieldname).val(v[i][1]);
		}
		
}

function nuAddHolder(t){

	var d 	= document.createElement('div');
	
	d.setAttribute('id', t);
	
	$('body').append(d);
	$('#' + t).addClass(t).html('&nbsp;&nbsp;&nbsp;');
	
}

function nuGetWordWidth(w){
	
	var h = "<div id='nuTestWidth' style='position:absolute;visible:hidden;width:auto'>" + w + "</div>";
	$('body').append(h);
	var l = parseInt($('#nuTestWidth').css('width'));
	$('#nuTestWidth').remove();
	
	return l + 5;
	
}	

function nuGetSubformRowSize(o, SF, id){

    var l = 0;
    var w = 0;

    for(var i = 0 ; i < o.length ; i++){

        var d = Number(o[i].description_width);
        var T = SF.subform_type 		== 'g'      ? 0     : Number(o[i].top);
        var B = o[i].type          		== 'lookup' ? 30    : 0;                    //-- lookup button
        var D = o[i].type          		== 'lookup' ? d     : 0;                    //-- lookup description
        
        w = 2 + Number(o[i].width) + B + D;
        
        
        if(SF.subform_type == 'g'){                                             //-- grid
            
            nuBuildSubformTitle(o[i], l, w, id, i);
            l = l + w;
            
        }
        
    }

}

function nuBuildSubformTitle(o, l, w, id, col){
    
	var titleId  = 'title_' + id + o.id;
	
	var div = document.createElement('div');

	div.setAttribute('id', titleId);

	$('#' + id).append(div);
	
	$('#' + titleId).css({'top'     	: 0,
					'left'          	: Number(l),
					'width'         	: Number(w),
					'height'        	: 50,
					'text-align'    	: 'center',
					'position'      	: 'absolute'
	})
	.html(o.label)
	.attr('data-nu-field', o.id)
	.attr('ondblclick', 'nuPopup("nuobject", "' + o.object_id + '")')
	.addClass('nuTabHolder');
	
	if(o.valid == 1 || o.valid == 2){$('#' + titleId).addClass('nuBlank');}

}

function nuBuildSubformDeleteTitle(l, id, subform_id){
    
	var titleId		= id + 'DeleteSF';
   	var div 		= document.createElement('div');
	
   	div.setAttribute('id', titleId);
	
   	$('#' + id).append(div);
    	
	$('#' + titleId).css({'top'     	: 0,
					'left'          	: Number(l)-12,
					'width'         	: 52,
					'height'        	: 50,
					'text-align'    	: 'center',
					'font-size'     	: 10,
					'padding'     	: 0,
					'position'      	: 'absolute'
	})
	.html('<img id="nuMoveable" src="graphics/numove.png" style="padding:8px;width:12px;height:12px;" title="Arrange Objects"><br>Delete')
	.addClass('nuTabHolder')
	.attr('onclick','nuPopup("'+subform_id+'", "-2");');

}

function nuAddBreadcrumbs(){

	var b	= window.nuFORM.breadcrumbs.length;
	
    for(var i = 0 ; i < b ; i++){
        
		nuAddBreadcrumb(i);

    }
    
}


function nuAddBreadcrumb(i){

	var last 	= (i + 1 == window.nuFORM.breadcrumbs.length);                 //-- last breadcrumb

	var bc 		= window.nuFORM.breadcrumbs[i];
	var bcId 	= 'nu_bc_' + i;
	var bcId 	= 'nuBreadcrumb' + i;
	
	var div		= document.createElement('div');
	div.setAttribute('id', bcId);

	$('#' + 'nuBreadcrumbHolder').append(div);
	
	if(last){
		
		$('#' + bcId)
		.addClass('nuNotBreadcrumb')
		.html(nuTranslate(bc.title));
		
	}else{
		
		$('#' + bcId)
		.attr('onclick', 'nuGetBreadcrumb(' + i + ')')
		.addClass('nuBreadcrumb')
		.html(nuTranslate(bc.title) + '<div id="nuarrow'+i+'" class="nuBreadcrumbArrow">&nbsp;&#x25BA;&nbsp;<div>');
		
	}
	
}

function nuSetTitle(t){
	
	if(nuFORM.getCurrent().record_id == ''){return;}

	nuFORM.setProperty('title', t);
	
	var b 	= $('.nubreadcrumb').length;
	
	$('#nuBreadcrumb' + b).html(t);
	
}


function nuAddEditTabs(p, w){
	
	nuSetStartingTab(p);

    for(var i = 0 ; i < w.tabs.length ; i++){

		nuEditTab(p, w.tabs[i], i);

    }
	
	var l 		= 7;
	
    for(var i = 0 ; i < w.browse_columns.length ; i++){
		l 		= nuBrowseTitle(w.browse_columns, i, l);
    }

	var f 		= nuFORM.getProperty('nosearch_columns');

	for(var i = 0 ; i < f.length ; i++){
		$('#nusort_' + f[i]).addClass('nuNoSearch');
	}
	
	window.nuBrowseWidth	= l;
	
	nuDetach();

	if(w.browse_columns.length > 0){
		
		nuBrowseTable();
		nuOptions('nuBrowseTitle' + (w.browse_columns.length - 1), w.form_id, 'browse', w.global_access);
	
	}
    
}

function nuSetStartingTab(p){

	var t = window.nuFORM.getProperty('tab_start');
	
	for(var i = 0 ; i < t.length ; i++){
		if(t[i].prefix == p){return;}
		
	}
	
	t.push(new nuStartingTab(p));
	
}

function nuGetStartingTab(){

	var t = window.nuFORM.getProperty('tab_start');
	
	for(var i = 0 ; i < t.length ; i++){
		
		$('#' + t[i].prefix + 'nuTab' + t[i].tabNumber).addClass('nuTabSelected');
		$('#' + t[i].prefix + 'nuTab' + t[i].tabNumber).click();
		
	}
	
}


function nuSetTab(pthis){

	var t = window.nuFORM.getProperty('tab_start');
	
	for(var i = 0 ; i < t.length ; i++){
		
		if(t[i].prefix == $('#' + pthis.id).attr('data-nu-form-filter')){
			
			$('#' + t[i].prefix + 'nuTab' + t[i].tabNumber).addClass('nuTabSelected');
			t[i].
			$('#' + t[i].prefix + 'nuTab' + t[i].tabNumber).click();
			
		}
		
	}
	
}

function nuStartingTab(p){

		this.prefix 		= p;
		this.tabNumber 	= 0;
		
}

function nuEditTab(p, t, i){

    var tabId  = p + 'nuTab' + i;
	var div    = document.createElement('div');
	div.setAttribute('id', tabId);
	
	$('#' + p + 'nuTabHolder').append(div);
	$('#' + tabId)
	.html(nuTranslate(t.title))
	.addClass('nuTab')
	.addClass('nuDragNoSelect')
	.attr('data-nu-tab-filter', i)
	.attr('data-nu-form-filter', p)
	.attr('data-nu-tab-id', t.id)
	.attr('onclick','nuSelectTab(this)');
	

}

function nuOptions(p, f, t, access){

	var R		= window.nuFORM.getProperty('record_id');
	
	if(R != '-2') {

		var id  	= p + 'nuOptions';
		var img		= document.createElement('img');
		
		img.setAttribute('id', id);
		
		if(t == 'browse') {
			$('#' + p).append(img);	
		} else {
			$('#' + p + 'nuTabHolder').append(img);
		}

		$('#' + id)
		.attr('src', 'graphics/nuoptions.png')
		.attr('title', 'Options')
		.attr('onclick', 'nuGetOptionsList("' + f + '", this, "' + p + '", "' + access + '", "' + t + '")')
		.css({'top'			: 5, 
		'right' 			: 5, 
		'width' 			: 15, 
		'height' 			: 15, 
		'position' 			: 'absolute', 
		'opacity'			: 0.5,
		'border-style' 		: 'none'})
		.addClass('nuIcon')
		.hover(function(){
			$( this ).attr('src', 'graphics/nuoptions_red.png');
		}, function(){
			$( this ).attr('src', 'graphics/nuoptions.png');
		});
		
		if(t == 'form'){
			
			$('#' + id)
			.css('top', 66)
			.css('right', 10);
			
		} else {
			
			$('#' + id)
			.css('top', 5)
			.css('right', 5);
			
		}
		
	}
   
}

function nuGetOptionsList(f, t, p, a, type){

	var icon	= $('#' + t.id);
	var off		= icon.offset();
	var top		= off.top;
	var left	= off.left;
	var u		= nuFORM.getProperty('user_id');
	var list	= [];
	var ul		= '<ul>';
	
	if(nuFORM.getProperty('record_id') == ''){
		list.push(['Searchable Columns', 	'nuGetSearchList()', 						'graphics/nu_option_search.png', 	'Ctrl+Shft+S']);
	}

	if(a == 1){
		
		if(nuSERVERRESPONSE.form_access == 0 || String(f).substr(0,2) != 'nu'){
		
			list.push(['Arrange Objects', 		'nuPopup("' + f + '", "-2")', 			'graphics/nu_option_arrange.png', 		'Ctrl+Shft+A']);
			list.push(['Form Properties', 		'nuPopup("nuform", "' + f + '")', 		'graphics/nu_option_properties.png',		'Ctrl+Shft+F']);
			list.push(['Form Object List', 		'nuPopup("nuobject", "", "' + f + '")', 'graphics/nu_option_objects.png',		'Ctrl+Shft+O']);
			
		}
		
		if(type != 'subform'){
			list.push(['nuDebug', 				'nuPopup("nudebug", "")', 					'graphics/nu_option_debug.png',			'Ctrl+Shft+D']);
		}
		
	}else{
		
		list.push(['Change Login', 			'nuPopup("nupassword", "' + u + '", "")', 	'graphics/nu_option_password.png', 	'Ctrl+Shft+L']);
		
	}

	if(nuFORM.getProperty('record_id') != '' && type != 'subform'){
		
		list.push(['Save Form', 			'nuSaveAction();', 							'graphics/nu_option_save.png',		'Ctrl+Shft+S']);
		list.push(['Refresh', 				'nuGetBreadcrumb()', 						'graphics/nu_option_refresh.png', 	'Ctrl+Shft+R']);
		
	}
	

	if(list.length == 0){return;}
	
	//hide all other listboxes
	$('#nuOptionsListBox').remove();
	$('.nuIframe').contents().find('#nuOptionsListBox').remove();
	$('#nuOptionsListBox', window.parent.document).remove();
	
	var id  		= 'nuOptionsListBox';
	var div    		= document.createElement('div');

	
	div.setAttribute('id', id);

	$('body').append(div);
	

	$('#' + id)
	.css({'top' 	: top + 3,
	'left' 			: left + 20, 
	'height'		: 20 + (list.length * 20),
	'width'			: 1000,
	'position'		: 'absolute',
	'text-align' 	: 'left'})
	.html('<span style="font-weight:bold">&nbsp;&nbsp;Options<\span>')
	.addClass('nuOptionsList');


	var id			= 'nuOptionsListDelete';
	var div    		= document.createElement('div');
	
	div.setAttribute('id', id);
	
	var x 			= document.createElement('div');
	
	x.setAttribute('id', 'nuSearchListClose');
	
	$('#nuOptionsListBox').append(x);
	
	$('#' + x.id).css({
		'width'				: 20,
		'height'			: 20,
		'top'				: 3,
		'right'				: 3,
		'position'			: 'absolute',
		'text-align'    	: 'center'
	})
	.click(function(){
		$( "#nuOptionsListBox" ).remove();
	})
	.html('<img id="nuOptionListClose" src="graphics/nuclose.png" >')
	.addClass('nuSearchListClose');
	
	nuBuildOptionsList(list, p);
	
}


function nuBuildOptionsList(l, p){												//-- loop through adding options to menu

	var icon		= $('#' + p + 'nuOptions');
	var off			= icon.offset();
	var top			= off.top;
	var left		= off.left < 240 ? 240 : off.left;
	var ul			= '';
	var	prop		= {'position': 'absolute','text-align' : 'left' , 'width' : 15, 'height' : 15};
	var width		= 0;
	var height		= 30 + (l.length * 30);
	
	for(var i = 0 ; i < l.length ; i++){
		var width	= Math.max((nuGetWordWidth(l[i][0]) + nuGetWordWidth(l[i][3])), width);
	}

	for(var i = 0 ; i < l.length ; i++){
		
		var t			= l[i][0];
		var f			= l[i][1];
		var c			= l[i][2];
		var k			= l[i][3];
		var itemtop 	= 30 + (i * 20);
		
		var icon 	= document.createElement('img');
		var icon_id 		= 'nuOptionList' + i.toString();
				
		icon.setAttribute('id', icon_id);
		
		$('#nuOptionsListBox').append(icon);

		$('#' + icon.id)
		.css(prop)
		.css({'top'	: itemtop, 'left' : 5})
		.attr('onclick', f)
		.attr('src', c);

		var desc = document.createElement('div');
		var desc_id 		= 'nuOptionText' + i.toString();
		
		desc.setAttribute('id', desc_id);

		$('#nuOptionsListBox').append(desc);
		var	prop		= {'position' : 'absolute', 'text-align' : 'left', 'height' : 15};

		$('#' + desc.id)
		.css(prop)
		.css({'top'	: itemtop,'left' : 30})
		.html(t)
		.attr('onclick', f)
		.addClass('nuOptionsItem');
		
		var shortcut_key = document.createElement('div');
		var shortcut_key_id 		= 'nuOptionTextShortcutKey' + i.toString();
		
		shortcut_key.setAttribute('id', shortcut_key_id);

		$('#nuOptionsListBox').append(shortcut_key);
		var	prop		= {'position' : 'absolute', 'text-align' : 'left', 'height' : 15};

		$('#' + shortcut_key.id)
		.css(prop)
		.css({'top'	: itemtop,'left' : width - 40})
		.html(k)
		.attr('onclick', f)
		.addClass('nuOptionsItemShortcutKey');
		
	}

	$('#nuOptionsListBox').css({'height' : 40 + (l.length * 20), 'width' : 40 + width});
	
	if(nuFORM.getProperty('record_id') == ''){
		
		$('#nuOptionsListBox')
		.css({'left' : left - width - 28, 'top' : top-15});
		
	}else{
		
		$('#nuOptionsListBox')
		.css({'left' : left - width - 20, 'top' : top+10});
		
	}

}


function nuSelectTab(tab){

	$('#nuOptionsListBox').remove()
	
    var filt = $('#' + tab.id).attr('data-nu-tab-filter');
    var form = $('#' + tab.id).attr('data-nu-form-filter');
	
	var t 	= nuFORM.getProperty('tab_start');

	for(var i = 0 ; i < t.length ; i++){
		
		if(t[i].prefix == form){
			
			t[i].tabNumber	= filt;
		}
		
	}
	
    $("[data-nu-form='" + form + "']").hide();
    $("[data-nu-form='" + form + "'][data-nu-tab='"  + filt + "']:not([data-nu-lookup-id])").show();

    $("[data-nu-form-filter='" + form + "']").removeClass('nuTabSelected');
    $("[data-nu-form-filter='" + form + "'][data-nu-tab-filter='"  + filt + "']").show();
    $('#' + tab.id).addClass('nuTabSelected');

}


function nuAddDataTab(i, t, p){

    var P = String(p);
    var f = P.substr(0, P.length - 3);
    $('#' + i).attr('data-nu-tab', t).attr('data-nu-form', f);

}


function nuBrowseTitle(b, i, l){

	var bc		= window.nuFORM.getCurrent();
	var un		= bc.nosearch_columns.indexOf(i);
	var id  	= 'nuBrowseTitle' + i;
	var w 		= Number(b[i].width);
	var div 	= document.createElement('div');
	
	div.setAttribute('id', id);
	
	var cb	= '';
	
	if(bc.sort == i){
		
		if(bc.sort_direction == 'asc'){
			cb	= cb + '<span id="sort_direction">&#x25BC;</span>';
		}else{
			cb	= cb + '<span id="sort_direction">&#x25B2;</span>';
		}
		
	}
		
	var br	= '<br>';
	var sp	= '<span style="font-size:16px" id="nusort_' + i + '" class="nuSort" onclick="nuSortBrowse(' + i + ')"> ' + b[i].title + ' </span>'
	
	$('#nuRECORD').append(div);

	$('#' + id)
	.html(cb + br + sp)
	.addClass('nuBrowseTitle')
	.css({	'text-align'	: 'center',
			'overflow'		: 'visible',
			'width'			: w,
			'left'			: l
	});

	if(w == 0){
		$('#' + id).hide();
	}

	$('#nusearch_' + i).attr('checked', un == -1);
	
	return l + w;
	
}



function nuTitleDrag(i){

	var bc				= window.nuFORM.getCurrent();
	var col				= bc.browse_columns;
	var rows			= bc.rows;
	var h				= bc.row_height;
	var div				= document.createElement('div');

	div.setAttribute('id', 'nuTitleDrag' + i);
	
	$('#' + 'nuBrowseTitle' + i).append(div);


	$('#' + div.id)
	.addClass('nuDragLineV')
	.css('height', h)
	.attr('onmousedown', 'nuDragBrowseDown(event)')
	.attr('onmousemove', 'nuDragBrowseMove(event)')
	.attr('onmouseup','nuDragBrowseUp(event)');
	
}


function nuDragBrowseDown(e){
	
	var t					= parseInt($('#nuBrowseTitle0').css('top'));
	var l					= parseInt($('#nuBrowseTitle0').css('left'));
	var f					= parseInt($('#nuBrowseFooter').css('top'));

	window.nuDRAGLINEVSTART	= e.pageX;
	window.nuDRAGLINEVID	= e.target.id;

	$('#' + e.target.id).css('height', f-t);
	
}

function nuDragBrowseMove(e){
	
	if(window.nuDRAGLINEVID == '' || e.buttons != 1){return;}
	
	var l	= e.x

	$('#' + nuDRAGLINEVID).css('left', l);
	
}



function nuDragBrowseUp(e){
	
	var l	= e.offsetX;
	var h	= parseInt($('#nuBrowseTitle0').css('height'));
	
	$('#' + e.target.id).css('height', h);
	window.nuDRAGLINEVID	= '';
	
}





function nuBrowseColumnSize(e){

	var l	= $('#' + e.target.id)
	
	var bc					= window.nuFORM.getCurrent();
	var totalBrowseHeight	= bc.rows * bc.row_height;

	$('#' + e.target.id).css('height', 400);
	
}




function nuBrowseTable(){

	var bc				= window.nuFORM.getCurrent();
	var col				= bc.browse_columns;
	var row				= bc.browse_rows;
	var rows			= bc.rows;
	var h				= bc.row_height;
	var t				= 57 - h;
	var l				= 13;

	for(r = 0 ; r < rows ; r++){
	
		l				= 7;
		t				= t + h;
		
		for(c = 0 ; c < col.length ; c++){
		
			var w		= Number(col[c].width);
			var a		= nuAlign(col[c].align);
			var f		= col[c].format;
			var rw		= 'nurow'    + String('00' + r).substr(-3);
			var column	= 'nucolumn' + String('00' + c).substr(-3);
			var id		= rw + String('00' + c).substr(-3);
			var div		= document.createElement('div');
			
			div.setAttribute('id', id);
				
			$('#nuRECORD').append(div);

			$('#' + id)
			.attr('data-nu-row', rw)
			.attr('data-nu-column', column)
			.addClass(w == 0 ? '' : 'nuBrowseTable')
			.addClass('nuDragNoSelect')
			.css({	'text-align'	: a,
					'overflow'	: 'hidden',
					'width'		: w-8,
					'top'		: t,
					'left'		: l,
					'height'	: h-7,
					'position'	: 'absolute'
			});

			if(w == 0){
				$('#' + id).hide();
			}
			
			if(w < 8){
				
				$('#' + id)
				.css('padding', 0)
				.css('border-width', 0);
				
			}

			if(r < row.length){

				$('#' + id)
				.html(nuFORM.addFormatting(row[r][c+1], col[c].format))
				.attr('data-nu-primary-key', row[r][0])
				.attr('onclick', 'nuSelectBrowse(event, this)')
				.hover(
				
					function() {
						
						var rw = $( this ).attr('data-nu-row');
						$("[data-nu-row='"+rw+"']").addClass('nuSelectBrowse');
						$("[data-nu-row='"+rw+"']").removeClass('nuBrowseTable');
						 
						
					}, function() {
						
						var rw = $( this ).attr('data-nu-row');
						$("[data-nu-row='"+rw+"']").addClass('nuBrowseTable');
						$("[data-nu-row='"+rw+"']").removeClass('nuSelectBrowse');
						
					}
				);

			}
			
			l = l + w;

		}
		
	}

	var la	= '<span id="nuLast" onclick="nuGetPage(' + (bc.page_number)     + ')" class="nuBrowsePage">&#9668;</span>';
	var ne	= '<span id="nuNext" onclick="nuGetPage(' + (bc.page_number + 2) + ')" class="nuBrowsePage">&#9658;</span>';

	var pg	= '&nbsp;Page&nbsp;';
	var cu	= '<input id="browsePage" style="text-align:center;margin:3px 0px 0px 0px;width:40px" onchange="nuGetPage(this.value)" value="' + (bc.page_number + 1) + '" class="browsePage"/>';
	var of	= '&nbsp;/&nbsp;' + bc.pages + '&nbsp;';

	var id	= 'nuBrowseFooter';
	var div = document.createElement('div');
	div.setAttribute('id', id);
		
	$('#nuRECORD').append(div);

	$('#' + id)
	.addClass('nuBrowseTitle')
	.html(la+pg+cu+of+ne)
	.css({	'text-align'	: 'center',
			'width'			: l - 7,
			'top'			: t + h,
			'left'			: 7,
			'height'		: 25,
			'position'		: 'absolute'
	});
	
	nuHighlightSearch();
	
}

function nuAlign(a){

	if(a == 'l'){return 'left';}
	if(a == 'r'){return 'right';}
	if(a == 'c'){return 'center';}
	
}

function nuClickSearchColumn(e){

	var c	= e.target.id.substr(12);
	$('#nuSearchList' + c).click();
	nuSetSearchColumn();
	
}

function nuSetSearchColumn(){

	var nosearch = [];

	$('.nuSearchCheckbox').each(function( index ) {
		
		if(!$(this).is(':checked')){
			
			nosearch.push(index);
			
			$('#nusort_' + index)
			.addClass('nuNoSearch')
			
		}else{
			
			$('#nusort_' + index)
			.removeClass('nuNoSearch')
		}
		
	});

	window.nuFORM.setProperty('nosearch_columns', nosearch);

}

function nuSearchPressed(e){

    if(!e){e=window.event;}

    if(e.keyCode == 13){                    //-- enter key
        $('#nuSearchButton').click();
    }
    
}

function nuSearchAction(){

	var s	= String($('#nuSearchField').val()).replaceAll("'","&#39;", true);
	var f	= String($('#nuFilter').val()).replaceAll("'","&#39;", true);
	
	window.nuFORM.setProperty('search', s);
	window.nuFORM.setProperty('filter', f);

	nuGetBreadcrumb();
	
}


function nuAddAction(){

	var bc					= window.nuFORM.getCurrent();
	nuForm(bc.redirect_form_id, '-1');
	
}

function nuRunPHPAction(id) {
	nuRunPHP(id);
}

function nuRunReportAction(id) {
	nuRunReport(id);
}

function nuEmailReportAction(id) {
	nuEmailReport(id);
}

function nuSortBrowse(c){
	
	var l					= window.nuFORM.getCurrent();
	l.filter				= $('#nuFilter').val();
	
	if(c == l.sort){
		l.sort_direction	= l.sort_direction == 'asc' ? 'desc' : 'asc';
	}else{
		
		l.sort				= c;
		l.sort_direction	= 'asc';
		
	}
	
	nuSearchAction();
	
}

function nuGetPage(p){

	var P = parseInt('00' + p);
	var B = window.nuFORM.getCurrent();
	
	if(P == 0){
		P = 1;
	}
	
	if(P > B.pages){
		P = B.pages;
	}
	
	B.page_number = P - 1;
	
	nuSearchAction();
	
	
}


function nuSelectBrowse(e, t){

	var y 				= window.nuBrowseFunction;					//-- browse, lookup or custom function name
	var i 				= window.nuTARGET;
	var p				= $('#' + t.id).attr('data-nu-primary-key');
	var f				= window.nuFORM.getProperty('form_id');

	if(y == 'browse'){
		
		nuForm(f, p);
		
	}else if(y == 'lookup'){
		
		window.parent.nuGetLookupId(p, i);			//-- called from parent window
		
	}else{

		window[y](e);
		
	}
	
}


function nuPopulateLookup(fm, target){
	
	var p 		= String($('#' + target).attr('data-nu-prefix'));
	var f		= fm.lookup_values;

	for(var i = 0 ; i < f.length ; i++){
		
		var	id	= String(f[i][0]);

		if(id.substr(0, p.length) != p){
			id	= p + id;
		}
		
		$('#' + id).addClass('nuEdited');
		
		if($('#' + id).attr('type') == 'checkbox'){
			
			if(f[i][1] == '1'){
				$('#' + id).prop('checked', true); 
			}else{
				$('#' + id).prop('checked', true);
			}
			
		}else{
			$('#' + id).val(f[i][1]);
		}
		

	}
	
	$('#dialogClose').click();

}


function nuChooseOneLookupRecord(e, fm){
	
	var o						= new nuLookupObject(e.target.id);
	var i						= o.id_id;
	var t						= document.getElementById(e.target.id);

	if(fm.lookup_values.length	== 0){
		nuGetLookupId('', i);
	}
	
	if(fm.lookup_values.length	== 1){
		
		if(e.target.value.toUpperCase() == fm.lookup_values[0][1].toUpperCase()){
			nuGetLookupId(fm.lookup_values[0][0], i);
		}else{
			nuBuildLookup(t, e.target.value);
		}	
		
	}
	
	if(fm.lookup_values.length	 > 1){
		nuBuildLookup(t, e.target.value);
	}

}

function nuLookupObject(id, set, value){

	if($('#' + id).length == 0){
		
		this.id_id				= '';
		this.code_id			= '';
		this.description_id		= '';
		this.id_value			= '';
		this.code_value			= '';
		this.description_value	= '';

		return;
		
	}
	
	var i						= nuValidLookupId(id, 'code');
	i							= nuValidLookupId(i, 'description');
	this.id_id					= i;
	this.code_id				= i + 'code';
	this.description_id			= i + 'description';
	this.id_value				= $('#'  + this.id_id).val();
	this.code_value				= $('#'  + this.code_id).val();
	this.description_value		= $('#'  + this.description_id).val();

	if(arguments.length == 3 && set == 'id'){
		$('#' + this.id).val(value);
	}
	if(arguments.length == 3 && set == 'code'){
		$('#' + this.code).val(value);
	}
	if(arguments.length == 3 && set == 'description'){
		$('#' + this.description).val(value);
	}
	
}

function nuValidLookupId(id, fld){
	
	var i	= String(id);
	var f	= String(fld);
	var il	= i.length;
	var fl	= f.length;

	if(i.substr(il-fl) === f){
		
		i			= i.substr(0, il - fl);

		if($('#' + i + f).length == 1 && $('#' + i + f + f).length == 1){
			
			i 	= i + f;
			
		}
		
	}
	
	return i;
	
}

function nuHighlightSearch(){

	var bc		= window.nuFORM.getCurrent();
	var exclude	= bc.nosearch_columns;

	var search	= String(bc.search)
	.split(' ')
	.filter(function(a) {return (a != '' && a.substr(0,1) != '-')})
	.sort(function(a,b) {return (a.length > b.length)});
	
	$('.nuBrowseTable').each(function(index){
		
		var col	= Number(String($(this).attr('id')).substr(11));
		
		if(exclude.indexOf(col) == -1){
			
			var h	= String($(this).html());
			
			for(var i = 0 ; i < search.length ; i++){
				h	= h.replaceAll(search[i],'`````' + search[i] + '````', true);
			}

			h 		= h.replaceAll('`````', '<span class="nuBrowseSearch" onclick="this.offsetParent.onclick()">', true);
			h 		= h.replaceAll('````', '</span>', true);
			
			$(this).html(h);
			
		}
		
	});
	
}

function nuGetFormData(){

	var a	= [];
	var s	= '';
	var f	= $("[id$='nuRECORD']");

	f.each(function(index){
		
		var	s	= String($(this).attr('id'));
		
		a.push(s.substr(0, s.length - 8));
		
	});
	
	var r		= [];
	
	for(var i = 0 ; i < a.length ; i++){
		
		var rw	= new nuFormClass(a[i]);

		if(rw.d == 'Yes' || rw.pk == '-1' || rw.f.length > 0 || rw.fk === undefined){
			r.push(rw);
			
		}
		
	}

	return r;

}


function nuFormClass(frm){

	var fh				= '#' + frm + 'nuRECORD';
	var foreign_key		= $(fh).attr('data-nu-foreign-key');
	var primary_key		= $(fh).attr('data-nu-primary-key');
	var form_id			= $(fh).attr('data-nu-form-id');
	var foreign_field	= $(fh).attr('data-nu-foreign-field');
	
	var deleted			= $('#' + frm + 'nuDelete').is(":checked") ? 'Yes' : 'No';
	var fields			= [];
	var values			= [];
	var rows			= [];

    var field_selector = "[data-nu-prefix='" + frm + "'][data-nu-field].nuEdited";
    if(primary_key == '-1')
        field_selector = "[data-nu-prefix='" + frm + "'][data-nu-field]";
	var o				= $(field_selector);

	o.each(function(index){

		var rw			= String($(this).attr('data-nu-prefix'));
		var rowno		= parseInt(rw.substr(rw.length - 3));
		var f			= $(this).attr('data-nu-field');
		var fmt			= $(this).attr('data-nu-format');
		var typ			= $(this).attr('type');
		var v			= $(this).val();
		
		if(typ == 'checkbox'){
			v			= $(this).prop("checked") ? 1 : 0;
		}



		fields.push(f);
		
		values.push(nuFORM.removeFormatting(v, fmt));
		rows.push(rw != '' ? rowno + 1 : 0);
		
	});
	
	this.pk	= primary_key;
	this.fk	= foreign_key;
	this.fm	= form_id;
	this.ff	= foreign_field;
	this.d	= deleted;
	this.r	= rows;
	this.f	= fields;
	this.v	= values;

}


function nuChange(e){

	if(e.target.id.substr(-8) == 'nuDelete'){
		
		nuHasBeenEdited();
		nuCalculateForm();
		
		return;
		
	}
		
	var t	= $('#' + e.target.id)[0];
	var p	= $('#' + t.id).attr('data-nu-prefix');
	
	nuReformat(t);
	
	$('#' + p + 'nuDelete').prop('checked', false);
	$('#' + t.id).addClass('nuEdited');
	nuHasBeenEdited();
	
	$('#nuCalendar').remove();
	$('#' + t.id).removeClass('nuValidate');
	nuCalculateForm();

	if(p == ''){return;}

	nuAddSubformRow(t, e);
	
}
/*
//function nuChangeFile(e){

	if(e.target.id.substr(-8) == 'nuDelete'){
		
		nuHasBeenEdited();
		return;
		
	}
		
	var t	= $('#' + e.target.id)[0];
	var p	= $('#' + t.id).attr('data-nu-prefix');
	
	nuReformat(t);
	
	$('#' + p + 'nuDelete').prop('checked', false);
	$('#' + t.id).addClass('nuEdited');
	nuHasBeenEdited();
	
	$('#nuCalendar').remove();
	$('#' + t.id).removeClass('nuValidate');
	nuCalculateForm();

	if(p == ''){return;}

	nuAddSubformRow(t, e);
	
}
*/

function nuChangeFile(e){

	if(e.target.id.substr(-8) == 'nuDelete'){
		
		nuHasBeenEdited();
		return;
		
	}

	var theFile			= e.target.id;
	var theTextarea		= theFile.substr(0, theFile.length - 5);
	
    if($('#' + theFile).val()==''){return;}
    
	var a		= $('#' + theFile)[0].files[0];
	var r		= new FileReader();

	r.onload 	= function(e) {
	    
		var f	= btoa(r.result);
		var o	= {'file' : f, 'name' : a.name, 'size' : a.size, 'type' : a.type};
		var j	= JSON.stringify(o);

    	$('#' + theTextarea).val(j).addClass('nuEdited');

	}

	r.readAsDataURL(a);
	
	var t	= $('#' + theFile)[0];
	var p	= $('#' + theTextarea).attr('data-nu-prefix');
	
	$('#' + p + 'nuDelete').prop('checked', false);
	$('#' + theTextarea).addClass('nuEdited');

	nuHasBeenEdited();
	
	if(p == ''){return;}

	nuAddSubformRow(t, e);
	
}


function nuCalculateForm(){	//-- calculate subform 'calcs' first
	
    var subformFirst 	= function(b, a){

		var A			= $('#' + a.id).hasClass('nuSubformObject') ? 1000 : 0;
		var B			= $('#' + b.id).hasClass('nuSubformObject') ? 1000 : 0;
		var a			= parseInt($('#' + a.id).attr('data-nu-calc-order'));
		var b			= parseInt($('#' + b.id).attr('data-nu-calc-order'));
		
		return (a + A) - (b + B);
	
    }

	var f	= $("[data-nu-formula]");
	
    f.sort(subformFirst);
	
	f.each(function( index ) {		//-- start with calculations inside a subform
	
		$(this).addClass('nuEdited');
		
		var formula 	= $(this).attr('data-nu-formula');
		var fmt			= $(this).attr('data-nu-format');
		var v			= 0;
		
		if(formula != ''){
			eval('var v = ' + formula);
		}
		
		var fixed		= nuFORM.addFormatting(v, fmt);
		
		$(this).val(fixed);
		
	});	
	
}


function nuHasBeenEdited(){
	
	$('#nuSaveButton').addClass('nuSaveButtonEdited');
	nuFORM.edited	= true;
	
}

function nuHasNotBeenEdited(){
	
	$('#nuSaveButton').removeClass('nuSaveButtonEdited');
	nuFORM.edited	= false;
	
}

function nuDeleteAction(){
	
    if (confirm("Delete This Record?")) {

		$("[id$='nuDelete']").prop('checked', true);
		
		nuUpdateData('delete');
		
    }
	
}


function nuDeleteAllAction(){
	
    if (confirm("Delete This Record?")) {

		$("[id$='nuDelete']").prop('checked', true);
		
		nuUpdateData('delete', 'all');
		
    }
	
}

function nuCloneAction(){
	
	$('[data-nu-primary-key]').each(function(index){
		
			$(this).attr('data-nu-primary-key','-1');
			
	});
	
	$('[data-nu-field]').each(function(index){
		
		$(this).addClass('nuEdited');
			
	});
	
	window.nuFORM.setProperty('record_id', -1);

	$('#nuCloneButton').css('visibility','hidden');
	$('#nuDeleteButton').css('visibility','hidden');
	
	$('#nuSaveButton')
	.css('background-color', 'red')
	.css('visibility','visible');
	
}

function nuSaveAction(){
	
	nuUpdateData('save');

}

function nuSavingProgressMessage(){
	
    var e = document.createElement('div');

    e.setAttribute('id', 'nuProgressSaved');

    $('#nuActionHolder').append(e);
    $('#' + e.id).html('<img src=\'ajax-loader.gif\'/>');
    $('#' + e.id).addClass('nuSaveMessageProgress');
	$('#' + e.id).css('position','absolute');
	$('#' + e.id).css('left',(($('#nuActionHolder').width() / 2) - ($('#nuProgressSaved').width() / 2))+ 'px');
    $('#' + e.id).show();
	
	$('.nuActionButton').hide();
	
}  

function nuSavingMessage(){

    $("#nuProgressSaved").hide();
	
    var e = document.createElement('div');
	
    e.setAttribute('id', 'nuNowSaved');
	
    $('#nuActionHolder').append(e);
    $('#' + e.id).html('Record Saved');
    $('#' + e.id).addClass( 'nuSaveMessage');
	$('#' + e.id).css('position','absolute');
	$('#' + e.id).css('left',(($('#nuActionHolder').width() / 2) - ($('#nuNowSaved').width() / 2))+ 'px');
    $("#nuNowSaved").fadeToggle(3000);
	
	$('.nuActionButton').show();
	
} 

function nuAbortSave(){
	
    $("#nuProgressSaved").hide();
    $('.nuActionButton').show();
	
}


function nuAddJavascript(o){

	var nuLoadEdit		= null;
	var nuLoadBrowse	= null;
	
	var s				= document.createElement('script');
	s.innerHTML 		= "\n" + o.javascript + "\n\n";
	
	$('body').append(s);
	
	if(o.record_id == ''){
		if(nuLoadBrowse != null){nuLoadBrowse();}
	}else{
		if(nuLoadEdit != null){nuLoadEdit();}
	}
	
}

function nuHashFromEditForm(){

	var a			= [];
	var A			= [];
	var b			= window.nuFORM.getCurrent();
	var o 			= {};
	var val 		= '';
	
	for (var key in b) {
		if(key != 'hash') {
			a.push([key, b[key]]);
			A[key]	= b[key];
		}
	}	
		
	a.push([b.form_id, b.record_id]);		//-- first element is Form and Record ID
	a.push(['FORM_ID', b.form_id]);
	a.push(['PREVIOUS_RECORD_ID', b.record_id]);
	a.push(['RECORD_ID', b.record_id]);
	
	A[b.form_id]			= b.record_id;
	A['FORM_ID']			= b.form_id;
	A['PREVIOUS_RECORD_ID']	= b.record_id;
	A['RECORD_ID']			= b.record_id;
	
	$("[data-nu-field][data-nu-prefix='']").each(function( index ){

		o 		= $('#' + this.id);
		val 	= $('#' + this.id).val();
		
		if(o.attr('multiple') == 'multiple'){

			a.push([this.id, Array(val).join('#nuSep#')]);
			A[this.id]	= Array(val).join('#nuSep#');

		}else{

			var format	= String(o.attr('data-nu-format'))[0];
			
			if(format == 'D' && val != ''){

				var d	= new Date(val);
				val		= d.getFullYear() + '-' + nuPad2(Number(Number(d.getMonth())+Number(1))) + '-' + nuPad2(d.getDate());
				

			}
			
			a.push([this.id, val]);
			A[this.id]	= val;

		}

	});
console.log(A);
	return a;

}




function nuDetach(){

	$('.nuDragLineV').each(function( index ) {

		var j	= $(this);
		var o	= j.offset();
		var t	= j.css('top', o.top);
		var l	= j.css('left', o.left);
		
		j.appendTo('body')

	});	
		
}

function nuSearchableList(){

	var bc				= window.nuFORM.getCurrent();
	var col				= bc.browse_columns;
	var no				= bc.nosearch_columns;
	var div				= document.createElement('div');
	
	div.setAttribute('id', 'nuSearchableDialog');

	$('body').append(div);

	$('#nuSearchableDialog')
	.addClass('nuSearchableDialog')
	.css('width', 150)
	.css('height', 30 + (col.length * 20))
	.css('top', 10)
	.css('left', 10);

	for(var i = 0 ; i < col.length ; i++){
		
		var input				= document.createElement('input');
		var search				= bc.nosearch_columns.indexOf(i) == -1 ? false : true;
		
		input.setAttribute('id', 'nuSearchableCheckbox' + i);
		
		$('#nuSearchableDialog').append(input);
		
		$('#' + 'nuSearchableCheckbox' + i)
		.append(input)
		.addClass('nuSearchableDialog')
		.css('left', 5)
		.css('height', 25)
		.css('top', 10 + (i * 27))
		.checked				= search;

		if(search){
			$('#' + 'nuSearchableCheckbox' + i)
			.addClass('nuNoSearch')
		}


		
		var span				= document.createElement('span');

		span.setAttribute('id', 'nuSearchableTitle' + i);
		
		$('#nuSearchableDialog').append(input);

		$('#' + 'nuSearchableTitle' + i)
		.append(span)
		.addClass('nuSearchableDialog')
		.css('width', 25)
		.css('left', 25)
		.css('height', 25)
		.css('top', 10 + (i * 20))
		.html(col[i].title);

	}

}

function nuWidestTitle(c){
	
	var w	= 120;

	for(var i = 0 ; i < c.length ; i++){
		w	= Math.max(nuGetWordWidth(c[i].title), w);
	}
	
	return w + 70;
	
}


function nuGetSearchList(){
	
	$('body').append('<div id="nuModal"></div>')
	
	var n		= nuFORM.getProperty('nosearch_columns');
	var c		= nuFORM.getProperty('browse_columns');
	var d 		= document.createElement('div');

	$('#nuOptionsListBox').remove();

	var widest	= nuWidestTitle(c) + 20;
	
	d.setAttribute('id', 'nuSearchList');
	$('body').append(d);
	$('#' + d.id).css({
		'width'				: widest,
		'height'			: 10 + (c.length * 30),
		'top'				: 138,
		'left'				: (window.nuBrowseWidth - widest) / 2,
		'position'			: 'absolute',
		'text-align'    	: 'left'
	})
	.html('<span style="font-weight:bold">&nbsp;&nbsp;Include When Searching<\span>')
	.addClass('nuOptionsList');
	
	var x = document.createElement('div');
	
	x.setAttribute('id', 'nuSearchListClose');
	
	$('#' + d.id).append(x);
	
	$('#' + x.id).css({
		'width'				: 20,
		'height'			: 20,
		'top'				: 3,
		'right'				: 3,
		'position'			: 'absolute',
		'text-align'    	: 'center'
	})
	.attr('onclick', '$("#nuSearchList").remove();$("#nuModal").remove();')
	.html('<img id="nuOptionListClose" src="graphics/nuclose.png" width="20px" height="20px">')
	.addClass('nuSearchListClose');
	
	for(var i = 0 ; i < c.length ; i++){
		
		var isChecked	= true;
		
		if($.inArray(i,nuFORM.getCurrent().nosearch_columns) != '-1') {
			isChecked	= false;
		}
		
		var p 			= document.createElement('input');

		p.setAttribute('id', 'nuSearchList' + i);
		p.setAttribute('type', 'checkbox');

		$('#' + d.id).append(p);

		$('#' + p.id).css({
			'width'			: 20,
			'height'		: 20,
			'top'			: 30 + (i * 20),
			'left'			: 5,
			'position'		: 'absolute',
			'text-align'    : 'left'
		})
		.prop('checked', isChecked)
		.attr('onclick', 'nuSetSearchColumn();')
		.addClass('nuSearchCheckbox');
		
		var t = document.createElement('div');

		t.setAttribute('id', 'nuSearchText' + i);

		$('#' + d.id).append(t);

		$('#' + t.id).css({
			'height'		: 20,
			'top'			: 33 + (i * 20),
			'left'			: 40,
			'position'		: 'absolute',
			'text-align'    : 'left'
		})
		.attr('onclick', 'nuClickSearchColumn(event);')
		.click(function() {
			
			var cb = $('#nuSearchList' + i).attr('checked');
			
			$('#' + 'nuSearchList' + i).attr('checked', !cb);
			
			nuSetSearchColumn();
			
		})
		.addClass('nuOptionsItem')
		.html(c[i].title);
		
		var shortcut_key 	= document.createElement('div');
		var shortcut_key_id = 'nuSearchTextShortcutKey' + i.toString();
		
		shortcut_key.setAttribute('id', shortcut_key_id);

		$('#nuSearchList').append(shortcut_key);
		var	prop			= {'position' : 'absolute', 'text-align' : 'left', 'height' : 15};

		$('#' + shortcut_key.id)
		.css(prop)
		.css({'top'	: 33 + (i * 20),'left' : widest - 80})
		.html('Ctrl+Shift+' + i)
		.addClass('nuOptionsItemShortcutKey');
	}
	
}

function nuTotal(f){
		return Number(nuFORM.calc(f));
}


function nuMessage(o, type){
	

	if(arguments.length > 1){
		
		var icon = '';

		if(type == 'error')	{icon	= 'nuerror';}
		if(type == 'message'){icon	= 'numessage';}

		var im	= ['<img src="' + icon + '" width="30px" height="30px" style="position:absolute;left:10px;top:10px"><br>'];

		o		= im.concat(o);
		
	}

	var par		= window.parent.document;
	
	$('#nuAlertDiv', par).remove();

	if(o.length == 0){
		return;
	}
	
	var c		= " onclick=\"$('#nuAlertDiv').remove();\"";
	var widest	= 5;

	for(var i = 0 ; i < o.length ; i++){
		widest	= Math.max(widest, nuGetWordWidth(o[i]));
	}

	widest		= Math.min(widest + 200, 1000);
	
	var l		= (screen.width - widest) / 2;
	$('body', par).append("<div id='nuAlertDiv' class='nuMessage' style='overflow:hidden;width:" + widest + "px;left:" + l + "px' ></div>")
	$('#nuAlertDiv', par).prepend('<img id="nuOptionListClose" src="graphics/nuclose.png" class="nuSearchListClose" style="position:absolute;top:5px;left:5px" ' + c + ' width="20px" height="20px">')
	
	
	for(var i = 0 ; i < o.length ; i++){
		
		$('#nuAlertDiv', par).append(o[i]);
		$('#nuAlertDiv', par).append('<br>');
		
	}

}

/*

function nuBuildFormula(p, f){

	var bits		= f.split(' ');
	
	for(var i = 0 ; i < bits.length ; i++){
		
		var bit		= String(bits[i]);
		
		if(bit.substr(0,7) == 'nuTotal'){
			bits[i]	= nuRebuild_nuTotal(p, bit);
		}
		
	}	
console.log(bits);

	
	return bits.join(' ');
	
}


function nuRebuild_nuTotal(p, s){
	
	var t	= s.trim();
	t		= t.substr(0, t.length-1)
	t		= t.substr(8)
	t		= t.split('.');
				
	if(t.length == 1){
		
		var O	= String(t[0]).replaceAll("'", '');
		var n	= "nuTotal('" + p + O + "')";
		
	}else{
		
		var S	= String(t[0]).replaceAll("'", '');
		var O	= String(t[1]).replaceAll("'", '');
		var n	= "nuTotal('" + S + '.' + O + "')";
		
	}
	
	return n;
	
}
*/

function nuWindowPosition(){
	
	var d						= $('#nuDragDialog', window.parent.document);
	
	var l						= parseInt(d.css('left'));
	var t						= parseInt(d.css('top'));
	var w						= parseInt(d.css('width'));
	var h						= parseInt(d.css('height'));

	window.nuDialogSize			= {left:l, top:t, width:w, height:h};

	var d						= $('#nuWindow', window.parent.document);
	
	var w						= parseInt(d.css('width'));
	var h						= parseInt(d.css('height'));

	window.nuWindowSize			= {width:w, height:h};
	
}

