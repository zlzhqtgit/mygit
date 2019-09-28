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
					<p class="text-right"><a href="" class="btn btn-primary">返回</a></p>
					<div class="thumbnail">
						<h1 class="fontwei text-primary">自定义选科报告</h1>
						<div class="caption answer_temp">
							<div class="user_say">
								<span class="glyphicon glyphicon-user text-muted" style="font-size: 2em;margin-right:10px;line-height: 2em;"></span>
								<span class="fontwei">用户名</span>
							</div>
							<div class="">
								<div class="">
									<p class="">请从以下学科中选出3个您确定今后学习的科目。</p>
									<p class="">(注：请根据自己学校情况，结合自身兴趣爱好最多选择3科进行报告生成，报告结果仅供参考使用)</p>
									<div class="options">
										<div class="">
											<div class="">
												<span class=""><input type="checkbox" name="" id="physics" value="" /><label for="physics">物理</label></span>
												<span class=""><input type="checkbox" name="" id="policy" value="" /><label for="policy">政治</label></span>
											</div>
											<div class="">
												<span class=""><input type="checkbox" name="" id="chemistry" value="" /><label for="chemistry">化学</label></span>
												<span class=""><input type="checkbox" name="" id="history" value="" /><label for="history">历史</label></span>
											</div>
											<div class="">
												<span class=""><input type="checkbox" name="" id="biology" value="" /><label for="biology">生物</label></span>
												<span class=""><input type="checkbox" name="" id="geography" value="" /><label for="geography">地理</label></span>
											</div>
										</div>
									</div>
									<p class="text-right">
										<a class="btn btn-primary" href="customise_report.html">生成我的选题报告 >></a>
									</p>
								</div>
								<div class="">
									<p class="">如何对自己选择的科目没有深刻的认知可以从一下20中学科组合中挑选4中组合进行报考专业的简单对比，从而找出适合自己的学科组合，生成自己的选科报告</p>
									<p class="">(注：请根据自己学校情况，结合自身兴趣爱好最多选择3科进行报告生成，报告结果仅供参考使用)</p>
									<div class="options">
										<div class="">
											<div class="">
												<span class=""><input type="radio" name="" id="whs" value="" /><label for="whs">物化生</label></span>
												<span class=""><input type="radio" name="" id="wsz" value="" /><label for="wsz">物生政</label></span>
												<span class=""><input type="radio" name="" id="wzd" value="" /><label for="wzd">物政地</label></span>
												<span class=""><input type="radio" name="" id="hsd" value="" /><label for="hsd">化生地</label></span>
												<span class=""><input type="radio" name="" id="szl" value="" /><label for="szl">生政历</label></span>
											</div>
											<div class="">
												<span class=""><input type="radio" name="" id="whz" value="" /><label for="whz">物化政</label></span>
												<span class=""><input type="radio" name="" id="wsl" value="" /><label for="wsl">物生历</label></span>
												<span class=""><input type="radio" name="" id="wld" value="" /><label for="wld">物历地</label></span>
												<span class=""><input type="radio" name="" id="hzl" value="" /><label for="hzl">化政历</label></span>
												<span class=""><input type="radio" name="" id="szd" value="" /><label for="szd">生政地</label></span>
											</div>
											<div class="">
												<span class=""><input type="radio" name="" id="whl" value="" /><label for="whl">物化历</label></span>
												<span class=""><input type="radio" name="" id="lsd" value="" /><label for="lsd">物生地</label></span>
												<span class=""><input type="radio" name="" id="hsz" value="" /><label for="hsz">化生政</label></span>
												<span class=""><input type="radio" name="" id="hzd" value="" /><label for="hzd">化政地</label></span>
												<span class=""><input type="radio" name="" id="sld" value="" /><label for="sld">生历地</label></span>
											</div>
											<div class="">
												<span class=""><input type="radio" name="" id="whd" value="" /><label for="whd">物化地</label></span>
												<span class=""><input type="radio" name="" id="wzl" value="" /><label for="wzl">物政历</label></span>
												<span class=""><input type="radio" name="" id="hsl" value="" /><label for="hsl">化生历</label></span>
												<span class=""><input type="radio" name="" id="hld" value="" /><label for="hld">化历地</label></span>
												<span class=""><input type="radio" name="" id="zld" value="" /><label for="zld">政历地</label></span>
											</div>
										</div>
									</div>
									<p class="text-right">
										<a class="btn btn-primary" href="customise_report.html">学科组合对比 >></a>
									</p>
									<div class="">
										<h3 class="text-primary margin_bot1">自定义选科对比表</h3>
										<table class="el_customise margin_top1 text-center" style="margin: 0 auto;width: 100%;" border="" cellspacing="" cellpadding="5">
											<tr><th></th><th><span class="glyphicon glyphicon-remove"></span>学科组合1<span class="glyphicon glyphicon-remove"></span></th><th>学科组合1<span class="glyphicon glyphicon-remove"></span></th><th>学科组合1<span class="glyphicon glyphicon-remove"></span></th><th>学科组合1<span class="glyphicon glyphicon-remove"></span></th></tr>
											<tr><td>报考专业数</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
											<tr><td>专业大类</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
											<tr><td>专业小类</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
											<tr><td>不同专业（相对组合1）</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
										</table>
									</div>
								</div>
								
							</div>
							
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
