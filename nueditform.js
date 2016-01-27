
function nuBuildForm(f){

	$('body').html('');
	
	var b 							= window.nuBreadcrumbs.length-1;
	window.nuBreadcrumbs[b].form_id 	= f.form_id;
	window.nuBreadcrumbs[b].record_id 	= f.record_id;
	window.nuBreadcrumbs[b].title 		= f.title;

	nuAddHolder('nuStatusHolder');
	nuAddHolder('nuActionHolder');
	nuAddHolder('nuBreadcrumbHolder');
	nuAddHolder('nuTabHolder');
	
	nuAddBreadcrumbs();
	nuAddEditTabs('', f);
	
	$('#nuStatusHolder').append(f.user + ' :: Powered By nuBuilder');
	nuSetDefaultActions(f.tabs);
	
	nuAddHolder('nuFormsHolder');
	
	$('#nuFormsHolder').html('<div id="nuForm" class="nuFormHolder"></div>');
	
	nuBuildEditObjects(f, '', '', f);
	nuGetStartingTab();
	
}

function nuSetDefaultActions(f){

	if(f.type == 'browse'){
		
		$('#nuActionHolder').append("<input id='nuSearchField' type='text' class='nuSearch'>");
		$('#nuActionHolder').append("<input id='nuSearchButton' type='button' class='nuButton' value='Search'>");
		
	}
	
	$('#nuActionHolder').append("<img id='thelogo' src='logo.png' style='position:absolute;right:20px'>");
	
}




function nuBuildEditObjects(f, p, o, prop){
	
	var l = 0;
	
	for(var i = 0 ; i < f.objects.length  ; i++){

		var t                       = prop.objects[i].type;
		f.objects[i].parent_type    = o.subform_type;

		if(t == 'input' || t == 'display' || t == 'lookup'){
			
			l = l + nuINPUT(f, i, l, p, prop);
			
		}else if(t == 'run'){
			
			l = l + nuRUN(f, i, l, p, prop);
			
		}else if(t == 'html'){
			
			l = l + nuHTML(f, i, l, p, prop);
			
		}else if(t == 'select'){
			
			l = l + nuSELECT(f, i, l, p, prop);
			
		}else if(t == 'subform'){

			l = l + nuSUBFORM(f, i, l, p, prop);
		}
		
		l = l + 2;
		
	}
	
}



function nuSubformProperties(w, i, l, p){

	var pk    = p + 'nuPrimaryKey';
	var de    = p + 'nuDelete';
	var ef    = p + 'nuForm';                       //-- Edit Form Id
	var inp   = document.createElement('input');
	var chk   = document.createElement('input');

	inp.setAttribute('id', pk);
	chk.setAttribute('id', de);
	chk.setAttribute('type', 'checkbox');
	
	$('#' + ef).append(inp);
	$('#' + ef).append(chk);
	
	$('#' + pk).css({'visibility' : 'hidden'}
	).val(w.record_id
	).attr('data-nuform', p);
	
	$('#' + de).css({'top': 3, 'left' : Number(l) + 3, 'position' : 'absolute'}
	).prop('checked', w.record_id == -1
	).attr('data-nuform', p);

}



function nuINPUT(w, i, l, p, prop){

	var id    = p + prop.objects[i].id;
	var ef    = p + 'nuForm';                       //-- Edit Form Id
	var inp   = document.createElement('input');

	inp.setAttribute('id', id);
	
	if(prop.objects[i].parent_type == 'g'){        //--  in a grid subform
		
		prop.objects[i].left = l;
		prop.objects[i].top = 3;
		
	}else{
		
		nuLabel(w, i, p, prop);
		
	}

	$('#' + ef).append(inp);
	nuAddDataTab(id, prop.objects[i].tab, p);
	$('#' + id).css({'top'       	: Number(prop.objects[i].top),
					'left'		: Number(prop.objects[i].left),
					'width'		: Number(prop.objects[i].width),
					'text-align'	: prop.objects[i].align,
					'position'	: 'absolute'
	}).val(w.objects[i].V);

	if(prop.objects[i].type == 'display'){
		
		$('#' + id).addClass('nuReadonly');
		$('#' + id).prop('readonly', true);
	
	}

	if(prop.objects[i].type == 'lookup'){
		
		$('#' + id).hide();

		id = p + prop.objects[i].id + 'code';
		var inp = document.createElement('input');
		inp.setAttribute('id', id);
		
		$('#' + ef).append(inp);
		nuAddDataTab(id, prop.objects[i].tab, p);
		$('#' + id).css({'top'           : Number(prop.objects[i].top),
		    			'left'              : Number(prop.objects[i].left),
			    		'width'             : Number(prop.objects[i].width),
						'background-color'  : 'lightblue',
						'position'          : 'absolute'
		}).val(w.objects[i].code);

		id = p + prop.objects[i].id + 'button';
		var inp = document.createElement('input');
		inp.setAttribute('id', id);
		
		$('#' + ef).append(inp);
		nuAddDataTab(id, prop.objects[i].tab, p);
		$('#' + id).css({'top'      : Number(prop.objects[i].top),
						'left'      : Number(prop.objects[i].left) + Number(prop.objects[i].width),
						'width'     : 30,
						'position'  : 'absolute'
		}).val('b').attr('type','button');

		id = p + prop.objects[i].id + 'description';
		var inp = document.createElement('input');
		inp.setAttribute('id', id);
		
		$('#' + ef).append(inp);
		nuAddDataTab(id, prop.objects[i].tab, p);
		$('#' + id).css({'top'      : Number(prop.objects[i].top),
						'left'      : Number(prop.objects[i].left) + Number(prop.objects[i].width) + 30,
						'width'     : prop.objects[i].description_width,
						'position'  : 'absolute'
		}).val(w.objects[i].description);
		
		$('#' + id).addClass('nuReadonly');
		$('#' + id).prop('readonly', true);
		
		return Number(prop.objects[i].width) + Number(prop.objects[i].description_width) + 30;
		
	}else{
		
		return Number(prop.objects[i].width);
		
	}
	
}




