<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>好前途后台登录页</title>
<meta name="viewport" content="width=device-width, initial-scale=0.2">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />	
<link rel="icon" href="${pageContext.request.contextPath}/web/xgk/favicon.ico" type="image/x-icon">	
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
</head>

<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>	
	<main class="container">
			<section class="row">
				<div class="test_instruction">
					<h1 class="text-primary">MBTI性格测评</h1>
					<div class="thumbnail">
						<div class="caption answer_temp  margin_top1">
							<div class="user_say padding-side2">
								<!-- <span class="glyphicon glyphicon-user text-muted"  style="font-size: 2em;margin-right:10px;line-height: 2em;"></span> -->
								<shiro:guest>
									<img src="${pageContext.request.contextPath}/img/xgk/user.png" style="width: 3em;"/>
								</shiro:guest>
								<shiro:user>
									<c:if test="${headImg != null}">
										<img src="${headImg}" style="border-radius: 50%; overflow: hidden; width: 3em;"/>
									</c:if>
									<c:if test="${headImg == null}">
										<img src="${pageContext.request.contextPath}/img/xgk/user.png" style="width: 3em;"/>
									</c:if>
								</shiro:user>
								<span class="text-muted"><label style="color: #3b8bec;">${username}</label>&nbsp;&nbsp;您好！</span>
							</div>
							<h5 class="fontwei tindent padding-side2" >在行色匆匆的世界里，懂得如何从容；面对莫测的变化和以外，总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。沃尔沃S90豪华轿车，以斯堪的纳维亚设计诠释北欧豪华，满载人性化创新科技，以智能引领驾驶的未来。旅程的每一步，行车随心掌控，安全如影随性，风采自信彰显。Thumbnail label驭劲悍双擎，引燃驰骋豪情</h5>
							<div class="padding-side2 margin_top1">
								<ol style="padding-left: 2em;list-style: disc;">
									<li>MBTI性格测评主要探索你的性格，每个人的性格都不尽相同，因此，你的回答没有“好、坏”与“对、错”之分。</li>
									<li>本测评共计93道题目，请你判断每题的描述与自己的实际情况的符合程度，凭第一感觉作答。</li>
									<li>为了让你对自己有真实的认识，答题时请依据你的日常实际表现，而不是你期望的理想表现作答，这会为你将来的专业，职业选择提供重要的参考。</li>
								</ol>
							</div>
							<p class="text-right margin_top margin_bot padding-side2"><a href="${pageContext.request.contextPath}/cp/xgk_answer.do?cpid=2" class="btn btn-primary" role="button">开始答题</a></p>
						</div>
					</div>
				</div>
			</section>
		</main>
<!-- 页面底部-->
<c:import url="../public/side_right.jsp"></c:import>	
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
</body>
<script type="text/javascript">
var id="${id}";
$( "#xgk"+id).addClass( "active" );
</script>
</html>
