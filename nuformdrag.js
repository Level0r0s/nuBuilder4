window.addEventListener("mousemove", function(e) {
	var draggable = 0;
	if(window.nuBC[window.nuBC.length-1].record_id == '-2') {
		draggable = 1;
	}

	if(draggable) {
		if(e.stopPropagation) e.stopPropagation();
		if(e.preventDefault) e.preventDefault();
		e.cancelBubble=true;
		e.returnValue=false;

		dragBox();
	}
}, false);

window.addEventListener("mousedown", function(e) {
	var draggable = 0;
	if(window.nuBC[window.nuBC.length-1].record_id == '-2') {
		draggable = 1;
	}
	
	if(draggable) {
		createBox();
	}
}, false);

window.addEventListener("mouseup", function(e) {
	var draggable = 0;
	if(window.nuBC[window.nuBC.length-1].record_id == '-2') {
		draggable = 1;
	}
	
	if(draggable) {
		removeBox(event.ctrlKey);
	}
}, false);

function createBox(){
	
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
	
	window.startX = event.clientX + window.scrollX;
	window.startY = event.clientY + window.scrollY;
	window.moveX = 0;
	window.moveY = 0;
}

function dragBox() {
	if($('#nuSelectBox').length > 0){   
		window.lastMoveX = window.moveX;
		window.lastMoveY = window.moveY;
		window.moveX = event.clientX - window.startX;
		window.moveY = event.clientY - window.startY;
		
		resizeDrag();
	}
	
	if(event.buttons) {
		moveSelected();
	}
}

function resizeDrag() {
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

	o.each(function(index) {
	
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
	});
	
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
	//this.setSelectedCoordinates();
}

function getTopArea() {
	return 115; //need to do this more accurately
}