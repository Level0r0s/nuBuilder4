window.nuRelationships	= [];


class nuSelectObject{
	
	constructor() {
		
		window.nuRelationships	= [];
		this.boxes				= [];
		this.boxID				= '';
		this.table				= '';
		
	}
	

	addBox(t){

		this.table		= t;
		var s			= parent.nuFORM.tableSchema
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
		
		$('#' + this.boxID).append(scroll);
		$('#' + scroll.id).css({
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
		
		$('#' + this.boxID).append(tbl);
		
		$('#' + tbl.id)
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
		
		var col	= document.createElement('input'); 								//-- table alias

		col.setAttribute('id', 'alias' + this.boxID);
		
		$('#' + this.boxID).append(col);
		
		$('#' + col.id)
		.css({
			'position'			: 'absolute',
			'width'				: 30,
			'top'				: 2,
			'right'				: 18,
			'background-color'	: 'darkgrey',
		})
		.change(function(){

			var f	= $(this).val();											//-- alias
			var i	= this.id.substr(5);
			console.log('.' + i + '.nuBoxField', $('.' + i + '.nuBoxField').length);
			if(f == ''){
				f	= $('#tablename' + i).html();								//-- table name
			}
			
			$('.' + i + '.nuBoxField').attr('data-nu-table', f);
			
		})
		
		for(var rows = 0 ; rows < n.length ; rows++){
			this.boxRow(rows, n[rows], p[rows]);
		}

		var x = document.createElement('div');									//-- close box
		
		x.setAttribute('id', 'nuBoxClose' + this.boxID);
		
		$('#' + this.boxID).append(x);
		
		$('#' + x.id).css({
			'width'				: 16,
			'height'			: 15,
			'top'				: 3,
			'right'				: 1,
			'position'			: 'absolute',
			'color'				: 'black',
			'text-align'    	: 'center',
		})
		.html('<img onclick="$(this).parent().parent().remove();nuAngle()" id="nbc' + this.boxID + '" src="nu_box_close.png" width="10px" height="10px">')
		.addClass('nuDragNoSelect')
		.addClass('nuButtonHover')
		.addClass('nuSearchListClose');
		
	}

	nuBoxWidth(s, t){
		
		var s	= parent.nuFORM.tableSchema
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

		$('.nuBoxField')
		.unbind()
		.attr('onmousedown', 	'nuFieldMouseDown(event)')
		.attr('onmouseup', 		'nuFieldMouseUp(event)')
		
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


function nuFieldMouseUp(e){
	
	e.preventDefault();	
	
	if(window.nuRelationA == ''){return;}
	
	var t				= $(e.target).attr('data-nu-table')
	
	window.nuRelationships.push([[window.nuRelationA], [e.target.id]]);
	
	nuAngle();

	window.nuRelationA	= '';
	
}


function nuFieldMouseDown(e){

	var t				= $(e.target).attr('data-nu-table')
	window.nuRelationA	= e.target.id;
	console.log(e)
	
}


function nuMoveBox(e){


	if(e.originalEvent.buttons == 1){
		
		if(e.clientY - window.nuY > 0){
			$(e.target).parent().css('top', e.clientY - window.nuY);
		}
		if(e.clientX - window.nuX > 0){
			$(e.target).parent().css('left', e.clientX - window.nuX);
		}
		nuAngle();
		
	}
		
}


function nuAngle(){

	$('.nuRelationships').remove();
	
	var r					= window.nuRelationships;
	window.nuRelationships	= [];
	
	for(i = 0 ; i < r.length ; i++){
		
		if($('#' + r[i][0]).length == 1 && $('#' + r[i][1]).length == 1){
			window.nuRelationships.push([r[i][0],r[i][1]]);
		}
		
	}

	for(I = 0 ; I < window.nuRelationships.length ; I++){

		var F	= window.nuRelationships[I][0];
		var T	= window.nuRelationships[I][1];
		var o	= $('#' + F).offset();
		var p	= $('#' + F).parent().parent().offset();
		var b	= {'top' : o.top, 'left' : o.left};
		var o	= $('#' + T).offset();
		var a	= {'top' : o.top, 'left' : o.left};
		
		if(b.left > a.left){
			
			f	= a;
			t	= b;

		}else{
			
			f	= b;
			t	= a;

		}

			f	= a;
			t	= b;

		if(f.box == ''){return;}

		var d 	= Math.atan2(f.top - t.top, f.left - t.left) * 180 / Math.PI;		//-- angle in degrees
		var a 	= Math.max(f.top - t.top);
		var b 	= Math.max(f.left - t.left);
		var c	= Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2));
		var i	= 'relation' + nuID();

		var L = document.createElement('div');										//-- relationship line
		
		L.setAttribute('id', i);
		
		$('body').append(L);
		
		$('#' + L.id).css({
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

		var FROM	= $('#' + L.id).position();
		var top 	= parseInt(f.top + f.top - FROM.top);
		var left	= parseInt(f.left + f.left - FROM.left);

		

		$('#' + i)
		.css('top', top)
		.css('left', left);
		
		var off = $('#' + i).offset();
		var tdif	= top - parseInt(off.top);
		var ldif	= left - parseInt(off.left);

		var fbox	= $('#' + F).parent().parent().position();
		var tbox	= $('#' + T).parent().parent().position();
		var ffld	= $('#' + F).position();
		var tfld	= $('#' + T).position();
		

		if(fbox.top + ffld.top < tbox.top + tfld.top){
			$('#' + i).css('top', 	top - (tdif * 2));
		}


		if(fbox.left < tbox.left){
			
			$('#' + i).css('left', 	p.top);

			console.log(p.top);

		}
		
		
		
	}
	
}


function nuAllowDrop(e){
	
    e.preventDefault();
	
}

function nuBuildRelationships(){
	
	var r	= nuRelationships;

	console.log('nuBuildRelationships',parent.nuRelationships);
	
	$('.nuRelationships').remove();
	
	for(var i = 0 ; i < r.length ; i++){
		nuAngle(r[i][0], r[i][1]);
	}
	

	
}


function nuDrop(e){

	e.preventDefault();
	var data = e.dataTransfer.getData("text");
	console.log(data, 'nuDrop');
	
}

