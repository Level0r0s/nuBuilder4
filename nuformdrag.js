function nuBindDragEvents(){
	
    $(document).on('mousemove.nuformdrag', function(e) {
		
        var draggable = 0;
		if(window.nuBC.length > 0) {
			if(window.nuBC[window.nuBC.length-1].record_id == '-2') {
				draggable = 1;
			}
		}

		if(draggable) {
			if(e.stopPropagation) e.stopPropagation();
			if(e.preventDefault) e.preventDefault();
			e.cancelBubble=true;
			e.returnValue=false;

			if(e.buttons) {
				nuDragBox(e);
			}
		}
    });
	
    $(document).on('mousedown.nuformdrag', function(e) {	
	
		window.startX = e.clientX + window.scrollX;
		window.startY = e.clientY + window.scrollY;
		window.moveX = 0;
		window.moveY = 0;
		
        var draggable = 0;
		if(window.nuBC.length > 0) {
			if(window.nuBC[window.nuBC.length-1].record_id == '-2') {
				draggable = 1;
			}
		}

		if(draggable) {
				
			if(e.target.id == '') {
				
				if(!e.ctrlKey) {
					$('.nuDragSelected').removeClass('nuDragSelected');
				}
				
				nuCreateBox(e);
			} else {

				if(!e.ctrlKey && !$('#'+e.target.id).hasClass('nuDragSelected')) {
					$('.nuDragSelected').removeClass('nuDragSelected');
				}
				
				if($('#'+e.target.id).attr('data-drag')) {
					$('#'+e.target.id).addClass('nuDragSelected');
				}
			}
		}
        nuUpdateDragFieldsListbox();
    });
	
    $(document).on('mouseup.nuformdrag', function(e) {
       var draggable = 0;
		if(window.nuBC.length > 0) {	
			if(window.nuBC[window.nuBC.length-1].record_id == '-2') {
				draggable = 1;
			}
		}
		
		if(draggable) {
			if($('#nuSelectBox').length > 0) {
				nuRemoveBox(e.ctrlKey);
			}
		}
        nuUpdateDragFieldsListbox();
    });

    var nuDragKeydownListener = function(e){
        var keyDirection = '';
        // if left
        if(e.keyCode == 37){
            keyDirection = 'left';
        // if right
        } else if(e.keyCode == 39){
            keyDirection = 'right';
        // if up
        } else if(e.keyCode == 38){
            keyDirection = 'up';
        // if down
        } else if(e.keyCode == 40){
            keyDirection = 'down';
        }
        if(keyDirection != ''){
            $('div.nuDragSelected').each(function(){
                var prop = '';
                var val = '';
                if(keyDirection == 'left'){
                    if(e.shiftKey){
                        prop = 'width';
                        val  = $(this).width() - 1;
                    } else {
                        prop = 'left';
                        val  = $(this).position().left - 1;
                    }
                } else if(keyDirection == 'right'){
                    if(e.shiftKey){
                        prop = 'width';
                        val  = $(this).width() + 1;
                    } else {
                        prop = 'left';
                        val  = $(this).position().left + 1;
                    }
                } else if(keyDirection == 'up'){
                    if(e.shiftKey){
                        prop = 'height';
                        val  = $(this).height() - 1;
                    } else {
                        prop = 'top';
                        val  = $(this).position().top - 1;
                    }
                } else if(keyDirection == 'down'){
                    if(e.shiftKey){
                        prop = 'height';
                        val  = $(this).height() + 1;
                    } else {
                        prop = 'top';
                        val  = $(this).position().top + 1;
                    }
                }
                $(this).css(prop,val+'px');
            });
        }
    }

    $(document).on('keydown.nuformdrag', nuDragKeydownListener);
    $(window.parent.document).on('keydown.nuformdrag', nuDragKeydownListener);

}

function nuUnbindDragEvents(){
    $(document).off('.nuformdrag');
}

function nuUpdateDragFieldsListbox(){
    $('#nuDragOptionsFields option:selected',window.parent.document.body).removeAttr('selected');
    $('.nuDragSelected').each(function(){
        $('#nuDragOptionsFields option[id="drag_'+$(this).prop('id')+'"]',window.parent.document.body).prop('selected','selected');
    });
    nuCheckIfMovingTabOrderAllowed($('#nuDragOptionsFields',window.parent.document.body));
}

