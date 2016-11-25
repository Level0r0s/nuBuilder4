

class nuListObject{
	
	
	constructor(e){
		
		var obj						= $('#' + e.target.id);
		var off						= obj.offset();
		var w						= obj.css('width');
		var h						= obj.css('height');

		this.OBJECT					= obj[0];
		this.EVENT					= e;
		this.rowHeight				= 30;
		this.rows					= 0;
		this.top					= off.top + h;
		this.left					= off.left;
		this.width					= w;
		this.height					= 0;
		this.list					= [];
		this.subList				= [];
		this.pointer 				= 0;
		this.pointing 				= 'up';
		this.first					= 0;
		this.last					= 9;
		
	}
	
	setSubList(f){

		this.first					= f;
		this.subList				= this.list.splice(this.first, 10);
		this.last	 				= this.first + this.subList.length;
		
	}
	
	setList(a){

		if(JSON.stringify(this.list) != JSON.stringify(a)){
				
			this.list				= a;
			this.rows				= a.length > 9  ? 10 : a.length;
			this.pointer 			= 0;
			this.first				= 0;
			this.lastDirection		= -1;
		
		}
		
	}
	
	keyEvent(e){
		
		this.setList();
		
		if(k == 38){this.pointUp();}								//-- up;
		if(k == 40){this.pointDown();}								//-- down;
		if(k == 9 || k == 13){$('#nuListerListBox').remove();}		//-- tab or enter;
		
		$('#' + i).change();

		this.buildList();
		
	}
	
	pointUp(){
		
		if(this.pointer == 0){
			
			if(this.first == 0){
				
				var rows	= this.list.length;
				
				if(rows > 9){
					this.first		= rows - 10;
					this.pointer	= 9;
				}else{
					this.first		= rows - 1;
					this.pointer	= this.first;
				}
				
			}
				
		}else{
			this.pointer 	= this.pointer - 1;
		}
		
		this.lastDirection	= 'up';
		
	}
	
	pointDown(){
		
		if(this.pointer == this.subList.length - 1){
			
			this.first	= 0;
			
			if(this.first == this.list.length - 1){
				
				this.first	= 0;
				
				if(rows > 9){
					this.first		= rows - 10;
					this.pointer	= 9;
				}else{
					this.first		= rows - 1;
					this.pointer	= this.first;
				}
				
			}
				
		}else{
			this.pointer 	= this.pointer - 1;
		}
		
		this.lastDirection	= 'down';
		
	}

	buildList(){
		
		var	a	= a.
		
		if(this.lastDirection == 'up'){
		    
			if(this.pointer == 0){
			    
				if(this.first == 0){
				    
				}
			}
			
		}
		
		var box 	= document.createElement('div');
		
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
		
		
		
		for(var i = this.top ; i < this.list.length ; i++){
			
			var listID	= ' id="nulister' + j + '" ';
			
			if(i == j){
				rw	= '<div' + listID + 'onclick="nuListerPick(event, \'' + e.target.id + '\')" data-nu-index=' + j + '" class="nuListerListBoxSelected">' + a[j] + '</div>';
			}else{
				rw	= '<div' + listID + 'onclick="nuListerPick(event, \'' + e.target.id + '\')" data-nu-index=' + j + '" class="nuListerListBoxNotSelected">' + a[j] + '</div>';
			}
			
			$('#nuListerListBox').append(rw);
		
		}
		






		
	}
	
	

}
