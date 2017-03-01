

class nuFormObject {
	
	constructor() {
		
		this.schema				= [];
		this.formats			= this.setFormats();
		this.formata			= []
		this.breadcrumbs 		= [];
		this.scroll		 		= [];
		this.edited				= false;
		this.deleteForm			= false;
		
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
		.change();

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

		f.Jan	= {'MMM' : 'Jan', 'MMMM' : 'January',	'mm' : '01' , 'm' : '1',  'jsmonth' : 0};
		f.Feb	= {'MMM' : 'Feb', 'MMMM' : 'February',	'mm' : '02' , 'm' : '2',  'jsmonth' : 1};
		f.Mar	= {'MMM' : 'Mar', 'MMMM' : 'March', 	'mm' : '03' , 'm' : '3',  'jsmonth' : 2};
		f.Apr	= {'MMM' : 'Apr', 'MMMM' : 'April', 	'mm' : '04' , 'm' : '4',  'jsmonth' : 3};
		f.May	= {'MMM' : 'May', 'MMMM' : 'May',		'mm' : '05' , 'm' : '5',  'jsmonth' : 4};
		f.Jun	= {'MMM' : 'Jun', 'MMMM' : 'June',		'mm' : '06' , 'm' : '6',  'jsmonth' : 5};
		f.Jul	= {'MMM' : 'Jul', 'MMMM' : 'July',		'mm' : '07' , 'm' : '7',  'jsmonth' : 6};
		f.Aug	= {'MMM' : 'Aug', 'MMMM' : 'August', 	'mm' : '08' , 'm' : '8',  'jsmonth' : 7};
		f.Sep	= {'MMM' : 'Sep', 'MMMM' : 'September',	'mm' : '09' , 'm' : '9',  'jsmonth' : 8};
		f.Oct	= {'MMM' : 'Oct', 'MMMM' : 'October', 	'mm' : '10' , 'm' : '10', 'jsmonth' : 9};
		f.Nov	= {'MMM' : 'Nov', 'MMMM' : 'November', 	'mm' : '11' , 'm' : '11', 'jsmonth' : 10};
		f.Dec	= {'MMM' : 'Dec', 'MMMM' : 'December', 	'mm' : '12' , 'm' : '12', 'jsmonth' : 11};

		f.Sun	= {'WWW' : 'Sun', 'WWWW' : 'Sunday', 	'w' : '1'};
		f.Mon	= {'WWW' : 'Mon', 'WWWW' : 'Monday', 	'w' : '2'};
		f.Tue	= {'WWW' : 'Tue', 'WWWW' : 'Tueday', 	'w' : '3'};
		f.Wed	= {'WWW' : 'Wed', 'WWWW' : 'Wednesday',	'w' : '4'};
		f.Thu	= {'WWW' : 'Thu', 'WWWW' : 'Thursday', 	'w' : '6'};
		f.Fri	= {'WWW' : 'Fri', 'WWWW' : 'Friday', 	'w' : '6'};
		f.Sat	= {'WWW' : 'Sat', 'WWWW' : 'Saturday', 	'w' : '7'};

		return f;
		
	}
	
