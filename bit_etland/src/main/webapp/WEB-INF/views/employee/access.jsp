<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../home/top.jsp"/>
<div class="grid-item" id= "side_bar">
<h1>사원접속</h1>
</div>
<div class="grid-item" id= "content" style="border:1px solid black">
<form id="form"  class="form-horizontal">
<div id="register-container" class="form-group">
	<label class="control-label col-sm-2" >사원번호 :</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" 
      		 id="empno" name="empno" value="1000" >
    </div>
</div>
<div id="register-container" class="form-group">      
    <label class="control-label col-sm-2" >이 름 :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" 
      		 id="name" name="name" value="김경민" >
    </div>
</div> 
<input type="hidden" name="cmd" value="access" />
<input type="hidden" name="dir" value="customer" />
<input type="hidden" name="page" value="list" />
<button type="button" id = "confirm_btn" class="btn btn-default btn-lg">
 		<span class="glyphicon glyphicon-ok" aria-hidden="true"></span> 확 인 
</button>
<button type="button" id = "cancel_btn" class="btn btn-default btn-lg">
 		<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 취 소
</button>
</form>
</div>
<jsp:include page="../home/bottom.jsp"/>
<script>
$('#confirm_btn').click(function(){
	var empno = $('#empno').val();
	var name = $('#name').val();
	$('#form')
	.attr('action', '${ctx}/employee.do')
	.submit();
});
</script>









