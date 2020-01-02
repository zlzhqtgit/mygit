<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<meta name="viewport" content="width=device-width, initial-scale=0.3">
<title>好前途后台登录页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
</head>
<body>
<div class="padding-side2 margin_top margin_bot">
	<div class="panel panel-success">
		<div class="panel-heading"><h3>专业介绍</h3></div>
	  	<div class="panel-body">${specialtylist[0].specialtyIntro}</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading"><h3>培养目标</h3></div>
	  	<div class="panel-body">${specialtylist[0].specialtyObjective}</div>
	</div>
	<div class="panel panel-info">
		<div class="panel-heading"><h3>就业前景</h3></div>
	  	<div class="panel-body">${specialtylist[0].specialtyEmployment}</div>
	</div>
	<div class="panel panel-warning">
		<div class="panel-heading"><h3>报考要求</h3></div>
	  	<div class="panel-body">${specialtylist[0].specialtyRequirement}</div>
	</div>
</div>
	
</body>
</html>