function nuCreateBox(event){
	
	var e = document.createElement('div');
	e.setAttribute('id', 'nuSelectBox');
	$('body').append(e);
	$('#' + e.id).css({
		'width'            : 1,
		'height'           : 1,
		'top'              : event.clientY + window.scrollY,
		'left'             : event.clientX,
		'position'         : 'absolute',
		'border-style'     : 'dashed',
		'border-width'     : 1,
		'border-color'     : 'red',
		'z-index'          : '4000',
		'background-color' : 'transparent'
	});
}

function nuDragBox(event) {	

	window.lastMoveX = window.moveX;
	window.lastMoveY = window.moveY;
	window.moveX = event.clientX - window.startX;
	window.moveY = event.clientY - window.startY;
	
	if($('#nuSelectBox').length > 0) {
		nuResizeDrag(event);
	} else {
		if($('#nuSelectBox').length == 0 && nuCanMove()){ 
			nuMoveSelected();
		}
	}
}

function nuResizeDrag(event) {

	var x = parseInt($('#nuSelectBox').css('left'));
	var y = parseInt($('#nuSelectBox').css('top'));
	var w = parseInt($('#nuSelectBox').css('width'));
	var h = parseInt($('#nuSelectBox').css('height'));
	
	var X = event.clientX - window.startX;
	var Y = event.clientY  + window.scrollY - window.startY;
	
	if(X > 0) {
		$('#nuSelectBox').css({
			'width'            : X
		});
	} else {
		$('#nuSelectBox').css({
			'width'            : -1 * X,
			'left'             : window.startX + X,
		});
	}
	
	if(Y > 0) {
		$('#nuSelectBox').css({
			'height'            : Y
		});
	} else {
		$('#nuSelectBox').css({
			'height'           : -1 *  Y,
			'top'              : window.startY + Y,
		});
	}
}

function nuRemoveBox(ctrlKey) {
	
	var L = parseInt($('#nuSelectBox').css('left'));
	var T = parseInt($('#nuSelectBox').css('top')) - nuGetTopArea();
	var B = T + parseInt($('#nuSelectBox').css('height'));
	var R = L + parseInt($('#nuSelectBox').css('width'));
	$('#nuSelectBox').remove();
		
	var o = $('[data-drag]');
	
	if(!ctrlKey) {
		$('.nuDragSelected').removeClass('nuDragSelected');
	}

	var selectedTab = $('.nuTabSelected')[0].id.substring(5);
	
	o.each(function(index) {
		if($(this).attr('data-nu-tab') == selectedTab) {
			var l =     parseInt($(this).css('left'));
			var t =     parseInt($(this).css('top'));
			var b = t + parseInt($(this).css('height'));
			var r = l + parseInt($(this).css('width'));
			
			//drag around selected objects points
			if(l >= L && l <= R && t >= T && t <= B) {
				$(this).addClass('nuDragSelected');
			} else if(r >= L && r <= R && t >= T && t <= B) {
				$(this).addClass('nuDragSelected');
			} else if(l >= L && l <= R && b >= T && b <= B) {
				$(this).addClass('nuDragSelected');
			} else if(r >= L && r <= R && b >= T && b <= B) {
				$(this).addClass('nuDragSelected');
			}
			
			//drag within selected objects points
			if(L >= l && L <= r && T >= t && T <= b) {
				$(this).addClass('nuDragSelected');
			} else if(R >= l && R <= r && T >= t && T <= b) {
				$(this).addClass('nuDragSelected');
			} else if(L >= l && L <= r && B >= t && B <= b) {
				$(this).addClass('nuDragSelected');
			} else if(R >= l && R <= r && B >= t && B <= b) {
				$(this).addClass('nuDragSelected');
			}
			
			//drag through object but not through any points
			if(L >= l && L <= r && T <= t && B >= b) {
				$(this).addClass('nuDragSelected');
			}
		}
	});
	
}

