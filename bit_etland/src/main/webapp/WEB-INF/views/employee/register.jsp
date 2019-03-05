<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../home/top.jsp"/>
<div class="grid-item" id= "side_bar">
<h1>사원등록</h1>
</div>
<div class="grid-item" id= "content" style="border:1px solid black">
<form id="form"  class="form-horizontal">
<div id="register-container" class="form-group">
	<label class="control-label col-sm-2" >이 름 :</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" 
      		 id="name" name="name" placeholder="한글 입력" >
    </div>
</div>
<div id="register-container" class="form-group">      
    <label class="control-label col-sm-2" >주민번호 :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" 
      		 id="birthday" name="birthday" placeholder="예) 900101-1" >
    </div>
</div> 
<div id="register-container" class="form-group">    
    <label class="control-label col-sm-2" >부 서 :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" 
      		 id="desc" name="desc" placeholder="예) 900101-1" >
    </div>
</div>   
<div id="register-container" class="form-group">    
    <label class="control-label col-sm-2" >매니저 :</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" 
      		 id="manager" name="manager" placeholder="매니저 사원번호" >
    </div>
</div>
<div id="register-container" class="form-group">    
    <label class="control-label col-sm-2" >휴대폰 :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" 
      		 id=phone name="phone" placeholder="-없이 숫자만 입력" >
    </div>
</div>
<div id="register-container" class="form-group">    
    <label class="control-label col-sm-2" >우편번호 :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" 
      		 id=postal_code name="postal_code" placeholder="우편번호 5자리" >
    </div>
</div>
<div id="register-container" class="form-group">    
    <label class="control-label col-sm-2" >주 소 :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" 
      		 id=city name="city" placeholder="도로명주소" >
    </div>
</div>
<div id="register-container" class="form-group">    
    <label class="control-label col-sm-2" >상세주소 :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" 
      		 id=address name="address" placeholder="상세 주소" >
    </div>
</div> 
<input type="hidden" name="cmd" value="register" />
<input type="hidden" name="page" value="access" />   
<button type="button" id = "confirm_btn" class="btn btn-default btn-lg">
 		<span class="glyphicon glyphicon-ok" aria-hidden="true"></span> 확 인 
</button>
<button type="button" id = "cancel_btn" class="btn btn-default btn-lg">
 		<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 취 소
</button>
  

</form>
</div>

<!-- aaaaaaaaaa 
<div class="grid-item" id="side_menu">
 	<h1><font style="font-size: 30px">사원 등록</font></h1>
</div>
<div class="grid-item" id="content">
<form id="form" name="form" >
	<div class="grid-container">
	    <div class="grid-item" id="item_1">프로필사진</div>
	    <div class="grid-item" id="item_2"><input type="text" id="photo" name="photo" ></div>
	    <div class="grid-item" id="item_3">이 름</div>
	    <div class="grid-item" id="item_4"><input type="text" id="name" name="name" ></div>
	    <div class="grid-item" id="item_5">매니저</div>
	    <div class="grid-item" id="item_6"><input type="text" id="manager" name="manager" ></div>
	    <div class="grid-item" id="item_7">생년월일</div>
	    <div class="grid-item" id="item_8"><input type="text" id="birthday" name="birthday" ></div>
	    <div class="grid-item" id="item_9">상 세</div>
	    <div class="grid-item" id="item_10"><input type="text" id="desc" name="desc" ></div>
	    <div class="grid-item" id="item_11"><input type="submit" id="confirm_btn" value='확 인'></div>
	    <div class="grid-item" id="item_12"><input type="reset" id="cancel_btn" value='취 소'> </div>
	 
	</div>
</form>
</div>
-->
<jsp:include page="../home/bottom.jsp"/>
<script>
$('#confirm_btn').click(function(){
	var empno = $('#empno').val();
	var name = $('#name').val();
	var manager = $('#manager').val();
	var birthday = $('#birthday').val();
	var desc = $('#desc').val();
	$('#form')
	.attr('action', '${ctx}/employee.do')
	.submit();
});
</script>






