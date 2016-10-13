
class nuFormObject {
	
	constructor() {
		this.nuBreadCrumb = [];
	}

	addBC() {
		this.nuBreadCrumb.push(new nuBreadCrumb());
	}

	getBC(n, json = 0) {

		if(json) {
			
			var selectedBC  = this.nuBreadCrumb[n];
			var j			= JSON.stringify(selectedBC)
			return JSON.parse(j);
			
		} else {
			return this.nuBreadCrumb[n];
		}
		
	}
	
	getLastBC(json = 0) {

		if(json) {
			
			var selectedBC  = this.nuBreadCrumb[this.nuBreadCrumb.length - 1];
			var j			= JSON.stringify(selectedBC)
			return JSON.parse(j);
			
		} else {
			return this.nuBreadCrumb[this.nuBreadCrumb.length - 1];
		}
	}
	
	getBCLength() {
		return this.nuBreadCrumb.length;
	}

	cleanBC() {
		
		if(this.getLastBC().getBCField('title') == '' || this.getLastBC().getBCField('title') == null) {
			this.nuBreadCrumb.splice(this.getBCLength() - 1, 1);
		}
					
	}
	
	removeLastBC() {
		this.nuBreadCrumb.pop();
	}
	
}

class nuBreadCrumb {
	constructor() {
		
		this.form_id 			= '';
		this.record_id 			= '';
		this.title				= '';
		this.call_type        	= '';
		this.filter           	= '';
		this.form_id          	= '';
		this.forms        		= [];
		this.iframe				= 0;
		this.lookup_id        	= '';
		this.object_id        	= '1';
		this.page_number      	= 0;
		this.password     		= '';
		this.record_id        	= '';
		this.rows        		= 25;
		this.row_height			= 25;
		this.search           	= '';	
		this.session_id			= '';
		this.nosearch_columns 	= [];
		this.sort             	= '-1';
		this.sort_direction   	= 'desc';
		this.tab_start      	= [];
		this.username			= '';
		this.user_id			= '';
		
	}
	
	setBCField(f, v) {
		this[f] = v;
	}
	
	getBCField(f) {
		return this[f];
	}
}