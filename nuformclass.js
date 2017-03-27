

class nuFormObject {
	
	constructor() {
		
		this.tableSchema		= [];
		this.formSchema			= [];
		this.formats			= this.setFormats();
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
		b.rows        		= 20;
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
		
		var tab	= this.tableSchema[t];
		
		for(var i = 0 ; i < tab.length ; i++){
			
			if(tab[i][0] == f){
				return tab[i][1];
			}
		}
	
	}
	
	tablesFromSQL(sql){
		
		var t		= [];
		var tables	= this.getTables();
		sql			= sql + ' ';
		sql			= sql.replace(/[\n\r]/g, ' ');
		
		for(var i = 0 ; i < tables.length ; i++){
			
			if(sql.indexOf(' ' + tables[i] + ' ') != -1){
				t.push(tables[i]);
			}
			
		}
		
		return t;
	
	}
	
	formFields(t){
		
		var tab	= this.formSchema[t];
		var fld	= [];
		
		if(tab === undefined){
			return fld;
		}
		
		
		for(var i = 0 ; i < tab.length ; i++){
			fld.push(tab[i]);
		}
		
		return fld;
	
	}
	
	tableFields(t){
		
		var tab	= this.tableSchema[t];
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
	
	getForms(){
	
		var forms	= [];
		
		for (var key in nuFORM.formSchema) {

			if (nuFORM.formSchema.hasOwnProperty(key)) {
				forms.push(key) 
			}
			
		}
		
		return forms;
		
	}
	
	getTables(){
	
		var tables	= [];
		
		for (var key in nuFORM.tableSchema) {

			if (nuFORM.tableSchema.hasOwnProperty(key)) {
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
			
			var o				= $('#' + field);
			var f				= o.attr('data-nu-format');
			var v				= o.val();
			
			return nuFORM.removeFormatting(v, f);
			
		}

		var d				= this.data();											//-- an array of all data as subforms (the mainform is the first element)
		var v				= 0;
		var u				= 0;
		
		for(var i =  0 ; i < d.length ; i++){
			
			var SF			= d[i];
			
			if(SF.id == subform_name){												//-- i've got the right subform
			
				var fmt		= $("[id$='" + field_name + "']input[id^='" + subform_name + "']").attr('data-nu-format')			
				var f		= SF.fields.indexOf(field_name);						//-- check for valid field(column)
				
				if(f == -1){return 0;}
				
				for(var c = 0 ; c < SF.rows.length ; c++){

					if(SF.deleted[c] == 0){										//-- add up only stuff being deleted
						
						u	= nuFORM.removeFormatting(SF.rows[c][f], fmt);
						v	= v + Number(u);
					
					}
					
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
			var table	= $('#nuRECORD').attr('data-nu-table');
			var sel		= '#nuRECORD';
			var sf		= 'nuRECORD';
			var oi		= '';
			var fk		= '';
			var pk		= $('#nuRECORD').attr('data-nu-primary-key-name');
		
		}else{
			
			var sel		= "[id*='" + sf + "'][id*='nuRECORD']";
			var table	= $(sel).attr('data-nu-table');
			var oi		= $('#' + sf).attr('data-nu-object-id');
			var fk		= $('#' + sf).attr('data-nu-foreign-key-name');
			var pk		= $('#' + sf).attr('data-nu-primary-key-name');
			
		}
		
		var o			= {'id':id, 'foreign_key':fk, 'primary_key':pk, 'object_id':oi, 'table':table, 'action':action};	//-- foreign_key id id Form's record_id (which might change if cloned.)
		var F			= ['ID'];
		o.rows			= [];
		o.edited		= [];
		o.deleted		= [];
		var deleteRow	= false;
		
		$(sel).each(function(index){
			
			var THIS			= $(this);
			var dnpk			= $(this).attr('data-nu-primary-key')
			var V				= [dnpk];
			var E				= [0];
			var C				= 1;
			var chk				= $('#' + this.id).prop("checked");
				
			THIS.children('[data-nu-data]').each(function(){
				
				if(this.id.substr(-8) == 'nuDelete'){
					chk			=($('#' + this.id).prop("checked") || deleteAll) ? 1 : 0 ;
				}

				
				if(sf == 'nuRECORD'){						//-- the main Form
					F[C]		= this.id;
				}else{
					F[C]		= this.id.substr(sf.length + 3);
				}
				
				var dnf			= $('#' + this.id).attr('data-nu-format');
				var typ			= $('#' + this.id).attr('type');
				var val			= $('#' + this.id).val();

				if(typ == 'checkbox'){
					val			= $('#' + this.id).prop("checked") ? 1 : 0 ;
				}
				
				V[C]			= nuFORM.removeFormatting(val, dnf);
				E[C]			= $('#' + this.id).hasClass('nuEdited') ? 1 : 0 ;

				C++;
				
			});
			
			o.rows.push(V);
			o.edited.push(E);
			o.deleted.push(chk);
			
		});

		o.fields				= F;
		
		return o;
		
	}	
	
	setFormats(){
		
		var f	= {};

		f.Jan		= {'mmm' : 'Jan', 'mmmm' : 'January',	'mm' : '01' , 'm' : '1',  'jsmonth' : 0};
		f.Feb		= {'mmm' : 'Feb', 'mmmm' : 'February',	'mm' : '02' , 'm' : '2',  'jsmonth' : 1};
		f.Mar		= {'mmm' : 'Mar', 'mmmm' : 'March', 	'mm' : '03' , 'm' : '3',  'jsmonth' : 2};
		f.Apr		= {'mmm' : 'Apr', 'mmmm' : 'April', 	'mm' : '04' , 'm' : '4',  'jsmonth' : 3};
		f.May		= {'mmm' : 'May', 'mmmm' : 'May',		'mm' : '05' , 'm' : '5',  'jsmonth' : 4};
		f.Jun		= {'mmm' : 'Jun', 'mmmm' : 'June',		'mm' : '06' , 'm' : '6',  'jsmonth' : 5};
		f.Jul		= {'mmm' : 'Jul', 'mmmm' : 'July',		'mm' : '07' , 'm' : '7',  'jsmonth' : 6};
		f.Aug		= {'mmm' : 'Aug', 'mmmm' : 'August', 	'mm' : '08' , 'm' : '8',  'jsmonth' : 7};
		f.Sep		= {'mmm' : 'Sep', 'mmmm' : 'September',	'mm' : '09' , 'm' : '9',  'jsmonth' : 8};
		f.Oct		= {'mmm' : 'Oct', 'mmmm' : 'October', 	'mm' : '10' , 'm' : '10', 'jsmonth' : 9};
		f.Nov		= {'mmm' : 'Nov', 'mmmm' : 'November', 	'mm' : '11' , 'm' : '11', 'jsmonth' : 10};
		f.Dec		= {'mmm' : 'Dec', 'mmmm' : 'December', 	'mm' : '12' , 'm' : '12', 'jsmonth' : 11};

		f.January	= {'mmm' : 'Jan', 'mmmm' : 'January',	'mm' : '01' , 'm' : '1',  'jsmonth' : 0};
		f.February	= {'mmm' : 'Feb', 'mmmm' : 'February',	'mm' : '02' , 'm' : '2',  'jsmonth' : 1};
		f.March		= {'mmm' : 'Mar', 'mmmm' : 'March', 	'mm' : '03' , 'm' : '3',  'jsmonth' : 2};
		f.April		= {'mmm' : 'Apr', 'mmmm' : 'April', 	'mm' : '04' , 'm' : '4',  'jsmonth' : 3};
		f.May		= {'mmm' : 'May', 'mmmm' : 'May',		'mm' : '05' , 'm' : '5',  'jsmonth' : 4};
		f.June		= {'mmm' : 'Jun', 'mmmm' : 'June',		'mm' : '06' , 'm' : '6',  'jsmonth' : 5};
		f.July		= {'mmm' : 'Jul', 'mmmm' : 'July',		'mm' : '07' , 'm' : '7',  'jsmonth' : 6};
		f.August	= {'mmm' : 'Aug', 'mmmm' : 'August', 	'mm' : '08' , 'm' : '8',  'jsmonth' : 7};
		f.September	= {'mmm' : 'Sep', 'mmmm' : 'September',	'mm' : '09' , 'm' : '9',  'jsmonth' : 8};
		f.October	= {'mmm' : 'Oct', 'mmmm' : 'October', 	'mm' : '10' , 'm' : '10', 'jsmonth' : 9};
		f.November	= {'mmm' : 'Nov', 'mmmm' : 'November', 	'mm' : '11' , 'm' : '11', 'jsmonth' : 10};
		f.December	= {'mmm' : 'Dec', 'mmmm' : 'December', 	'mm' : '12' , 'm' : '12', 'jsmonth' : 11};

		f.Sun		= {'ddd' : 'Sun', 'dddd' : 'Sunday', 	'dd' : '01', 	'd' : '1'};
		f.Mon		= {'ddd' : 'Mon', 'dddd' : 'Monday', 	'dd' : '02', 	'd' : '2'};
		f.Tue		= {'ddd' : 'Tue', 'dddd' : 'Tueday', 	'dd' : '03', 	'd' : '3'};
		f.Wed		= {'ddd' : 'Wed', 'dddd' : 'Wednesday',	'dd' : '04', 	'd' : '4'};
		f.Thu		= {'ddd' : 'Thu', 'dddd' : 'Thursday', 	'dd' : '05', 	'd' : '5'};
		f.Fri		= {'ddd' : 'Fri', 'dddd' : 'Friday', 	'dd' : '06', 	'd' : '6'};
		f.Sat		= {'ddd' : 'Sat', 'dddd' : 'Saturday', 	'dd' : '07', 	'd' : '7'};

		f.Sunday	= {'ddd' : 'Sun', 'dddd' : 'Sunday', 	'dd' : '01', 	'd' : '1'};
		f.Monday	= {'ddd' : 'Mon', 'dddd' : 'Monday', 	'dd' : '02', 	'd' : '2'};
		f.Tuesday	= {'ddd' : 'Tue', 'dddd' : 'Tueday', 	'dd' : '03', 	'd' : '3'};
		f.Wednesday	= {'ddd' : 'Wed', 'dddd' : 'Wednesday',	'dd' : '04', 	'd' : '4'};
		f.Thursday	= {'ddd' : 'Thu', 'dddd' : 'Thursday', 	'dd' : '05', 	'd' : '5'};
		f.Friday	= {'ddd' : 'Fri', 'dddd' : 'Friday', 	'dd' : '06', 	'd' : '6'};
		f.Saturday	= {'ddd' : 'Sat', 'dddd' : 'Saturday', 	'dd' : '07', 	'd' : '7'};

		return f;
		
	}
	
	addFormatting(v, f){

		if(v == '' || f == '' || f == undefined){return v;}
		
		v				= String(v) == 'null' ? '' : String(v);
		f				= String(f);
		
		if(f[0] == 'N'){							//-- number  '456.789','N|€ 1,000.00'

			f			= f.substr(2);
			var s		= String(f.split(' ')[0]);			//-- sign
			var n		= String(f.split(' ')[1]);			//-- number
			var c		= n[1] == '0' ? '' : n[1];			//-- comma
			
			if(c == ''){
				var d	= n[4];								//-- decimal
				var p	= n.length - 5;						//-- places
			}else{
				var d	= n[5];								//-- decimal
				var p	= n.length - 6;						//-- places
			}

			var o		= v.split('.');
			var h		= nuAddThousandSpaces(o[0], c);
			
			if(String(h) == 'toobig'){
				
				nuAlert(["Man! That's a BIG number, stop showing off."]);
				return "";
				
			}
			
			if(o.length == 1 || o[1] == ''){ 				//-- no decimal numbers even if it has a decimal place
				var m		= s + ' ' + h;
			}else{
				
				var dnum	= String(o[1]);
				var m		= s + ' ' + h + d + String(dnum + String(0).repeat(1000)).substr(0, p)
				
			}
			
			return m;
		
		}
		
		if(f[0] == 'D'){	//-- date

			if(String(v.split(' ')[0]) == '0000-00-00'){return '';}
			if(v == ''){return '';}
			
			var FMT		= this.setFormats();
			var d		= String(v.split(' ')[0]).split('-');
			var t		= String(v.split(' ')[1]).split(':');

			if(t[0] == 'undefined'){
				var t	= [0, 0, 0];
			}
			
			var o 		= new Date(d[0], d[1]-1, d[2], t[0], t[1], t[2], 0);			//-- (year, month, day, hours, minutes, seconds, milliseconds)
			
			var wee		= o.toString().split(' ')[0];								//-- Tue Sep 07 2004 11:11:12 GMT+0930 (Cen. Australia Standard Time)
			var mth		= o.toString().split(' ')[1];
			var day		= o.toString().split(' ')[2];
			var yea		= o.toString().split(' ')[3];
			var hou		= String(o.toString().split(' ')[4]).split(':')[0];
			var min		= String(o.toString().split(' ')[4]).split(':')[1];
			var sec		= String(o.toString().split(' ')[4]).split(':')[2];
			
			var s		= String(f);
			
			if(Number(hou) > 11){
				
				s		= s.replaceAll('pp', 	'pm');
				s		= s.replaceAll('PP', 	'PM');
				
			}else{
				
				s		= s.replaceAll('pp', 	'am');
				s		= s.replaceAll('PP', 	'AM');

			}
			
			s			= s.replaceAll('yyyy',		yea);
			s			= s.replaceAll('yy',		String(yea).substr(2));
			s			= s.replaceAll('mmmm',		FMT[mth]['mmmm']);
			s			= s.replaceAll('mmm',		FMT[mth]['mmm']);
			s			= s.replaceAll('mm',		FMT[mth]['mm']);
			s			= s.replaceAll('dddd',		FMT[wee]['dddd']);
			s			= s.replaceAll('ddd',		FMT[wee]['ddd']);
			s			= s.replaceAll('dd',		day);
			s			= s.replaceAll('hh',	 	hou);
			s			= s.replaceAll('nn',		min);
			s			= s.replaceAll('ss', 		sec);
			
			return s.substr(2);
			
		}
		
		return v;
		
	}

	
	removeFormatting(v, f){
		
		if(v == '' || f == '' || f == undefined){return v;}
		
		v				= String(v);
		f				= String(f);

		if(f[0] == 'N'){									//-- number

			f			= f.substr(2);
			var s		= String(f.split(' ')[0]);			//-- sign
			var n		= String(f.split(' ')[1]);			//-- number
			var c		= n[1] == '0' ? '' : n[1];			//-- comma
			
			if(c == ''){
				var d	= n[4];								//-- decimal
				var p	= n.length - 5;						//-- places
			}else{
				var d	= n[5];								//-- decimal
				var p	= n.length - 6;						//-- places
			}

			var num		= v
						.replaceAll(c, '')
						.replaceAll(s, '')
						.replaceAll(d, '.');
						
			return Number(num);
		
		}

		if(f[0] == 'D'){									//-- date
			
			if(f.substr(0, 10) == '0000-00-00'){
				return '';
			}
			
			var FMT		= this.setFormats();
			var hasTime	= f.indexOf('hh') != -1 || f.indexOf('nn') != -1 || f.indexOf('ss') != -1; 	//-- looking for the time
			
			v			= String(v)
							.replaceAll(':', ' ')
							.replaceAll('/', ' ')
							.replaceAll('.', ' ')
							.replaceAll('-', ' ')
							.replaceAll(',', ' ')
							.split(' ');
							
			f			= String(f)
							.substr(2)
							.replaceAll(':', ' ')
							.replaceAll('/', ' ')
							.replaceAll('.', ' ')
							.replaceAll('-', ' ')
							.replaceAll(',', ' ')
							.split(' ');
							
							
			var o 		= Date().toString().split(' ', 6)								//-- Tue Sep 07 2004 11:11:12 GMT+0930 (Cen. Australia Standard Time)
			var time	= String(o[4]).split(':');
			
			var d		= {'y' : o[3], 'm' : FMT[o[1]].jsmonth, 'd' : o[2], 'h' : time[0], 'n' : time[1], 's' : time[2]};	//-- today's date

			for(var i = 0 ; i < f.length ; i++){
				
				var fmt	= String(f[i]);
				var l	= fmt[0];
				
				if(l == 'm' && FMT[v[i]] !== undefined){
					d.m		= FMT[v[i]]['mm'];					//-- javascript date
				}
				
				if(fmt == 'dd'){
					d.d		= v[i];
				}
				if(l == 'y'){
					if(fmt == 'yyyy'){d.y = v[i];}
					if(fmt == 'yy'){d.y = String(v[i]).substr(2);}
				}
				
				if(l == 'h'){d.h = v[i];}
				if(l == 'n'){d.n = v[i];}
				if(l == 's'){d.s = v[i];}
				
			}
			
			var o 	= new Date(d.y, d.m, d.d, Number(d.h), Number(d.n), Number(d.s), 0);
			var y	= String(o.getFullYear()) 	+ '-';
			var m	= nuPad2(o.getMonth())		+ '-';
			var d	= nuPad2(o.getDate())		+ ' ';
			var h	= nuPad2(o.getHours()) 		+ ':';
			var n	= nuPad2(o.getMinutes()) 	+ ':';
			var s	= nuPad2(o.getSeconds());

			if(hasTime){
				return  String(y+m+d+h+n+s);
			}else{
				return  String(y+m+d).trim();
			}
			
		}
		
	}
	
}