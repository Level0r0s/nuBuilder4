
class nuSelectObject{
	
	constructor() {
		
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
		.addClass('nuTableName')
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
		.html('<img onclick="$(this).parent().parent().remove();nuSQL.buildSQL()" id="nbc' + this.boxID + '" src="nu_box_close.png" width="10px" height="10px">')
		.addClass('nuDragNoSelect')
		.addClass('nuButtonHover')
		.addClass('nuSearchListClose');
		
	}

	buildSQL(c, b){
		
		nuAngle();
	
		var s 	= this.buildSelect(c, b);
		var j	= this.buildJoin();
		var f	= this.buildFrom();
		var c	= this.buildClauses();
console.log(JSON.stringify({'joins':j, 'from':f}));
		parent.$('#sse_sql')
		.val(s + c)
//		.val(s + f + j + c)
		.change();
		
		parent.$('#sse_json')
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
				
				var t			= $('#tablename' + b).html();
				var a			= $('#alias' + b).val();
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
	
	buildFrom(){
			
		var f		= [];															//-- FROM
		
		var THIS	= this;

		$('.nuBox').each(function(index){
			
			var b	= $(this)[0].id;
			var t	= $('#tablename' + b).html();
			var a	= $('#alias' + b).val();
			var al	= THIS.justAlias(t,a);

			f.push({'table' : t, 'alias' : al});
			
		});

		return f;
		
	}

	
	buildJoin(){
			
		var r		= this.joins;													//-- JOIN
		var j		= [];	
			
		for (var k in r){
		
			var R	= r[k];
			var A	= this.justAlias(R.fromtable, R.fromalias);
			var a	= this.justAlias(R.totable, R.toalias);
			var M	= [a, A].sort().join('--');
			var l	= R.join == 'LEFT' ? '--a' : '--b';
			
			j.push({'match' : M, 'table1' : A, 'table2' : a, 'order' : M + l, 'type' : R.join, 'join' : A + '.' + R.fromfield +  ' = ' + a + '.' + R.tofield});
			
		}

		var o 		= function(b, a){														//-- used to order clauses
			return ( a.order < b.order);
		}
		
		j.sort(o);
		
		return j;
		
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
	

	refreshJoins(r){										//-- build objects to draw relationship lines  from

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
			
			var o	= 	{
				
						'from' 		: I, 
						'fromtable'	: T,
						'fromalias'	: A,
						'fromfield' : F, 

						'to' 		: i, 
						'totable'	: t,
						'toalias'	: a,
						'tofield' 	: f, 

						'join' 		: r[k],
						
						};
						
			this.joins[I + '--' + i]	= o;

		}

	}

	
	buildClauses(){
		
		var o 		= function(b, a){														//-- used to order clauses
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
			var cl	= F != '' && C != '';			//-- valid statement for WHERE and HAVING
			var gr	= F != '' && S != '';			//-- valid statement for ORDER BY and GROUP BY

			if(T == 1 && cl){WHERE.push('(' + F + C + ')');}
			if(T == 4 && cl){HAVING.push('(' + F + C + ')');}
			if(T == 2 && gr){GROUPBY.push(F + ' ' + S);}
			if(T == 3 && gr){ORDERBY.push(F + ' ' + S);}

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
			.addClass('nuBoxTitle')
			.addClass('nuBoxField')
			.addClass(this.boxID)
			.css('width', Number(w))
			.css('padding-top', 2)
			.hover(
			
				function(){
					$(this).addClass( "hover" );
				}, 
				function() {
					$( this ).removeClass( "hover" );
				})
				
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

	addJoinsToJSON(){
		
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
		

		var r							= J.joins;				//-- JOIN
		
		for (var k in r){
			
			var I						= String(k).split('--')[0];
			var i						= String(k).split('--')[1];

			this.joins[I + '--' + i]	= r[k];

		}

		nuAngle();
		
	}
	
	addJoin(key, v){

		var j	= parent.$('#sse_json').val();
		var J	= JSON.parse(j);
		
		J.joins[key] = v;
		
		var u	= JSON.stringify(J);
		
		parent.$('#sse_json').val(u);

	}
	
	
}




//=========functions==========================================================================


function nuUp(e){

	var el						= $(e.target);
	
	if(el.hasClass('nuTableName')){

		window.nuY	= parseInt($(event.target).parent().css('top'));
		window.nuX	= parseInt($(event.target).parent().css('left'));

	}

	
	if(el.hasClass('nuBoxField')){
		
		var id				= String(window.nuCurrentID);
		
		if(id.split('_').length == 3){							//-- eg. field_1_boxc14966188848055365
			
			var I				= id;
			var i				= e.target.id;
			
			if(I.split('_')[2] != i.split('_')[2]){				//-- different box
			
				nuSQL.addJoin(I + '--' + i, '')
				nuAngle();	
				
			}
			
		}

	}
	
	window.nuCurrentID	= '';
	
}


function nuDown(e){

	var el						= $(e.target);
	window.nuCurrentID			= event.target.id;
	
	if(el.hasClass('nuTableName')){

		window.nuY				= event.clientY - parseInt($(event.target).parent().css('top'));
		window.nuX				= event.clientX - parseInt($(event.target).parent().css('left'));

	}

}



function nuMove(e){

	if(window.nuCurrentID == ''){return;}

	var el						= $('#' + window.nuCurrentID);
	
	if(el.hasClass('nuTableName')){

		if(e.buttons == 1){
			
			if(e.clientY - window.nuY > 0){
				el.parent().css('top', e.clientY - window.nuY);
			}
			if(e.clientX - window.nuX > 0){
				el.parent().css('left', e.clientX - window.nuX);
			}
			
			nuAngle();
			
		}
		
	}
		
}


function nuAngle(){

	$('.nuRelationships').remove();

	var j			= parent.$('#sse_json').val();
	
	if(j == ''){return;}

	var J			= JSON.parse(j);
	var r			= J.joins;
	var ok			= [];
	
	for (var key in r){																//-- remove links to closed boxes
	
		var I		= key.split('--')[0];
		var i		= key.split('--')[1];

		if($('#' + I).length == 1 && $('#' + i).length == 1){
			ok[I + '--' + i]	= r[key]
		}

	}
	
	nuSQL.refreshJoins(ok);
	
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
			'border'			: 'orange 1px solid',
			'border-left'		: '4px solid',
			'border-left-color'	: nuSQL.joins[key].join == '' ? 'orange' : 'mediumturquoise',
			'background-color'	: 'orange',
			'transform'			: 'rotate(' + d + 'deg)',
		})
		.attr('data-nu-join', key)
		.attr('title', nuSQL.joins[key].join + ' JOIN ON ' + nuSQL.joins[key].fromfield + ' = ' + nuSQL.joins[key].tofield + ' (Double Click to Change Join)')
		.attr('ondblclick', 'nuChangeJoin(event)')
		.addClass('nuRelationships')
		.hover(function(){
			$(this).css('border-width', '2px 2px 2px 5px');
			}, function(){
			$(this).css('border-width', '1px 1px 1px 5px');
		});

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


function nuChangeJoin(e){
	
	
	var v			= parent.$('#sse_json').val();
	var j			= JSON.parse(v);
	var i			= $(e.target).attr('data-nu-join');
	
	if(j.joins[i] == ''){
		j.joins[i] 	= 'LEFT';
	}else{
		j.joins[i] 	= '';
	}

	parent.$('#sse_json')
	.val(JSON.stringify(j))
	.change();

	nuSQL.buildSQL();
	
}


function fj(){

	var j	= {"joins":[{"match":"company--employee","table1":"employee","table2":"company","type":"","join":"employee.emp_company_id = company.company_id"},{"match":"company--invoice","table1":"company","table2":"invoice","type":"","join":"company.company_id = invoice.inv_company_id"},{"match":"ii--invoice","table1":"invoice","table2":"ii","type":"LEFT","join":"invoice.invoice_id = ii.ite_invoice_id"},{"match":"ii--invoice","table1":"invoice","table2":"ii","type":"","join":"invoice.inv_number = ii.ite_unit_price"}],"from":[{"table":"invoice","alias":"invoice"},{"table":"invoice_item","alias":"ii"},{"table":"company","alias":"company"},{"table":"employee","alias":"employee"}]};
	var J	= JSON.parse(j);
	
	
}