function nuInitialiseDragState(){
    window.nuDragOptionsState = {
        'tabs': []
    };
    var tabOrderCounter = 10;
    $('div.nuTab[id^="nuTab"]').each(function(){
        var objects = {
            'objects': []
        };
        $('div#nuRecordHolder div[data-nu-tab="'+$(this).prop('id').replace('nuTab','')+'"]').each(function(){
            var objectPosition = $(this).position();
            var objectProperties = {
                'object_id': $(this).attr('data-nu-object-id'),
                'id': $(this).prop('id'),
                'left': objectPosition.left,
                'top': objectPosition.top,
                'width': $(this).width(),
                'height': $(this).height(),
                'tab_order': tabOrderCounter
            };
            objects.objects.push(objectProperties);
            tabOrderCounter = tabOrderCounter + 10;
        });
        window.nuDragOptionsState.tabs.push(objects);
    });
}

function nuSetTabOrderDataAttrs(){
    var currentTabNo = $('div.nuTabSelected[id^="nuTab"]').attr('data-nu-tab-filter');
    for(var i=0; i<window.nuDragOptionsState.tabs[currentTabNo].objects.length; i++){
        var field = window.nuDragOptionsState.tabs[currentTabNo].objects[i];
        $('#nuDragOptionsFields option[id="drag_'+field.id+'"]',window.parent.document.body).attr('data-nu-tab-order',field.tab_order);
    }
}

