

function nuAppendActionButton(t, f){

	var i	= String(t).toLowerCase().replaceAll(' ', '_', true);
	
	h='<input id="' + i + '" type="button" class="nuButton" value="' + t + '" onclick="' + f + '">&nbsp;'
	$('#nuActionHolder').append(h);
	
}
