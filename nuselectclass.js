
class nuSelectObject{
	
	constructor() {
		
		this.boxes		= [];
		this.boxID		= '';
		this.rows		= 0;
		
	}
	

	addBox(t){

		var s			= nuFORM.tableSchema
		var n			= s[t].names;
		var f			= n.length;
		var i			= nuID();
		this.boxID		= 'box' + i;
		this.scrollID	= 'scroll' + i;
		
		this.boxHeader();
		
		var box			= document.createElement('div');

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

		var scroll	= document.createElement('div');

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
		.html('<img id="numl' + this.boxID + '" src="nu_less.png" width="10px" height="10px" style="padding:3px">')
		.addClass('nuSearchListClose');

		this.boxTitles();
		

		for(this.rows = 0 ; this.rows < f ; this.rows++){
			this.boxRow(this.rows);
		}

	}

	boxTitles(){
		
		var t	= 30;
		
		this.boxTitle('Field', 	t, 130);
		this.boxTitle('Alias', 	t, 335);
		this.boxTitle('Where', 	t, 470);
		this.boxTitle('OB', 	t, 618);
		this.boxTitle('GB', 	t, 660);
		this.boxTitle('Having',	t, 765);
		
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
	
	boxRow(i){										//--------------name row left width value
		
		this.boxColumn('field', i, 2,  300, '');
		this.boxColumn('alias', i, 304, 100, '');
		this.boxColumn('where', i, 406, 200, '');
		this.boxColumn('ob', 	i, 608, 40,  '');
		this.boxColumn('gb', 	i, 650, 40,  '');
		this.boxColumn('having',i, 692, 200, '');
		
	}
	

	boxHeader(c, t, l, w, v){

		var col	= document.createElement('input');

		col.setAttribute('id', c + '_' + this.boxID);
		
		$('#' + this.boxID).append(col);
		
		$('#' + col.id)
		.css({
			'position'	:  'absolute',
			'width'		:  w,
			'top'		:  t,
			'left'		:  l,
		});
		
	}
	

	boxColumn(c, t, l, w, v){

		var col	= document.createElement('input');

		col.setAttribute('id', c + '_' + t + '_' + this.boxID);
		
		$('#' + this.scrollID).append(col);
		
		$('#' + col.id)
		.css({
			'position'	:  'absolute',
			'width'		:  w,
			'top'		:  t * 20,
			'left'		:  l,
		});
		
	}
	
	getCurrent(){
		
		return this.breadcrumbs[this.breadcrumbs.length - 1];
		
	}
	
	removeLast(){
		
		this.breadcrumbs.pop();
		
	}
	
	
}
