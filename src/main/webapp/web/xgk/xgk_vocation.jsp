<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<meta name="viewport" content="width=device-width, initial-scale=0.3">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<title>好前途后台登录页</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
<link rel="icon" href="${pageContext.request.contextPath}/web/xgk/favicon.ico" type="image/x-icon">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
</head>
<body>
	<div class="padding-side2 margin_top margin_bot vocation_info">
		<div class="panel panel-success">
			<div class="panel-heading"><h3>职业介绍</h3></div>
		  	<div class="panel-body">${vocationlist[0].vocationBrief}</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading"><h3>职业前景</h3></div>
		  	<div class="panel-body">${vocationlist[0].prospect}</div>
		</div>
		<div class="panel panel-info">
			<div class="panel-heading"><h3>工作经验</h3></div>
		  	<div class="panel-body">${vocationlist[0].workExperience}</div>
		</div>
		<div class="panel panel-warning">
			<div class="panel-heading"><h3>工作内容</h3></div>
		  	<div class="panel-body">${vocationlist[0].workContent}</div>
		</div>
		<div class="panel panel-danger">
			<div class="panel-heading"><h3>教育要求</h3></div>
		  	<div class="panel-body">${vocationlist[0].relationSpecialty}</div>
		</div>
	</div>
	
</body>
</html>
