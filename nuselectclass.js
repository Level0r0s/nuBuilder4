
class nuSelectObject{
	
	constructor() {
		
		this.leftJoin	= '';
		this.joins		= [];
		this.boxes		= [];
		this.boxID		= '';
		this.table		= '';
		
	}
	

	addBox(t, id){

		this.table		= t;
		var s			= parent.nuFORM.tableSchema;
		var n			= s[t].names;
		var p			= s[t].types;
		var i			= arguments.length == 1 ? nuID() : String(id).substr(3);
		this.boxID		= 'box' + i;
		this.scrollID	= 'scroll' + i;
		var w			= this.boxWidth(s, t);
		var box			= document.createElement('div');		//-- box

		this.boxes.push(this.boxID);		
		
		box.setAttribute('id', this.boxID);
		$('body').append(box);
		$('#' + this.boxID).css({
			'width'        		: w,
			'height'       		: Math.min(20 + (n.length * 20), 190),
			'top'				: 25 + (25 * $('.nuBox').length),
			'left'				: 22 + (22 * $('.nuBox').length),
			'position'			: 'absolute',
			'border'			: 'solid grey 1px',
			'overflow'			: 'hidden',
			'padding-top'		: '5px',
			'background-color'	: 'darkgrey',
			'z-index'			: -1,
		})
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
		.attr('onchange', 'window.nuSQL.buildSQL("table","' + this.boxID + '")')
		.prop('checked', true);
		
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

			var a	= $(this).val();											//-- alias
			var t	= $('#tablename' + i).html();								//-- table name
			var i	= this.id.substr(5);
			
			$('.' + i + '.nuBoxField').attr('data-nu-alias', a);
			$('.' + i + '.nuBoxField').attr('data-nu-table', t);

			nuSQL.refreshJoins();	

			nuSQL.buildSQL();

			
		})
		
		for(var rows = 0 ; rows < n.length ; rows++){								//-- add field list
			this.boxRow(rows, n[rows], p[rows], w);
		}

		var x 	= document.createElement('div');									//-- close box
		
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
		
		this.buildSQL();
		
	}

	buildSQL(c, b){
	
		var s 	= this.buildSelect(c, b);
		var j	= this.buildFromJoin();
		var c	= this.buildClauses();
		
		$('#sse_sql', parent.document)
		.val(s + j + c)
		.change();
		
		$('#sse_json', parent.document)
		.val(this.buildJSON())
		.change();
		
	}
	
	buildSelect(c, b){				//-- checkbox type, boxID
		
		if(c == 'field'){
			
			$('#checkall' + b)
			.prop('checked', false);
			
		}
		
		if(c == 'table'){
			
			$('.checkfield.' + b)
			.prop('checked', false);
			
		}
		
		var	s		= [];
		
		for(var i = 0 ; i < this.boxes.length ; i++){
			
			var b				= this.boxes[i];
			
			if($('#' + b).length == 1){
				
				var t			= $('.nuBoxField.' + b).attr('data-nu-table');
				var a			= $('.nuBoxField.' + b).attr('data-nu-alias');
				var u			= a == '' ? t : a;
				var T			= this.justAlias(t, a);

				
				if($('#checkall' + b).is(':checked')){
					s.push(T + '.*');
				}else{
					
					$('.checkfield.' + b).each(function(index){
						
						var f	= 'field' + $(this)[0].id.substr(6);
						
						if($(this).is(':checked')){
							s.push(T + '.' + $('#' + f).html());
						}
						
						
					});

				}
				
			}
			
		}
		
		var SQL	= "SELECT\n    " + s.join(',\n    ') + "\n";
		
		return SQL;
		
	}
	
	buildFromJoin(){
			
		var r		= this.joins;													//-- JOIN
		var s		= [];	
		var u		= [];															//-- used in JOIN
			
		for (var k in r){
		
			var R	= r[k];
			var j	= String(R.join + ' JOIN ').ltrim();
			
			var T	= this.buildAlias(R.fromtable, R.fromalias);

			var A	= this.justAlias(R.fromtable, R.fromalias);
			var a	= this.justAlias(R.totable, R.toalias);
			
			u.push(A);
			s.push(j + T + ' ON ' + A + '.' + R.fromfield +  ' = ' + a + '.' + R.tofield);
			
		}

		var J		= s.join("\n") + "\n";
		var f		= [];															//-- FROM
		
		var THIS	= this;

		$('.nuBox').each(function(index){
			
			var b	= $(this)[0].id;
			var t	= $('#tablename' + b).html();
			var a	= $('#alias' + b).val();
			var al	= THIS.justAlias(t,a);
			var tbl	= THIS.buildAlias(t, a);
			
			if(u.indexOf(al) == -1){
				f.push(tbl);
			}
			
		});

		var F		= "FROM\n    " + f.join(",\n    ") + "\n";
		
		return F + J;
		
	}

	buildAlias(t, a){

		if(a == ''){
			return t;
		}else{
			return t + ' AS ' + a;
		}
		
	}
	

	justAlias(t, a){

		if(a == ''){
			return t;
		}else{
			return a;
		}
		
	}
	

	refreshJoins(){

		var r			= this.joins;				//-- JOIN
			
		for (var k in r){
			
			var I		= String(k).split('--')[0];
			var i		= String(k).split('--')[1];

			var B		= String(I).split('_')[2];
			var b		= String(i).split('_')[2];

			var T		= $('#tablename' + B).html();
			var A		= $('#alias' + B).val();
			var F		= $('#' + I).html();
			
			var t		= $('#tablename' + b).html();
			var a		= $('#alias' + b).val();
			var f		= $('#' + i).html();
			
			var r	= 	{
				
						'from' 		: I, 
						'fromtable'	: T,
						'fromalias'	: A,
						'fromfield' : F, 

						'to' 		: i, 
						'totable'	: t,
						'toalias'	: a,
						'tofield' 	: f, 

						'join' 		: ''
						
						};
						
			this.joins[I + '--' + i]	= r;

		}
		
		nuAngle();

	}

	
	buildClauses(){
		
		var o 		= function(b, a){
			return (b[1] + 10000 + Number(b[4])) - (a[1] + 10000 + Number(a[4]));
		}
		
		var T		= '';
		var F		= '';
		var C		= '';
		var S		= '';
		var WHERE	= [];
		var ORDERBY	= [];
		var GROUPBY	= [];
		var HAVING	= [];
		var c		= parent.nuFORM.subform('zzzzsys_select_clause_sf').rows;

		c.sort(o);

		var clauses	= '';

		for(var i = 0 ; i < c.length ; i++){
			
			var T	= c[i][1];
			var F	= c[i][2];
			var C	= c[i][3];
			var S	= c[i][4];
			
			if(T == 1){WHERE.push('(' + F + C + ')');}
			if(T == 2){GROUPBY.push(F + ' ' + S);}
			if(T == 3){ORDERBY.push(F + ' ' + S);}
			if(T == 4){HAVING.push('(' + F + C + ')');}

		}

		if(WHERE.length > 0){clauses	+= "WHERE\n    " 		+ WHERE.join(" AND \n    ") 	+ "\n";}
		if(GROUPBY.length > 0){clauses	+= "GROUP BY\n    " 	+ GROUPBY.join(",\n    ") 		+ "\n";}
		if(HAVING.length > 0){clauses	+= "HAVING\n    " 		+ HAVING.join(" AND \n    ") 	+ "\n";}
		if(ORDERBY.length > 0){clauses	+= "ORDER BY\n    " 	+ ORDERBY.join(",\n    ") 		+ "\n";}

		return clauses;
		
	}


	boxWidth(s, t){
		
		var s	= parent.nuFORM.tableSchema
		var n	= s[t].names;
		var w	= nuGetWordWidth(t) + 130;
		
		for(var i = 0 ; i < s[t].names.length ; i++){
			w	= Math.max(w, nuGetWordWidth(s[t].names[i]));
		}
		
		return w;

	}
	

	boxRow(i, v, t, w){
			
		this.boxColumn('select', i, 0, 	18,	v, '');
		this.boxColumn('field', i, 22, 	300,v,  t, w);

		$('.nuBoxField')
		.unbind()
		.attr('onmousedown', 	'nuFieldMouseDown(event)')
		.attr('onmouseup', 		'nuFieldMouseUp(event)')
		
	}
	
	
	boxColumn(c, t, l, w, v, title){

		var suf		= '_' + t + '_' + this.boxID;

		if(c == 'select'){
			var col	= document.createElement('input');
		}else{
			var col	= document.createElement('span');
		}
		
		col.setAttribute('id', c + suf);
		
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
			.attr('data-nu-field', 'field' + suf)
			.attr('onchange', 'window.nuSQL.buildSQL("field","' + this.boxID + '")')
			.attr('type', 'checkbox')
			.addClass(this.boxID)
			.addClass('checkfield');
			
		}else{

			$('#' + col.id)
			.attr('data-nu-table', this.table)
			.attr('data-nu-alias', '')
			.addClass('nuBoxTitle')
			.addClass('nuBoxField')
			.addClass(this.boxID)
			.css('width', Number(w))
			.css('padding-top', 2)
			.html(v);
			
		}
		
	}
	
	buildJSON(){
		
		var j				= {};
		var a				= [];
		var THIS 			= this;
		
		$('.nuBox').each(function(index){
			
			var i			= $(this)[0].id;
			var o			= {}
			
			o.id			= i;
			o.position		= $(this).position();
			o.tablename		= $('#tablename' + i).html();
			o.alias			= $('#alias' + i).val();
			o.checkall		= $('#checkall' + i).is(':checked');
			o.checkboxes	= THIS.getCheckboxes(i);
			
			a.push(o);
			
		});

		j.tables			= a;
		var joins			= {};

		var r				= this.joins;

		for (var k in r){
			
			var jFrom		= r[k].from;
			var jTo			= r[k].to;
			var jJoin		= r[k].join;
			
			joins[jFrom + '--' + jTo]	= jJoin;
			
		}
		
		j.joins				= joins;

		return JSON.stringify(j);
		
	}
	
	getCheckboxes(b){

		var c		= [];
		
		$(':checkbox.' + b).each(function(index){
			c.push($(this).is(':checked'));
		});
		
		return c;
		
	}
	
	
	getJoins(){
		
		var a						= [];
		var j						= [];
		var r						= this.joins;
		
		for (var k in r){
			
			a[r[k].from + '--' + r[k].to]	= r[k];
			j.push(a[r[k].from + '--' + r[k].to]);
			
		}

		return this.joins;
		
	}
	
	rebuildGraphic(){

		var j		= $('#sse_json', parent.document).val();
		
		if(j == ''){return;}
		
		var J		=	JSON.parse(j);
		
		for(var i = 0 ; i < J.tables.length ; i++){	
			
			var t	= J.tables[i];
			var cb	= J.tables[i].checkboxes;
			
			this.addBox(t.tablename, t.id);
			
			$('#' + t.id)
			.css('top', t.position.top)
			.css('left', t.position.left);
			
			$('#tablename' 	+ t.id).html(t.tablename);
			$('#alias' 		+ t.id).val(t.alias);
			$('#checkall'	+ t.id).prop('checked', t.checkall);
			
			for(var c = 0 ; c < cb.length ; c++){
				$('#select_' + c + '_' + t.id).prop('checked', cb[c]);
			}
			
		}
		
		this.joins			= J.joins;
		
		this.refreshJoins();
		
	}

	
}