function nuMoveUpOrder(){
    var currentTabNo = $('div.nuTabSelected[id^="nuTab"]', $('#nuDragDialog iframe').contents()).attr('data-nu-tab-filter');
    var currentSelectedFieldOption = $('select#nuDragOptionsFields option:selected');
    for(var i=0; i<$('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[currentTabNo].objects.length; i++){
        var field = $('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[currentTabNo].objects[i];
        if(field.id == currentSelectedFieldOption.prop('id').replace('drag_','')){
            // if it's at the top, dont re-order anything
            if(field.id == $('select#nuDragOptionsFields option')[0].id.replace('drag_',''))
                return;
            var previousFieldDOM = $('select#nuDragOptionsFields option[data-nu-tab-order="'+(Number(currentSelectedFieldOption.attr('data-nu-tab-order'))-10)+'"]');
            var previousFieldSTATE = nuFindFieldInState(currentTabNo, previousFieldDOM.prop('id').replace('drag_',''));
            field.tab_order = Number(previousFieldDOM.attr('data-nu-tab-order'));
            previousFieldSTATE.tab_order = field.tab_order + 10;
            $('option#drag_'+field.id).attr('data-nu-tab-order',field.tab_order);
            var previousFieldDOMID = previousFieldDOM.prop('id');
            previousFieldDOM.attr('data-nu-tab-order',previousFieldSTATE.tab_order);
            var previousFieldDOMHTML = $('option#'+previousFieldDOMID)[0].outerHTML;
            $('option#'+previousFieldDOMID).remove();
            $('option#drag_'+field.id).after(previousFieldDOMHTML);
        }
    }
}

function nuMoveDownOrder(){
    var currentTabNo = $('div.nuTabSelected[id^="nuTab"]', $('#nuDragDialog iframe').contents()).attr('data-nu-tab-filter');
    var currentSelectedFieldOption = $('select#nuDragOptionsFields option:selected');
    for(var i=0; i<$('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[currentTabNo].objects.length; i++){
        var field = $('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[currentTabNo].objects[i];
        if(field.id == currentSelectedFieldOption.prop('id').replace('drag_','')){
            // if it's at the bottom, dont re-order anything
            if(field.id == $('select#nuDragOptionsFields option')[($('select#nuDragOptionsFields option').length-1)].id.replace('drag_',''))
                return;
            var nextFieldDOM = $('select#nuDragOptionsFields option[data-nu-tab-order="'+(Number(currentSelectedFieldOption.attr('data-nu-tab-order'))+10)+'"]');
            var nextFieldSTATE = nuFindFieldInState(currentTabNo, nextFieldDOM.prop('id').replace('drag_',''));
            field.tab_order = Number(nextFieldDOM.attr('data-nu-tab-order'));
            nextFieldSTATE.tab_order = field.tab_order - 10;
            $('option#drag_'+field.id).attr('data-nu-tab-order',field.tab_order);
            var nextFieldDOMID = nextFieldDOM.prop('id');
            nextFieldDOM.attr('data-nu-tab-order',nextFieldSTATE.tab_order);
            var nextFieldDOMHTML = $('option#'+nextFieldDOMID)[0].outerHTML;
            $('option#'+nextFieldDOMID).remove();
            $('option#drag_'+field.id).before(nextFieldDOMHTML);
        }
    }
}

function nuFindFieldInState(tabNo, fieldID){
    for(var i=0; i<$('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[tabNo].objects.length; i++){
        if($('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[tabNo].objects[i].id == fieldID)
            return $('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[tabNo].objects[i];
    }
    return null;
}

function nuCreateDragOptionsBox(form){
    var dragOptionsBoxWidth = 341;
    var dragOptionsBoxMinHeight = 470;
    $('#nuDragDialog',window.parent.document.body).css('width',$('#nuDragDialog',window.parent.document.body).width()+dragOptionsBoxWidth);
    $('#nuDragDialog',window.parent.document.body).css('min-height',dragOptionsBoxMinHeight+'px');
    var optionsBoxHTML = '<div id="nuDragOptionsBox" class="nuDragOptionsBox" style="width:'+dragOptionsBoxWidth+'px;height:100%;min-height:'+dragOptionsBoxMinHeight+'px;">'+
        '<div class="nuDragOptionsBoxContainer">'+
            '<div id="dragOptionsTitle" class="nuDragOptionsBoxTitle">Options</div>'+
            '<label for="nuDragOptionsFields" class="nuDragOptionsFieldsLabel">Objects Taborder</label>'+
            '<select multiple id="nuDragOptionsFields" class="nuDragOptionsFields" onchange="nuUpdateDragSelections(this);"></select>'+
                '<table>'+
                    '<tbody>'+
                        '<tr>'+
                            '<td><button class="nuDragOptionsButton nuButton" onclick="nuSpaceVertically();">Space Vertically</button></td>'+
                            '<td><button class="nuDragOptionsButton nuButton" onclick="nuAlignLeft();">Align To Left</button></td>'+
                        '</tr>'+
                        '<tr>'+
                            '<td><button class="nuDragOptionsButton nuButton" onclick="nuSpaceHorizontally();">Space Horizontally</button></td>'+
                            '<td><button class="nuDragOptionsButton nuButton" onclick="nuAlignRight();">Align To Right</button></td>'+
                        '</tr>'+
                        '<tr>'+
                            '<td><button id="move_up_btn" class="nuDragOptionsButton nuButton" onclick="nuMoveUpOrder();">Move Up Order</button></td>'+
                            '<td><button class="nuDragOptionsButton nuButton" onclick="nuAlignTop();">Align To Top</button></td>'+
                        '</tr>'+
                        '<tr>'+
                            '<td><button id="move_down_btn" class="nuDragOptionsButton nuButton" onclick="nuMoveDownOrder();">Move Down Order</button></td>'+
                            '<td><button class="nuDragOptionsButton nuButton" onclick="nuAlignBottom();">Align To Bottom</button></td>'+
                        '</tr>'+
                        '<tr>'+
                            '<td><button class="nuDragOptionsButton nuButton" onclick="nuResizeToLowest();">Resize To Shortest</button></td>'+
                            '<td><button class="nuDragOptionsButton nuButton" onclick="nuResizeToThinnest();">Resize To Thinnest</button></td>'+
                        '</tr>'+
                        '<tr>'+
                            '<td><button class="nuDragOptionsButton nuButton" onclick="nuResizeToHighest();">Resize To Tallest</button></td>'+
                            '<td><button class="nuDragOptionsButton nuButton" onclick="nuResizeToWidest();">Resize To Widest</button></td>'+
                        '</tr>'+
                        '<tr>'+
                            '<td></td>'+
                            '<td><button class="nuDragOptionsButton nuButton nuSaveButtonEdited" style="font-weight: bold;" onclick="nuSaveNuDrag();">Save</button></td>'+
                        '</tr>'+
                    '</tbody>'+
                '</table>'+
        '</div>'+
    '</div>';
    $('#nuDragDialog',window.parent.document.body).append(optionsBoxHTML);
    nuInitialiseDragState();
    nuPopulateFieldsList(0);
    $('.nuTab[id^="nuTab"]').prop('onclick','');
    $('.nuTab[id^="nuTab"]').click(function(){
        if($(this).hasClass('nuTabSelected'))
            return;
        nuClearFieldsList();
        nuUnselectAllDragObjects();
        nuSelectTab(this);
        nuPopulateFieldsList(Number($(this).attr('data-nu-tab-filter')));
        nuCheckIfMovingTabOrderAllowed($('#nuDragOptionsFields',window.parent.document.body));
    });
    nuCheckIfMovingTabOrderAllowed($('#nuDragOptionsFields'));
}

function nuResizeToLowest(){
    var lowest = 1000000;
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        if($(this).height() < lowest){
            lowest = $(this).height();
        }
    });
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        $(this).css('height',lowest+'px');
    });
}

function nuResizeToThinnest(){
    var thinnest = 1000000;
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        if($(this).width() < thinnest){
            thinnest = $(this).width();
        }
    });
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        $(this).css('width',thinnest+'px');
    });
}

