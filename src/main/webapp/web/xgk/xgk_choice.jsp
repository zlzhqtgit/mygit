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
	<!-- 页面顶部-->
	<c:import url="header.jsp"></c:import>	
		<main class="container">
			<div class="test_instruction margin_top">
				<section class="row">
					<!-- thumbnail -->
					<div class="col-md-6 " style="padding:0">
						<img style="width: 100%;" src="${pageContext.request.contextPath}/img/xgk/car.jpg" >
						<div class="caption">
							<h3 class="text-center fontwei margin_top1">霍兰德职业兴趣测评</h3>
							<p class="margin_top1 texts_hide">在行色匆匆的世界里，懂得如何从容；面对莫测的变化和以外，总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。</p>
							<p class="text-right margin_top margin_bot"><a href="${pageContext.request.contextPath}/cp/xgk_answer_hld.do" class="btn btn-primary" role="button">开始测试 >></a></p>
						</div>
					</div>
					<div class="col-md-6" style="padding:0">
						<img style="width: 100%;" src="${pageContext.request.contextPath}/img/xgk/car.jpg" >
						<div class="caption">
							<h3 class="text-center fontwei margin_top1">MBTI职业性格测评</h3>
							<p class="margin_top1 texts_hide">在行色匆匆的世界里，懂得如何从容；面对莫测的变化和以外，总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。</p>
							<p class="text-right margin_top margin_bot"><a href="${pageContext.request.contextPath}/cp/xgk_answer_mbti.do" class="btn btn-primary" role="button">开始测试 >></a></p>
						</div>
					</div>
					
				</section>
			</div>
		</main>
		<!-- 页面底部-->
<c:import url="side_right.jsp"></c:import>
	<!-- 页面底部-->
	<c:import url="footer.jsp"></c:import>	
</body>

</html>
