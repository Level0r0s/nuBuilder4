
function nuBuildForm(f){

	nuCheckFormProperties(f);

	if(f.form_id == ''){
		
		nuLogin();
		return;
		
	}
	
	window.nuSESSION				= f.session_id;
	window.onbeforeunload			= null;
	window.nuSUBFORMROW				= [];
	window.nuSUBFORMJSON			= [];
	window.nuHASH					= [];                       //-- remove any hash variables previously set.
	window.nuEDITED					= false;
	
	nuSetBODY(f);
	
	if(f.schema.length != 0){  						//-- its an Object (load these once,  at login)

		nuFORM.schema				= f.schema;
		window.nuLANGUAGE			= f.translation;
		
	}
	
	var b 							= window.nuFORM;

	b.current.form_id 				= f.form_id;
	b.current.record_id 			= f.record_id;
	b.current.session_id 			= f.session_id;
	b.current.user_id 				= f.user_id;
	b.current.title 				= f.title;
	b.current.row_height 			= f.row_height;
	b.current.rows 					= f.rows;
	b.current.browse_columns 		= f.browse_columns;
	b.current.browse_rows 			= f.browse_rows;
	b.current.pages 				= f.pages;
	b.setCurrent();

	nuResizeiFrame(f.dimensions, f.record_id);

	nuAddHolder('nuActionHolder');
	nuAddHolder('nuBreadcrumbHolder');
	
	if(f.record_id != ''){
		nuAddHolder('nuTabHolder');
	}
	
	nuAddHolder('nuRecordHolder');
	nuAddBreadcrumbs();
	nuAddEditTabs('', f);
	nuOptions('', f.form_id, 'form', f.global_access);

	nuAddActionButtons(f);
	nuRecordProperties(f, '');

	if(f.record_id != ''){
		nuBuildEditObjects(f, '', '', f);
	}

	nuGetStartingTab();
	nuAddJavascript(f);
	$('#nuSearchField').focus();

    if(f.record_id == '-2'){
        nuCreateDragOptionsBox(f);
	}
	
}


function nuSetBODY(f){
	
	$('body').html('');
	$('body').removeClass('nuBrowseBody nuEditBody');
	
	if(f.record_id == ''){
		$('body').addClass('nuBrowseBody');
	}else{
		$('body').addClass('nuEditBody');
	}
	
}


function nuResizeiFrame(d, r){

	if(r == ''){
		
		var h			= Number(d[0]);
		var w			= Number(d[1]);

		$('#nuDragDialog', window.parent.document).
		css({'height'		:	(h - 0) + 'px',
			'width' 		:	(w - 0) + 'px',
			'visibility' 	:	'visible'
		});

		$('#nuLookup', window.parent.document).
		css({'height'		:	(h - 40) + 'px',
			'width' 		:	(w - 10) + 'px'
		});
			
	}else{
		
		var h			= Number(d[2]);
		var w			= Number(d[3]);
		
		$('#nuDragDialog', window.parent.document).
		css({'height'		:	(h - 0) + 'px',
			'width' 		:	(w - 0) + 'px',
			'visibility' 	:	'visible'
		});

		$('#nuLookup', window.parent.document).
		css({'height'		:	(h - 40) + 'px',
			'width' 		:	(w - 10) + 'px'
		});
			
	}
}


function nuDefine(v){

	if(v === undefined){
		v	= '';
	}
	
	return v;
	
}

function nuAddActionButtons(f){

	var draggable = 0;
	
	if(window.nuFORM.current.record_id == '-2') {
		draggable = 1;
	}

	var b 		= f.buttons;

	if(f.record_id == ''){

		var s 	= nuDefine(window.nuFORM.current.search);
		var f 	= nuDefine(window.nuFORM.current.filter);
		$('#nuActionHolder').append("<input id='nuSearchField' type='text' class='nuSearch' onkeypress='nuSearchPressed(event)' value='" + s + "'>&nbsp;");
		$('#nuActionHolder').append("<input id='nuFilter' style='visibility:hidden;width:0px' value='" + f + "'>");
		
		windowAction = '';
		if(window.nuTYPE == 'lookup') {
			windowAction = window.nuTYPE;
		}
		
		$('#nuActionHolder').append("<input id='nuSearchButton' type='button' class='nuActionButton ' value='Search' onclick='nuSearchAction(\""+windowAction+"\")'>&nbsp;");
		
	}

	for(var i = 0 ; i < b.length ; i++){
		
		var reportID = '';
		
		if(b[i][0] == 'Run' || b[i][0] == 'Email') {
			reportID = '\"' + window.nuFORM.current.record_id + '\"';
		}
		
		if(!draggable) {
			$('#nuActionHolder').append("<input id='nu" + b[i][1] + "Button' type='button' class='nuActionButton' value='" + b[i][0] + "' onclick='nu" + b[i][1] + "Action(" + reportID + ")'>&nbsp;");
		}
		
	}
	
	if(window.parent.length == 0){ //-- only if Main Form
		$('#nuActionHolder').append("<img id='thelogo' src='logo.png' style='position:absolute;right:20px'>");
	}
	
}

function nuBuildEditObjects(f, p, o, prop){

	if(typeof(f.objects) != 'object'){return;}
	
	var l 			= 3;
	var draggable 	= 0;
	
	if(window.nuFORM.current.record_id == '-2'){
		draggable 	= 1;
	}
	
	for(var i = 0 ; i < f.objects.length  ; i++){
		
		if(!draggable) {

			var t                       = prop.objects[i].type;
			f.objects[i].parent_type    = o == '' ? '' : o.subform_type;

			if(t == 'input' || t == 'display' || t == 'lookup' || t == 'textarea'){
				
				l = l + nuINPUT(f, i, l, p, prop);
				
			}else if(t == 'run'){
				
				l = l + nuRUN(f, i, l, p, prop);
				
			}else if(t == 'html'){
				
				l = l + nuHTML(f, i, l, p, prop);
				
			}else if(t == 'select'){
				
				l = l + nuSELECT(f, i, l, p, prop);
				
			}else if(t == 'subform' && p == ''){
				
				l = l + nuSUBFORM(f, i, l, p, prop);
				
			}else if(t == 'word'){
				
				l = l + nuWORD(f, i, l, p, prop);
				
			}
			if(prop.objects[i].display == 0){$('#' + p + prop.objects[i].id).css('visibility', 'hidden');}
			
			l 	= l + 2;
		
		} else{
			
			$("body").css("overflow", "hidden");
			l = l + nuDRAG(f, i, l, p, prop);
			
		}
		
	}
	
}

function nuAddJSObjectEvents(i, j){

	var o		= document.getElementById(i);
	var on		= ['onclick','onfocus','onblur','onchange'];

	for(var J = 0 ; J < j.length ; J++){

		var pos	= on.indexOf(j[J].event);

		if(pos != -1){

			var code 	= o.getAttribute(j[J].event);
			
			code		= code === null ? '' : code;
			o.setAttribute(j[J].event, code + ';' + j[J].js);

		}

	}

}

