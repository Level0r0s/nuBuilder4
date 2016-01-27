window.nuBreadcrumbs 		= [];
window.nuBreadcrumbs[0] 	= new nuFormState();

function nuFormState(){

	this.call_type        = '';
	this.form_id          = '';
	this.record_id        = '';
	this.tab_numbers      = [];
	this.search           = '';
	this.search_columns   = '';
	this.sort             = '0';
	this.sort_direction   = 'asc';
	this.filter           = '';
	this.page_number      = '1';
	this.lookup_id        = '';
	this.object_id        = '1';
	this.username         = '';
	this.password     	= '';
	this.iframe       	= 0;
	this.forms        	= [];
	
}

