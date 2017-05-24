window.nuRelationships	= [];


class nuSelectObject{
	
	constructor() {
		
		window.nuRelationships	= [];
		this.boxes				= [];
		this.boxID				= '';
		this.frame				= $('#sqlframe').contents();
		this.table				= '';
		
	}
	

	addBox(t){

		this.table		= t;
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
		.addClass('nuDragNoSelect')
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
		.change(function(){

			var f	= $(this).val();											//-- alias
			var i	= this.id.substr(5);
			console.log('.' + i + '.nuBoxField', $('.' + i + '.nuBoxField').length);
			if(f == ''){
				f	= $('#tablename' + i).html();								//-- table name
			}
			
			$('#sqlframe').contents().find('.' + i + '.nuBoxField').attr('data-nu-table', f);
			
		})
		
		for(var rows = 0 ; rows < n.length ; rows++){
			this.boxRow(rows, n[rows], p[rows]);
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
		.addClass('nuDragNoSelect')
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
		.addClass('nuDragNoSelect')
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

		this.frame.find('.nuBoxField')
		.unbind()

		.attr('onmousedown', 	'nuFieldMouseDown(event)')
		.attr('onmouseup', 		'nuFieldMouseUp(event)')
		.attr('onmouseover', 	'nuFieldMouseOver(event)')

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
			.attr('data-nu-table', this.table)
			//.attr('draggable', 'true')
			.addClass('nuBoxTitle')
			.addClass('nuBoxField')
			.addClass(this.boxID)
			.css('width', '')
			.css('padding-top', 2)
			.html(v);
			
		}
		
	}
	
}

//$('#sqlframe').contents()

function nuFieldMouseOver(e){
	
	e.preventDefault();	
	
}


function nuFieldMouseUp(e){
	
	e.preventDefault();	
	
	if(window.nuRelationA == ''){return;}
	
	var t				= $(e.target).attr('data-nu-table')
	
	nuAngle(window.nuRelationA, e.target.id);

	window.nuRelationA	= '';
	
}


function nuFieldMouseDown(e){

	var t				= $(e.target).attr('data-nu-table')
	window.nuRelationA	= e.target.id;
	
	console.log(window.nuRelationA, e.target.id);
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


	if(e.originalEvent.buttons == 1){
		console.log('nuMoveBox', $("#sqlframe")[0].contentWindow.nuRelationships, e.target.id);
		
		$(e.target).parent().css('top', e.clientY - window.nuY);
		$(e.target).parent().css('left', e.clientX - window.nuX);
		nuBuildRelationships();
		
	}
		
}


function nuAngle(F, T){									//- from, to, ID (if one)

	var o	= $('#' + F).offset();
	var b	= {'top' : o.top, 'left' : o.left};
	var o	= $('#' + T).offset();
	var a	= {'top' : o.top, 'left' : o.left};
	
	window.nuRelationships.push([[F], [T]]);
	
	
	if(b.left > a.left){
		
		f	= a;
		t	= b;

	}else{
		
		f	= b;
		t	= a;

	}


	
	if(f.box == ''){return;}

	var d 	= Math.atan2(f.top - t.top, f.left - t.left) * 180 / Math.PI;		//-- angle in degrees
	var a 	= Math.max(f.top - t.top);
	var b 	= Math.max(f.left - t.left);
	var c	= Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2));
	var i	= 'relation' + nuID();

	var R = document.createElement('div');										//-- relationship line
	
	R.setAttribute('id', i);
	
	$('body').append(R);
	
	$('#' + R.id).css({
		'width'				: c,
		'height'			: 0,
		'left'				: f.left,
		'top'				: f.top,
		'position'			: 'absolute',
		'text-align'    	: 'center',
		'border'			: 'black 1px solid',
		'transform'			: 'rotate(' + d + 'deg)',
	})
	.addClass('nuRelationships');

	var F	= $('#' + R.id).position();

	$('#' + i)
	.css('top', f.top + (f.top - F.top + 8))
	.css('left', f.left + f.left - F.left - 20);



}


function nuAllowDrop(e){
	
    e.preventDefault();
	
}

function nuBuildRelationships(){
	
	var r	= nuRelationships;

	console.log('nuBuildRelationships',parent.nuRelationships);
	
	$('#sqlframe').contents().find('.nuRelationships').remove();
	
	for(var i = 0 ; i < r.length ; i++){
		nuAngle(r[i][0], r[i][1]);
	}
	

	
}

function nuDragField(e){
	
	if(e.dataTransfer !== undefined){
		e.dataTransfer.setData("text", e.target.id);
	}
	
}

function nuDrop(e){
	
	if(e.dataTransfer !== undefined){
		
		e.preventDefault();
		var data = e.dataTransfer.getData("text");
		e.target.appendChild(document.getElementById(data));
		
	}
	
}