function nuHTML(w, i, l, p, prop){

	var id  = p + prop.objects[i].id;
	var ef  = p + 'nuForm';                       //-- Edit Form Id
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
	}).html(w.objects[i].html);
	
	return Number(prop.objects[i].width);

}



function nuRUN(w, i, l, p, prop){

	var id  = p + prop.objects[i].id;
	var ef  = p + 'nuForm';                       //-- Edit Form Id
	var ele = 'input';
	
	if(prop.objects[i].parent_type == 'g'){
		
		prop.objects[i].left = l;
		prop.objects[i].top = 3;
		
	}
	
	if(prop.objects[i].run_method != 'b'){
		
		ele = 'iframe';
		
	}

	if(!prop.objects[i].parent_type == 'g' && prop.objects[i].run_method != 'b'){
		
		nuLabel(w, i, p, prop);
		
	}

	var inp = document.createElement(ele);
	
	inp.setAttribute('id', id);
	
	$('#' + ef).append(inp);

	nuAddDataTab(id, prop.objects[i].tab, p);
	$('#' + id).css({'top'     	: Number(prop.objects[i].top),
					'left'     	: Number(prop.objects[i].left),
					'width'    	: Number(prop.objects[i].width),
					'height'   	: Number(prop.objects[i].height),
					'position' 	: 'absolute'
	});

	if(prop.objects[i].run_method == 'b'){
	
		$('#' + id).attr({
					'type'		: 'button',
					'value'		: prop.objects[i].label,
					'onclick'	: "nuGetForm('" + prop.objects[i].form_id + "','" + prop.objects[i].record_id + "')"
					})
		
	}else{
	    
		$('#' + id).attr({'src':prop.objects[i].src})
		$('#' + id).attr({'src':'https://nubuilder.net'})


	}
	
	return Number(prop.objects[i].width);
	
}




function nuSELECT(w, i, l, p, prop){

	var id  = p + prop.objects[i].id;
	var ef  = p + 'nuForm';                       //-- Edit Form Id
	
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
	});



	if(prop.objects[i].multiple == 1){
	    
		$('#' + id).attr('multiple', 'multiple');
		$('#' + id).css('height', Number(prop.objects[i].height));
    	
	}
	
	var values = String(w.objects[i].V).split('#nuSep#');

	for(var n = 0 ; n < prop.objects[i].options.length ; n++){

		if(values.indexOf(prop.objects[i].options[n][0]) == -1){
		    $('#' + id).append('<option  value="'+prop.objects[i].options[n][0]+'">'+prop.objects[i].options[n][1]+'</option>');
		}else{
		    $('#' + id).append('<option selected="selected "value="'+prop.objects[i].options[n][0]+'">'+prop.objects[i].options[n][1]+'</option>');
		}
		
	}

	return Number(prop.objects[i].width);
	
}