function nuResizeToHighest(){
    var highest = 0;
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        if($(this).height() > highest){
            highest = $(this).height();
        }
    });
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        $(this).css('height',highest+'px');
    });
}

function nuResizeToWidest(){
    var widest = 0;
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        if($(this).width() > widest){
            widest = $(this).width();
        }
    });
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        $(this).css('width',widest+'px');
    });
}

function nuSortObjAsc(a,b) {
    return a.top - b.top;
}

function nuSpaceHorizontally(){
    var selectedFields = [];
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        selectedFields.push({
            left: $(this).position().left,
            width: $(this).width(),
            id: $(this).prop('id')
        });
    });
    selectedFields.sort(nuSortObjAsc);
    var gapTotal = 0;
    var leftTotal = 0;
    for(var i=1; i<selectedFields.length; i++){
        gapTotal += selectedFields[i].left-(selectedFields[i-1].left+selectedFields[i-1].width);
        leftTotal += selectedFields[i].left-selectedFields[i-1].left;
    }
    var gapAvg = Math.round(gapTotal/(selectedFields.length-1));
    var leftAvg = Math.round(leftTotal/(selectedFields.length-1));
    if(gapAvg < 0){
        for(var i=1; i<selectedFields.length; i++){
            $('#'+selectedFields[i].id,$('#nuDragDialog iframe').contents()).css('left',($('#'+selectedFields[i-1].id,$('#nuDragDialog iframe').contents()).position().left+leftAvg)+'px');
        }
    } else {
        for(var i=1; i<selectedFields.length; i++){
            $('#'+selectedFields[i].id,$('#nuDragDialog iframe').contents()).css('left',($('#'+selectedFields[i-1].id,$('#nuDragDialog iframe').contents()).position().left+$('#'+selectedFields[i-1].id,$('#nuDragDialog iframe').contents()).width()+gapAvg)+'px');
        }
    }
}

function nuSpaceVertically(){
    var selectedFields = [];
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        selectedFields.push({
            top: $(this).position().top,
            height: $(this).height(),
            id: $(this).prop('id')
        });
    });
    selectedFields.sort(nuSortObjAsc);
    var gapTotal = 0;
    var topTotal = 0;
    for(var i=1; i<selectedFields.length; i++){
        gapTotal += selectedFields[i].top-(selectedFields[i-1].top+selectedFields[i-1].height);
        topTotal += selectedFields[i].top-selectedFields[i-1].top;
    }
    var gapAvg = Math.round(gapTotal/(selectedFields.length-1));
    var topAvg = Math.round(topTotal/(selectedFields.length-1));
    if(gapAvg < 0){
        for(var i=1; i<selectedFields.length; i++){
            $('#'+selectedFields[i].id,$('#nuDragDialog iframe').contents()).css('top',($('#'+selectedFields[i-1].id,$('#nuDragDialog iframe').contents()).position().top+topAvg)+'px');
        }
    } else {
        for(var i=1; i<selectedFields.length; i++){
            $('#'+selectedFields[i].id,$('#nuDragDialog iframe').contents()).css('top',($('#'+selectedFields[i-1].id,$('#nuDragDialog iframe').contents()).position().top+$('#'+selectedFields[i-1].id,$('#nuDragDialog iframe').contents()).height()+gapAvg)+'px');
        }
    }
}

