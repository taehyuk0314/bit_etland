var $$ = $$||{};
$$ ={
		div : x=>{
			return $('<div id ='+x.id+'/>');
		},
		a : x=>{
			return $('<a href="'+x.url+'" id='+x.id+'/>');
		},
		li : x =>{
			return $('<li id='+x+'/>');
		},
		h : x =>{
			return $('<h'+x.n+'>'+x.va+'</h'+x.n+'>'); 
		}
}	