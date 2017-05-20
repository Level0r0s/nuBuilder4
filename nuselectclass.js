
class nuSelectObject{
	
	constructor() {
		
		this.boxes		= [];
		this.boxID		= '';
		this.rows		= 0;
		this.frame		= $('#sqlframe').contents();
		
	}
	

	addBox(t){

		var s			= nuFORM.tableSchema
		var n			= s[t].names;
		var p			= s[t].types;
		var i			= nuID();
		this.boxID		= 'box' + i;
		this.scrollID	= 'scroll' + i;

		var w			= this.nuBoxWidth(s, t);
		
		var box			= document.createElement('div');		//-- box

		box.setAttribute('id', this.boxID);
		this.frame.find('body').append(box);
		this.frame.find('#' + this.boxID).css({
			'width'        		: w,
			'height'       		: Math.min(20 + (n.length * 20), 190),
			'top'				: 20,
			'left'				: 20,
			'position'			: 'absolute',
			'border'			: 'solid grey 1px',
			'overflow'			: 'hidden',
			'padding-top'		: '5px',
			'background-color'	: 'darkgrey',
			'z-index'			: -1,
		})
		.attr('data-nu-was', Math.min(20 + (n.length * 20), 190))
		.addClass('nuBox')
		.addClass('nuBoxHeader')
		.addClass('nuBoxShadow');
		
		
		var scroll	= document.createElement('div');			//-- scroll

		scroll.setAttribute('id', this.scrollID);
		
		this.frame.find('#' + this.boxID).append(scroll);
		this.frame.find('#' + scroll.id).css({
			'width'        		: w,
			'height'       		: Math.min(20 + (n.length * 20), 175),
			'top'				: 22,
			'left'				: 0,
			'overflow'			: 'scroll',
			'overflow-x'		: 'hidden',
			'line-height'		: 1,
		})
		.addClass('nuDragNoSelect')
		.addClass('nuBoxHeader');

		var tbl	= document.createElement('div');				//-- tablename

		tbl.setAttribute('id', 'tablename' + this.boxID);
		
		this.frame.find('#' + this.boxID).append(tbl);
		
		this.frame.find('#' + tbl.id)
		.css({
			'position'			: 'absolute',
			'width'				: 280,
			'height'			: 15,
			'top'				: 2,
			'left'				: 0,
			'padding-left'		: 22,
			'text-align'		: 'left',
			'border' 			: 'none',
			'font-weight'		: 'bold',
			'background-color'	: 'darkgrey',
		})
		.html(t)
		.addClass('nuDragNoSelect')
		.mousemove(function(event){
			nuMoveBox(event);
		})
		.mousedown(function(event){

			window.nuY	= event.clientY - parseInt($(event.target).parent().css('top'));
			window.nuX	= event.clientX - parseInt($(event.target).parent().css('left'));
			
		})
		.mouseup(function(event){

			window.nuY	= parseInt($(event.target).parent().css('top'));
			window.nuX	= parseInt($(event.target).parent().css('left'));
			
		})
		.addClass('nuBoxTitle');
		
		
		
		var bck	= document.createElement('input');								//-- checkbox all

		bck.setAttribute('id', 'checkall' + this.boxID);
		
		this.frame.find('#' + this.boxID).append(bck);
		
		this.frame.find('#' + bck.id)
		.css({
			'position'			: 'absolute',
			'width'				: 20,
			'top'				: 2,
			'left'				: -1,
		})
		.attr('type', 'checkbox')
		.val(t);
		


		var col	= document.createElement('input'); 								//-- table alias

		col.setAttribute('id', 'alias' + this.boxID);
		
		this.frame.find('#' + this.boxID).append(col);
		
		this.frame.find('#' + col.id)
		.css({
			'position'			: 'absolute',
			'width'				: 30,
			'top'				: 2,
			'right'				: 40,
			'background-color'	: 'darkgrey',
		})
		
		for(this.rows = 0 ; this.rows < n.length ; this.rows++){
			this.boxRow(this.rows, n[this.rows], p[this.rows]);
		}
		
		var s = document.createElement('div');									//-- resize box
		
		s.setAttribute('id', 'nu_box_size' + this.boxID);
		
		this.frame.find('#' + this.boxID).append(s);
		
		this.frame.find('#' + s.id).css({
			'width'				: 20,
			'height'			: 15,
			'top'				: 5,
			'right'				: 20,
			'position'			: 'absolute',
			'text-align'    	: 'center'
		})
		.html('<img onclick="nuResizeBox(event)" id="nbs' + this.boxID + '" src="nu_box_size.png" width="10px" height="10px">')
		.addClass('nuButtonHover')
		.addClass('nuSearchListClose');
		

		var x = document.createElement('div');									//-- close box
		
		x.setAttribute('id', 'nuBoxClose' + this.boxID);
		
		this.frame.find('#' + this.boxID).append(x);
		
		this.frame.find('#' + x.id).css({
			'width'				: 20,
			'height'			: 15,
			'top'				: 5,
			'right'				: 2,
			'position'			: 'absolute',
			'color'				: 'black',
			'text-align'    	: 'center',
		})
		.html('<img onclick="$(this).parent().parent().remove()" id="nbc' + this.boxID + '" src="nu_box_close.png" width="10px" height="10px">')
		.addClass('nuButtonHover')
		.addClass('nuSearchListClose');
		
	}

