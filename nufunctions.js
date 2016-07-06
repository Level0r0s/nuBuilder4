

function nuAppendActionButton(t, f){

//--append a custom Action Button

	var i	= String(t).toLowerCase().replaceAll(' ', '_', true).replaceAll("'", '_', true);
	
	h='<input id="' + i + '" type="button" class="nuButton" value="' + t + '" onclick="' + f + '">&nbsp;'
	$('#nuActionHolder').append(h);
	
}


function nuBuildSubformArray(s){
	
//-- add this subform to the list of subforms that will have their details sent to the server

	window.nuSUBFORMJSON.push(s);
	
}

function nuSetHash(n, v){
//-- set hash variable to be used on server side	
	window.nuHASH[n] = v;
}
