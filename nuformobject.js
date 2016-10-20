

class nuFormObject {
	
	
	constructor() {
		
		this.breadCrumb 	= [];
		this.current		= {};
		this.last			= -1;
		this.setCurrent();
		
	}

	
	setCurrent(){
		
		this.last			= this.breadCrumb.length - 1;
		this.current		= this.breadCrumb[this.last];
		
	}
	
	removeLast(){
		
		this.breadCrumb.pop();
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
		
		this.breadCrumb.push(b);
		this.setCurrent();
		
	}

	setField(f, v) {
		
		this.current[f] = v;
		this.setCurrent();
		
	}
	
}

