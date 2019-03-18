var alg = alg||{};
alg=(()=>{
	let init = x=>{
		alg.$.init(x);
	};
	let onCreate=()=>{
		setContentView();
	};
	let setContentView=()=>{
		$.getScript($.js()+'/compo.js',()=>{
//			$('body').html($$.div({id: 'test',cls: 'cls'}))
			$('#nav').children().eq(0).html($$.a({id:'su', url:'#'}).text('수열'));
			$('#nav').children().eq(1).html($$.a({id:'ma', url:'#'}).text('수학'));
			$('#nav').children().eq(2).html($$.a({id:'st', url:'#'}).text('정열'));
			$('#nav').children().eq(3).html($$.a({id:'arr', url:'#'}).text('배열'));
			$('#nav').append($$.li({})).children().eq(4).html($$.a({id:'app', url:'#'}).text('응용'));
			$('#que_1').html($$.h({n:'2', url:'#'}).text('수열 1 - 1+2+3+4+…+100까지의 합계 (do~while)'));
			$('#que_2').html($$.h({n:'2', url:'#'}).text('수열 2 - 1-2+3-4+5-6+…+99-100의 합계 (do~while, while, if)'));
		})
	};
	return {init : init,
		onCreate : onCreate};
})();

alg.$ ={
		init :(x)=>{
			$.getScript(x+'/resources/js/router.js',()=>{
			$.extend(new Session(x));
			alg.onCreate();
		})
	}
};