function nuRecordProperties(w, p, l){

	var de    = p + 'nuDelete';
	var fh    = p + 'nuRecordHolder';                       //-- Edit Form Id
	var chk   = document.createElement('input');
	var sf    = p.substr(0, p.length - 3);

	chk.setAttribute('id', 		de);
	chk.setAttribute('title', 	'Delete This Row When Saved');
	chk.setAttribute('type', 	'checkbox');
	chk.setAttribute('onclick', 'nuEditedReport()');

	$('#' + fh)
	.append(chk)
	.addClass('nuSection')
	.attr('data-nu-form-id', w.id)
	.attr('data-nu-primary-key', w.record_id)
	.attr('data-nu-foreign-key', w.foreign_key)
	.attr('data-nu-foreign-field', p == '' ? '' : w.foreign_key_name);

	if(arguments.length == 3){
		
		$('#' + de).css({'top'		: 3, 
						'left'		: Number(l) + 5, 
						'position' 	: 'absolute', 
						'visibility'	: 'visible'})
		.prop('checked', w.record_id == -1)
		.attr('data-nu-checkbox', sf);
		
	}else{
		
		$('#' + de).css('visibility', 'hidden')
		.prop('checked', false)
		.attr('data-nu-checkbox', sf);
		
	}
	
}

function nuDRAG(w, i, l, p, prop){

	var id   = p + prop.objects[i].id;
	var ef   = p + 'nuRecordHolder';
	var drg 		= document.createElement('div');
	drg.setAttribute('id', id);
	
	$('#' + ef).append(drg);
	
	$('#' + id).css({'top'       	: Number(prop.objects[i].top),
					'left'		: Number(prop.objects[i].left),
					'width'		: Number(prop.objects[i].width),
					'height'		: Number(prop.objects[i].height),
					'text-align'	: prop.objects[i].align,
					'position'	: 'absolute',
					'overflow': 'hidden'
	}).addClass('nuDragOptionsField');
	
	$('#' + id).text(id);
	$('#' + id).attr('data-drag',1);
    $('#' + id).attr('data-nu-object-id', prop.objects[i].object_id)
		
	nuAddDataTab(id, prop.objects[i].tab, p);
		
	return Number(prop.objects[i].width);
}

function nuINPUT(w, i, l, p, prop){
	
	var id			= p + prop.objects[i].id;
	var ef			= p + 'nuRecordHolder';                 //-- Edit Form Id
	var ty			= 'textarea';
	var vis			= prop.objects[i].display == 0 ? 'hidden' : 'visible';

	if(prop.objects[i].type != 'textarea'){         		//-- Input Object
		ty			= 'input';
	}

	var inp  		= document.createElement(ty);
	var input_type	= prop.objects[i].input;

	inp.setAttribute('id', id);

	$('#' + ef).append(inp);

	if(prop.objects[i].parent_type == 'g'){        		//--  in a grid subform
		
		prop.objects[i].left 	= l;
		prop.objects[i].top 	= 3;
		
	}else{

		if(input_type != 'button'){						//-- Input Object
			nuLabel(w, i, p, prop);
		}
		
	}

	if(ty == 'input'){	//-- Input Object

		inp.setAttribute('type', prop.objects[i].input);

		if(input_type == 'button'){
			$('#' + id).addClass('nuButton');
		}

	}
	
	nuAddDataTab(id, prop.objects[i].tab, p);

	$('#' + id).css({'top'      : Number(prop.objects[i].top),
					'left'		: Number(prop.objects[i].left),
					'width'		: Number(prop.objects[i].width),
					'height'	: Number(prop.objects[i].height),
					'text-align': prop.objects[i].align,
					'position'	: 'absolute'
	})
	
	.attr('onchange', 'nuOnChange(this,event)')
	.attr('data-nu-field', input_type == 'button' ? null :prop.objects[i].id)
	.attr('data-nu-object-id', w.objects[i].object_id)
	.attr('data-nu-format', w.objects[i].format)
	.attr('data-nu-prefix', p)
	.attr('data-nu-subform-sort', 1)
	.prop('readonly', prop.objects[i].read == '1' ? 'readonly' : '');
	
	if(w.objects[i].value == ''){             //== check for Cannot be left blank
		$('#' + id).addClass('nuEdited');
	}
	
	$('#' + id).val(w.objects[i].value);

	if(w.objects[i].format != ''){
		
		if(nuFormats[w.objects[i].format].type == 'date'){
			$('#' + id).attr('onclick', 'nuPopupCalendar(this);');
		}
		
	}

	nuAddJSObjectEvents(id, prop.objects[i].js);
	
	if(prop.objects[i].type == 'display'){
		
		$('#' + id).addClass('nuReadonly');
		$('#' + id).prop('readonly', true);
		
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
		.attr('data-nu-subform-sort', 1)
		.attr('onkeyup', 'nuLookupKeyUp(event)')
		.attr('onkeydown', 'nuLookupKeyDown(event)')
		.attr('onblur', 'nuLookupBlur(event)')
		.attr('onfocus', 'nuLookupFocus(event)')
		.attr('onchange', "$('#' + id).removeClass('nuValidate')")
		.css('visibility', vis)
		.addClass('nuLookupCode');
		
		w.objects[i].values[0][0]	= p + w.objects[i].values[0][0];
		w.objects[i].values[1][0]	= p + w.objects[i].values[1][0];
		w.objects[i].values[2][0]	= p + w.objects[i].values[2][0];
		
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
		.attr('onclick', 'nuBuildLookup(this,[])')
		.addClass('nuLookupButton')
		.html('<img border="0" src="lookup.png" class="nuLookupImg">')
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
		
		nuPopulateLookup3(w.objects[i].values);
		
		return Number(prop.objects[i].width) + Number(prop.objects[i].description_width) + 30;
		
	}else{
		
		return Number(prop.objects[i].width);
		
	}
	
}

function nuHTML(w, i, l, p, prop){

	var id  = p + prop.objects[i].id;
	var ef  = p + 'nuRecordHolder';                       //-- Edit Form Id
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
	
	return Number(prop.objects[i].width);

}


function nuWORD(w, i, l, p, prop){

	var id  = p + prop.objects[i].id;
	var ef  = p + 'nuRecordHolder';                       //-- Edit Form Id
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

	return Number(prop.objects[i].width);

}

function nuRUN(w, i, l, p, prop){

	var id  = p + prop.objects[i].id;
	var ef  = p + 'nuRecordHolder';                       //-- Edit Form Id
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
	
		$('#' + id).attr({
					'type'		: 'button',
					'value'		: prop.objects[i].label,
					'onclick'	: "nuGetForm('" + prop.objects[i].form_id + "','" + prop.objects[i].record_id + "','" + prop.objects[i].filter + "')"
		})
		.addClass('nuButton');
		
	}else{

		var F	= prop.objects[i].form_id;
		var R	= prop.objects[i].record_id;
		var L	= prop.objects[i].filter;
		var P	= window.location.pathname;
		var f	= P.substring(0,P.lastIndexOf('/') + 1)

		window.nuOPENER.push(new nuOpener(F, R, L));

		var open = window.nuOPENER.length - 1;
		var u	= window.location.origin + f + prop.objects[i].src;
		$('#' + id).attr('src', u).removeClass('').addClass('nuIframe');

	}

	return Number(prop.objects[i].width);
	
}

