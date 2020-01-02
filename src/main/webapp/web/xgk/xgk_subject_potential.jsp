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
</head>
<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>	

<main class="container">
	<section class="row">
		<p class="text-right"><a class="btn btn-primary" href="javascript:history.go(-1)">返回</a></p>
		<h1 class="text-primary fontwei">学科潜能测评</h1>
		<div class="panel panel-default">
			<div class="text-muted padding-side2 margin_top margin_bot1">
				<img src="${pageContext.request.contextPath}/img/xgk/user.png"/ style="max-width: 3em;"> <span class="">您好！</span>
			</div>
			<p class="padding-side2 tindent fontwei">学科潜能测评是从学科兴趣、学科能力、学科自信程度三个维度了解学科潜能。学科兴趣是指对某一门学科或课程的学习兴趣；学科能力是学生的智力、能力与特定学科的有机结合，是学生的智力能力在特定学科中的具体体现；学科自信度是学生对自己在某一学科上完成学习任务，客服学习困难的自信程度。</p>
			<ul class="padding-side2" style="padding-left: 4em;list-style: disc; font-family: '楷体';">
				<li>测评分两个部分，一共90道题，建议大家一次完成所有测题，如果觉得一次完成比较困难，大家也可以先完成第一部分，在完成第二部分。</li>
				<li>第一部分一共60道测题，请认真阅读题目，并在5个选项中，选择最符合你自身特点的一项。答案没有对错、好坏之分，一般完成事件在20分钟以内。</li>
				<li>第二部分一共30道题，请认真阅读题目，并选出正确答案。</li>
			</ul>
			<p class="text-right padding-side2 margin_bot"><a class="btn btn-primary" href="${pageContext.request.contextPath}/web/xgk/xgk_subject_assess.jsp">开始答题</a></p>
		</div>
	</section>
</main>

<!-- 页面右侧-->
<c:import url="../public/side_right.jsp"></c:import>	
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
</body>
<script type="text/javascript">
var id="${id}";
$( "#xgk"+id).addClass( "active" );
</script>
</html>