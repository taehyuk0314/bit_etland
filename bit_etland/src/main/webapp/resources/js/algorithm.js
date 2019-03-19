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
			$('#nav').children().eq(0).html($$.a({id:'seq', url:'#'}).text('수열'));
			$('#nav').children().eq(1).html($$.a({id:'math', url:'#'}).text('수학'));
			$('#nav').children().eq(2).html($$.a({id:'arr', url:'#'}).text('정열'));
			$('#nav').children().eq(3).html($$.a({id:'col', url:'#'}).text('자료구조'));
			$('#nav').append($$.li({})).children().eq(4).html($$.a({id:'app', url:'#'}).text('응용'));
			$('#que_1').html($$.h({n:'2', url:'#'}).text('등차수열의 합계'));
			inputForm();
			$('#que_2').html($$.h({n:'2', url:'#'}).text('등비수열의 합계'));
			$('#answer_btn_1').text('결과').addClass('cursor').click(()=>{
				$.ajax({
					url :$.ctx()+'/algo/seq/1',
					type : 'post',
					data : JSON.stringify(
						{start: $('#start').val(),
						 end: $('#end').val(),
						 diff: $('#diff').val()}),
					dataType :'json',
					contentType : "application/json",
					success : d=>{
						$('#ari').html($$.h({id:'h_res',num:'2'}).text('결과값: '+d.result));
					},
					error : e=>{
						alert('AJAX 실패')
					}
				});
			$('#reset_btn').text('리셋').addClass('cursor').click(()=>{
				inputForm();
			})	
			});
		})
	};
	let inputForm= ()=>{
		$('#ari').html($$.form({id:'form'}));
		$('#form').html($$.div({id:'div_1', clazz:'form-group'}));
		$('#div_1').append($$.label({name:'usr'}).text('시작값 :')).
				append($$.input({type:'text',clazz:'form-control',id:'start'})).append($$.br());
		
		$('#form').append($$.div({id:'div_2', clazz:'form-group'}));
		$('#div_2').html($$.label({name:'usr'}).text('끝　값 :')).
				append($$.input({type:'text',clazz:'form-control',id:'end'})).append($$.br());
		
		$('#form').append($$.div({id:'div_3', clazz:'form-group'}));
		$('#div_3').html($$.label({name:'usr'}).text('공　차 :')).
				append($$.input({type:'text',clazz:'form-control',id:'diff'}));
	}
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