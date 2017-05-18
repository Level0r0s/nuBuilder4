
class nuSelectObject{
	
	constructor() {
		
		this.boxes		= [];
		this.boxID		= '';
		this.rows		= 0;
		
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
		
		$('body').append(box);
		$('#' + this.boxID).css({
			'width'        		: w,
			'height'       		: Math.min(20 + (n.length * 20), 200),
			'top'				: 190,
			'left'				: 20,
			'border'			: 'solid grey 1px',
			'overflow'			: 'hidden',
			'padding-top'		: '5px',
			'line-height'		: '20px',
			'background-color'	: 'darkgrey',
		})
		.addClass('nuBoxHeader');
		
		
		var scroll	= document.createElement('div');			//-- scroll

		scroll.setAttribute('id', this.scrollID);
		
		$('#' + this.boxID).append(scroll);
		$('#' + scroll.id).css({
			'width'        		: w,
			'height'       		: Math.min(20 + (n.length * 20), 185),
			'top'				: 21,
			'left'				: 0,
			'overflow'			: 'scroll',
			'overflow-x'		: 'hidden',
			'line-height'		: 1,
		})
		.addClass('nuBoxHeader');

		var tbl	= document.createElement('input');				//-- tablename

		tbl.setAttribute('id', 'tablename' + this.boxID);
		
		$('#' + this.boxID).append(tbl);
		
		$('#' + tbl.id)
		.css({
			'position'			: 'absolute',
			'width'				: 280,
			'top'				: 2,
			'left'				: 22,
			'text-align'		: 'left',
			'border' 			: 'none',
			'font-weight'		: 'bold',
			'background-color'	: 'darkgrey',
		})
		.val(t)
		.addClass('nuDragNoSelect')
		.prop('readonly', true)
		.mousemove(function(event){
			nuMoveBox(event);
		})
		.mousedown(function(event) {
			
			var i 		= event.target.id;
			window.nuY	= event.clientY - parseInt($('#' + i).css('top'));
			window.nuX	= event.clientX - parseInt($('#' + i).css('left'));

		})
		.addClass('nuBoxTitle');
		
		
		
		var bck	= document.createElement('input');						//-- checkbox all

		bck.setAttribute('id', 'checkall' + this.boxID);
		
		$('#' + this.boxID).append(bck);
		
		$('#' + bck.id)
		.css({
			'position'			: 'absolute',
			'width'				: 20,
			'top'				: 2,
			'left'				: -1,
		})
		.attr('type', 'checkbox')
		.val(t);
		


		var col	= document.createElement('input'); 							//-- table alias

		col.setAttribute('id', 'alias' + this.boxID);
		
		$('#' + this.boxID).append(col);
		
		$('#' + col.id)
		.css({
			'position'	:  'absolute',
			'width'		:  30,
			'top'		:  2,
			'right'		:  40,
			'background-color'	: 'darkgrey',
		})
		
		for(this.rows = 0 ; this.rows < n.length ; this.rows++){
			this.boxRow(this.rows, n[this.rows], p[this.rows]);
		}
		
		var s = document.createElement('div');									//-- resize box
		
		s.setAttribute('id', 'nu_box_size' + this.boxID);
		
		$('#' + this.boxID).append(s);
		
		$('#' + s.id).css({
			'width'				: 20,
			'height'			: 15,
			'top'				: 5,
			'right'				: 20,
			'position'			: 'absolute',
			'text-align'    	: 'center'
		})
		.html('<img onclick="nuResizeBox(event)" id="nbs' + this.boxID + '" src="nu_box_size.png" width="10px" height="10px">')
		.addClass('nuSearchListClose');
		

		var x = document.createElement('div');					//-- close box
		
		x.setAttribute('id', 'nuBoxClose' + this.boxID);
		
		$('#' + this.boxID).append(x);
		
		$('#' + x.id).css({
			'width'				: 20,
			'height'			: 15,
			'top'				: 5,
			'right'				: 2,
			'position'			: 'absolute',
			'color'				: 'black',
			'text-align'    	: 'center',
		})
		.html('<img onclick="nuResizeBox(event)" id="nbc' + this.boxID + '" src="nu_box_close.png" width="10px" height="10px">')
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
		
		$('#' + this.scrollID).append(col);
		
		$('#' + col.id)
		.css({
			'position'	: 'absolute',
			'width'		: w,
			'top'		: t * 18,
			'left'		: l,
		})
		.attr('title', title);

		if(c == 'select'){

			$('#' + col.id)
			.attr('type', 'checkbox')
			.val(v);
			
		}else{

			$('#' + col.id)
			.attr('type', 'checkbox')
			.css('padding-top', 2)
			.html(v);
			
		}
		
	}
	
}



function nuResizeBox(e){

	
	var b	= e.target.id.substr(4);					//-- box
	var s	= 'scroll' + b.substr(3);					//-- scroll
	var a	= 'aliasbox' + b.substr(3);					//-- scroll
	var w	= parseInt($('#' + b).css('width'));
	
	console.log(a);
	
	if(w == 934){
		
		$('#' + b).css('width', 341);
		$('#' + s).css('width', 341);
		$('#' + a).hide();
		
	}else{
		
		$('#' + b).css('width', 934);
		$('#' + s).css('width', 934);
		$('#' + a).show();
		
	}


}

function nuMoveBox(e){
	
	if(e.originalEvent.buttons == 1){
		
		$(e.target).parent().css('top', e.clientY - window.nuY);
		$(e.target).parent().css('left', e.clientX - window.nuX);
		
	}
	
}



