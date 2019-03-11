<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" 
	href="${css}/customer/list.css" />
<div class="grid-item" id="nav">
	<jsp:include page="../employee/nav.jsp"/>
</div>
<div class="grid-item" id="side_menu" >
	<form id="file_form" >
		<img src="${img}/${image.imgName}.${image.imgExtention}"style="width: 400px; height: 400px " >
		<input type="file" name="file_upload"/>
		<input type="submit" id="file_upload_btn"/>
	</form>
</div>
<div class="grid-item" id="content" >
	<form id="form">
		검색한 사람의 정보<br />
		<div id="customerID">아이디 ${cust.customerID}</div><br /> 
		<div id="customerName">이름 ${cust.customerName}</div><br />
		<div id="ssn">생년월일 ${cust.ssn}</div><br /> 
		<div>성별 : 남</div><br /> 
		<div id="phone">전화번호 ${cust.phone}</div><br /> 
		<div id="postalCode">우편번호 ${cust.postalCode}</div><br /> 
		<div id="city">주소 ${cust.city}</div><br /> 
		<div id="address">상세주소 ${cust.address}</div><br /> 
	</form>
</div>
<div class="grid-item">
<button type="button" class="btn btn-primary" id="photo_btn" >사진수정</button>
</div>
<div class="grid-item" style="width: 100%">
<button type="button" class="btn btn-primary" id="update_btn" >수  정</button>
</div>
<div class="grid-item" style="width: 100%">
<button type="button" class="btn btn-danger" id="delete_btn" >삭  제</button>
</div>
<script>
	$('#update_btn').click(function(){
		location.assign('${ctx}/move/customer/update');
	});
	$('#file_upload_btn').click(function(){
		alert('사진수정');
		$('#file_form')
		.attr('method','post')
		.attr('action','${ctx}/customer.do?cmd=cust_file_upload&page=detail&customerID=${cust.customerID}')
		.attr('enctype','multipart/form-data')
		.submit();
	});
	$('#delete_btn').click(function(){
		alert('삭제버튼클릭');
		location.assign('${ctx}/customer.do?cmd=cust_delete&dir=home&page=main&customerID=${cust.customerID}');
	});
</script>
