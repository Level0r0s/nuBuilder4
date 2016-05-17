
window.nuCalColor = '#F0F0F0';
window.nuCalTop   =  - 30;

function nuAppendChild(p,t,i){

	var o		= document.createElement(t);
	o.setAttribute('id',i);
	$(p).append(o)
	.css('zIndex', 3000);
	return document.getElementById(i);
	
}

function nuPopupCalendar(pThis){

	if(pThis===null){return;}

	$('#nuCalendar').remove();
	$('#nuLookupList').remove();

	window.nuCalendarCaller  = pThis.id;
	

	var i	= pThis.id; //fm.target;
	var tar	= $('#' + i);
	var off	= $('#' + i).offset();
	var top	= off.top;
	var left	= off.left;
	var h	= parseInt(tar.css('height'));

	
	window.nuOnCalendar		= 0;          //-- cursor not in calendar
	
	var c					= nuAppendChild('body','div','nuCalendar');
	c						= $('#nuCalendar');
	c.attr('onmouseover', 'window.nuOnCalendar = 1');
	c.attr('onmouseout', 'window.nuOnCalendar = 0');

	c.css({'background-color'	: window.nuCalColor,
			'position'		: 'absolute',
			'top'			: (top + h + 3),
			'left'			: left,
			'width'			: 210,
			'height'			: 213,
			'color'			: '#000000',
			'border-style'	: 'solid',
			'border-width'	: 1,
			'border-color'	: 'grey', 
			'border-radius'	: 5, 
			'boxShadow'		: '5px 5px 5px #888888'
	})
	.html('<img id="dialogCalClose" src="close.png" style="position: absolute; top: 0px; right: 0px;" onclick="$(\'#nuCalendar\').remove()">');
	
	var c = nuAppendChild('#nuTabAreaHolder','div','nuCalCloser');

	c					= $('#nuCalCloser');
	
	c.html('&#x2716;')
	.attr('onclick', "document.getElementById('nuCalendar').remove();")
	.css({'background-color'	: 'lightgrey',
			'position'		: 'absolute',
			'top'			: (window.nuCalTop + 32),
			'left'			: 2,
			'width'			: 20,
			'height'			: 20,
			'text-align'		: 'center',
			'font-size'		: 14,
			'font-style'		: 'bold',
			'color'			: '#000000',
			'cursor'			: 'pointer',
			'border-style'	: 'solid',
			'border-width'	: 1,
			'border-color'	: 'grey', 
			'border-radius'	: 5
	});
	

	var c = nuAppendChild('#nuCalendar','div','nuCalYear');
	
	c					= $('#nuCalYear');

	c.css({'position'			: 'absolute',
			'top'			: (window.nuCalTop + 55),
			'left'			: 60,
			'width'			: 90,
			'height'			: 25,
			'background-color':  window.nuCalColor,
			'text-align'		: 'center',
			'font-size'		: 14,
			'color'			: '#000000',
			'cursor'			: 'pointer',
	});


	var c = nuAppendChild('#nuCalendar','div','nuCalYearLess');

	c					= $('#nuCalYearLess');

	c.attr({'onclick'		: "window.nuCalYear--;nuPopulateCalendar('')",
			'onmouseover'	: "this.style.backgroundColor = '';",
			'onmouseout'	: "this.style.backgroundColor = window.nuCalColor;"
	})
	.css({'position'			: 'absolute',
			'top'			: (window.nuCalTop + 55),
			'left'			: 40,
			'width'			: 30,
			'height'			: 25,
			'cursor'			: 'pointer',
			'background-color':  window.nuCalColor,
			'text-align'		: 'center',
			'font-size'		: 14,
			'color'			: '#000000',
	})
	.html('&#9668;');


	var c = nuAppendChild('#nuCalendar','div','nuCalYearMore');

	c					= $('#nuCalYearMore');

	c.attr({'onclick'		: "window.nuCalYear++;nuPopulateCalendar('')",
			'onmouseover'	: "this.style.backgroundColor = '';",
			'onmouseout'	: "this.style.backgroundColor = window.nuCalColor;"
	})
	.css({'position'			: 'absolute',
			'top'			: (window.nuCalTop + 55),
			'left'			: 140,
			'width'			: 30,
			'height'			: 25,
			'cursor'			: 'pointer',
			'background-color':  window.nuCalColor,
			'text-align'		: 'center',
			'font-size'		: 14,
			'color'			: '#000000',
	})
	.html('&#9658;')
	.addClass('nuCalendar');


	var c = nuAppendChild('#nuCalendar','div','nuCalMonth');
	
	c					= $('#nuCalMonth');

	c.css({'position'			: 'absolute',
			'top'			: window.nuCalTop + 75,
			'left'			: 60,
			'width'			: 90,
			'height'			: 25,
			'background-color':  window.nuCalColor,
			'text-align'		: 'center',
			'font-size'		: 14,
			'color'			: '#000000',
	})

	var c = nuAppendChild('#nuCalendar','div','nuCalMonthLess');

	c					= $('#nuCalMonthLess');

	c.attr({'onclick'		: "window.nuCalMonth--;nuPopulateCalendar(this.id)",
			'onmouseover'	: "this.style.backgroundColor = '';",
			'onmouseout'	: "this.style.backgroundColor = window.nuCalColor;"
	})
	.css({'position'			: 'absolute',
			'top'			: (window.nuCalTop + 75),
			'left'			: 40,
			'width'			: 30,
			'height'			: 25,
			'cursor'			: 'pointer',
			'background-color':  window.nuCalColor,
			'text-align'		: 'center',
			'font-size'		: 14,
			'color'			: '#000000',
	})
	.html('&#9668;')
	.addClass('nuCalendar');


	var c = nuAppendChild('#nuCalendar','div','nuCalMonthMore');

	c					= $('#nuCalMonthMore');

	c.attr({'onclick'		: "window.nuCalMonth++;nuPopulateCalendar(this.id)",
			'onmouseover'	: "this.style.backgroundColor = '';",
			'onmouseout'	: "this.style.backgroundColor = window.nuCalColor;"
	})
	.css({'position'			: 'absolute',
			'top'			: (window.nuCalTop + 75),
			'left'			: 140,
			'width'			: 30,
			'height'			: 25,
			'cursor'			: 'pointer',
			'background-color':  window.nuCalColor,
			'text-align'		: 'center',
			'font-size'		: 14,
			'color'			: '#000000',
	})
	.html('&#9658;')
	.addClass('nuCalendar');
	
	var t                    = 90; 
	var l                    = 0;

	for(var i = 0 ; i < 42 ; i++){
	
		if(t == 90){nuTitleBox(i, l);}
		
		nuDayBox(i, l, t)
		
		if(l == 180){
			l	= 0;
			t	= t + 20;
		}else{
			l	= l + 30;
		}
		
	}
	



	var caller	= document.getElementById(window.nuCalendarCaller);

	nuReformat(caller);
	
	var fd                   = nuJavascriptDate(caller)

	var d                    = new Date();

	if(fd != ''){d = fd;}

	nuPopulateCalendar('', d.getFullYear(), d.getMonth(), d.getDate());
	
}