function nuSELECT(w, i, l, p, prop){

	var id  = p + prop.objects[i].id;
	var ef  = p + 'nuRecordHolder';                       //-- Edit Form Id
	
	if(prop.objects[i].parent_type == 'g'){
		
		prop.objects[i].left = l;
		prop.objects[i].top = 3;
		
	}else{
		nuLabel(w, i, p, prop);
	}

	var sel = document.createElement('select');
	
	sel.setAttribute('id', id);

	$('#' + ef).append(sel);

	nuAddDataTab(id, prop.objects[i].tab, p);

	$('#' + id).css({'top'     : Number(prop.objects[i].top),
					'left'     : Number(prop.objects[i].left),
					'width'    : Number(prop.objects[i].width),
					'position' : 'absolute'
	})
	.attr('onchange', 'nuOnChange(this,event)')
	.attr('data-nu-field', prop.objects[i].id)
	.attr('data-nu-object-id', w.objects[i].object_id)
	.attr('data-nu-format', '')
	.attr('data-nu-subform-sort', 1)
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

		for(var n = 0 ; n < prop.objects[i].options.length ; n++){

			if(values.indexOf(prop.objects[i].options[n][0]) == -1){
				
				$('#' + id).append('<option  value="'+prop.objects[i].options[n][0]+'">'+prop.objects[i].options[n][1]+'</option>');
				
			}else{
				
				$('#' + id).append('<option selected="selected "value="'+prop.objects[i].options[n][0]+'">'+prop.objects[i].options[n][1]+'</option>');
				
			}

		}
	}
	
	nuAddJSObjectEvents(id, prop.objects[i].js);

	return Number(prop.objects[i].width);
	
}

function nuSUBFORM(w, i, l, p, prop){
	
    var SF  		= prop.objects[i];						//-- First row
    var SFR 		= w.objects[i];							//-- All rows
	var id  		= p + SF.id;
	var ef  		= p + 'nuRecordHolder';					//-- Edit Form Id
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
	
	$('#' + id).css({'top'         : Number(SF.top),
					'left'       	: Number(SF.left),
					'width'      	: Number(SF.width),
					'height'		: Number(SF.height) + 2,
					'overflow-x'	: 'hidden',
					'overflow-y'	: 'hidden'
	})
	.attr('data-nu-primary-key', SF.object_id)
	.attr('data-nu-subform-parent', p)
	.attr('data-nu-subform', 'true')
	.addClass('nuSubform');

	nuGetSubformRowSize(SF.forms[0].objects, SF, id);

	if(SF.subform_type == 'f'){
		var rowHeight   	= Number(SF.dimensions[4]);
		var rowWidth    	= Number(SF.dimensions[5]);
	}else{
		var rowHeight   	= Number(SF.dimensions[6]);
		var rowWidth    	= Number(SF.dimensions[7]);
	}
	
    if(SF.delete == '1'){

		rowWidth 		= rowWidth - 3;
		
    }else{
		
        rowWidth 			= rowWidth;
		
    }

	var rowTop      = 50;

	if(SF.subform_type == 'f'){
        
        rowTop = 33;

		var tabId  = id + 'nuTabHolder';
		var tabDiv = document.createElement('div');
		tabDiv.setAttribute('id', tabId);
		$('#' + id).append(tabDiv);
		$('#' + tabId).css({'top'      : 0,
						'left'       	: 0,
						'width'      	: rowWidth,
						'height'     	: rowTop,
						'overflow-x'	: 'hidden',
						'overflow-y'	: 'hidden',
						'position'	: 'absolute',
						'padding'	: '12px 0px 0px 0px'
		}).addClass('nuTabHolder');

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
	
	rowTop 	= 0;
	var even	= 0;

	for(var c = 0 ; c < fms.length ; c++){

		var prefix = id + nuPad3(c);
		var frmId  = prefix + 'nuRecordHolder';
		var frmDiv = document.createElement('div');
		frmDiv.setAttribute('id', frmId);
		$('#' + scrId).append(frmDiv);
		$('#' + frmId).css({'top'       : Number(rowTop),
						'left'          : 0,
						'width'         : Number(rowWidth),
						'height'        : Number(rowHeight),
						'position'      : 'absolute'
		})
		.attr('data-nu-subform-sort', 1)
		.addClass('nuSubform' + even);

		nuBuildEditObjects(SFR.forms[c], prefix, SF, SF.forms[0]);
		nuRecordProperties(SF.forms[c], prefix, rowWidth - 40);

		rowTop 	= Number(rowTop) + Number(rowHeight);
		even		= even == '0' ? '1' : '0'

	}
	
	if(SF.add == 1 && prefix != ''){
		nuNewRowObject(String(prefix));
	}
	
	return Number(SF.width);

}

function nuNewRowObject(p){

	var sf	= p.substr(0, p.length - 3);
	
	if($('#' + p + 'nuRecordHolder').length == 0){return;}
	
	var h	= document.getElementById(p + 'nuRecordHolder').outerHTML;
	window.nuSUBFORMROW[sf]	= String(h.replaceAll(p, '#nuSubformRowNumber#', true));
	
}


function nuSubformLastRow(t){

	var i					= String($('#' + t.id).parent().attr('id'));
	var p					= i.substr(0, i.length - 17);
	var s					= parseInt(i.substr(11,3)) + 1;
	var n					= $('#' + p + nuPad3(s) + 'nuRecordHolder').length;

	return n == 0;
	
}


function nuRecordHolderObject(t){
	
	var h		= 'nuRecordHolder';
	var p		= $('#' + t.id).parent();
	var i		= String(p.attr('id'));
	var c		= 0;

	this.form	= i.substr(0, i.length - 3 - h.length);
	this.strNo	= i.substr(this.form.length, 3);
	this.intNo	= Number(this.strNo);
		
	while ($('#' + this.form + nuPad3(this.intNo + c) + h).length != 0){c++;}
	
	this.rows	= this.intNo + c;
	this.top		= parseInt(p.css('height')) * this.rows;
	var s		= this.form  + nuPad3(this.intNo + 1) + h;
	this.last	= $('#' + s).length == 0;
	var s		= this.form  + nuPad3(this.rows - 1);
	this.html	= window.nuSUBFORMROW[s];
	this.even	= parseInt(this.rows/2) == this.rows/2 ? '0' : '1';
	
}

function nuAddSubformRow(t, e){
	
	e.stopPropagation();

	var o = new nuRecordHolderObject(t);
	
	if(!o.last){return;}
	
	var h	= window.nuSUBFORMROW[o.form].replaceAll('#nuSubformRowNumber#', o.form + nuPad3(o.rows), true);
	
	$('#' + o.form + 'scrollDiv').append(h);
	
	$('#' + o.form + nuPad3(o.rows) + 'nuRecordHolder').addClass('nuSubform'+ o.even);
	$('#' + o.form + nuPad3(o.rows) + 'nuRecordHolder').css('top', o.top);
	$('#' + o.form + nuPad3(o.rows)).attr('data-nu-primary-key', '-1');
	$('#' + o.form + nuPad3(o.rows) + 'nuDelete').prop('checked', true);
	$('#' + o.form + nuPad3(o.rows-1) + 'nuDelete').prop('checked', false);
	
	$('.nuTabSelected').click();
	
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
	var ef     = p + 'nuRecordHolder';                       //-- Edit Form Id
	var lab    = document.createElement('label');
	var lwidth = nuGetWordWidth(nuTranslate(prop.objects[i].label));
	
	lab.setAttribute('id', id);
	lab.setAttribute('for',  p + prop.objects[i].id);
	
	$('#' + ef).append(lab);

	nuAddDataTab(id, prop.objects[i].tab, p);
	
	var l = String(nuTranslate(prop.objects[i].label));
	
	$('#' + id).css({'top'		: Number(prop.objects[i].top),
		              'left'	: Number(prop.objects[i].left) - lwidth - 7,
		              'width'	: Number(lwidth)
	})
	.html(l)
	.attr('ondblclick','nuPopup("nuobject", "' + prop.objects[i].object_id + '")');
debugger;
	if(prop.objects[i].valid == 1){$('#' + id).addClass('nuBlank');}
	if(prop.objects[i].valid == 2){$('#' + id).addClass('nuDuplicate');}
	
}

function nuPopulateLookup3(v){
	
		for(var i = 0 ; i < v.length ; i++){
			$('#' + v[i][0]).val(v[i][1]);
		}
		
}

function nuAddHolder(t){

	var d = document.createElement('div');
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
    
	var titleId  = id + o.id;
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
	.click(function() {
		nuSortSubform(id, (col+1), this);})
	.html(o.label)
	.attr('data-nu-sort',1)
	.addClass('nuTitleHover')
	.addClass('nuTabHolder');

}

function nuBuildSubformDeleteTitle(l, id, subform_id){
    
	var titleId  = id + 'DeleteSF';
    	var div = document.createElement('div');
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
    	}).html('<img id="nuMoveable" src="numove.png" style="padding:8px;width:12px;height:12px;" title="Arrange Objects"><br>Delete')
	.addClass('nuTabHolder')
	.attr('onclick','nuPopup("'+subform_id+'", "-2");');

}