//=========functions==========================================================================


function nuFieldMouseUp(e){
	
	e.preventDefault();	
	
	if(nuSQL.leftJoin == ''){return;}
	
	var I		= nuSQL.leftJoin
	var i		= e.target.id;
	
	nuSQL.joins[I + '--' + i] = '';
	
	nuSQL.refreshJoins();	

	nuAngle();
	
	nuSQL.buildSQL();

	nuSQL.leftJoin	= '';
	
}


function nuFieldMouseDown(e){

	var t					= $(e.target).attr('data-nu-table')
	nuSQL.leftJoin		= e.target.id;
	window.nuRelationBox	= $(e.target).parent().parent().attr('id')
	
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
	
	var r					= nuSQL.joins;
	nuSQL.joins	= [];

	for (var key in r){																//-- remove links to closed boxes

		if($('#' + r[key].from).length == 1 && $('#' + r[key].to).length == 1){
			nuSQL.joins[key]	= r[key];
		}

	}
	
	for (var key in nuSQL.joins){
	
		var F	= $('#' + nuSQL.joins[key].from);
		var T	= $('#' + nuSQL.joins[key].to);
		var f	= F.offset();
		var t	= T.offset();
		var d 	= Math.atan2(t.top - f.top, t.left - f.left) * 180 / Math.PI;		//-- angle in degrees
		var w	= Math.sqrt(Math.pow(f.top - t.top, 2) + Math.pow(f.left - t.left, 2));
		var i	= 'joins' + nuID();

		var L = document.createElement('div');										//-- relationship box (line)
		
		L.setAttribute('id', i);
		
		$('body').append(L);
		
		$('#' + L.id).css({
			'width'				: w,
			'height'			: 3,
			'left'				: f.left,
			'top'				: f.top,
			'position'			: 'absolute',
			'text-align'    	: 'center',
			'border'			: 'black 1px solid',
			'border-color'		: 'black black black red',
			'border-width'		: '1px 1px 1px 3px',
			'transform'			: 'rotate(' + d + 'deg)',
		})
		.addClass('nuRelationships');

		var L		= $('#' + L.id);
		var top 	= parseInt(f.top + f.top - L.top);
		var left	= parseInt(f.left + f.left - L.left);

		$('#' + i)
		.css('top', top)
		.css('left', left);
		
		
		var Ltop	= parseInt(L.css('top'));
		var Lleft	= parseInt(L.css('left'));

		if(F.offset().top < T.offset().top){
			L.css('top', 7 + Ltop + F.offset().top - L.offset().top);
		}else{
			L.css('top', 7 + Ltop + L.offset().top - F.offset().top);
		}
		
		if(F.offset().left < T.offset().left){
			L.css('left', -20 + Lleft - (L.offset().left - F.offset().left));
		}else{
			L.css('left', -20 + Lleft - (L.offset().left - T.offset().left));
		}

		
	}
	
}