function nuAlignRight(){
    var rightestFieldID = '';
    var rightestPoint = 0;
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        if($(this).position().left+$(this).width() > rightestPoint){
            rightestFieldID = $(this).prop('id');
            rightestPoint = $(this).position().left+$(this).width();
        }
    });
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        $(this).css('left',(rightestPoint-$(this).width())+'px');
    });
}

function nuAlignLeft(){
    var leftestFieldID = '';
    var leftestPoint = 1000000;
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        if($(this).position().left < leftestPoint){
            leftestFieldID = $(this).prop('id');
            leftestPoint = $(this).position().left;
        }
    });
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        $(this).css('left',leftestPoint+'px');
    });
}

function nuAlignTop(){
    var highestFieldID = '';
    var highestPoint = 1000000;
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        if($(this).position().top < highestPoint){
            highestFieldID = $(this).prop('id');
            highestPoint = $(this).position().top;
        }
    });
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        $(this).css('top',highestPoint+'px');
    });
}

function nuAlignBottom(){
    var lowestFieldID = '';
    // its 0 here because technically top: 0px is the highest...
    var lowestPoint = 0;
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        if($(this).position().top + $(this).height() > lowestPoint){
            lowestFieldID = $(this).prop('id');
            lowestPoint = $(this).position().top + $(this).height();
        }
    });
    $('div.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        $(this).css('top',(lowestPoint-$(this).height())+'px');
    });
}

