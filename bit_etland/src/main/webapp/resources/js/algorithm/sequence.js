function sequence(){
	_sequence.nav();
	_sequence.remove();
	$('#right_content').prepend($$.div({id:'right_start'}));	
	$('#leave_a_comment').before('<div id="right_end">');
	$('#right_start').nextUntil('#right_end').wrapAll('<div id="new_div"></div>')
	let str = $('#new_div').html();
	$('#new_div').remove();
	$('#right_end').remove();
	let arr =[
		{id:'ari', val :'등차수열'},
		{id:'geo', val :'등비수열'},
		{id:'fac', val :'팩토리얼수열'},
		{id:'fibo', val :'피보나치수열'}
	];
	$.each(arr,(i,j)=>{
			let GID = Math.floor(Math.random() * 10000)+1;
			let _GID = '#'+GID;
			$('<div id ="'+GID+'">'+str+'</div>').appendTo('#right_start');
			let POST =GID+"_POST";
			let _POST = '#'+POST;
			$(_GID+' h4').attr('id',POST);
			let TITLE = GID+"_TITLE";
			let _TITLE = '#'+TITLE;
			$(_GID+' h2').attr('id',TITLE);
			let DATE = GID+'_DATE';
			let _DATE = '#'+DATE;
			$(_TITLE).siblings('h5').eq(0).attr('id',DATE);
			let BTN = GID+'_BTN';
			let _BTN = '#'+BTN;
			$(_TITLE).siblings('h5').eq(1).attr('id',BTN);
			let INPUT = GID+'_INPUT';
			let _INPUT = '#'+INPUT;
			$(_GID+' p').attr('id',INPUT);
			$(_TITLE).text(j.val);
			$(_BTN).empty();
			$(_INPUT).empty();
			let x = [{cls: 'start', txt: '시작값'},
					{cls:'end',txt:'한계값'},
					{cls:'diff', txt:'공차'}];
			$(_sequence.inputForm(x)).appendTo(_INPUT);
			$('#del_start').remove();
			$('#del_end').remove();
			$('<span class="label label-danger"></span>')
			.text('결과')
			.addClass('cursor')
			.attr('name',j.id)
			.appendTo(_BTN)
			.click(function(){
				let that = $(this).attr('name');
				let data = {start: $('.start').val(),
							end: $('.end').val(),
							diff: $('.diff').val()};
			alert('일단 결과 클릭됨'+$('.start').val());

		$.ajax({
			url :$.ctx()+'/algo/seq/'+that,
			type : 'post',
			data : JSON.stringify(data),
			dataType :'json',
			contentType : "application/json",
			success : d=>{
				$(_INPUT).empty();
				$('<h2>결과값 : '+d.result+'</h2>')
				.appendTo(_INPUT);
			},
			error : e=>{
				alert('AJAX 실패');
			}
		});
	});
	$('<span class="label label-warning" style="margin-left: 20px"></span>')
	.text('리셋')
	.addClass('cursor')
	.appendTo(_BTN)
			.click(()=>{
				$(_INPUT).empty();
				$(_sequence.inputForm(x)).appendTo(_INPUT);
			});
	});
}	
var _sequence ={
		nav : ()=>{
			$('#nav').children().eq(0).html($$.a({id:'seq', url:'#'}).text('수열'));
			$('#nav').children().eq(1).html($$.a({id:'math', url:'#'}).text('수학'));
			$('#nav').children().eq(2).html($$.a({id:'arr', url:'#'}).text('정열'));
			$('#nav').children().eq(3).html($$.a({id:'col', url:'#'}).text('자료구조'));
			$('#nav').append($$.li({})).children().eq(4).html($$.a({id:'app', url:'#'}).text('응용'));
		},
		 remove : ()=>{
			$('#rm_s').before('<div id="rm_start"/>');
			$('#rm_e').after('<div id="rm_end"/>');
			$('#rm_start').nextUntil('#rm_end').remove();

		},
		inputForm : (x)=>{
			let html = '<form>';
			$.each(x, (i, j)=>{
				html += '<div class="fomr-group">';
				html += '<label for="">'+j.txt+' :</label>';
				html += '<input type="text" class="'+j.cls+'"></div>';
			});	
			html += '</form>';
			return html;
		}
};
