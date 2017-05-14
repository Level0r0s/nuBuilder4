
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
		var f			= n.length;
		var i			= nuID();
		this.boxID		= 'box' + i;
		this.scrollID	= 'scroll' + i;
		
		var box			= document.createElement('div');		//-- box

		box.setAttribute('id', this.boxID);
		
		$('body').append(box);
		$('#' + this.boxID).css({
			'width'        		: 914,
			'height'       		: 200,
			'top'				: 190,
			'left'				: 20,
			'border'			: 'solid grey 1px',
			'overflow'			: 'hidden',
			'padding-top'		: '5px',
			'line-height'		: '20px',
		})
		.addClass('nuBoxHeader');

		var scroll	= document.createElement('div');			//-- scroll

		scroll.setAttribute('id', 'scroll' + i);
		
		$('#' + this.boxID).append(scroll);
		$('#' + scroll.id).css({
			'width'        		: 914,
			'height'       		: 150,
			'top'				: 50,
			'left'				: 0,
			'overflow'			: 'scroll',
			'overflow-x'		: 'hidden',
			'line-height'		: 30,
		})
		.addClass('nuBoxHeader');

		var tbl	= document.createElement('input');				//-- tablename

		tbl.setAttribute('id', 'tablename' + this.boxID);
		
		$('#' + this.boxID).append(tbl);
		
		$('#' + tbl.id)
		.css({
			'position'			: 'absolute',
			'width'				: 260,
			'top'				: 5,
			'left'				: 23,
			'text-align'		: 'center',
			'border' 			: 'none',
			'color'				: 'black',
			'font-weight'		: 'bold',
		})
		.val(t)
		.prop('readonly', true)
		.addClass('nuReadonly');
		
		var x = document.createElement('div');
		
		x.setAttribute('id', 'nuBoxClose' + this.boxID);
		
		$('#' + this.boxID).append(x);
		
		$('#' + x.id).css({
			'width'				: 20,
			'height'			: 20,
			'top'				: 2,
			'left'				: 2,
			'position'			: 'absolute',
			'text-align'    	: 'center'
		})
		.attr('onclick', '$("#nuSearchList").remove();$("#nuModal").remove();')
		.html('<span style="font-size:14px"><b>X</b></span>')
		.addClass('nuSearchListClose');
		

		
		var s = document.createElement('div');
		
		s.setAttribute('id', 'nu_more_less' + this.boxID);
		
		$('#' + this.boxID).append(s);
		
		$('#' + s.id).css({
			'width'				: 15,
			'height'			: 15,
			'top'				: 5,
			'left'				: 285,
			'position'			: 'absolute',
			'text-align'    	: 'center'
		})
		.attr('onclick', '$("#nuSearchList").remove();$("#nuModal").remove();')
		.html('<img onclick="nuResizeBox(event)" id="numl' + this.boxID + '" src="nu_less.png" width="10px" height="10px" style="padding:3px">')
		.addClass('nuSearchListClose');

		var col	= document.createElement('input');

		col.setAttribute('id', 'alias_' + this.boxID);
		
		$('#' + this.boxID).append(col);
		
		$('#' + col.id)
		.css({
			'position'	:  'absolute',
			'width'		:  100,
			'top'		:  4,
			'left'		:  304,
		})
		
		this.boxTitles();
		

		for(this.rows = 0 ; this.rows < n.length ; this.rows++){
			this.boxRow(this.rows, n[this.rows], p[this.rows], true);
		}
		
		this.boxAddButton('Add', 	(this.rows+1) * 18, 10);


	}

	boxTitles(){
		
		var t	= 30;
		
		this.boxTitle('Field', 	t, 130);
		this.boxTitle('Alias', 	t, 335);
		this.boxTitle('Where', 	t, 470);
		this.boxTitle('OB', 	t, 618);
		this.boxTitle('GB', 	t, 660);
		this.boxTitle('Having',	t, 760);
		
	}
	

	boxTitle(v, t, l){

		var col	= document.createElement('span');

		col.setAttribute('id', String(v).replaceAll(' ', '_') + '_' + this.boxID);
		
		$('#' + this.boxID).append(col);
		
		$('#' + col.id)
		.css({
			'position'	:  'absolute',
			'top'		:  t,
			'left'		:  l,
		})
		.html(v);
		
		
	}
	

	boxAddButton(v, t, l){

		var col	= document.createElement('input');

		col.setAttribute('id', String(v).replaceAll(' ', '_') + '_' + this.boxID);
		
		$('#' + this.scrollID).append(col);
		
		$('#' + col.id)
		.css({
			'position'	: 'absolute',
			'top'		: t,
			'left'		: l,
			'height'	: 20,
		})
		.attr('type', 'button')
		.addClass('nuButton')
		.val(v);
		
		
	}
	
	boxRow(i, v, title){										//--------------name row left width value
		
		this.boxColumn('field', i, 2,  	300, v, v + ' :: ' + title);
		this.boxColumn('alias', i, 304, 100, '');
		this.boxColumn('where', i, 406, 200, '');
		this.boxColumn('ob', 	i, 608, 40,  '');
		this.boxColumn('gb', 	i, 650, 40,  '');
		this.boxColumn('having',i, 692, 170, '');
		
		if(arguments.length == 4){
			this.boxColumn('remove',i, 868, 100, 'nuButton');
			
		}
		
	}
	


	boxColumn(c, t, l, w, v, title){

		var col	= document.createElement('input');

		col.setAttribute('id', c + '_' + t + '_' + this.boxID);
		
		$('#' + this.scrollID).append(col);
		
		$('#' + col.id)
		.css({
			'position'	:  'absolute',
			'width'		:  w,
			'top'		:  t * 18,
			'left'		:  l,
		})
		.val(v);

		if(arguments.length == 6){
			$('#' + col.id).attr('title', title);
		}


		if(v == 'nuButton'){
				
			$('#' + col.id)
			.css('width', 15)
			.css('height', 15)
			.css('font-size', 12)
			.attr('type', 'button')
			.addClass('nuButton')
			.val('-')
			.prop('title', 'Remove this row..');
			
		}
		
		
	}
	
	getCurrent(){
		
		return this.breadcrumbs[this.breadcrumbs.length - 1];
		
	}
	
	removeLast(){
		
		this.breadcrumbs.pop();
		
	}
	
	
}



function nuResizeBox(e){
console.log(e)	;
}



