
class nuListObject{
	
	constructor(e){
		
		var obj						= $('#' + e.target.id);
		var off						= obj.offset();
		var w						= parseInt(obj.css('width'));
		var h						= parseInt(obj.css('height'));

		this.OBJECT					= obj[0];
		this.EVENT					= e;
		this.rowHeight				= 30;
		this.top					= off.top + h;
		this.left					= off.left;
		this.width					= w;
		this.height					= 0;
		this.list					= [];
		this.boxTop					= 0;
		this.boxRows				= 0;
		this.boxList				= [];
		this.boxHighlight			= 0;
		
	}
	
	setList(a){

		if(JSON.stringify(this.list) != JSON.stringify(a)){
				
			this.list				= a;
			this.boxRows			= a.splice(0, 10).length;
			this.boxHighlight 		= 0;
			this.boxTop				= 0;
			this.height				= this.rowHeight * this.boxRows.length;
			this.setBoxList(0);
			
		}
		
	}
	
	bob(){console.log('bobby');}
	
	setBoxList(bt){

		if(bt == -1 || bt == 1){
			this.boxTop				+= bt;
		}else{
			this.boxTop				=  bt;
		}
		
		this.boxList				= this.list.splice(this.boxTop, 10);
		
	}
	
	keyEvent(e){
		
		this.setList();
		
		if(e.keyCode == 38){this.up();}												//-- up;
		if(e.keyCode == 40){this.down();}											//-- down;
		if(e.keyCode == 9 || e.keyCode == 13){$('#nuListerListBox').remove();}		//-- tab or enter;
		
		$('#' + i).change();

		this.buildList();
		
	}
	
	up(){
		
		if(this.boxHighlight == 0){											//-- top of box
			
			this.boxHighlight	= this.boxRows - 1;							//-- bottom of box
			
			if(this.boxTop == 0){											//-- top of list
				this.boxTop			= this.list.length - this.boxRows;		//-- bottom of list
			}
			
		}else{
			this.boxHighlight 	= this.boxHighlight - 1;					//-- move up in box
		}
		
	}
	
	down(){
		
		if(this.boxHighlight == this.boxRows - 1){							//-- bottom of box
			
			this.boxHighlight	= 0;										//-- top of box
			
			if(this.boxTop + this.boxRows == this.list.length){				//-- bottom of list
				this.boxTop		= 0;										//-- top of list
			}
			
		}else{
			this.boxHighlight 	= this.boxHighlight + 1;					//-- move down in box
		}
		
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
						'width'			: this.width,
						'height'		: this.height,
						'text-align'	: 'left',
						'position'		: 'absolute',
						'overflow'		: 'hidden',
		});
		
		for(var i = 0 ; i < this.boxList.length ; i++){
			
			var uid		= 'id="nulister' + i + '"';
			var id		= this.EVENT.target.id
			var item	= this.boxList[i];
			
			if(i == this.boxHighlight){
				rw		= '<div ' + uid + ' onclick="nuListerPick(event, \'' + id + '\')" data-nu-index=' + i + '" class="nuListerListBoxSelected">' + item + '</div>';
			}else{
				rw		= '<div ' + uid + ' onclick="nuListerPick(event, \'' + id + '\')" data-nu-index=' + i + '" class="nuListerListBoxNotSelected">' + item + '</div>';
			}
			
			$('#nuListerListBox').append(rw);
		
		}
		
	}

}
