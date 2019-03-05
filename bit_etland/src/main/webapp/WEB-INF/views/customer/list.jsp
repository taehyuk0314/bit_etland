<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<jsp:include page="../home/top.jsp"/>
<style>
#side_menu{
    grid-column-start: 1;
    grid-column-end: 2;
}
#content{
    grid-column-start: 2;
    grid-column-end: 7;
}
#cust_tab {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#cust_tab td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
#cust_tab tr:nth-child(even) {
  background-color: #dddddd;
}
.center {
  text-align: center;
}
.pagination {
  display: inline-block;
}
.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
  margin: 0 4px;
}
.pagination a.active {
  background-color: #4CAF50;
  color: white;
  border: 1px solid #4CAF50;
}
.pagination a:hover:not(.active) {
    background-color: #ddd;
}
</style>
<div class="grid-item" id="nav" style="border: 1px solid black">
	<jsp:include page="../employee/nav.jsp"/>
</div>
<div class="grid-item" id="side_menu" style="border: 1px solid black">
 	<h3><font style="font-size: 30px">고객목록</font>
 	</h3>
</div>
<div class="grid-item" id="content" style="border: 1px solid black">
	<table id="cust_tab">
	  <tr>
	    <th>No.</th>
	    <th>아이디</th>
	    <th>이 름</th>
	    <th>생년월일</th>
	    <th>성 별</th>
	    <th>전화번호</th>
	    <th>우편번호</th>
	    <th>지번주소</th>
	    <th>상세주소</th>
	  </tr>
	  <c:forEach items="${list}" var="cust"  >
	  	<tr>
		    <td>${cust.rnum}</td>
		    <td>${cust.customerID}</td>
		    <td><a href="${ctx}/customer.do?cmd=cust_retrieve&page=detail&customer_id=${cust.customerID}">${cust.customerName}</a></td>
		    <td>${cust.ssn}</td>
		    <td>남</td>
		    <td>${cust.phone}</td>
		    <td>${cust.postalCode}</td>
		    <td>${cust.city}</td>
		    <td>${cust.address}</td>
		  </tr>
	  </c:forEach>
	  
	  
	</table>
	<div style="height: 50px"></div>    
	<div class="center">
	  <div class="pagination">
	  <c:if test="${pagination.existPrev}">
		  <a href='${ctx}/customer.do?cmd=cust_list&page=list&page_num=${pagination.prevBlock}'>&laquo;</a>
	  </c:if>
	  <c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" varStatus="status">
	  	<c:choose>
	  		<c:when test="${pagination.pageNum eq status.index}">
	  			<a href="#" class='page active'>${status.index}</a>
	  		</c:when>
	  		<c:otherwise>
	  			<a href="#" class='page'>${status.index}</a>
	  		</c:otherwise>
	  	</c:choose>
	  	
	  	
	  </c:forEach>
	  <c:if test="${pagination.existNext}">
	  	<a href='${ctx}/customer.do?cmd=cust_list&page=list&page_num=${pagination.nextBlock}' >&raquo;</a>
	  </c:if>
	  
	  </div>
	</div>
</div>
<jsp:include page="../home/bottom.jsp"/>
<script>
/*
$('.page').each(function(){
	$(this).click(function(){
		location.assign('${ctx}/customer.do?cmd=cust_list&page=list&page_num='+$(this).text());
	});
});
*/
$('.page').click(function(){
	location.assign(
			'${ctx}/customer.do?cmd=cust_list&page=list&page_num='+$(this).text());
});
</script>



