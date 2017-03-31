

function nuAppendActionButton(t, f){

//--append a custom Action Button

	var i	= String(t)
	.toLowerCase()
	.replaceAll(' ', '_', true)
	.replaceAll("'", '_', true);
	
	var h	= '<input id="' + i + '" type="button" class="nuActionButton" value="' + t + '" onclick="' + f + '">&nbsp;';
	
	$('#nuActionHolder').append(h);
	
}

/*
function nuBuildSubformArray(s){				//-- add this subform to the list of subforms that will have their details sent to the server

	window.nuSUBFORMJSON.push(s);
	
}
*/

function nuSetHash(n, v){ 						//-- set hash variable to be used on server side	

	var l	= window.nuFORM.breadcrumbs.length - 1;
	
	window.nuFORM.breadcrumbs[l][n]	= v;

}

function nuGetHash(n){ 						//-- get hash variable to be used on server side	

	var l	= window.nuFORM.breadcrumbs.length - 1;
	
	return window.nuFORM.breadcrumbs[l][n];

	
}

function nuFullScreen(bb){  //-- remove all heading

	if($('#nuBreadcrumbHolder').length 	= 1){$('#nuBreadcrumbHolder').remove();}
	if($('#nuActionHolder').length 		= 1){$('#nuActionHolder').remove();}
	if($('#nuTabHolder').length 		= 1){$('#nuTabHolder').remove();}
	
	if(bb){
		nuBackButton();
	}
	
	
}


function nuBackButton(){

	var id  	= 'nuTabBackButton';
	var img		= document.createElement('img');
	
	img.setAttribute('id', id);

	$('body').append(img);
	
	$('#' + id)
	.attr('src', 'nubackbutton.png')
	.css({'top' : 2 , 'right' : 2 ,'width' : 20 , 'height' : 20 ,'position' : 'absolute'})
	.addClass('nuIcon')
	.attr('title','Back')
	.attr('onclick','nuGetBreadcrumb()');


}


