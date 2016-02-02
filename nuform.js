
function nuBuildForm(f){

	$('body').html('');
	$('body').removeClass('nuBrowseBody').removeClass('nuEditBody');
	
	if(f.record_id == ''){
		$('body').addClass('nuBrowseBody');
	}else{
		$('body').addClass('nuEditBody');
	}
	
	var b 								= window.nuBC.length-1;
	
	window.nuBC[b].form_id 		= f.form_id;
	window.nuBC[b].record_id 		= f.record_id;
	window.nuBC[b].title 			= f.title;
	window.nuBC[b].row_height		= f.row_height;
	window.nuBC[b].rows 			= f.rows;
	window.nuBC[b].browse_columns	= f.browse_columns;
	window.nuBC[b].browse_rows		= f.browse_rows;
	window.nuBC[b].pages			= f.pages;

	nuAddHolder('nuActionHolder');
//	nuAddHolder('nuStatusHolder');
	nuAddHolder('nuBreadcrumbHolder');
	if(f.record_id == ''){
	}else{
		nuAddHolder('nuTabHolder');
		nuAddHolder('nuFormsHolder');
		nuAddHolder('nuFormHolder');
	}
	
	nuAddBreadcrumbs();
	nuAddEditTabs('', f);
	nuAddActionButtons(f);
	nuBuildEditObjects(f, '', '', f);
	
	//$('#nuStatusHolder').append(f.user + ' :: Powered By nuBuilder');
	
	nuGetStartingTab();
	
}

function nuAddActionButtons(f){

	var b = f.buttons;
	
	if(f.record_id == ''){
	
//		var v = String(window.nuBC[window.nuBC.length-1].search).replaceAll("'","\'", true);
		var v = window.nuBC[window.nuBC.length-1].search;
		console.log(v);
		$('#nuActionHolder').append("<input id='nuSearchField' type='text' class='nuSearch' onchange='nuSetSearch(this)' value='" + v + "'>&nbsp;");
		$('#nuActionHolder').append("<input id='nuSearchButton' type='button' class='nuButton' value='Search' onclick='nuSearchAction()'>&nbsp;");
		
	}

	for(var i = 0 ; i < b.length ; i++){
		
		$('#nuActionHolder').append("<input id='nu" + b[i][1] + "Button' type='button' class='nuButton' value='" + b[i][0] + "' onclick='nu" + b[i][1] + "Action'>&nbsp;");
		
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
	var ef    = p + 'nuFormHolder';                       //-- Edit Form Id
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
	var ef    = p + 'nuFormHolder';                       //-- Edit Form Id
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
			    		'width'             : Number(prop.objects[i].width)
		})
		.val(w.objects[i].code)
		.addClass('nuLookupCode');

		id = p + prop.objects[i].id + 'button';
		var inp = document.createElement('div');
		inp.setAttribute('id', id);
		
		$('#' + ef).append(inp);
		nuAddDataTab(id, prop.objects[i].tab, p);
		$('#' + id).css({'top'      	: Number(prop.objects[i].top),
						'left'      	: Number(prop.objects[i].left) + Number(prop.objects[i].width) + 2,
						'width'     	: 15,
						'height'     	: 15
		})
		.val('b')
		.attr('type','button')
		.addClass('nuLookupButton')
		.html('<img border="0" src="lookup.png" width="10" height="10">');

		id = p + prop.objects[i].id + 'description';
		var inp = document.createElement('input');
		inp.setAttribute('id', id);
		
		$('#' + ef).append(inp);
		nuAddDataTab(id, prop.objects[i].tab, p);
		$('#' + id).css({'top'      : Number(prop.objects[i].top),
						'left'      : Number(prop.objects[i].left) + Number(prop.objects[i].width) + 21,
						'width'     : prop.objects[i].description_width
		})
		.val(w.objects[i].description)
		.addClass('nuLookupDescription')
		.addClass('nuReadonly')
		.prop('readonly', true);
		
		return Number(prop.objects[i].width) + Number(prop.objects[i].description_width) + 30;
		
	}else{
		
		return Number(prop.objects[i].width);
		
	}
	
}




