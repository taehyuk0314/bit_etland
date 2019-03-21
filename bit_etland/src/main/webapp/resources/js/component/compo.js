var $$ = $$||{};
$$ ={
		div : x=>{
			return $('<div id ='+x.id+' class='+x.clazz+'/>');
		},
		a : x=>{
			return $('<a href="'+x.url+'" id='+x.id+'/>');
		},
		li : x =>{
			return $('<li id='+x+'/>');
		},
		h : x =>{
			return $('<h'+x.n+'>'+x.va+'</h'+x.n+'>'); 
		},
		form : x=>{
			return $('<form id="'+x.id+'"/>');
		},
		label : x=>{
			return $('<label for='+x.name+'/>');
		},
		input : x=>{
			return $('<input type='+x.type+' class='+x.clazz+' id='+x.id+' >');
		},
		br : x=>{
			return $('<br>');
		}
}	