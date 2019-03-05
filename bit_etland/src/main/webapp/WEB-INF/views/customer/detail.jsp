<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<jsp:include page="../home/top.jsp"/>
<style>
.mypage{
    display: grid;
    grid-template-columns: auto auto auto auto;
    grid-gap: 1px;
    background-color: white;
    padding: 50px;
    width: 900px;
    height: 400px;
    margin: auto;
}
.mypage1 {
grid-column-start:1; 
grid-column-end:2;
border : 1px solid gray;
text-align: center;
}
.mypage2 {
grid-column-start:2; 
grid-column-end:5;
border : 1px solid gray;
text-align: center;
}
.myphoto {
    display: grid;
    grid-template-columns: auto auto auto auto;
    grid-gap: 1px;
    background-color: white;
    padding: 50px;
    width: 300px;
    margin: auto;
    
}
.myphotoin{
    grid-column-start:2; 
    grid-column-end:4;
}
.update_cus{
	grid-column-start:1; 
    grid-column-end:7;
}
</style>
<div class="grid-item" id="nav" style="border: 1px solid black">
	<jsp:include page="../employee/nav.jsp"/>
</div>
<div class="grid-item" id= "side_bar">
	<form id="form" >	
		<img src=${img}${image.imgName}.${image.imgExtention} 
			 style="height: 300px; width: 300px; "/>
		 <input type="file" class="form-control-file"  name="file_upload" style="width:300px;margin: 0 auto;margin-top: 10px" />
		 <input type="submit" id="file_upload_btn" />
	</form>			 
</div>
<div class="grid-item" id= "content" style="border: 1px solid black">
	<div class="mypage">
	<div class="mypage1">아이디</div>
	<div class="mypage2">${cust.customerID}</div>
	<div class="mypage1">이름</div>
	<div class="mypage2">${cust.customerName}</div>
	<div class="mypage1">생년월일</div>
	<div class="mypage2">${cust.ssn}</div>
	<div class="mypage1">성별</div>
	<div class="mypage2">남</div>
	<div class="mypage1">전화번호</div>
	<div class="mypage2">${cust.phone}</div>
	<div class="mypage1">주소</div>
	<div class="mypage2">${cust.city}</div>
	<div class="mypage1">상세주소</div>
	<div class="mypage2">${cust.address}</div>
	<div class="mypage1">우편번호</div>
	<div class="mypage2">${cust.postalCode}</div>
</div>
</div>
<div class="grid-item update_cus" >
	<button type="button" id = "confirm_btn" class="btn btn-default btn-lg">
 		<span class="glyphicon glyphicon-ok" aria-hidden="true"></span> 정보수정 
	</button>
	<button type="button" id = "cancel_btn" class="btn btn-default btn-lg">
	 		<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 회원탈퇴
	</button>
</div>

<script>
$('#update_btn').click(function(){
	location.assign('${ctx}/customer.do?'
+'cmd=cust_retrieve&page=update&customer_id=${cust.customerID}');
});
$('#delete_btn').click(function(){
	location.assign('${ctx}/customer.do?'
+'cmd=cust_remove&dir=home&page=main&customer_id=${cust.customerID}');
});
$('#file_upload_btn')
	.attr('style','cursor:pointer')
	.attr('style',"width: 300px; margin-top:10px")
	.click(function(){
		$('#form')
		.attr('method','post')
		.attr('action','${ctx}/customer.do?cmd=cust_file_upload&page=detail&customer_id=${cust.customerID}')
		.attr('enctype','multipart/form-data')
		.submit();
});  
</script>