function nuSaveNuDrag(){
    $("body").append('<div id="overlay" style="background-color:grey;position:absolute;top:0;left:0;height:100%;width:100%;z-index:999;"></div>');
    var w       = $('#nuDragDialog iframe')[0].contentWindow.nuGetFormState();
    w.call_type = 'nudragsave';
    if(!nuPutFieldDimensionsIntoState()){
        return;
	}
	
    w.nuDragState = $('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState;
    $.ajax({
        url      : "nuapi.php",
        type     : "POST",
        data     : {nuSTATE : w},
        dataType : "json"
        }).done(function(data){
            if(nuErrorMessages(data.errors)){
                $("#overlay").remove();
                alert(data.errors[0]);
            } else {
                $('div#nuDragDialog div#dialogTitle img#dialogClose').click();
                nuGetBreadcrumb(window.nuBC.length-1);
                $("#overlay").remove();
            }
        }).fail(function(xhr, err){
            $("#overlay").remove();
            alert(nuFormatAjaxErrorMessage(xhr, err));
        });
}

function nuPutFieldDimensionsIntoState(){
    for(var tabNo=0; tabNo<$('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs.length; tabNo++){
        for(var fieldNo=0; fieldNo<$('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[tabNo].objects.length; fieldNo++){
            var field = $('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[tabNo].objects[fieldNo];
            if($('div#'+field.id,$('#nuDragDialog iframe').contents()).length == 1){
                $('div#'+field.id,$('#nuDragDialog iframe').contents()).show();
                field.left = $('div#'+field.id,$('#nuDragDialog iframe').contents()).position().left;
                field.top = $('div#'+field.id,$('#nuDragDialog iframe').contents()).position().top;
                field.width = $('div#'+field.id,$('#nuDragDialog iframe').contents()).width();
                field.height = $('div#'+field.id,$('#nuDragDialog iframe').contents()).height();
                $('div#'+field.id,$('#nuDragDialog iframe').contents()).hide();
            } else {
                alert('Error putting field dimensions into state with id: '+field.id);
                return false;
            }
        }
    }
    return true;
}

function nuUpdateDragSelections(fieldsSelectBox){
    nuUnselectAllDragObjects();
    nuCheckIfMovingTabOrderAllowed(fieldsSelectBox);
    $('option:selected', fieldsSelectBox).each(function(){
        $('#'+$(this).prop('id').replace('drag_',''),$('#nuDragDialog iframe').contents()).addClass('nuDragSelected');
    });
}

function nuCheckIfMovingTabOrderAllowed(fieldsSelectBox){
    if($('option:selected', fieldsSelectBox).length == 1){
        $('#move_down_btn, #move_up_btn').removeAttr('disabled');
        $('#move_down_btn, #move_up_btn').removeClass('nuDragOptionsButtonDisabled');
        $('#move_down_btn, #move_up_btn', window.parent.document.body).removeAttr('disabled');
        $('#move_down_btn, #move_up_btn', window.parent.document.body).removeClass('nuDragOptionsButtonDisabled');
    } else {
        $('#move_down_btn, #move_up_btn').prop('disabled','disabled');
        $('#move_down_btn, #move_up_btn').addClass('nuDragOptionsButtonDisabled');
        $('#move_down_btn, #move_up_btn', window.parent.document.body).prop('disabled','disabled');
        $('#move_down_btn, #move_up_btn', window.parent.document.body).addClass('nuDragOptionsButtonDisabled');
    }
}

function nuUnselectAllDragObjects(){
    $('.nuDragSelected').each(function(){
        $(this).removeClass('nuDragSelected');
    });
    $('.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        $(this).removeClass('nuDragSelected');
    });
}

function nuClearFieldsList(){
    $('#nuDragOptionsFields',window.parent.document.body).html('');
}

function nuPopulateFieldsList(currentlySelectedTabNo){
    var tabOrderSearch = nuGetMinTabOrderInTab(currentlySelectedTabNo);
    var field = null;
    for(var i=0; i<window.nuDragOptionsState.tabs[currentlySelectedTabNo].objects.length; i++){
        for(var j=0; j<window.nuDragOptionsState.tabs[currentlySelectedTabNo].objects.length; j++){
            field = window.nuDragOptionsState.tabs[currentlySelectedTabNo].objects[j];
            if(field.tab_order == tabOrderSearch)
                $('#nuDragOptionsFields',window.parent.document.body).append('<option id="drag_'+field.id+'">'+field.id+'</option>');
        }
        tabOrderSearch = tabOrderSearch + 10;
    }
    nuSetTabOrderDataAttrs();
}

function nuGetMinTabOrderInTab(currentTabNo){
    var minTabOrder = 1000000;
    for(var i=0; i<window.nuDragOptionsState.tabs[currentTabNo].objects.length; i++){
        if(window.nuDragOptionsState.tabs[currentTabNo].objects[i].tab_order < minTabOrder)
            minTabOrder = window.nuDragOptionsState.tabs[currentTabNo].objects[i].tab_order;
    }
    if(minTabOrder == 1000000)
        return null;
    return minTabOrder;
}

function nuMoveSelected() {

	var s = document.getElementsByClassName('nuDragSelected');
	var l = 0;
	var t = 0;
	var o = {};

	for(var i = 0 ; i < s.length ; i ++){

		o       = s[i].style;
		l       = parseInt(o.left) + (window.moveX - window.lastMoveX);
		t       = parseInt(o.top)  + (window.moveY - window.lastMoveY);
		o.left  = l + 'px';
		o.top   = t + 'px';

	}
}

function nuCanMove() {
	
	var s = document.getElementsByClassName('nuDragSelected');
	var l = 0;
	var t = 0;
	var o = {};

	for(var i = 0 ; i < s.length ; i ++){

		o       = s[i].style;
		l       = parseInt(o.left) + (window.moveX - window.lastMoveX);
		r       = l + parseInt(o.width);
		t       = parseInt(o.top)  + (window.moveY - window.lastMoveY);
		b       = t + parseInt(o.height);

		if(l < 0) {
			return false;
		}
		
		if(t < 0) {
			return false;
		}
		
	}

	return true;

}

function nuGetTopArea() {
	return 115; //need to do this more accurately
}