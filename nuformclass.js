

class nuFormObject {
	
	
	constructor() {
		
		this.schema					= [];
		this.breadCrumb 			= [];
		this.lists		 			= [];
		
	}
	
	getCurrent(){
		
		return this.breadCrumb[this.breadCrumb.length - 1];
		
	}
	
	removeLast(){
		
		this.breadCrumb.pop();
		
	}
	
	removeAfter(b) {

		while(this.breadCrumb.length - 1 > b) {
			this.removeLast();
		}
		
	}
	
	scrollList(e, l){

		var k	= e.keyCode;
		var o	= this.lists[e.target.id];
		
		if(typeof o == 'undefined'){
			
			o	= new nuListObject(e);
			o.setList(l);

		}
		if(k == 38){o.up();}														//-- up

		if(k == 40){o.down();}														//-- down

		if(k == 9 || k == 13){$('#nuListerListBox').remove();}		//-- tab or enter;
		
		$('#' + e.target.id).change();

		o.buildList();
	
	}
	
	addBreadcrumb(){
		
		var b				= {};
		b.form_id 			= '';
		b.record_id 		= '';
		b.title				= '';
		b.call_type        	= '';
		b.filter           	= '';
		b.form_id          	= '';
		b.forms        		= [];
		b.iframe			= 0;
		b.lookup_id        	= '';
		b.object_id        	= '1';
		b.page_number      	= 0;
		b.password     		= '';
		b.record_id        	= '';
		b.rows        		= 25;
		b.row_height		= 25;
		b.search           	= '';	
		b.session_id		= '';
		b.nosearch_columns 	= [];
		b.sort             	= '-1';
		b.sort_direction   	= 'desc';
		b.tab_start      	= [];
		b.username			= '';
		b.user_id			= '';
		
		this.breadCrumb.push(b);
		
		return this.getCurrent();
		
	}

	setProperty(f, v) {
		this.breadCrumb[this.breadCrumb.length -1][f] = v;
	}
	

	getProperty(f) {
		return this.breadCrumb[this.breadCrumb.length - 1][f];
	}
	
	getDataType(t, f){
		
		var tab	= this.schema[t];
		
		for(var i = 0 ; i < tab.length ; i++){
			
			if(tab[i][0] == f){
				return tab[i][1];
			}
		}
	
	}
	
	getTablesFromSQL(sql){
		
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
	
	getTableFields(t){
		
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
	
	
	getSQLFields(sql){

		var tab	= this.getTablesFromSQL(sql);
		var fld	= [];
		
		for(var i = 0 ; i < tab.length ; i++){
			
			var f	= this.getTableFields(tab[i]);
			
			fld	= fld.concat(f);
			
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

}