function nuAddBreadcrumbs(){
	
	var b	= window.nuFORM.last + 1;
	
    for(var i = 0 ; i < b ; i++){
        
		nuAddBreadcrumb(i, b);

    }
    
}

function nuAddEditTabs(p, w){
	
	nuSetStartingTab(p);
	
    for(var i = 0 ; i < w.tabs.length ; i++){

		nuEditTab(p, w.tabs[i], i);

    }
	
	var l = 10;
	
    for(var i = 0 ; i < w.browse_columns.length ; i++){

		l = nuBrowseTitle(w.browse_columns, i, l);

    }

	var f = nuFORM.current.nosearch_columns;

	for(var i = 0 ; i < nuFORM.current.nosearch_columns.length ; i++){
		$('#nusort_' + f[i]).addClass('nuNoSearch');
	}
	
	window.nuBrowseWidth	= l;
	
	nuDetach(event);

	if(w.browse_columns.length > 0){
		
		nuBrowseTable();
		nuOptions('nuBrowseTitle' + (w.browse_columns.length - 1), w.form_id, 'browse', w.global_access);
	
	}
    
}

function nuSetStartingTab(p){

	var t = window.nuFORM.current.tab_start;
	
	for(var i = 0 ; i < t.length ; i++){
		if(t[i].prefix == p){return;}
		
	}
	
	t.push(new nuStartingTab(p));
	
}

function nuGetStartingTab(){

	var t = window.nuFORM.current.tab_start;
	
	for(var i = 0 ; i < t.length ; i++){
		
		$('#' + t[i].prefix + 'nuTab' + t[i].tabNumber).addClass('nuTabSelected');
		$('#' + t[i].prefix + 'nuTab' + t[i].tabNumber).click();
		
	}
	
}


function nuSetTab(pthis){

	var t = window.nuFORM.current.tab_start;
	
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

function nuAddBreadcrumb(i, l){

	var last 	= (i + 1 == l);                  //-- last breadcrumb

	var bc 		= window.nuFORM.breadCrumb[i];
	var bcId 	= 'nu_bc_' + i;
	
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

function nuEditTab(p, t, i){

    var tabId  = p + 'nuTab' + i;
	var div    = document.createElement('div');
	div.setAttribute('id', tabId);
	
	$('#' + p + 'nuTabHolder').append(div);
	$('#' + tabId)
	.html(nuTranslate(t.title))
	.addClass('nuTab')
	.attr('data-nu-tab-filter', i)
	.attr('data-nu-form-filter', p)
	.attr('onclick','nuSelectTab(this)');
	

}

function nuOptions(p, f, t, access){

	var R		= window.nuFORM.current.record_id;
	
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
		.attr('src', 'nuoptions.png')
		.attr('title', 'Options')
		.attr('onclick', 'nuGetOptionsList("' + f + '", this, "' + p + '", "' + access + '")')
		.css({'top'			: 0, 
		'right' 			: 0, 
		'position' 			: 'absolute', 
		'opacity'			: 0.5,
		'border-style' 		: 'none'})
		.addClass('nuIcon')
		.hover(function(){
			$( this ).attr('src', 'nuoptions_red.png');
		}, function(){
			$( this ).attr('src', 'nuoptions.png');
		});

		if(t == 'form'){
			$('#' + id)
			.css('top', 66)
			.css('right', 10);
		} else {
			$('#' + id)
			.css('top', 0)
			.css('right', 0);
		}
		
	}
   
}

function nuGetOptionsList(f, t, p, a){

	var icon	= $('#' + t.id);
	var off		= icon.offset();
	var top		= off.top;
	var left	= off.left;
	var u		= window.nuFORM.current.user_id;
	var list	= [];
	var ul		= '<ul>';
	
	if(nuFORM.current.record_id == ''){
		list.push(['Searchable Columns', 	'nuGetSearchList()', 						'nusearchcolumns.png']);
	}

	if(a == 1){
		
		list.push(['Arrange Objects', 		'nuPopup("' + f + '", "-2")', 				'nuarrange.png']);
		list.push(['Form Properties', 		'nuPopup("nuform", "' + f + '")', 			'nuformprop.png']);
		list.push(['Form Object List', 		'nuPopup("nuobject", "", "' + f + '")', 	'nuobjectlist.png']);
		
	}else{
		
		list.push(['Change Login', 			'nuPopup("nupassword", "' + u + '", "")', 	'nuobjectlist.png']);
		
	}

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
	'left' 			: left +20, 
	'height'		: 20 + (list.length * 20),
	'width'			: 1000,
	'position'		: 'absolute',
	'text-align' 	: 'left'})
	.html('<span style="font-weight:bold">&nbsp;&nbsp;Options<\span>')
	.addClass('nuOptionsList');


	var id			= 'nuOptionsListDelete';
	var div    		= document.createElement('div');
	
	div.setAttribute('id', id);
	
	var x = document.createElement('div');
	x.setAttribute('id', 'nuSearchListClose');
	$('#nuOptionsListBox').append(x);
	$('#' + x.id).css({
		'width'				: 20,
		'height'			: 20,
		'top'				: 5,
		'right'				: 3,
		'position'			: 'absolute',
		'text-align'    	: 'center'
	})
	.click(function(){
		$( "#nuOptionsListBox" ).remove();
	})
	.html('X')
	.addClass('nuSearchListClose');
	
	nuBuildOptionsList(list, p);
	
}


