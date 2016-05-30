function bindDragEvents(){
	
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
				dragBox(e);
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
				
				createBox(e);
			} else {

				if(!e.ctrlKey && !$('#'+e.target.id).hasClass('nuDragSelected')) {
					$('.nuDragSelected').removeClass('nuDragSelected');
				}
				
				if($('#'+e.target.id).attr('data-drag')) {
					$('#'+e.target.id).addClass('nuDragSelected');
				}
			}
		}
        updateDragFieldsListbox();
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
				removeBox(e.ctrlKey);
			}
		}
        updateDragFieldsListbox();
    });
}

function unbindDragEvents(){
    $(document).off('.nuformdrag');
}

function updateDragFieldsListbox(){
    $('#nuDragOptionsFields option:selected',window.parent.document.body).removeAttr('selected');
    $('.nuDragSelected').each(function(){
        $('#nuDragOptionsFields option[id="drag_'+$(this).prop('id')+'"]',window.parent.document.body).prop('selected','selected');
    });
}

function createBox(event){
	
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

function dragBox(event) {	

	window.lastMoveX = window.moveX;
	window.lastMoveY = window.moveY;
	window.moveX = event.clientX - window.startX;
	window.moveY = event.clientY - window.startY;
	
	if($('#nuSelectBox').length > 0) {
		resizeDrag(event);
	} else {
		if($('#nuSelectBox').length == 0 && canMove()){ 
			moveSelected();
		}
	}
}

function resizeDrag(event) {

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

function removeBox(ctrlKey) {
	
	var L = parseInt($('#nuSelectBox').css('left'));
	var T = parseInt($('#nuSelectBox').css('top')) - getTopArea();
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

function initialiseDragState(){
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

function setTabOrderDataAttrs(){
    var currentTabNo = $('div.nuTabSelected[id^="nuTab"]').attr('data-nu-tab-filter');
    for(var i=0; i<window.nuDragOptionsState.tabs[currentTabNo].objects.length; i++){
        var field = window.nuDragOptionsState.tabs[currentTabNo].objects[i];
        $('#nuDragOptionsFields option[id="drag_'+field.id+'"]',window.parent.document.body).attr('data-nu-tab-order',field.tab_order);
    }
}

function moveUpOrder(){
    var currentTabNo = $('div.nuTabSelected[id^="nuTab"]', $('#nuDragDialog iframe').contents()).attr('data-nu-tab-filter');
    var currentSelectedFieldOption = $('select#nuDragOptionsFields option:selected');
    for(var i=0; i<$('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[currentTabNo].objects.length; i++){
        var field = $('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[currentTabNo].objects[i];
        if(field.id == currentSelectedFieldOption.prop('id').replace('drag_','')){
            // if it's at the top, dont re-order anything
            if(field.id == $('select#nuDragOptionsFields option')[0].id.replace('drag_',''))
                return;
            var previousFieldDOM = $('select#nuDragOptionsFields option[data-nu-tab-order="'+(Number(currentSelectedFieldOption.attr('data-nu-tab-order'))-10)+'"]');
            var previousFieldSTATE = findFieldInState(currentTabNo, previousFieldDOM.prop('id').replace('drag_',''));
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

function moveDownOrder(){
    var currentTabNo = $('div.nuTabSelected[id^="nuTab"]', $('#nuDragDialog iframe').contents()).attr('data-nu-tab-filter');
    var currentSelectedFieldOption = $('select#nuDragOptionsFields option:selected');
    for(var i=0; i<$('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[currentTabNo].objects.length; i++){
        var field = $('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[currentTabNo].objects[i];
        if(field.id == currentSelectedFieldOption.prop('id').replace('drag_','')){
            // if it's at the bottom, dont re-order anything
            if(field.id == $('select#nuDragOptionsFields option')[($('select#nuDragOptionsFields option').length-1)].id.replace('drag_',''))
                return;
            var nextFieldDOM = $('select#nuDragOptionsFields option[data-nu-tab-order="'+(Number(currentSelectedFieldOption.attr('data-nu-tab-order'))+10)+'"]');
            var nextFieldSTATE = findFieldInState(currentTabNo, nextFieldDOM.prop('id').replace('drag_',''));
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

function findFieldInState(tabNo, fieldID){
    for(var i=0; i<$('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[tabNo].objects.length; i++){
        if($('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[tabNo].objects[i].id == fieldID)
            return $('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState.tabs[tabNo].objects[i];
    }
    return null;
}

function createDragOptionsBox(form){
    var dragOptionsBoxWidth = 330;
    $('#nuDragDialog',window.parent.document.body).css('width',$('#nuDragDialog',window.parent.document.body).width()+dragOptionsBoxWidth);
    var optionsBoxHTML = '<div id="nuDragOptionsBox" class="nuDragOptionsBox" style="width:'+dragOptionsBoxWidth+'px;height:'+$('#nuDragDialog',window.parent.document.body).height()+'px;">'+
        '<div class="nuDragOptionsBoxContainer">'+
            '<div id="dragOptionsTitle" class="nuDragOptionsBoxTitle">Options</div>'+
            '<label for="nuDragOptionsFields" class="nuDragOptionsFieldsLabel">Fields In Tab-order</label>'+
            '<select multiple id="nuDragOptionsFields" class="nuDragOptionsFields" onchange="updateDragSelections(this);"></select>'+
                '<table>'+
                    '<tbody>'+
                        '<tr>'+
                            '<td><button class="nuDragOptionsButton nuButton">Space Vertically</button></td>'+
                            '<td><button class="nuDragOptionsButton nuButton">Align To Left</button></td>'+
                        '</tr>'+
                        '<tr>'+
                            '<td><button class="nuDragOptionsButton nuButton">Space Horizontally</button></td>'+
                            '<td><button class="nuDragOptionsButton nuButton">Align To Right</button></td>'+
                        '</tr>'+
                        '<tr>'+
                            '<td></td>'+
                            '<td><button class="nuDragOptionsButton nuButton">Align To Top</button></td>'+
                        '</tr>'+
                        '<tr>'+
                            '<td><button id="move_up_btn" class="nuDragOptionsButton nuButton" onclick="moveUpOrder();">Move Up Order</button></td>'+
                            '<td><button class="nuDragOptionsButton nuButton">Align To Bottom</button></td>'+
                        '</tr>'+
                        '<tr>'+
                            '<td><button id="move_down_btn" class="nuDragOptionsButton nuButton" onclick="moveDownOrder();">Move Down Order</button></td>'+
                            '<td><button class="nuDragOptionsButton nuButton" style="font-weight: bold;" onclick="saveNuDrag();">Save</button></td>'+
                        '</tr>'+
                    '</tbody>'+
                '</table>'+
        '</div>'+
    '</div>';
    $('#nuDragDialog',window.parent.document.body).append(optionsBoxHTML);
    initialiseDragState();
    populateFieldsList(0);
    $('.nuTab[id^="nuTab"]').prop('onclick','');
    $('.nuTab[id^="nuTab"]').click(function(){
        if($(this).hasClass('nuTabSelected'))
            return;
        clearFieldsList();
        unselectAllDragObjects();
        nuSelectTab(this);
        populateFieldsList(Number($(this).attr('data-nu-tab-filter')));
        checkIfMovingTabOrderAllowed($('#nuDragOptionsFields',window.parent.document.body));
    });
    checkIfMovingTabOrderAllowed($('#nuDragOptionsFields'));
}

function saveNuDrag(){
    $("body").append('<div id="overlay" style="background-color:grey;position:absolute;top:0;left:0;height:100%;width:100%;z-index:999;"></div>');
    var w       = nuGetFormState();
    w.call_type = 'nudragsave';
    w.nuDragState = $('#nuDragDialog iframe')[0].contentWindow.nuDragOptionsState;
    $.ajax({
        url      : "nuapi.php",
        type     : "POST",
        data     : {nuSTATE : w},
        dataType : "json"
        }).done(function(data){
            $("#overlay").remove();
            if(data.success){
                $('div#nuDragDialog div#dialogTitle img#dialogClose').click();
            } else {
                alert(data.error);
            }
        }).fail(function(xhr, err){
            $("#overlay").remove();
            alert(nuFormatAjaxErrorMessage(xhr, err));
        });
}

function updateDragSelections(fieldsSelectBox){
    unselectAllDragObjects();
    checkIfMovingTabOrderAllowed(fieldsSelectBox);
    $('option:selected', fieldsSelectBox).each(function(){
        $('#'+$(this).prop('id').replace('drag_',''),$('#nuDragDialog iframe').contents()).addClass('nuDragSelected');
    });
}

function checkIfMovingTabOrderAllowed(fieldsSelectBox){
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

function unselectAllDragObjects(){
    $('.nuDragSelected').each(function(){
        $(this).removeClass('nuDragSelected');
    });
    $('.nuDragSelected',$('#nuDragDialog iframe').contents()).each(function(){
        $(this).removeClass('nuDragSelected');
    });
}

function clearFieldsList(){
    $('#nuDragOptionsFields',window.parent.document.body).html('');
}

function populateFieldsList(currentlySelectedTabNo){
    var tabOrderSearch = getMinTabOrderInTab(currentlySelectedTabNo);
    var field = null;
    for(var i=0; i<window.nuDragOptionsState.tabs[currentlySelectedTabNo].objects.length; i++){
        for(var j=0; j<window.nuDragOptionsState.tabs[currentlySelectedTabNo].objects.length; j++){
            field = window.nuDragOptionsState.tabs[currentlySelectedTabNo].objects[j];
            if(field.tab_order == tabOrderSearch)
                $('#nuDragOptionsFields',window.parent.document.body).append('<option id="drag_'+field.id+'">'+field.id+'</option>');
        }
        tabOrderSearch = tabOrderSearch + 10;
    }
    setTabOrderDataAttrs();
}

function getMinTabOrderInTab(currentTabNo){
    var minTabOrder = 1000000;
    for(var i=0; i<window.nuDragOptionsState.tabs[currentTabNo].objects.length; i++){
        if(window.nuDragOptionsState.tabs[currentTabNo].objects[i].tab_order < minTabOrder)
            minTabOrder = window.nuDragOptionsState.tabs[currentTabNo].objects[i].tab_order;
    }
    if(minTabOrder == 1000000)
        return null;
    return minTabOrder;
}

function moveSelected() {

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

function canMove() {
	
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

function getTopArea() {
	return 115; //need to do this more accurately
}