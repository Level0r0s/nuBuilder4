
class nuSelectObject{
	
	constructor() {
		
		this.boxes			= [];
		
	}
	

	addBox(t){

		var s	= nuFORM.tableSchema
		var n	= s[t].names;
		var f	= n.length;
		var u	= nuID();
		var id	= 'box' + u;
		var h	= this.boxHeader();
		
		var box	= document.createElement('div');

		box.setAttribute('id', id);
		
		$('body').append(box);
		$('#' + id).css({
			'width'        		: 600,
			'height'       		: 200,
			'top'				: 20,
			'left'				: 20,
			'border'			: 'solid grey 1px',
			'overflow'			: 'hidden',
		})
		.addClass('nuBoxHeader')
		.html(h);




		
		


		
		var scroll	= document.createElement('div');

		scroll.setAttribute('id', 'scroll' + u);
		
		$('#' + id).append(scroll);
		$('#' + scroll.id).css({
			'width'        		: 600,
			'height'       		: 200,
			'top'				: 40,
			'left'				: 0,
			'overflow'			: 'scroll',
			'overflow-x'		: 'hidden',
		})
		.html('1<br>1<br>drg<br>1<br>sdfg<br>1<br><br>1<br>146<br>1<br>sdfg<br>1<br><br>1<br>146<br>')
		.addClass('nuBoxHeader');
		
	}

	boxHeader(){
		
		var h	= nuSpaces(3) + 'Table<br>' + nuSpaces(3) + 'Field' + nuSpaces(30) + 'Alias' + nuSpaces(30) + 'Where' + nuSpaces(30) + 'OB' + nuSpaces(2) + 'GP' + nuSpaces(2) + 'Having';
		
		return h;
		
	}
	
	getCurrent(){
		
		return this.breadcrumbs[this.breadcrumbs.length - 1];
		
	}
	
	removeLast(){
		
		this.breadcrumbs.pop();
		
	}
	
	
}