function nuBuildOptionsList(l, p){												//-- loop through adding options to menu

	var icon		= $('#' + p + 'nuOptions');
	var off			= icon.offset();
	var top			= off.top;
	var left		= off.left;
	var ul			= '';
	var	prop		= {'position': 'absolute','text-align' : 'left' , 'width' : 15, 'height' : 15};
	var width		= 0;
	var height		= 30 + (l.length * 30);
	
	for(var i = 0 ; i < l.length ; i++){
		var width	= Math.max(nuGetWordWidth(l[i][0]), width);
	}

	for(var i = 0 ; i < l.length ; i++){
		
		var t			= l[i][0];
		var f			= l[i][1];
		var c			= l[i][2];
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
		
	}

	$('#nuOptionsListBox').css({'height' : 40 + (l.length * 20), 'width' : 40 + width});
	
	if(nuFORM.current.record_id == ''){
		$('#nuOptionsListBox').css({'left' : left - width - 28, 'top' : top-15});
	}else{
		$('#nuOptionsListBox').css({'left' : left - width - 20, 'top' : top+10});
	}

}


function nuSelectTab(tab){

	$('#nuOptionsList').remove();
	
    var filt = $('#' + tab.id).attr('data-nu-tab-filter');
    var form = $('#' + tab.id).attr('data-nu-form-filter');
	
	var t 	= window.nuFORM.current.tab_start;

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

	var bc		= window.nuFORM.current;
	var un		= bc.nosearch_columns.indexOf(i);
	var id  	= 'nuBrowseTitle' + i;
	var w 		= Number(b[i].width);
	var div 	= document.createElement('div');
	
	div.setAttribute('id', id);
	
	var cb	= '';//<input id="nusearch_' + i + '" type="checkbox" class="nuSearchColumn" checked="checked" onclick="nuSetSearchColumn()" title="Include In Search">';
	
	if(bc.sort == i){
		
		if(bc.sort_direction == 'asc'){
			cb	= cb + '<span id="sort_direction">&#x25BC;</span>';
		}else{
			cb	= cb + '<span id="sort_direction">&#x25B2;</span>';
		}
		
	}
		
	var br	= '<br>';
	var sp	= '<span style="font-size:16px" id="nusort_' + i + '" class="nuSort" onclick="nuSortBrowse(' + i + ')"> ' + b[i].title + ' </span>'
	
	$('#nuRecordHolder').append(div);

	$('#' + id)
	.html(cb + br + sp)
	.addClass('nuBrowseTitle')
	.css({	'text-align'	: 'center',
			'overflow'		: 'visible',
			'width'			: w,
			'left'			: l
	});

	$('#nusearch_' + i).attr('checked', un == -1);
	
	return l + w;
	
}



function nuTitleDrag(i){

	var bc				= window.nuFORM.current;
	var col				= bc.current.browse_columns;
	var rows			= bc.current.rows;
	var h				= bc.current.row_height;
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
	
	var bc					= window.nuFORM.current;
	var totalBrowseHeight	= bc.rows * bc.row_height;

	$('#' + e.target.id).css('height', 400);
	
}




function nuBrowseTable(){

	var bc				= window.nuFORM.current;
	var col				= bc.browse_columns;
	var row				= bc.browse_rows;
	var rows			= bc.rows;
	var h				= bc.row_height;
	var t				= 57 - h;
	var l				= 13;
	
	for(r = 0 ; r < rows ; r++){
	
		l				= 10;
		t				= t + h;
		
		for(c = 0 ; c < col.length ; c++){
		
			var w		= Number(col[c].width);
			var a		= nuAlign(col[c].align);
			var rw		= 'nurow'    + String('00' + r).substr(-3);
			var column	= 'nucolumn' + String('00' + c).substr(-3);
			var id		= rw + String('00' + c).substr(-3);
			var div		= document.createElement('div');
			
			div.setAttribute('id', id);
				
			$('#nuRecordHolder').append(div);

			$('#' + id)
			.attr('data-nu-row', rw)
			.attr('data-nu-column', column)
			.addClass(w == 0 ? '' : 'nuBrowseTable')
			.addClass('nuDragNoSelect')
			.css({	'text-align'	: a,
					'overflow'	: 'hidden',
					'width'		: w-7,
					'top'		: t,
					'left'		: l,
					'height'		: h-7
			});

			if(r < row.length){
				
				$('#' + id)
				.html(row[r][c+1])
				.attr('data-nu-primary-key', row[r][0])
				.attr('onclick', 'nuSelectBrowse(this)')
				.hover(
				
					function() {
						
						var rw = $( this ).attr('data-nu-row');
						$("[data-nu-row='"+rw+"']").addClass('nuSelectBrowse');
						
					}, function() {
						
						var rw = $( this ).attr('data-nu-row');
						$("[data-nu-row='"+rw+"']").removeClass('nuSelectBrowse');
						
					}
				);

			}
			
			l = l + w;

		}
		
	}

	var la	= '<span id="nuLast" onclick="nuGetPage(' + (bc.page_number) + ', \'' + window.nuTYPE + '\')" class="nuBrowsePage">&#9668;</span>';
	var pg	= '&nbsp;Page&nbsp;';
	var cu	= '<input id="browsePage" style="text-align:center;margin:3px 0px 0px 0px;width:40px" onchange="nuGetPage(this.value, \'' + window.nuTYPE + '\')" value="' + (bc.page_number + 1) + '" class="browsePage"/>';
	var of	= '&nbsp;/&nbsp;' + bc.pages + '&nbsp;';
	var ne	= '<span id="nuNext" onclick="nuGetPage(' + (bc.page_number + 2) + ',\'' + window.nuTYPE + '\')" class="nuBrowsePage">&#9658;</span>';
	
	var id	= 'nuBrowseFooter';
	var div  = document.createElement('div');
	div.setAttribute('id', id);
		
	$('#nuRecordHolder').append(div);

	$('#' + id)
	.addClass('nuBrowseTitle')
	.html(la+pg+cu+of+ne)
	.css({	'text-align'	: 'center',
			'width'		: l - 11,
			'top'		: t + h,
			'left'		: 10,
			'height'		: 25,
			'position'	: 'absolute'
	});
	
	nuHighlightSearch();

}

function nuAlign(a){

	if(a == 'l'){return 'left';}
	if(a == 'r'){return 'right';}
	if(a == 'c'){return 'center';}
	
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

	window.nuFORM.setField('nosearch_columns', nosearch);

}

function nuSearchPressed(e){

    if(!e){e=window.event;}

    if(e.keyCode == 13){                    //-- enter key
        $('#nuSearchButton').click();
    }
    
}

