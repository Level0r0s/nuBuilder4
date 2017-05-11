
class nuSelectObject{
	
	constructor() {
		
		this.boxes			= [];
		this.boxID			= '';
		
	}
	

	addBox(t){

		var s			= nuFORM.tableSchema
		var n			= s[t].names;
		var f			= n.length;
		var u			= nuID();
		this.boxID		= 'box' + u;
		this.scrollID	= 'scroll' + u;
		var h			= this.boxHeader();
		
		var box			= document.createElement('div');

		box.setAttribute('id', this.boxID);
		
		$('body').append(box);
		$('#' + this.boxID).css({
			'width'        		: 900,
			'height'       		: 200,
			'top'				: 20,
			'left'				: 20,
			'border'			: 'solid grey 1px',
			'overflow'			: 'hidden',
			'padding-top'		: '5px',
			'line-height'		: '25px',
		})
		.addClass('nuBoxHeader')
		.html(h);

		var scroll	= document.createElement('div');

		scroll.setAttribute('id', 'scroll' + u);
		
		$('#' + this.boxID).append(scroll);
		$('#' + scroll.id).css({
			'width'        		: 900,
			'height'       		: 150,
			'top'				: 50,
			'left'				: 0,
			'overflow'			: 'scroll',
			'overflow-x'		: 'hidden',
			'line-height'		: '30x',
		})
		.addClass('nuBoxHeader');
		
		for(var i = 0 ; i < f ; i++){
			this.boxRow(i);
		}
		$('#' + this.scrollID).append('&nbsp;<span>+</span>');

		
	}

	boxHeader(){
		
		var h	= nuSpaces(3) + 'Table<br>' + nuSpaces(3) + 'Field' + nuSpaces(30) + 'Alias' + nuSpaces(30) + 'Where' + nuSpaces(30) + 'OB' + nuSpaces(2) + 'GP' + nuSpaces(2) + 'Having';
		
		return h;
		
	}
	

	boxRow(i){
		
		this.boxColumn('field', i, 200, '');
		this.boxColumn('alias', i, 200, '');
		this.boxColumn('where', i, 200, '');
		this.boxColumn('ob', i, 40, '');
		this.boxColumn('gb', i, 40, '');
		this.boxColumn('having', i, 200, '');
		
	}
	

	boxColumn(c, u, w, v){

		var col	= document.createElement('input');

		col.setAttribute('id', c + u);
		
		$('#' + this.scrollID).append(col);
		
		$('#' + col.id).css('width',  Number(w));
		
		if(c == 'having'){
			$('#' + this.scrollID).append('<br>');
		}
		
	}
	
	getCurrent(){
		
		return this.breadcrumbs[this.breadcrumbs.length - 1];
		
	}
	
	removeLast(){
		
		this.breadcrumbs.pop();
		
	}
	
	
}
