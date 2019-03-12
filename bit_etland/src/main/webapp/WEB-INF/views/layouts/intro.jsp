<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!--
	@Author: 김태혁 kimtaehyuk0314@gmail.com
	@Date: 2019. 3. 12. 오전 9:53:24
	@File Name: intro.jsp
	@Desc: 인트로 템플릿 페이지, 로그인, 회원가입화면
-->

		<jsp:include page="common.jsp"/>
<body data-spy="scroll" data-target="#navbar-example">
          <tiles:insertAttribute name="header" />

  <!-- Start Slider Area -->
          <tiles:insertAttribute name="content" />
  <!-- Start Footer bottom Area -->

          <tiles:insertAttribute name="footer" />
  <script src="${lib}/home/jquery/jquery.min.js"></script>
  <script src="${lib}/home/bootstrap/js/bootstrap.min.js"></script>
  <script src="${lib}/home/owlcarousel/owl.carousel.min.js"></script>
  <script src="${lib}/home/venobox/venobox.min.js"></script>
  <script src="${lib}/home/knob/jquery.knob.js"></script>
  <script src="${lib}/home/wow/wow.min.js"></script>
  <script src="${lib}/home/parallax/parallax.js"></script>
  <script src="${lib}/home/easing/easing.min.js"></script>
  <script src="${lib}/home/nivo-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
  <script src="${lib}/home/appear/jquery.appear.js"></script>
  <script src="${lib}/home/isotope/isotope.pkgd.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="${js}/home/contactform.js"></script>

  <script src="${js}/home/main.js"></script>
</body>

</html>
