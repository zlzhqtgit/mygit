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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/customise.css" />	
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
</head>

<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>
	<main class="container">
			<section class="row">
				<div class="">
					<div class="thumbnail">
						<h1 class="fontwei text-primary">自定义选科报告</h1>
						<div class="caption answer_temp">
							<div class="user_say">
								<span class="glyphicon glyphicon-user text-muted" style="font-size: 2em;margin-right:10px;line-height: 2em;"></span>
								<span class="fontwei">用户名</span>
							</div>
							<div class="">
								<p class="">请从以下学科中选出3个您确定今后学习的科目。</p>
								<p class="">(注：请根据自己学校情况，结合自身兴趣爱好最多选择3科进行报告生成，报告结果仅供参考使用)</p>
								<div class="options">
									<div class="">
										<div class="">
											<span class=""><input type="radio" name="" id="physics" value="" /><label for="physics">物理</label></span>
											<span class=""><input type="radio" name="" id="policy" value="" /><label for="policy">政治</label></span>
										</div>
										<div class="">
											<span class=""><input type="radio" name="" id="chemistry" value="" /><label for="chemistry">化学</label></span>
											<span class=""><input type="radio" name="" id="history" value="" /><label for="history">历史</label></span>
										</div>
										<div class="">
											<span class=""><input type="radio" name="" id="biology" value="" /><label for="biology">生物</label></span>
											<span class=""><input type="radio" name="" id="geography" value="" /><label for="geography">地理</label></span>
										</div>
									</div>
								</div>
							</div>
							<p class="text-right">
								<a class="btn btn-primary" href="${pageContext.request.contextPath}/xk/xgk_customisereport.do">生成我的选题报告 >></a>
							</p>
						</div>
					</div>
				</div>
			</section>
		</main>
	
<!-- 页面底部-->
<c:import url="side_right.jsp"></c:import>	
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
</body>
<script type="text/javascript">
var id="${id}";
$( "#xgk"+id).addClass( "active" );
</script>
</html>
