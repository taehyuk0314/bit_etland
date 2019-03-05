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
 	<div class="container" style="width: 200px">
	  <ul class="list-group" id="cate_side_menu">
	    <li class="list-group-item" id="cate_list" style="background-color: #18e455">카테고리 목록</li>
	    <li class="list-group-item" id="cate_register">카테고리 등록</li>
	    <li class="list-group-item" id="cate_search">카테고리 조회</li>
	    <li class="list-group-item" id="cate_modify">카테고리 수정</li>
	    <li class="list-group-item" id="cate_delete">카테고리 삭제</li>
	  </ul>
	</div>
</div>
<div class="grid-item" id="content" style="border: 1px solid black">
	<table id="cust_tab">
	  <tr>
	    <th>No.</th>
	    <th>카테고리 제목</th>
	    <th>카테고리 설명</th>
	  </tr>
	  <c:forEach items="${list}" var="cate"  >
	  	<tr>
		    <td>${cate.categoryID}</td>
		    <td>${cate.categoryName}</td>
		    <td><a href="#">${cate.description}</a></td>
		  </tr>
	  </c:forEach>
	  
	  
	</table>
	<div style="height: 50px"></div>    
	<%-- <div class="center">
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
	</div> --%>
</div>
<jsp:include page="../home/bottom.jsp"/>

<script src="${js}/employee.js">
/*
$('.page').each(function(){
	$(this).click(function(){
		location.assign('${ctx}/customer.do?cmd=cust_list&page=list&page_num='+$(this).text());
	});
});
*/


</script>