function nuTitleBox(n, l){

	var t                    = nuTranslate('SMTWTFS');
	var c                    = nuAppendChild('#nuCalendar','div','nuCalTitle' + n);

	c					= $('#nuCalTitle' + n);

	c.css({'position'			: 'absolute',
			'top'			: (window.nuCalTop + 97),
			'left'			: l,
			'width'			: 28,
			'height'			: 18,
			'cursor'			: 'pointer',
			'background-color': '#EDEDED',
			'color'			: '#000000',
			'border-color'	: '#D3D3D3',
			'border-style'	: 'solid',
			'border-width'	: 1,
			'text-align'		: 'center',
			'font-size'		: 14,
	})
	.html(t.substr(n, 1))
	.addClass('nuCalendar');
	

}

function nuDayBox(n, l, t){

	var c                    = nuAppendChild('#nuCalendar','div','nuCalDay'+n);
	var today                =  new Date();
	


	c					= $('#nuCalDay' + n);

	c.attr({'onclick'		: "window.nuCalDay=this.innerHTML;nuCalChoice(this)",
			'onmouseover'	: "this.style.backgroundColor = '';",
			'onmouseout'	: "this.style.backgroundColor = window.nuCalColor;"
	})
	.css({'position'			: 'absolute',
			'top'			: (window.nuCalTop + t + 30),
			'left'			: Number(l),
			'width'			: 30,
			'height'			: 20,
			'cursor'			: 'pointer',
			'background-color':  window.nuCalColor,
			'text-align'		: 'center',
			'font-size'		: 14,
			'color'			: '#000000',
	});
	
}