function nuHTML(w, i, l, p, prop){

	var id  = p + prop.objects[i].id;
	var ef  = p + 'nuFormHolder';                       //-- Edit Form Id
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
	var ef  = p + 'nuFormHolder';                       //-- Edit Form Id
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
	var ef  = p + 'nuFormHolder';                       //-- Edit Form Id
	
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
	var ef  = p + 'nuFormHolder';                       //-- Edit Form Id
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
		$('#' + tabId).css({'top'      : 0,
						'left'       	: 0,
						'width'      	: rowWidth - 50,
						'height'     	: 23,
						'overflow-x'	: 'hidden',
						'overflow-y'	: 'hidden',
						'position'	: 'absolute',
						'padding'	: '29px 0px 0px 0px'
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
					'border-style'  : 'none solid solid solid',
					'border-color'  : '#B0B0B0',
					'overflow-x'    : 'hidden',
					'overflow-y'    : 'scroll',
					'position'      : 'absolute'
	});

	if(rowWidth > Number(SF.width)){
		
			$('#' + id).css('overflow-x', 'scroll');
			$('#' + scrId).css('height', SF.height - rowTop - 25);
			
	}
	
	rowTop 	= 0;
	var even	= 0;
	
	for(var c = 0 ; c < fms.length ; c++){

		var prefix = id + String('00' + c).substr(-3);
		var frmId  = prefix + 'nuFormHolder';
		var frmDiv = document.createElement('div');
		frmDiv.setAttribute('id', frmId);
		$('#' + scrId).append(frmDiv);
		$('#' + frmId).css({'top'       : Number(rowTop),
						'left'          : 0,
						'width'         : Number(rowWidth),
						'height'        : Number(rowHeight),
						'position'      : 'absolute'
		})
		.addClass('nuSubform' + even);

		nuBuildEditObjects(SF.forms[c], prefix, SF, SF.forms[0]);

		nuSubformProperties(SF.forms[c], c, rowWidth - 40, prefix);

		rowTop 	= Number(rowTop) + Number(rowHeight);
		even		= even == '0' ? '1' : '0'

	}
	
	return Number(SF.width);

}


