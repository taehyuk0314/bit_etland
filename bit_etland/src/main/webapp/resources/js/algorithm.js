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
			nav();
			remove();
			question('등차수열의 합계');
			$('#right_content').prepend($$.div({id:'right_start'}));	
			$('#leave_a_comment').before('<div id="right_end">')
			$('#right_start').nextUntil('#right_end').wrapAll('<div id="new_div"></div>')
			var str = $('#new_div').html();
			$('#right_end').remove();
			$('#new_div').remove();
			let arr =[
				{id:'a', va :'등차수열'},
				{id:'b', va :'등비수열'},
				{id:'c', va :'팩토리얼수열'},
				{id:'d', va :'피보나치수열'}
			];
			$.each(arr,(i,j)=>{
					$('#right_start').append(str);
					$('#question').attr('id','question_'+j.id);
					$('#question_'+j.id).text(j.va);
			});
		})
	};
	let nav =()=>{
		$('#nav').children().eq(0).html($$.a({id:'seq', url:'#'}).text('수열'));
		$('#nav').children().eq(1).html($$.a({id:'math', url:'#'}).text('수학'));
		$('#nav').children().eq(2).html($$.a({id:'arr', url:'#'}).text('정열'));
		$('#nav').children().eq(3).html($$.a({id:'col', url:'#'}).text('자료구조'));
		$('#nav').append($$.li({})).children().eq(4).html($$.a({id:'app', url:'#'}).text('응용'));
	};
	let remove=()=>{
		$('#rm_s').before('<div id="rm_start"/>');
		$('#rm_e').after('<div id="rm_end"/>');
		$('#rm_start').nextUntil('#rm_end').remove();
	};
	let inputForm= ()=>{
//		$('#que_1').html($$.h({n:'2', url:'#'}).text('등차수열의 합계'));
		$('#ari').html($$.form({id:'form'}));
		$('#form').html($$.div({id:'div_1', clazz:'form-group'}));
		$('#div_1').append($$.label({name:'usr'}).text('시작값 :')).
				append($$.input({type:'text',clazz:'form-control',id:'start'}));
		
		$('#form').append($$.div({id:'div_2', clazz:'form-group'}));
		$('#div_2').html($$.label({name:'usr'}).text('끝　값 :')).
				append($$.input({type:'text',clazz:'form-control',id:'end'}));		
		$('#form').append($$.div({id:'div_3', clazz:'form-group'}));
		$('#div_3').html($$.label({name:'usr'}).text('공　차 :')).
				append($$.input({type:'text',clazz:'form-control',id:'diff'}));
	};	
	let question=(x)=>{
		$('#question').text(x);
		inputForm();
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