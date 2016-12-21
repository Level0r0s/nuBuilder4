
class nuListObject{
	
	constructor(e){
		
		var obj						= $('#' + e.target.id);
		var off						= obj.offset();
		var w						= parseInt(obj.css('width'));
		var h						= parseInt(obj.css('height'));

		this.OBJECT					= obj;
		this.EVENT					= e;
		this.rowHeight				= 19;
		this.top					= off.top + h;
		this.left					= off.left;
		this.widths					= [0,0];
		this.height					= 0;
		this.list					= [];
		this.boxTop					= 0;
		this.boxRows				= 0;
		this.boxList				= [];
		this.boxHighlight			= 0;
		this.descriptionWidth		= 0;
		this.isLookup				= this.OBJECT.attr('data-nu-type') == 'lookup';
		this.setWidths();		
		
	}
	
	setWidths(){
		
		var id						= this.OBJECT[0].id;
		var code					= id + 'code';
		var desc					= id + 'description';
		var button					= id + 'button';
		var c						= 0;
		var b						= 0;
		var d						= 0;
		
		if($('#' + code).length == 1){c	= parseInt($('#' + code).css('width'));}

		if($('#' + button).length == 1){b = parseInt($('#' + button).css('width'));}

		if($('#' + desc).length == 1){d = parseInt($('#' + desc).css('width'));}

		if(this.isLookup){
			
			this.widths[0]			= c + b;
			this.widths[1]			= d;
			
		}else{
		
			this.widths[0]			= parseInt($('#' + id).css('width'));
			this.widths[1]			= 0;
			
		}
		
	}
	
	setList(a){

		this.list				= this.formatList(a);
		this.boxRows			= a.slice(0, 10).length;
		this.boxHighlight 		= 0;
		this.boxTop				= 0;
		this.height				= this.rowHeight * this.boxRows;
		this.setBoxList(0);
		
	}
	
	formatList(a){
		
		var arr		= [];
		var cols	= a[0].length;
		
		for(var i = 0 ; i < a.length ; i++){
			
			if(cols == 1){arr.push([a[0], a[0], a[0]]);}
			if(cols == 2){arr.push([a[0], a[1], a[1]]);}
			if(cols == 3){arr.push([a[0], a[1], a[2]]);}
			
		}
		
		return arr;
		
	}
	
	setBoxList(bt){

		if(bt == -1 || bt == 1){
			this.boxTop				+= bt;
		}else{
			this.boxTop				=  bt;		
		}
				
		this.boxList				= this.list.slice(this.boxTop, this.boxTop + 10);	
		this.boxRows				= this.boxList.length;	
		this.boxSize				= this.boxList.length;	

	}

	up(){

		if(this.boxHighlight < 1){											//-- top of box
			
			if(this.boxTop < 1){											//-- top of list
			
				this.boxHighlight	= this.boxRows - 1;						//-- bottom of box
				this.setBoxList(this.list.length - this.boxRows);			//-- bottom of list

			}else{
				this.setBoxList(-1);											
			}
			
		}else{
			this.boxHighlight 	= this.boxHighlight - 1;					//-- move up in box
		}
		
		$('#' + this.OBJECT[0].id).change();
		
	}
	
	down(){
		
		if(this.boxHighlight + 2 > this.boxRows){							//-- bottom of box
			
			if(this.boxTop + this.boxRows == this.list.length){				//-- bottom of list
				
				this.boxHighlight = 0;										//-- top of box
				this.setBoxList(0);											
				
			}else{
				this.setBoxList(1);											//-- top of list
			}
			
		}else{
			this.boxHighlight 	= this.boxHighlight + 1;					//-- move down in box
		}
		
		$('#' + this.OBJECT[0].id).change();

	}
	
	buildList(){

		$('#nuListerListBox').remove();
		
		var box 		= document.createElement('div');
		var rw			= '';
		
		box.setAttribute('id', 'nuListerListBox');
		
		$('body').append(box);

		$('#nuListerListBox').css({
						'top'			: this.top,
						'left'			: this.left,
						'width'			: this.widths[0] + this.widths[1],
						'height'		: this.height,
						'text-align'	: 'left',
						'position'		: 'absolute',
						'overflow'		: 'hidden',
		});

		
		for(var i = 0 ; i < this.boxList.length ; i++){
			
			var divid	= 'nulister' + i;
			var uid		= 'id="' + divid + '"';
			var id		= this.EVENT.target.id
			var item	= this.boxList[i];

			if(i == this.boxHighlight){
				var	cl	= 'nuListerSelected';
			}else{
				var	cl 	= 'nuListerNotSelected';
			}
			
			var datan	= ' data-nu-ind="' 			+ i + '" ';
			var datai	= ' data-nu-id="' 			+ item[i][0]  + '" ';
			var datac	= ' data-nu-code="' 		+ this.choppedAt(item[i][1], this.widths[0]) + '" ';
			var datad	= ' data-nu-description="'	+ this.choppedAt(item[i][2], this.widths[1]) + '" ';
			var datal	= this.isLookup ? 'event, ' + '1' :  'event, ' + '0';
			
			var rw		= "<div " + uid + " onclick='nuClickLister(" + datal + ")' class='" + cl + "' " + datai + datac + datad + ">";
			rw			+= "   <div id='code_" + i + "' style='display:inline-block;width:" + this.widths[0] + "px;height:20px'>" + this.choppedAt(item[i][1], this.widths[0]) + "</div>";
			rw			+= this.choppedAt(item[i][2], this.widths[1]);
			rw			+= "</div>";

			$('#' + id).val(this.boxList[this.boxHighlight]);	
			
			$('#nuListerListBox').append(rw);
		
			$('#' + divid).attr('title',item);
		
		}
		
	}
	
	choppedAt(s, w){
		
		var len	= 0;
		
		s	= String(s);
		
		for(var i = 0 ; i < s.length ; i++){
			
			len	= nuGetWordWidth(s.substr(0, s.length - i)) + 10;
			
			if(len < w){
				return s.substr(0, s.length - i) + (i === 0 ? '' : '...');
			}
		
		}
		
		return s;

	}

}

function nuClickLister(e, isLookup){

	var o							= $('#' + e.target.id);
	var ind							= o.attr('data-nu-ind');
	var id							= o.attr('data-nu-id');
	var code						= o.attr('data-nu-code');
	var description					= o.attr('data-nu-description');

	nuFORM.lists[id].boxHighlight	= Number(ind) - nuFORM.lists[id].boxTop;

	$('#' + id.substr(-4)).val(id);
	$('#' + id).val(code).focus();
	
	if(isLookup){
		$('#' + id.substr(-4) + 'description').val(description);
	}

	$('#nuListerListBox').remove();

}