function nuSUBFORM(w, i, l, p, prop){

    var SF  = prop.objects[i];
	var id  = p + SF.id;
	var ef  = p + 'nuForm';                       //-- Edit Form Id
	var inp = document.createElement('div');
	var fms = SF.forms;
	
	inp.setAttribute('id', id);
	
	if(SF.parent_type == 'g'){
		
		SF.left = l;
		SF.top = 3;
		
	}else{
		
		nuLabel(w, i, p, prop);
		
	}

	$('#' + ef).append(inp);
	nuAddDataTab(id, prop.objects[i].tab, p);
	$('#' + id).css({'top'          : Number(SF.top),
					'left'          : Number(SF.left),
					'width'         : Number(SF.width),
					'height'        : Number(SF.height),
					'border-width'  : Number(1),
					'border-style'  : 'solid',
					'overflow-x'    : 'hidden',
					'overflow-y'    : 'hidden',
					'position'      : 'absolute'
	});

	var rowSize     = nuGetSubformRowSize(SF.forms[0].objects, SF, id);
	var rowWidth    = rowSize[0];
	var rowHeight   = rowSize[1];
	var rowTop      = rowSize[2];

	if(SF.subform_type != 'g'){
        
		var tabId  = id + 'nuTabHolder';
		var tabDiv = document.createElement('div');
		tabDiv.setAttribute('id', tabId);
		$('#' + id).append(tabDiv);
		$('#' + tabId).css({'top'       : 0,
						'left'          : 0,
						'width'         : rowWidth - 50,
						'height'        : 23,
						'overflow-x'    : 'hidden',
						'overflow-y'    : 'hidden',
						'position'      : 'absolute'
		}).addClass('nuTabHolder');

		nuAddEditTabs(id, SF.forms[0]);
		
    }

	
    var scrId		= id + 'scrollDiv';
	var scrDiv	= document.createElement('div');
	scrDiv.setAttribute('id', scrId);
	$('#' + id).append(scrDiv);
	$('#' + scrId).css({'top'       : Number(rowTop),
					'left'          : 0,
					'width'         : Number(rowWidth),
					'height'        : Number(SF.height) - rowTop,
					'border-width'  : Number(1),
					'border-style'  : 'solid',
					'border-color'  : 'blue',
					'overflow-x'    : 'hidden',
					'overflow-y'    : 'scroll',
					'position'      : 'absolute'
	});

	if(rowWidth > Number(SF.width)){
		
			$('#' + id).css('overflow-x', 'scroll');
			$('#' + scrId).css('height', SF.height - rowTop - 25);
			
	}
	
	rowTop = 0;
	
	for(var c = 0 ; c < fms.length ; c++){

		var prefix = id + String('00' + c).substr(-3);
		var frmId  = prefix + 'nuForm';
		var frmDiv = document.createElement('div');
		frmDiv.setAttribute('id', frmId);
		$('#' + scrId).append(frmDiv);
		$('#' + frmId).css({'top'       : Number(rowTop),
						'left'          : 0,
						'width'         : Number(rowWidth),
						'height'        : Number(rowHeight),
						'border-width'  : 1,
						'border-style'  : 'solid',
						'border-color'  : 'red',
						'position'      : 'absolute'
		});

		nuBuildEditObjects(SF.forms[c], prefix, SF, SF.forms[0]);

		nuSubformProperties(SF.forms[c], c, rowWidth - 40, prefix);

		rowTop = Number(rowTop) + Number(rowHeight);

	}
	
	return Number(SF.width);

}


function nuLabel(w, i, p, prop){

	if(prop.objects[i].label == ''){return;}
	
	var id     = 'label_' + p + prop.objects[i].id;
	var ef     = p + 'nuForm';                       //-- Edit Form Id
	var lab    = document.createElement('label');
	var lwidth = nuGetWordWidth(prop.objects[i].label);
	
	lab.setAttribute('id', id);
	lab.setAttribute('for',  p + prop.objects[i].id);
	
	$('#' + ef).append(lab);
	nuAddDataTab(id, prop.objects[i].tab, p);
	$('#' + id).css({'top'            : Number(prop.objects[i].top),
		              'left'          : Number(prop.objects[i].left) - lwidth - 7,
		              'width'         : Number(lwidth)
	})
	.html(prop.objects[i].label);

}


function nuAddHolder(t){

	var d = document.createElement('div');
	d.setAttribute('id', t);
	$('body').append(d);
	$('#' + t).addClass(t).html('&nbsp;&nbsp;');
	
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
    var h = 0;
    var a = Array();

    for(var i = 0 ; i < o.length ; i++){

        var d = Number(o[i].description_width);
        var H = Number(o[i].height)  == 0        ? 25    : Number(o[i].height);
        var T = SF.subform_type == 'g'      ? 0     : Number(o[i].top);
        var B = o[i].type          == 'lookup' ? 30    : 0;                    //-- lookup button
        var D = o[i].type          == 'lookup' ? d     : 0;                    //-- lookup description
        
        h = Math.max(h, H + T);
        w = 2 + Number(o[i].width) + B + D;
        
        
        if(SF.subform_type == 'g'){                                             //-- grid
            
            nuBuildSubformTitle(o[i], l, w, id);
            l = l + w;
            
        }else{
            
            l = Math.max(l, w + Number(o[i].left));

        }
        
    }

    if(SF.delete == '1'){
        nuBuildSubformDeleteTitle(l, id);
        l = l + 40;
    }else{
        l = l + 20;
    }
    
    a.push(l);
    a.push(h + 3);
    a.push(50);
    
    return a;
    
}

