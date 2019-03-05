<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../home/top.jsp"/>
<style>
#ul_nav {
    grid-column-start: 1;
    grid-column-end: 7;
    display: grid;
    grid-template-columns: auto auto auto auto auto auto auto ;
    
}
#ul_nav li{float: left;}
#ul_nav li a {
	text-align: center;
	overflow: hidden;
	text-decoration: none;
	font-size: 15px;}
#ul_nav li a:hover {
  background-color: #555;
  color: white;
}
#ul_nav li a.active {
  background-color: #4CAF50;
  color: white;
}

#ul_nav li a:hover:not(.active) {
  background-color: #555;
  color: white;
}
#li_nav_1{
    	grid-column-start: 1;
    	grid-column-end: 2;	
}
#li_nav_2{
		grid-column-start: 2;
    	grid-column-end: 3;
}
#li_nav_3{
		grid-column-start: 3;
    	grid-column-end: 4;
}
#li_nav_4{
		grid-column-start: 4;
    	grid-column-end: 5;
}
#li_nav_5{
		grid-column-start: 5;
    	grid-column-end: 6;
}
#li_nav_6{
		grid-column-start: 6;
    	grid-column-end: 7;
}
#li_nav_7{
		grid-column-start: 7;
    	grid-column-end: 8;
} 
</style>
<div class="grid-item" id="nav_bar">
   <ul id="ul_nav" class="grid-container">
       <li id="li_nav_1" class="grid-item"> 
       		<button type="button" class="btn btn-default btn-sm">
          		<span class="glyphicon glyphicon-home"></span> Home
        	</button>
       </li>
       <li id="li_nav_2" class="grid-item"><a href="#"></a></li>
       <li id="li_nav_3" class="grid-item"><a href="#"></a></li>
       <li id="li_nav_4" class="grid-item"><a href="#"></a></li>
       <li id="li_nav_5" class="grid-item"><a href="#"></a></li>
       <li id="li_nav_6" class="grid-item"><a href="#"></a></li>
       <li id="li_nav_7" class="grid-item">
       	<a href="#">${customer.customerName}의 페이지</a>
       </li>
   </ul>
   </div>
   
</div>
    <div class="row">
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" src="http://d3qpgbf7vej5yf.cloudfront.net/wp-content/uploads/2018/09/apple-iphone-xs-quick-review-10.jpg"  data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3 id="thumbnail-label">스마트폰<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
            <h2>Galaxy Note9</h2>
            <p>The new super powerful Note</p>
            <p>Galaxy Note9 Alpine White 출시!</p>
            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" src="https://images.samsung.com/is/image/samsung/sec-allinone-dm500a2m-l15-dm500a2m-l15-%ED%94%84%EB%A1%9C%EC%8A%A4%ED%8A%B8-%ED%99%94%EC%9D%B4%ED%8A%B8-%EC%95%9E%EB%A9%B4-%ED%82%A4%EB%B3%B4%EB%93%9C-%EB%A7%88%EC%9A%B0%EC%8A%A4-%EC%95%9E%EB%A9%B4-thumb-105325062?$PF_PRD_PNG$" data-holder-rendered="true" style="height: 200px; width: 200px; display: block;">
          <div class="caption">
            <h3 id="thumbnail-label">데스크탑<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
            <h2>Galaxy Note9</h2>
            <p>The new super powerful Note</p>
            <p>Galaxy Note9 Alpine White 출시!</p>
            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200"  src="http://www.bloter.net/wp-content/uploads/2017/07/notebook9-pen1-800x409.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3 id="thumbnail-label">노트북<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
            <h2>Galaxy Note9</h2>
            <p>The new super powerful Note</p>
            <p>Galaxy Note9 Alpine White 출시!</p>
            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
          </div>
        </div>
      </div>
    </div>
<jsp:include page="../home/bottom.jsp"/>  
<script>
$('#li_nav_7 a').click(function(){
	location.assign("${ctx}/customer.do?cmd=cust_retrieve&page=detail&customer_id=${customer.customerID}");
	
});
</script>