function nuLabel(w, i, p, prop){

	if(prop.objects[i].label == ''){return;}
	
	var id     = 'label_' + p + prop.objects[i].id;
	var ef     = p + 'nuFormHolder';                       //-- Edit Form Id
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
    var h = 0;
    var a = Array();

    for(var i = 0 ; i < o.length ; i++){

        var d = Number(o[i].description_width);
        var H = Number(o[i].height) 	== 0        ? 25    : Number(o[i].height);
        var T = SF.subform_type 		== 'g'      ? 0     : Number(o[i].top);
        var B = o[i].type          		== 'lookup' ? 30    : 0;                    //-- lookup button
        var D = o[i].type          		== 'lookup' ? d     : 0;                    //-- lookup description
        
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
    	
    	$('#' + titleId).css({'top'     	: 0,
    					'left'          	: Number(l),
    					'width'         	: Number(w),
    					'height'        	: 50,
    					'text-align'    	: 'center',
    					'position'      	: 'absolute'
    	}).html(o.label);

}


function nuBuildSubformDeleteTitle(l, id){
    
	var titleId  = id + 'DeleteSF';
    	var div = document.createElement('div');
    	div.setAttribute('id', titleId);
    	$('#' + id).append(div);
    	
    	$('#' + titleId).css({'top'     	: 0,
    					'left'          	: Number(l)-10,
    					'width'         	: 50,
    					'height'        	: 50,
    					'text-align'    	: 'center',
    					'font-size'     	: 10,
    					'padding'     	: 0,
    					'position'      	: 'absolute'
    	}).html('<br>Delete')
	.addClass('nuTabHolder');

}


function nuAddBreadcrumbs(){

	var b 							= window.nuBC.length;
	
    for(var i = 0 ; i < b ; i++){
        
		nuAddBreadcrumb(i, b);

    }
    
}


function nuAddEditTabs(p, w){

	nuSetStartingTab(p);
	
    for(var i = 0 ; i < w.tabs.length ; i++){
        
        nuEditTab(p, w.tabs[i], i);

    }
	
	var l = 13;
	
    for(var i = 0 ; i < w.browse_columns.length ; i++){
        
        l = nuBrowseTitle(w.browse_columns[i], i, l);

    }
	
	if(w.browse_columns.length > 0){
		nuBrowseTable();
	}
    
}



function nuSetStartingTab(p){

	var t = window.nuBC[window.nuBC.length - 1].tab_start;
	
	for(var i = 0 ; i < t.length ; i++){
		
		if(t[i].prefix == p){return;}
		
	}
	
	t.push(new nuStartingTab(p));
	
}

function nuGetStartingTab(){

	var t = window.nuBC[window.nuBC.length - 1].tab_start;
	
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
	var bc 	= window.nuBC[i];
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

function nuBrowseTitle(b, i, l){

	var un	= window.nuBC[window.nuBC.length-1].nosearch_columns.indexOf(i);
	var id  	= 'nuBrowseTitle' + i;
	var w 	= Number(b.width);
	var div  = document.createElement('div');
	div.setAttribute('id', id);

	var cb	= '<input id="nusearch_' + i + '" type="checkbox" class="nuSearchColumn" checked="checked" onclick="nuSetSearchColumn()">';
	var br	= '<br>';
	var sp	= '<span style="font-size:16px" id="nusort_' + i + '" class="nuSort" onclick="nuSortBrowse(' + i + ')"> ' + b.title + ' </span>'
	
	$('body').append(div);
	$('#' + id)
	.html(cb + br + sp)
	.addClass('nuBrowseTitle')
	.css({	'text-align'	: 'center',
			'overflow'	: 'hidden',
			'width'		: w,
			'left'		: l
	});
	
	$('#nusearch_' + i).attr('checked', un == -1);
	
	return l + w;
	
}



function nuBrowseTable(){

	var bc	= nuBC[nuBC.length-1];
	var col	= bc.browse_columns;
	var row	= bc.browse_rows;
	var rows	= bc.rows;
	var h	= bc.row_height;
	var t	= 145 - h;
	var l	= 13;
	
	for(r = 0 ; r < rows ; r++){
	
		l	= 13;
		t	= t + h;
		
		for(c = 0 ; c < col.length ; c++){
		
			var w	= Number(col[c].width);
			var a	= nuAlign(col[c].align);
			var rw	= 'nubrowse' + String('00' + r).substr(-3);
			var id	= rw + String('00' + c).substr(-3);
			var div  = document.createElement('div');
			div.setAttribute('id', id);
				
			$('body').append(div);
			$('#' + id)
			.attr('data-row', rw)
			.addClass(w == 0 ? '' : 'nuBrowseTable')
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
				.attr('data-primaryKey', row[r][0])
				.attr('data-primaryKey', row[r][0])
				.hover(
					function() {
						var rw = $( this ).attr('data-row');
						$("[data-row='"+rw+"']").addClass('nuSelectBrowse');
					}, function() {
						var rw = $( this ).attr('data-row');
						$("[data-row='"+rw+"']").removeClass('nuSelectBrowse');
					}
				);

			}
			
			l = l + w;

		}
		
	}
	
	var la	= '<span id="nuLast" class="nuBrowsePage">&#9668;</span>';
	var pg	= '&nbsp;Page&nbsp;';
	var cu	= '<input id="browsePage" style="text-align:center;margin:3px 0px 0px 0px;width:40px" value="' + (bc.page_number + 1) + '" class="browsePage"/>';
	var of	= '&nbsp;/&nbsp;' + bc.pages + '&nbsp;';
	var ra	= '<span id="nuLast" class="nuBrowsePage">&#9658;</span>';
	
	var id	= 'nuBrowseFooter';
	var div  = document.createElement('div');
	div.setAttribute('id', id);
		
	$('body').append(div);
	$('#' + id)
	.addClass('nuBrowseTitle')
	.html(la+pg+cu+of+ra)
	.css({	'text-align'	: 'center',
			'width'		: l - 13,
			'top'		: t + h,
			'left'		: 13,
			'height'		: 25,
			'position'	: 'absolute'
	});

}


function nuAlign(a){

	if(a == 'l'){return 'left';}
	if(a == 'r'){return 'right';}
	if(a == 'c'){return 'center';}
	
}


function nuSetSearchColumn(){

	var nosearch = [];

	$('.nuSearchColumn').each(function( index ) {
		if(!$(this).is(':checked')) {nosearch.push(index);}
	});

	window.nuBC[window.nuBC.length-1].nosearch_columns = nosearch;
	
}

function nuSetSearch(t){
	
	window.nuBC[window.nuBC.length-1].search = String(t.value).replaceAll("'","&#39;", true);
	window.nuBC[window.nuBC.length-1].page_number	= 0;
	
}

function nuSearchAction(){

	nuGetBreadcrumb(nuBC.length - 1);
	
}

function nuSortBrowse(c){
	
	var l	= nuBC.length - 1;
	var B 	= nuBC[l];
	
	if(c == B.sort){
		nuBC[l].sort_direction 	= (B.sort_direction == 'asc' ? 'desc' : 'asc');
	}else{
		nuBC[l].sort 				= c;
		nuBC[l].sort_direction	= 'asc';
	}
	
	nuSearchAction();
	
}

