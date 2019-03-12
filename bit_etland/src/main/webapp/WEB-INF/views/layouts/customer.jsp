<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!--
	@Author: 김태혁 (kimtaehyuk0314@gmail.com)
	@Date: 2019. 3. 12. 오전 9:53:24
	@File Name: customer.jsp
	@Desc: 고객페이지
-->

		<div id="header">
          <tiles:insertAttribute name="header" />
        </div>

  <!-- Start Slider Area -->
          <tiles:insertAttribute name="content" />
  <!-- Start Footer bottom Area -->
  <div id="footer">
          <tiles:insertAttribute name="footer" />
        </div>
</body>

</html>
