function sequence(){
	_sequence.nav();
	_sequence.remove();
	_sequence.question('등차수열의 합계');
							$('#right_content').prepend($$.div({id:'right_start'}));	
							$('#leave_a_comment').before('<div id="right_end">');
							$('#right_start').nextUntil('#right_end').wrapAll('<div id="new_div"></div>')
							let str = $('#new_div').html();
							$('#new_div').remove();
							$('#right_end').remove();
							let arr =[
								{id:'a', va :'등차수열'},
								{id:'b', va :'등비수열'},
								{id:'c', va :'팩토리얼수열'},
								{id:'d', va :'피보나치수열'}
							];
							$.each(arr,(i,j)=>{
									$(str).appendTo('#right_start');
									$('#question').attr('id','question_'+j.id);
									$('#question_'+j.id).text(j.va);
									$('.buttons').empty();
									$('<span class="label label-danger"></span>')
									.text('결과')
									.addClass('cursor')
									.appendTo('.buttons')
									.click(()=>{
										let date = {start: $('#start').val(),
													end: $('#end').val(),
													diff: $('#diff').val()};
									alert('일단 결과 클릭됨'+$('#start').val());

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
										$('#form').remove();
									},
									error : e=>{
										alert('AJAX 실패');
									}
								});
							});
									$('<span class="label label-warning" style="margin-left: 20px"></span>')
									.text('리셋')
									.addClass('cursor')
									.appendTo('.buttons')
									.click(()=>{
										_sequence.inputForm();	
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
		inputForm : ()=>{
//			$('#que_1').html($$.h({n:'2', url:'#'}).text('등차수열의 합계'));
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
		},
		question : (x)=>{
			$('#question').text(x);
			_sequence.inputForm();
			// ajax
			$('#reset_btn').text('리셋').addClass('cursor')
			.click(()=>{
				_sequence.inputForm();
			});
		}
};
