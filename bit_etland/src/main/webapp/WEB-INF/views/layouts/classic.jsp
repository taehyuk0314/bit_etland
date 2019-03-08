<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>비트</title>
<link rel="stylesheet" href="${css}/home/reset.css "/> 
<link rel="stylesheet" href="${css}/home/global.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<div id="wrapper" class="grid-container container-fluid">
        <div class="grid-item" id="header">
          <tiles:insertAttribute name="top" />
        </div>

          <tiles:insertAttribute name="nav" />
		
          <tiles:insertAttribute name="content" />
	
        <div class="grid-item" id="footer">
          <tiles:insertAttribute name="bottom" />
        </div>
    </div>
  </body>
</html>