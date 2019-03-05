<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#nav{
    grid-column-start: 1;
    grid-column-end: 7;
    height: 55px;
}
</style>    
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">직원전용</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">홈</a></li>
      <li><a id="category">카테고리</a></li>
      <li><a href="#">사원</a></li>
      <li><a href="#">주문</a></li>
      <li><a href="#">상품</a></li>
      <li><a href="#">선박</a></li>
      <li><a href="#">공급업체</a></li>
    </ul>
  </div>
</nav>    
<script>
$('#category').attr('style','cursor:pointer')
	.click(function(){
	location.assign('${ctx}/category.do?cmd=cate_list&page=list');
});
</script>