function nuSearchAction(t = ''){

	var s	= String($('#nuSearchField').val()).replaceAll("'","&#39;", true);
	var f	= String($('#nuFilter').val()).replaceAll("'","&#39;", true);

	window.nuFORM.current.search	= s;
	window.nuFORM.current.filter	= f;

	if(t == '') {
		
		nuGetBreadcrumb(window.nuFORM.last);
		
	} else {
		
		nuGetBreadcrumb(window.nuFORM.last, t);
		
	}
	
}


function nuAddAction(){

	var bc					= window.nuFORM.current;
	nuGetForm(bc.form_id, '-1');
	
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
	
	var l					= window.nuFORM.current;
	l.filter				= $('#nuFilter').val();
	
	if(c == l.sort){
		l.sort_direction	= l.sort_direction == 'asc' ? 'desc' : 'asc';
	}else{
		
		l.sort				= c;
		l.sort_direction	= 'asc';
		
	}
	
	nuSearchAction();
	
}

function nuGetPage(p, t){

	var P = parseInt('00' + p);
	var B = window.nuFORM.current;
	
	if(P == 0){P = 1;}
	if(P > B.pages){P = B.pages;}
	
	B.page_number = P - 1;
	
	nuSearchAction(t);
	
	
}

function nuSelectBrowse(t){

	var y 		= window.nuTYPE;
	var i 		= window.nuTARGET;
	var p		= $('#' + t.id).attr('data-nu-primary-key');
	var f		= window.nuFORM.current.form_id;
	t.form_id	= f;

	if(y == 'browse'){
		
		nuGetForm(f, p);
		window.nuTYPE = 'browse';
		
	}else if(y == 'lookup'){
		window.parent.nuGetLookupId(p, i);			//-- called from parent window
		
	}else{

		window[y](t);

	}
}


function nuPopulateLookup(fm, target){

	var p 	= $('#' + target).attr('data-nu-prefix');
	var f	= fm.lookup_values;

	for(var i = 0 ; i < f.length ; i++){
		
		$('#' + p + f[i][0]).addClass('nuEdited');
		$('#' + p + f[i][0]).val(f[i][1]);

	}
	
	$('#dialogClose').click();

}

function nuBuildLookupList(fm, e){

	$('#nuLookupList').remove();
	
	var i	= fm.target;
	var v	= fm.lookup_values;
	var tar	= $('#' + i);
	var off	= $('#' + i + 'code').offset();
	var d	= parseInt($('#' + i + 'description').css('width'));
	var t	= off.top;
	var l	= off.left;
	var h	= parseInt(tar.css('height'));
	var w	= parseInt(tar.css('width'));
	var div 	= document.createElement('div');

	div.setAttribute('id', 'nuLookupList');

	$('body').append(div);
	
	$('#nuLookupList').css({'top'		: t + h + 2,
						'left'       	: l,
						'width'      	: w + d + 20,
						'height'     	: Math.min(h * v.length, h * 4),
						'overflow-y'	: 'scroll',
						'position'	: 'absolute',
						'z-index'	: 1000
	})
	.addClass('nuLookupListContainer')
	.html(nuLookupListItems(fm, h, w, d));
	
	$('.nuLookupList').hover(
	
		function() {
			
			$('.nuLookupListSelect').removeClass('nuLookupListSelect');
			$( this ).addClass('nuLookupListSelect');
			
		}, function() {
			$( this ).removeClass('nuLookupListSelect');
		}
		
	);
	
}

function nuLookupListItems(fm, h, w, d){
	
	var v	= fm.lookup_values;
	var ht	= '';
	var srch	= $('#' + fm.target + 'code').val();
	var repl	= '<span class="nuLookupListMatch">' + srch + '</span>';

	for(var i = 0 ; i < v.length ; i++){
		ht 	+= '<div ';
		ht 	+= 'id="nuLookupList' + i + '" ';
		ht 	+= 'class="nuLookupList" ';
		ht 	+= 'data-nu-target="' 	+ fm.target + '" ';
		ht 	+= 'data-nu-down="'	 	+ (i == v.length - 1 	? 0 			: i+1) + '" ';
		ht 	+= 'data-nu-up="' 		+ (i == 0 				? v.length-1	: i-1) + '" ';
		ht 	+= 'data-nu-id="' 		+ v[i][0] + '" ';
		ht 	+= 'data-nu-code="' 		+ v[i][1] + '" ';
		ht 	+= 'data-nu-description="' + v[i][2] + '" ';
		ht 	+= 'onmousedown="nuSelectLookupList(this,event)" ';
		ht 	+= 'class="nuLookupList" ';
		ht 	+= 'style="width:' + (w + d + 3) + 'px;height:' + h + 'px">';
		ht 	+= '<div style="width:' + (w + 20) + 'px;display:inline-block">' + String(v[i][1]).replace(srch, repl) + '</div>';
		ht 	+= v[i][2];
		ht 	+= '<input id="nuListFocus' + i + '" class="nuLookupList" style="width:0px;display:inline-block;visibility:hidden"/>';
		ht 	+= '</div>';
	}

	return ht;
}

function nuSelectLookupList(t, e){
	
	e.preventDefault();
	
	var p = $('#' + t.id).attr('data-nu-id');
	var i = $('#' + t.id).attr('data-nu-target');
	
	nuGetLookupId(p, i);
	
}

function nuLookupKeyDown(e){

	var c		= e.target.id;
	var i		= c.substr(0, c.length - 4);
	var d		= i + 'description';
	var next	= '';
	
	if(e.keyCode == 40 || e.keyCode == 38){
	
		if($('#nuLookupList').length == 0){return;}
		
		if(e.keyCode == 40){
			if($('.nuLookupListSelect').length == 0){
				next	= 0;
			}else{
				next	= $('.nuLookupListSelect').attr('data-nu-down');
			}
		}
		if(e.keyCode == 38){
			if($('.nuLookupListSelect').length == 0){
				next	= $('.nuLookupList').length - 1;
			}else{
				next	= $('.nuLookupListSelect').attr('data-nu-up');
			}
		}
		
		window.nuChangeLookup = false;
		
		$('.nuLookupListSelect').removeClass('nuLookupListSelect');
		$('#nuLookupList' + next).addClass('nuLookupListSelect');
		
		$('#nuListFocus' + next)
		.css('visibility', 'visible')
		.focus()
		.css('visibility', 'hidden');

		$('#' + d).val($('#nuLookupList' + next).attr('data-nu-description'));
		$('#' + i).val($('#nuLookupList' + next).attr('data-nu-id'));
		$('#' + c).val($('#nuLookupList' + next).attr('data-nu-code'))
		.focus();

		window.nuChangeLookup = true;
	
	}else if(e.keyCode == 13){									//-- enter key

		if($('.nuLookupListSelect').length == 0){return;}		//-- nothing selected from Lookup List

		var l 		= new nuLookupObject(i);
		nuGetLookupId($('#' + i).val(), l.id_id);
		$('#nuLookupList').remove();

	}else if(e.keyCode == 9){									//-- tab key

		if(window.nuLookupWas != e.target.value && window.nuChangeLookup){
		
			if($('.nuLookupListSelect').length == 0){				//-- nothing selected from Lookup List
				nuGetLookupCode(e, false);
			}else{
				
				var l = new nuLookupObject(e.target.id);
				nuGetLookupId($('#' + l.id_id).val(), l.id_id);
				$('#nuLookupList').remove();
				
			}

		}
		
		window.nuChangeLookup	= false;
		
	}
	
}