	nuBoxWidth(s, t){
		
		var s	= nuFORM.tableSchema
		var n	= s[t].names;
		
		var w	= nuGetWordWidth(t) + 130;
		
		for(var i = 0 ; i < s[t].names.length ; i++){
			w	= Math.max(w, nuGetWordWidth(s[t].names[i]));
		}
		
		return w;

	}
	

	boxRow(i, v, t){
			
		this.boxColumn('select', i, 0, 	18,	v, '');
		this.boxColumn('field', i, 22, 	300,v,  t);
		
	}
	


	boxColumn(c, t, l, w, v, title){

		if(c == 'select'){
			var col	= document.createElement('input');
		}else{
			var col	= document.createElement('span');
		}

		col.setAttribute('id', c + '_' + t + '_' + this.boxID);
		
		this.frame.find('#' + this.scrollID).append(col);
		
		this.frame.find('#' + col.id)
		.css({
			'position'	: 'absolute',
			'width'		: w,
			'top'		: t * 18,
			'left'		: l,
		})
		.attr('title', title);

		if(c == 'select'){

			this.frame.find('#' + col.id)
			.attr('type', 'checkbox')
			.val(v);
			
		}else{

			this.frame.find('#' + col.id)
			.attr('type', 'checkbox')
			.css('padding-top', 2)
			.html(v);
			
		}
		
	}
	
}



function nuResizeBox(e){
	
	var b	= this.frame.find(e.target).parent().parent();
	var i	= parseInt(b.css('height'));
	var w	= Number(b.attr('data-nu-was'));
	var m	= 17;
	
	if(w == i){
		this.frame.find('#' + b[0].id).css('height', m);
	}else{
		this.frame.find('#' + b[0].id).css('height', w);
	}


}

function nuMoveBox(e){

	var f	= $('#sqlframe').contents();
	
	if(e.originalEvent.buttons == 1){
		
		$(e.target).parent().css('top', e.clientY - window.nuY);
		$(e.target).parent().css('left', e.clientX - window.nuX);
		
	}
	
}

function nuAngle(From, To){
	
	var f	= $('#' + From).offset();
	var t	= $('#' + To).offset();
	var d 	= Math.atan2(f.top - t.top, f.left - t.left) * 180 / Math.PI;		//-- angle in degrees
	var a 	= Math.max(f.top - t.top, t.top - f.top) * 2;
	var b 	= Math.max(f.left - t.left, t.left - f.left) * 2;
	var c	= a+b;
	
	
	console.log(d, c);
	
	$('body').append('<div id="from' + From + '" style="position:absolute;left:' + f.left + 'px;top:' + f.top + 'px;width:'  +  c + 'px;transform: rotate(' + d + 'deg)"><hr><\div>')

}