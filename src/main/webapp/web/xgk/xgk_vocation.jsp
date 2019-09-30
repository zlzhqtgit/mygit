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
	<h2>职业介绍</h2>
	<p>${vocationlist[0].vocationBrief}</p>
	<h2>职业前景</h2>
	<p>${vocationlist[0].prospect}</p>
	<h2>工作经验</h2>
	<p>${vocationlist[0].workExperience}</p>
	<h2>工作内容</h2>
	<p>${vocationlist[0].workContent}</p>
	<h2>教育要求</h2>
	<p>${vocationlist[0].relationSpecialty}</p>
</div>
	
</body>
</html>