function nuLookupBlur(e){
	
	if(window.nuLookupWas != e.target.value && window.nuChangeLookup){
	
		if($('.nuLookupListSelect').length == 0){				//-- nothing selected from Lookup List
			nuGetLookupCode(e, false);
		}else{
			var l = new nuLookupObject(e.target.id);
			nuGetLookupId($('#' + l.id_id).val(), l.id_id);
			$('#nuLookupList').remove();
		}

	}

}

function nuLookupKeyUp(e){
	
	var a = [7,9,13,37,38,39,40]; 	//-- arrows,tab,enter

	if(a.indexOf(e.keyCode) == -1){

		nuGetLookupCode(e, true);
		
	}

}

function nuLookupFocus(e){

	if(window.nuChangeLookup || window.nuChangeLookup === undefined){
		window.nuLookupWas		= e.target.value;
	}
	
	window.nuChangeLookup		= true;
	
}

function nuChooseOneLookupRecord(e, fm){
	
	var o						= new nuLookupObject(e.target.id);
	var i						= o.id_id;
	var t						= document.getElementById(e.target.id);

	if(fm.lookup_values.length	== 0){nuGetLookupId('', i);}
	if(fm.lookup_values.length	== 1){nuGetLookupId(fm.lookup_values[0][0], i);}
	if(fm.lookup_values.length	 > 1){nuBuildLookup(t,[['search',e.target.value]]);}

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

	var bc		= window.nuFORM.current;
	var exclude	= bc.nosearch_columns;

	var search	= String(bc.search).split(' ')
	.filter(function(a) {return (a != '' && a.substr(0,1) != '-')})
	.sort(function(a,b) {return (a.length > b.length)});
	
	$('.nuBrowseTable').each(function(index){
		
		var col	= Number(String($(this).attr('id')).substr(11));
		
		if(exclude.indexOf(col) == -1){
			
			var h	= String($(this).html());
			
			for(var i = 0 ; i < search.length ; i++){
				h	= h.replaceAll(search[i],'`````' + search[i] + '````', true);
			}

			h 		= h.replaceAll('`````', '<span class="nuBrowseSearch">', true);
			h 		= h.replaceAll('````', '</span>', true);
			
			$(this).html(h);
			
		}
		
	});
	
}