	addFormatting(v, f){
		
		if(f[0] == 'N'){	//-- number
			
		}
		
		if(f[0] == 'D'){	//-- date
			
			var FMT		= this.setFormats();
			var dt		= String(v).split(' ');
			var d		= dt[0].split('-');
			
			if(dt.length == 1){
				var t	= [0, 0, 0];
			}else{
				var t	= dt[1].split(':');
			}

			var o 		= new Date(d[0], d[1], d[2], t[0], t[1], t[2], 0);			//-- (year, month, day, hours, minutes, seconds, milliseconds)
			
			var wee		= o.toString().split(' ')[0];								//-- Tue Sep 07 2004 11:11:12 GMT+0930 (Cen. Australia Standard Time)
			var mth		= o.toString().split(' ')[1];
			var day		= o.toString().split(' ')[2];
			var yea		= o.toString().split(' ')[3];
			var hou		= o.toString().split(' ')[4].split(':')[0];
			var min		= o.toString().split(' ')[4].split(':')[1];
			var sec		= o.toString().split(' ')[4].split(':')[2];
			var s		= String(f);
			
			if(Number(hou) > 11){
				s		= s.replaceAll('#AMPM#', 	'pm');
			}else{
				s		= s.replaceAll('#AMPM#', 	'am');
			}
			
			s			= s.replaceAll('#th#',	 	hou);
			s			= s.replaceAll('#tm#',		min);
			s			= s.replaceAll('#th#', 		sec);
			s			= s.replaceAll('#MMMM',		FMT[mth]['MMMM']);
			s			= s.replaceAll('#MMM',		FMT[mth]['MMM']);
			s			= s.replaceAll('#mm#',		FMT[mth]['mm']);
			s			= s.replaceAll('#m#', 		FMT[mth]['m']);
			s			= s.replaceAll('#WWWW#',	FMT[wee]['WWWW']);
			s			= s.replaceAll('#WWW#',		FMT[wee]['WWW']);
			s			= s.replaceAll('#w#',		FMT[wee]['w']);
			s			= s.replaceAll('#yyyy#',	yea);
			s			= s.replaceAll('#yy#',		String(yea).substr(2));
			s			= s.replaceAll('#dd#',		day);
			s			= s.replaceAll('#d#',		Number(day));
			
			return s.substr(2);
			
		}
		
	}

	
	removeFormatting(v, f){
		
//'Feb 02 23:50 Feb','D|MMM mm th:tm MMM'
		
		if(f[0] == 'N'){	//-- number
			
		}

		if(f[0] == 'D'){	//-- date
			
			var FMT		= this.setFormats();
			
			v			= String(v)
							.replaceAll(':', ' ')
							.replaceAll('/', ' ')
							.replaceAll('.', ' ')
							.replaceAll('-', ' ')
							.split(' ');
							
			f			= String(f)
							.substr(2)
							.replaceAll(':', ' ')
							.replaceAll('/', ' ')
							.replaceAll('.', ' ')
							.replaceAll('-', ' ')
							.split(' ');
							
							
			var o 		= Date().toString().split(' ', 6)			//-- Tue Sep 07 2004 11:11:12 GMT+0930 (Cen. Australia Standard Time)
			var time	= String(o[4]).split(':');
			
			var d		= [o[3], FMT[o[1]].jsmonth, o[2], time[0], time[1], time[2]];
			
			
			var s		= String(f);
			s			= s.replaceAll('',	FMT[wee]['WWWW']);
			

			var o 		= new Date(d[0], d[1], d[2], d[3], d[2], d[2], 0);
			
			//-- (year, month, day, hours, minutes, seconds, milliseconds)
			//-- Tue Sep 07 2004 11:11:12 GMT+0930 (Cen. Australia Standard Time)
			
			var wee		= o.toString().split(' ')[0];
			var mth		= o.toString().split(' ')[1];
			var day		= o.toString().split(' ')[2];
			var yea		= o.toString().split(' ')[3];
			var hou		= o.toString().split(' ')[4].split(':')[0];
			var min		= o.toString().split(' ')[4].split(':')[1];
			var sec		= o.toString().split(' ')[4].split(':')[2];
			var s		= String(f);
			s			= s.replaceAll('',	FMT[wee]['WWWW']);
			s			= s.replaceAll('WWW',	FMT[wee]['WWW']);
			s			= s.replaceAll('w',		FMT[wee]['w']);
			s			= s.replaceAll('MMMM',	FMT[mth]['MMMM']);
			s			= s.replaceAll('MMM',	FMT[mth]['MMM']);
			s			= s.replaceAll('mm',	FMT[mth]['mm']);
			s			= s.replaceAll('m', 	FMT[mth]['m']);
			s			= s.replaceAll('th', 	hou);
			s			= s.replaceAll('tm', 	min);
			s			= s.replaceAll('th', 	sec);
			s			= s.replaceAll('yyyy',	yea);
			s			= s.replaceAll('yy',	String(yea).substr(2));
			
			return s.substr(2);
			
		}
		
	}

	
}
