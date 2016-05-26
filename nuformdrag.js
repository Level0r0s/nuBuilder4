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
    });
}

function unbindDragEvents(){
    $(document).off('.nuformdrag');
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

function createDragOptionsBox(){
    var dragOptionsBoxWidth = 300;
    $('#nuDragDialog',window.parent.document.body).css('width',$('#nuDragDialog',window.parent.document.body).width()+dragOptionsBoxWidth);
    $('#nuDragDialog',window.parent.document.body).append('<div id="nuDragOptionsBox" class="nuDragOptionsBox" style="width:'+dragOptionsBoxWidth+'px;height:'+$('#nuDragDialog',window.parent.document.body).height()+'px;">'+
        '<div id="dragOptionsTitle" class="nuDragOptionsBoxTitle">Options</div>'+
    '</div>'
    );

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