function nuGetFormData(){

	var a	= [];
	var s	= '';
	var f	= $("[id$='nuRecordHolder']");

	f.each(function(index){
		
		var	s	= String($(this).attr('id'));
		
		a.push(s.substr(0, s.length - 14));
		
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

	var fh				= '#' + frm + 'nuRecordHolder';
	var foreign_key		= $(fh).attr('data-nu-foreign-key');
	var primary_key		= $(fh).attr('data-nu-primary-key');
	var form_id			= $(fh).attr('data-nu-form-id');
	var foreign_field	= $(fh).attr('data-nu-foreign-field');
	
	var deleted			= $('#' + frm + 'nuDelete').is(":checked") ? 'Yes' : 'No';
	var fields			= [];
	var values			= [];
	var rows			= [];

	var o				= $("[data-nu-prefix='" + frm + "'][data-nu-field].nuEdited");
	
	o.each(function(index){

		var rw			= String($(this).attr('data-nu-prefix'));
		var rowno		= parseInt(rw.substr(rw.length - 3));
		var f			= $(this).attr('data-nu-field');
		var v			= $(this).val();

		fields.push(f);
		values.push(v);
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

function nuSetFORM(F){
	
	for(var o = 0 ; o < F.objects.length ; o++){
		
		if(F.objects[o].type == 'subform'){
			
			for(var s = 0 ; s < F.objects[o].forms.length ; s++){
				
				nuSetFORM(F.objects[o].forms[s]);
				
			}
			
		}
		
	}
	
}

function nuFormatObject(t){
	
	var f	= $('#' + t.id).attr('data-nu-format');
	
	if(f == ''){return;}
	
}

function nuOnChange(t, event){

	var f	= $('#' + t.id).attr('data-nu-format');
	var p	= $('#' + t.id).attr('data-nu-prefix');
	
	if(f != ''){
		nuReformat(t)
	}
	
	$('#' + p + 'nuDelete').prop('checked', false);
	$('#' + t.id).addClass('nuEdited');
	
	nuEditedReport();
	
	$('#nuCalendar').remove();
	$('#' + t.id).removeClass('nuValidate');

	if(p == ''){return;}
	
	nuAddSubformRow(t, event);
	
}

function nuEditedReport(){
	
	$('#sre_layout').addClass('nuEdited'); //-- hidden field set to class - nuEdited (generally ignored except when editing Reports)
	$('#nuSaveButton').addClass('nuSaveButtonEdited');
	window.nuEDITED	= true;
	
}

function nuDeleteAction(){
	
    if (confirm("Delete This Record?")) {

		$("[id$='nuDelete']").prop('checked', true);
		
		nuUpdateData();
		
    }
	
}

function nuCloneAction(){
	
	$('[data-nu-primary-key]').each(function(index){
		
			$(this).attr('data-nu-primary-key','-1');
			
	});
	
	$('[data-nu-field]').each(function(index){
		
		$(this).addClass('nuEdited');
			
	});
	
	window.nuFORM.current.record_id = -1;

	$('#nuCloneButton').css('visibility','hidden');
	$('#nuDeleteButton').css('visibility','hidden');
	
	$('#nuSaveButton')
	.css('background-color', 'red')
	.css('visibility','visible');
	
}

function nuSaveAction(){
	
	//nuSavingProgressMessage();
	nuUpdateData();

}

function nuSavingProgressMessage(){
	
    var e = document.createElement('div');

    e.setAttribute('id', 'nuProgressSaved');

    $('#nuActionHolder').append(e);
    $('#' + e.id).html('<img src=\'ajax-loader.gif\'/>');
    $('#' + e.id).addClass( 'nuSaveMessageProgress');
	$('#' + e.id).css('position','absolute');
	$('#' + e.id).css('left',(($('#nuActionHolder').width() / 2) - ($('#nuProgressSaved').width() / 2))+ 'px');
    $('#' + e.id).show();
	
	$('#nuActionHolder .nuButton').hide();
	
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
	
	$('#nuActionHolder .nuButton').show();
	
} 

function nuAbortSave(){
	
    $("#nuProgressSaved").hide();
    $('#nuActionHolder .nuButton').show();
	
}

function nuAddJavascript(f){

	var nuLoadEdit		= null;
	var nuLoadBrowse	= null;
	
	var s				= document.createElement('script');
	s.innerHTML 		= "\n" + f.javascript + "\n\n";
	
	$('body').append(s);
	
	if(f.record_id == ''){
		if(nuLoadBrowse != null){nuLoadBrowse();}
	}else{
		if(nuLoadEdit != null){nuLoadEdit();}
	}
	
}

function nuHashFromEditForm(){

	var a			= [];
	var b			= window.nuFORM.current;
	var o 			= {};
	var val 		= '';
	
	for (var key in b) {
		a.push([key, b[key]]);
	}	
		
	a.push([b.form_id, b.record_id]);		//-- first element is Form and Record ID
	a.push(['FORM_ID', b.form_id]);
	a.push(['PREVIOUS_RECORD_ID', b.record_id]);
	a.push(['RECORD_ID', b.record_id]);
	
	$("[data-nu-field][data-nu-prefix='']").each(function( index ){

		o 		= $('#' + this.id);
		val 	= $('#' + this.id).val();
		
		if(o.attr('multiple') == 'multiple'){

			a.push([this.id, Array(val).join('#nuSep#')]);

		}else{

			var format	= o.attr('data-nu-format');
			var F		= nuFormats[format == '' ? '0' : format];

			if(F.type == 'date' && val != ''){

				var d	= new Date(val);
				val		= d.getFullYear() + '-' + nuPad2(Number(Number(d.getMonth())+Number(1))) + '-' + nuPad2(d.getDate());
				

			}
			
			a.push([this.id, val]);

		}

	});

	return a;

}


function nuSubformToArray(sf, includeDeleted){

	var s			= {};
	var c			= [];
	var r			= [];
	var f			= [];
	var v			= [];
	var p			= '';
	
	includeDeleted	= arguments.length == 2 ? includeDeleted : 1;
	
	f.push('nuRecordHolder');
	
	$("[id^='" + sf + "000'][data-nu-field]").each(function( index ) {
		
		f.push(String(this.id).substr(sf.length + 3));
		
	});

	f.push('nuDelete');
	
	var cb		= $("[data-nu-checkbox='" + sf + "']");
	
	cb.each(function( index ) {
		
		c		= [];
		p		= this.id.substr(0, this.id.length - 8);

		if(!$('#' + p + 'nuDelete').prop('checked') || includeDeleted == 1){

			c.push($('#' + p + 'nuRecordHolder').attr('data-nu-primary-key'));
			
			for(var i = 1 ; i < f.length - 1 ; i++){
				c.push($('#' + p + f[i]).val());
			}
			
			c.push($('#' + p + 'nuDelete').prop('checked') ? 1 : 0);
			r.push(c);
		
		}
	
	});
	
	s.name		= p.substr(0, p.length - 3);
	s.rows		= r;
	s.columns	= f;

	return s;
	
}

function nuSortSubform(sf, columnNo, pThis){

	var data 			= nuGetSFArrays()
	var colname			= [];
	var columns			= [];
	var theArray		= [];
	var direction		= $('#' + pThis.id).attr('data-nu-sort');
	
	for(var i = 0 ; i < data.length ; i++){
	
		if(data[i].name == sf){
			
			var rows 	= data[i].rows;
			var cols 	= data[i].columns;
			
			for(var r = 0 ; r < rows.length ; r++){
				
				var row = [];
				
				for(var c = 0 ; c < cols.length ; c++){
					row.push(rows[r][c]);
				}
				
				if(direction == 0){
					row.push(rows[r][c-1] + rows[r][columnNo]);
				}else{
					row.push((rows[r][c-1] == 0 ? '1' : '0') + rows[r][columnNo]);
				}
				theArray.push(row);
			
			}
			
			
		}
		
	}

	for(i = 0 ; i < cols.length ; i++){
			columns[cols[i]]	= i;
	}

	var orderByDeleted		= [];
	var sortedColumn		= columns[columnNo];
	var totalColumns		= cols.length - 1;
	var sort				= 0;
	var sortedBy			= 	theArray.sort(function(b, a){
		
								var l	= a.length - 1;

								if(direction == 1){
									if(String(a[l]) > String(b[l])){sort = 1;}
									if(String(a[l]) < String(b[l])){sort = -1;}
								}
								
								if(direction == 0){
									if(String(a[l]) > String(b[l])){sort = -1;}
									if(String(a[l]) < String(b[l])){sort = 1;}
								}
								
								return sort;
								
							});

	$('#' + pThis.id).attr('data-nu-sort', direction == 1 ? 0 : 1);
							
	for(var r = 0 ; r < sortedBy.length ; r++){
	
		var currentRow 	= sortedBy[r];
		var rowno		= nuPad3(r);
		
		$('#' + sf + rowno + 'nuRecordHolder').attr('data-nu-primary-key', currentRow[0]);
		$('#' + sf + rowno + 'nuDelete').prop('checked', currentRow[cols.length-1] == '0' ? false : true);

		for(var c = 1 ; c < cols.length - 1 ; c++){
			$('#' + sf + rowno + cols[c]).val(currentRow[c]);
		}
	
	}
	
}


function nuSubformSorter(a, b, c){

	var l 	= a.length - 1;
	
	var A	= nuPad3(a[l]) + a[c];
	var B	= nuPad3(b[l]) + b[c];
	
	return A - B;
	
}

function nuDetach(e){

	$('.nuDragLineV').each(function( index ) {

		var j	= $(this);
		var o	= j.offset();
		var t	= j.css('top', o.top);
		var l	= j.css('left', o.left);
		
		j.appendTo('body')

	});	
		
}


function nuCheckFormProperties(f){
	
	window.nuFORMPROPERTIES	= f;
	
	var J					= [];
	
	J.push(f.browse_columns);
	J.push(f.browse_sql);
	
	window.nuFORMPROPERTIES.nuPrintBrowse	= encodeURI(JSON.stringify(J));
	window.nuFORMPROPERTIES.nuPrintBrowse	= JSON.stringify(J);
		
}

function nuSearchableList(){

	var bc				= window.nuFORM.current;
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
	
	var w	= 0;

	for(var i = 0 ; i < c.length ; i++){
		w	= Math.max(nuGetWordWidth(c[i].title), w);
	}
	
	return w + 70;
	
}


function nuGetSearchList(){
	
	$('body').append('<div id="nuModal"></div>')
	
	var n		= nuFORM.current.nosearch_columns;
	var c		= nuFORM.current.browse_columns;
	var d 		= document.createElement('div');

	$('#nuOptionsListBox').remove();

	var widest	= nuWidestTitle(c);

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
		'top'				: 5,
		'right'				: 3,
		'position'			: 'absolute',
		'text-align'    	: 'center'
	})
	.attr('onclick', '$("#nuSearchList").remove();;$("#nuModal").remove();')
	.html('X')
	.addClass('nuSearchListClose');
	
	for(var i = 0 ; i < c.length ; i++){
		
		var p = document.createElement('input');
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
		.prop('checked', true)
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
		.attr('onclick', 'nuSetSearchColumn();')
		.click(function() {
			
			var cb = $('#nuSearchList' + i).attr('checked');
			
			$('#' + 'nuSearchList' + i).attr('checked', !cb);
			
			nuSetSearchColumn();
			
		})
		.addClass('nuOptionItem')
		.html(c[i].title);
	
	}
	
}
