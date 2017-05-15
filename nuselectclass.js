
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
			'width'        		: 934,
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
			'width'        		: 934,
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
			'width'				: 280,
			'top'				: 5,
			'left'				: 43,
			'text-align'		: 'center',
			'border' 			: 'none',
			'color'				: 'black',
			'font-weight'		: 'bold',
		})
		.val(t)
		.prop('readonly', true)
		.addClass('nuReadonly');
		









		var bck	= document.createElement('input');				//-- tablename

		bck.setAttribute('id', 'checkall' + this.boxID);
		
		$('#' + this.boxID).append(bck);
		
		$('#' + bck.id)
		.css({
			'position'			: 'absolute',
			'width'				: 20,
			'top'				: 33,
			'left'				: 1,
		})
		.attr('type', 'checkbox')
		.val(t);
		








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
		.html('<span style="font-size:14px" onclick="$(this).parent().parent().remove()"><b>X</b></span>')
		.addClass('nuSearchListClose');
		

		
		var s = document.createElement('div');
		
		s.setAttribute('id', 'nu_more_less' + this.boxID);
		
		$('#' + this.boxID).append(s);
		
		$('#' + s.id).css({
			'width'				: 20,
			'height'			: 15,
			'top'				: 5,
			'left'				: 300,
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
			'left'		:  324,
		})
		
		this.boxTitles();
		

		for(this.rows = 0 ; this.rows < n.length ; this.rows++){
			this.boxRow(this.rows, n[this.rows], p[this.rows], true);
		}
		
		this.boxAddButton('Add', 	(this.rows+1) * 18, 10);


	}

	boxTitles(){
		
		var t	= 30;
		
		this.boxTitle('Field', 	t, 150);
		this.boxTitle('Alias', 	t, 355);
		this.boxTitle('Where', 	t, 490);
		this.boxTitle('OB', 	t, 638);
		this.boxTitle('GB', 	t, 680);
		this.boxTitle('Having',	t, 780);
		
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
		
		this.boxColumn('select',i, 2, 	18, v);
		this.boxColumn('field', i, 22, 	300, v, v + ' :: ' + title);
		this.boxColumn('alias', i, 324, 100, '');
		this.boxColumn('where', i, 426, 200, '');
		this.boxColumn('ob', 	i, 628, 40,  '');
		this.boxColumn('gb', 	i, 670, 40,  '');
		this.boxColumn('having',i, 712, 170, '');
		
		if(arguments.length == 4){
			this.boxColumn('remove',i, 888, 100, 'nuButton');
			
		}
		
	}
	


	boxColumn(c, t, l, w, v, title){

		var col	= document.createElement('input');

		col.setAttribute('id', c + '_' + t + '_' + this.boxID);
		
		$('#' + this.scrollID).append(col);
		
		$('#' + col.id)
		.css({
			'position'	: 'absolute',
			'width'		: w,
			'top'		: t * 18,
			'left'		: l,
			'padding'	: '0px 5px',
		})
		.val(v);

		if(arguments.length == 6){
			$('#' + col.id).attr('title', title);
		}


		if(c == 'select'){
				
			$('#' + col.id)
			.attr('type', 'checkbox')
			.css('padding', 0);
			
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
	
	var b	= e.target.id.substr(4);					//-- box
	var s	= 'scroll' + b.substr(3);					//-- scroll

	var w	= parseInt($('#' + b).css('width'));
	
	if(w == 934){
		$('#' + b).css('width', 320);
		$('#' + s).css('width', 320);
	}else{
		$('#' + b).css('width', 934);
		$('#' + s).css('width', 934);
	}


}



