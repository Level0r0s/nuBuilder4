

class nuFormObject {
	
	constructor() {
		
		this.schema				= [];
		this.breadcrumbs 		= [];
		this.scroll		 		= [];
		this.edited				= false;
		this.deleteForm			= false;
		this.formats			= this.setFormats();
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

		if(this.scroll[e.target.id] === undefined){
			
			this.scroll[e.target.id]	= {'list' : l, 'index' : 0};
			
			for(var i = 0 ; i < l.length ; i++){
				
				if(e.target.value == l[i]){
					this.scroll[e.target.id].index = i;
				}
			}
		}

		this.scroll[e.target.id].list	= l;
		
		var s	= this.scroll[e.target.id];
		
		if(event.keyCode == 38 || event.wheelDelta > 0){
			
			s.index --;
			
			if(s.index == -1){
				this.scroll[e.target.id].index = s.list.length -1;
			}
			
		}else if(event.keyCode == 40 || event.wheelDelta < 0){
			
			s.index ++;

			if(s.index == s.list.length - 1){
				this.scroll[e.target.id].index = 0;
			}
			
		}else{
			return false;
		}
		
		$('#' + e.target.id)
		.val(s.list[this.scroll[e.target.id].index])
		.addClass('nuEdited');

		nuHasBeenEdited();
		
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
	
	data(action = 'save'){
		
		var d	= [];
		var sf	= this.subforms();

		for(var i = 0 ; i < sf.length ; i++){
			d.push(this.subform(sf[i], action));
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

	subform(sf, action = 'save'){

		var id			= sf;
		var deleteAll	= action == 'delete';
		
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
		o.deleted		= [];
		
		$(sel).each(function(index){
			
			var THIS	= $(this);
			var dnpk	= $(this).attr('data-nu-primary-key')
			var V		= [dnpk];
			var E		= [0];
			var C		= 1;
			var	addrow	= true;
				
			THIS.children('[data-nu-data]').each(function(){
				
				var addfld	= true;
					
				if(this.id.substr(-8) == 'nuDelete'){
					
					addrow	= !$('#' + this.id).prop("checked");
					addfld	= false;
					
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
			
			if(addrow && !deleteAll){
				
				o.rows.push(V);
				o.edited.push(E);
				
			}else{
				o.deleted.push(dnpk);
			}
			
		});

		o.fields		= F;
		
		return o;
		
	}	
	
	setFormats(){
		
		var f	= {};

		f.Jan	= {'MMM' : 'Jan', 'MMMM' : 'January',	'mm' : '01' , 'm' : '1'};
		f.Feb	= {'MMM' : 'Feb', 'MMMM' : 'February',	'mm' : '02' , 'm' : '2'};
		f.Mar	= {'MMM' : 'Mar', 'MMMM' : 'March', 	'mm' : '03' , 'm' : '3'};
		f.Apr	= {'MMM' : 'Apr', 'MMMM' : 'April', 	'mm' : '04' , 'm' : '4'};
		f.May	= {'MMM' : 'May', 'MMMM' : 'May',		'mm' : '05' , 'm' : '5'};
		f.Jun	= {'MMM' : 'Jun', 'MMMM' : 'June',		'mm' : '06' , 'm' : '6'};
		f.Jul	= {'MMM' : 'Jul', 'MMMM' : 'July',		'mm' : '07' , 'm' : '7'};
		f.Aug	= {'MMM' : 'Aug', 'MMMM' : 'August', 	'mm' : '08' , 'm' : '8'};
		f.Sep	= {'MMM' : 'Sep', 'MMMM' : 'September',	'mm' : '09' , 'm' : '9'};
		f.Oct	= {'MMM' : 'Oct', 'MMMM' : 'October', 	'mm' : '10' , 'm' : '10'};
		f.Nov	= {'MMM' : 'Nov', 'MMMM' : 'November', 	'mm' : '11' , 'm' : '11'};
		f.Dec	= {'MMM' : 'Dec', 'MMMM' : 'December', 	'mm' : '12' , 'm' : '12'};

		f.Sun	= {'WWW' : 'Sun', 'WWWW' : 'Sunday', 	'w' : '1'};
		f.Mon	= {'WWW' : 'Mon', 'WWWW' : 'Monday', 	'w' : '2'};
		f.Tue	= {'WWW' : 'Tue', 'WWWW' : 'Tueday', 	'w' : '3'};
		f.Wed	= {'WWW' : 'Wed', 'WWWW' : 'Wednesday',	'w' : '4'};
		f.Thu	= {'WWW' : 'Thu', 'WWWW' : 'Thursday', 	'w' : '6'};
		f.Fri	= {'WWW' : 'Fri', 'WWWW' : 'Friday', 	'w' : '6'};
		f.Sat	= {'WWW' : 'Sat', 'WWWW' : 'Saturday', 	'w' : '7'};

		return f;
		
	}
	
}