function nuPopulateCalendar(id, y, m, d){

	if(arguments.length != 1){
		window.nuCalDay                                   = d;
		window.nuCalMonth                                 = m;
		window.nuCalYear                                  = y;
	}
	window.nuCalMonth = nuMonthScope(window.nuCalMonth);
	
	if(id == 'nuCalMonthLess' && window.nuCalMonth == 11){
		window.nuCalYear = window.nuCalYear - 1;
	}
	
	if(id == 'nuCalMonthMore' && window.nuCalMonth == 0){
		window.nuCalYear = window.nuCalYear + 1;
	}
	
	document.getElementById('nuCalYear').innerHTML        = window.nuCalYear;
	document.getElementById('nuCalMonth').innerHTML       = nuTranslate(nuFullMonth(window.nuCalMonth));
	var s                                                 = new Date(window.nuCalYear, window.nuCalMonth, 1);
	var today                                             = new Date();
	var day                                               = 0;
	var nextmonth                                         = 0;
	
	for(var i = 0 ; i < 42 ; i++){
	
		document.getElementById('nuCalDay' + i).innerHTML = '';
		
	}
	
	for(var i = s.getDay() ; i < 42 ; i++){
		
		day++;
		s.setDate(day);
		c = document.getElementById('nuCalDay' + i);
		
		if(s.getDate() != day){
			return;
		}
		
		if(today.getDate() == day && today.getMonth() == window.nuCalMonth && today.getFullYear() == window.nuCalYear){
			c.style.color            = 'red';
		}else{
			c.style.color            = '#000000';
		}
		c.innerHTML = day;
		
	}

}


function nuPreviousMonth(y, m, d){

	m = nuMonthScope(m-1);
	
	var d   = new Date(y, m, 1);
	
	var p   = Array();
	var day = 1;
	debugger;
	while (d.getDate() == day) {
	
		p.push(day);
		d.setDate(day);
		day++;

	}	
	return p;

}


function nuFullMonth(n){
	
	var m  = Array();
	
	m[0]   = 'January';
	m[1]   = 'February';
	m[2]   = 'March';
	m[3]   = 'April';
	m[4]   = 'May';
	m[5]   = 'June';
	m[6]   = 'July';
	m[7]   = 'August';
	m[8]   = 'September';
	m[9]   = 'October';
	m[10]  = 'November';
	m[11]  = 'December';

	return String(m[n]);
	
}

function nu2Month(n){
	
	var mth  = Array();
	
	mth['Jan']	= '01';
	mth['Feb']	= '02';
	mth['Mar']	= '03';
	mth['Apr']	= '04';
	mth['May']	= '05';
	mth['Jun']	= '06';
	mth['Jul']	= '07';
	mth['Aug']	= '08';
	mth['Sep']	= '09';
	mth['Oct']	= '10';
	mth['Nov']	= '11';
	mth['Dec']	= '12';

	return String(mth[n]);
	
}


function nuCalChoice(t){

	if(t.innerHTML == ''){return;}

	var o	= $('#' + window.nuCalendarCaller);
	var f	= o.attr('data-nu-format');
	var d	= nuPad2('0' + t.innerHTML);
	var M	= String($('#nuCalMonth').html()).substr(0,3);
	var m	= nu2Month(M);
	var Y	= $('#nuCalYear').html();
	var y	= nuPad2(Y);
	var dt	= new Date(m + ' ' + d + ' ' + y);
	var v	= '';
	if(f == 6){v 		= d + '-' + M + '-' + Y;}
	if(f == 7){v 		= d + '-' + m + '-' + Y;}
	if(f == 8){v 		= M + '-' + d + '-' + Y;}
	if(f == 9){v 		= m + '-' + d + '-' + Y;}
	if(f == 10){v 	= d + '-' + M + '-' + y;}
	if(f == 11){v 	= d + '-' + m + '-' + y;}
	if(f == 12){v 	= M + '-' + d + '-' + y;}
	if(f == 13){v 	= m + '-' + d + '-' + y;}
	if(f == 32){v 	= Y + '-' + m + '-' + d;}
	
	o.val(v);
	o.change();
	o.focus();
	$('#nuCalendar').remove();

}


function nuBuildDate(){
	
	var o	= $('#' + window.nuCalendarCaller);
	var f	= o.attr('data-nu-format');
	
	if(f == '' || v == ''){return;}
	if(f == '6'){o.val();}
	
}


function nuMonthScope(m){

	if(m<0){m=11;}
	if(m>11){m=0;}
	
	return m;

}

function nuTranslate(s){
	
	return s;
	
}