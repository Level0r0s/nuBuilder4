

class nuFormObject {
	
	
	constructor() {
		
		this.schema					= [];
		this.breadcrumbs 			= [];
		this.current				= {};
		this.last					= -1;
		this.setCurrent();
		
	}
	
	setCurrent(){
		
		this.last					= this.breadcrumbs.length - 1;
		this.current				= this.breadcrumbs[this.last];
		this.breadcrumbs[this.last]	= this.current;						//-- copy changes from current to last
		
	}
	
	setFromCurrent(){
		
		this.breadcrumbs[this.last]	= this.current;
		
	}
	
	removeLast(){
		
		this.breadcrumbs.pop();
		this.setCurrent();
		
	}
	
	removeAfter(b) {

		while(this.last > b) {
			this.removeLast();
		}
		
	}
	
	add(){
		
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
		
		this.breadcrumbs.push(b);
		this.setCurrent();
		
	}

	setField(f, v) {
		
		this.current[f] = v;
		this.setCurrent();
		
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
