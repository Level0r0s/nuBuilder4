

//-- object for dragging dialog --//

function nuCreateDialog(t){

	this.startX     = 0;
	this.startY     = 0;
	this.moveX      = 0;
	this.moveY      = 0;
	this.title      = t;
	
	this.move = function(event) {
	
		this.moveX  = event.clientX - this.startX ;
		this.moveY  = event.clientY - this.startY;
		this.startX = event.clientX;
		this.startY = event.clientY;
		if(event.buttons == 1 && event.target.id == 'dialogTitleWords'){

			this.moveDialog();
			
		}
		
		if(event.target.id == 'dialogClose'){
			$('#dialogClose').css('background-color','lightgrey');
		}else{
			$('#dialogClose').css('background-color','');
		}
		
	}
	
	this.click = function(event) {
	
		if(event.target.id == 'dialogClose'){
			$('#nuDragDialog').remove();
		}
		
	}

	this.moveDialog = function() {
		var s = document.getElementById('nuDragDialog');
		var o = s.style;
		var l = parseInt(o.left) + this.moveX;
		var t = parseInt(o.top)  + this.moveY;
		
		o.left  = l + 'px';
		o.top   = t + 'px';

	}

	this.createDialog = function(l, t, w, h, title) {
		
		nuDIALOG.dialog = this.createDialog.caller.name;
		var e = document.createElement('div');

		e.setAttribute('id', 'nuDragDialog');

		$('body').append(e);

		$('#nuDragDialog').addClass('nuDragDialog nuDragNoSelect');
		$('#nuDragDialog').css({'left':l, 'top':t, 'width':w, 'height':h, 'background-color':'#F0F0F0', 'z-index': 3000, 'position':'absolute'});
		$('#nuDragDialog').html('<div id="dialogTitle" style="background-color:#CCCCCC ;position:absolute;width:100%;height:30px;font-size:16px;font-family:Helvetica"><div id="dialogTitleWords" style="padding-top: 6px;height:30px;">&nbsp;&nbsp;'+title+'</div><img id="dialogClose" src="close.png" style="position:absolute; top:0px; right:0px"></div>');
		
		$('#nuDragDialog').on('mousemove', function(event){nuDragD.move(event);});
		$('#nuDragDialog').on('mouseout', function(event){$('#dialogClose').css('background-color','');});
		$('#nuDragDialog').on('click',     function(event){nuDragD.click(event);});
		
		this.startX = l;
		this.startY = t;

	}
	
}

