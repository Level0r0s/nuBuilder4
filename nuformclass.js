

class nuFormObject {
	
	
	constructor() {
		
		this.schema					= [];
		this.breadcrumbs 			= [];
		this.lists		 			= [];
		this.edited					= false;
		
	}
	
	getCurrent(){
		
		return this.breadcrumbs[this.breadcrumbs.length - 1];
		
	}
	
	removeLast(){
		
		this.breadcrumbs.pop();
		
	}
	
	removeAfter(b) {

		while(this.breadcrumbs.length - 1 > b) {
			this.removeLast();
		}
		
	}
	
	scrollList(e, l){

		if(typeof this.lists[e.target.id] == 'undefined'){
			
			this.lists[e.target.id]	= new nuListObject(e);
			this.lists[e.target.id].setList(l);				
		}
	
		var k	= e.keyCode;
		console.log(k);
		var o	= this.lists[e.target.id];
		var c 	= $.inArray($('#'+e.target.id).val(), o.boxList);

		if(k == 39){return;}												//-- right
		if(k == 37){return;}												//-- left
		if(k == 16){return;}												//-- shift
		if(k == 9){return;}													//-- tab

		if($('#nuListerListBox').length > 0 && $('#nuListerListBox').children().length > 0) {

			if(k == 38){														//-- up
				o.up();
			}else if(k == 40){													//-- down
				o.down();
			}else if(k == 9 || k == 13){										//-- tab or enter;
			
				$('#nuListerListBox').remove();
				return;
				
			}else {
				return;
			}
			
		}else {
			o.boxHighlight = c;
		}
		
		o.buildList();
	
	}
	
	addBreadcrumb(){
		
		var b				= {};
		b.form_id 			= '';
		b.record_id 		= '';
		b.title				= '';
		b.call_type        	= '';
		b.filter           	= '';
		b.forms        		= [];
		b.iframe			= 0;
		b.lookup_id        	= '';
		b.object_id        	= '1';
		b.page_number      	= 0;
		b.password     		= '';
		b.rows        		= 25;
		b.row_height		= 25;
		b.search           	= '';	
		b.session_id		= '';
		b.nosearch_columns 	= [];
		b.sort             	= '-1';
		b.sort_direction   	= 'desc';
		b.subforms			= 0;
		b.tab_start      	= [];
		b.username			= '';
		b.user_id			= '';
		
		this.breadcrumbs.push(b);
		
		return this.getCurrent();
		
	}

	setProperty(f, v) {
		this.breadcrumbs[this.breadcrumbs.length -1][f] = v;
	}
	

	getProperty(f) {
		return this.breadcrumbs[this.breadcrumbs.length - 1][f];
	}
	
	dataType(t, f){
		
		var tab	= this.schema[t];
		
		for(var i = 0 ; i < tab.length ; i++){
			
			if(tab[i][0] == f){
				return tab[i][1];
			}
		}
	
	}
	
	tablesFromSQL(sql){
		
		var t		= [];
		var tables	= this.getTables();
		sql			= sql.replace(/[\n\r]/g, ' ');
		
		for(var i = 0 ; i < tables.length ; i++){
			
			if(sql.indexOf(' ' + tables[i] + ' ') != -1){
				t.push(tables[i]);
			}
			
		}
		
		return t;
	
	}
	
	tableFields(t){
		
		var tab	= this.schema[t];
		var fld	= [];
		
		if(tab === undefined){
			return fld;
		}
		
		
		for(var i = 0 ; i < tab.length ; i++){
			fld.push(tab[i]);
		}
		
		return fld;
	
	}
	
	
	SQLFields(sql){

		var tab		= this.tablesFromSQL(sql);
		var fld		= [];
		
		for(var i = 0 ; i < tab.length ; i++){
			
			var f	= this.tableFields(tab[i]);
			
			fld		= fld.concat(f);
			
		}
		
		return fld;
	
	}
	
	getTables(){
	
		var tables	= [];
		
		for (var key in nuFORM.schema) {

			if (nuFORM.schema.hasOwnProperty(key)) {
				tables.push(key) 
			}
			
		}
		
		return tables;
		
	}
	
	calc(field){
		
		if(field.split('.').length == 2){
			
			var subform_name	= field.split('.')[0];
			var field_name		= field.split('.')[1];
			
		}else{
			
			return Number($('#' + field).val());
			
		}

		var d	= this.data();											//-- an array of all data as subforms (the mainform is the first element)
		var v	= 0;
		
		for(var i =  0 ; i < d.length ; i++){
			
			var SF		= d[i];
			
			if(SF.id == subform_name){									//-- i've got the right subform
				
				var f	= SF.fields.indexOf(field_name);				//-- check for valid field(column)
				
				if(f == -1){return 0;}
				
				for(var c = 0 ; c < SF.rows.length ; c++){
					
					v	= v + Number(SF.rows[c][f]);
					
				}
				
				return Number(v);
				
			}
		}
		
		return 0;
	
	}
	
	data(){
		
		var d	= [];
		var sf	= this.subforms();
		
		for(var i = 0 ; i < sf.length ; i++){
			d.push(this.subform(sf[i]));
		}
		
		return d;
		
	}
	
	subforms(){
		
		var s	= [''];
			
		$("[data-nu-subform='true']").each(function(index) {
			s.push($(this)[0].id);
		});
		
		return s;

	}

	subform(sf){

		var id			= sf;
		
		if(sf == ''){
			
			id			= 'nuBuilder4Form';
			var sel		= '#nuRECORD';
			var sf		= 'nuRECORD';
			var oi		= '';
			var fk		= '';
		
		}else{
			
			var sel		= "[id*='" + sf + "'][id*='nuRECORD']";
			var oi		= $('#' + sf).attr('data-nu-object-id');
			var fk		= $('#' + sf).attr('data-nu-foreign-key-name');
			
		}
		
		var o			= {'id':id, 'html_id':sf, 'foreign_key':fk, 'object_id':oi};
		var F			= ['ID'];
		o.rows			= [];
		o.edited		= [];
		
		$(sel).each(function(index){
			
			var THIS	= $(this);
			var V		= [$(this).attr('data-nu-primary-key')];
			var E		= [0];
			var C		= 1;
			var	addrow	= true;
				
			THIS.children('[data-nu-data]').each(function(){
				
				var addfld	= true;
					
				if(this.id.substr(-8) == 'nuDelete'){
					addrow = !$('#' + this.id).prop("checked");
					addfld = false;
				}

				if(addfld){
					
					if(sf == 'nuRECORD'){						//-- the main Form
						F[C]	= this.id;
					}else{
						F[C]	= this.id.substr(sf.length + 3);
					}
					
					V[C]		= $('#' + this.id).val();
					E[C]		= $('#' + this.id).hasClass('nuEdited') ? 1 : 0 ;

					C++;
				
				}
				
			});
			
			if(addrow){
				
				o.rows.push(V);
				o.edited.push(E);
				
			}
			
		});

		o.fields		= F;
		
		return o;
		
	}	
	
	
}