function nuBuildSubformTitle(o, l, w, id){
    
	    var titleId  = id + o.id;
    	var div = document.createElement('div');
    	div.setAttribute('id', titleId);
    	$('#' + id).append(div);
    	
    	$('#' + titleId).css({'top'     : 0,
    					'left'          : Number(l),
    					'width'         : Number(w),
    					'height'        : 50,
    					'text-align'    : 'center',
    					'border-width'  : 1,
    					'border-style'  : 'solid',
    					'border-color'  : 'green',
    					'position'      : 'absolute'
    	}).html(o.label);

}


function nuBuildSubformDeleteTitle(l, id){
    
	    var titleId  = id + 'DeleteSF';
    	var div = document.createElement('div');
    	div.setAttribute('id', titleId);
    	$('#' + id).append(div);
    	
    	$('#' + titleId).css({'top'     : 0,
    					'left'          : Number(l),
    					'width'         : 40,
    					'height'        : 50,
    					'text-align'    : 'center',
    					'font-size'     : 10,
    					'border-width'  : 1,
    					'border-style'  : 'solid',
    					'border-color'  : 'green',
    					'position'      : 'absolute'
    	}).html('Delete');

}


function nuAddBreadcrumbs(){

	var b 							= window.nuBreadcrumbs.length;
	
    for(var i = 0 ; i < b ; i++){
        
		nuAddBreadcrumb(i, b);

    }
    
}


function nuAddEditTabs(p, w){

	nuSetStartingTab(p);
	
    for(var i = 0 ; i < w.tabs.length ; i++){
        
        nuEditTab(p, w.tabs[i], i);

    }
    
}

function nuSetStartingTab(p){

	var t = window.nuBreadcrumbs[window.nuBreadcrumbs.length - 1].tab_start;
	
	for(var i = 0 ; i < t.length ; i++){
		
		if(t[i].prefix == p){return;}
		
	}
	
	t.push(new nuStartingTab(p));
	
}

function nuGetStartingTab(){

	var t = window.nuBreadcrumbs[window.nuBreadcrumbs.length - 1].tab_start;
	
	for(var i = 0 ; i < t.length ; i++){
		
		$('#' + t[i].prefix + 'nuTab' + t[i].tabNumber).addClass('nuTabSelected');
		$('#' + t[i].prefix + 'nuTab' + t[i].tabNumber).click();
		
	}
	
}


function nuStartingTab(p){

		this.prefix 		= p;
		this.tabNumber 	= 0;
		
}


function nuAddBreadcrumb(i, l){

	var last = (i + 1 == l);                  //-- last breadcrumb
	var bc 	= window.nuBreadcrumbs[i];
	var bcId = 'nuBC' + i;
	
	var div    = document.createElement('div');
	div.setAttribute('id', bcId);

	$('#' + 'nuBreadcrumbHolder').append(div);
	
	if(last){
		
		$('#' + bcId)
		.addClass('nuNotBreadcrumb')
		.html(bc.title);
		
	}else{
		
		$('#' + bcId)
		.attr('onclick', 'nuGetBreadcrumb(' + i + ')')
		.addClass('nuBreadcrumb')
		.html(bc.title + '<div id="nuarrow'+i+'" class="nuBreadcrumbArrow">&nbsp;&#x25BA;&nbsp;<div>');
		
	}
	
	

}


function nuEditTab(p, t, i){

    var tabId  = p + 'nuTab' + i;
	var div    = document.createElement('div');
	div.setAttribute('id', tabId);
	
	$('#' + p + 'nuTabHolder').append(div);
	$('#' + tabId
	).html(t.title
	).addClass('nuTab'
	).attr('data-nuTabFilter', i
	).attr('data-nuFormFilter', p
	).attr('onclick','nuSelectTab(this)');
	

}



function nuSelectTab(tab){

    var n = String(tab.id).substr(5);
    var t = $('#' + tab.id).attr('data-nuTabFilter');
    var f = $('#' + tab.id).attr('data-nuFormFilter');

    $("[data-nuForm='" + f + "']").hide();
    $("[data-nuTab='"  + t + "'][data-nuForm='" + f + "']").show();

    $("[data-nuFormFilter='" + f + "']").removeClass('nuTabSelected');
    $("[data-nuFormFilter='" + f + "'][data-nuTabFilter='"  + t + "']").show();

    $('#' + tab.id).addClass('nuTabSelected');

}


function nuAddDataTab(i, t, p){

    var P = String(p);
    var f = P.substr(0, P.length - 3);
    $('#' + i).attr('data-nuTab', t).attr('data-nuForm', f);

}
