<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>好前途后台登录页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
</head>
<body>
<div>
	<h2>专业介绍</h2>
	<p>${specialtylist[0].specialtyIntro}</p>
	<h2>培养目标</h2>
	<p>${specialtylist[0].specialtyObjective}</p>
	<h2>就业前景</h2>
	<p>${specialtylist[0].specialtyEmployment}</p>
	<h2>报考要求</h2>
	<p>${specialtylist[0].specialtyRequirement}</p>
</div>
	
</body>
</html>
