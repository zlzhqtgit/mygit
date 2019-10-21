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
<style type="text/css">
	th{position: relative;}
	.table > thead > tr > th[class=first]{ padding: 0; }
	th>div{font-size: 14px;position: absolute;}
	.x_axis{top: 1em;right: 1em;}
	.y_axis{bottom: 1em;left: 1em;}
	input{
		width: 100%;
		border: 0;
	}
</style>
</head>

	<body>
		<header class="padding-side">
			<div class="row">
				
				<div class="head-bottom col-md-8">
					<div class="logo">
						<a href=""><img src="${pageContext.request.contextPath}/img/xgk/logo.jpg" alt="贵州好前途教育科技有限公司"></a>
					</div>
					<nav class="">
						<ul>
							<li><a class="active" href="index.html">首页</a></li>
							<li><a href="test_choice.html">认知测评</a></li>
							<li><a href="guide_select.html">选科指导</a></li>
							<li><a href="">职业库</a></li>
							<li>
								<a href="sch_search.html">高校专业</a>
								<ul class="child">
									<li><a href="">院校查询</a></li>
									<li><a href="">专业查询</a></li>
								</ul>
							</li>
							<li><a href="">学科推荐</a></li>
							<li><a href="">升学规划</a></li>
							<li><a href="">志愿填报</a></li>
						</ul>
					</nav>
				</div>
				<div class="head-top col-md-4 margin_top margin_bot1">
					<div class="user">
						<img src="${pageContext.request.contextPath}/img/xgk/user.png">
						<span class="padding-side"><a href="">登陆</a> / <a href="">注册</a></span>
					</div>
					<div class="search margin_top1">
						<div class="pull-left input_box">
							<span class="search_mark"><img src="img/search.png"></span>
							<input type="search" name="" id="" value="" placeholder="院校/专业/职业/学科" />
						</div>
						<div class="pull-left search_img">
							<img src="${pageContext.request.contextPath}/img/xgk/resizeApi.png">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				
			</div>
		</header>

		<main class="container">
			<section class="row">
				<p class="text-right">
					<a href="javascript:history.go(-1)" class="btn btn-primary">返回</a>
				</p>
				<div class="panel panel-default">
					<div class="panel-body">
						<h1 class="text-primary fontwei">学科能力</h1>
						<div class="padding-side2">
							<div class="">
								<h3 class="margin_top1">学科潜能分析</h3>
								<p class="padding-side2 margin_bot margin_top1">请根据下表所需的内容，填写相关的数据信息，请如实填写表格内容，以保证结果的准确性。</p>
								
							</div>
						</div>
						
						<form action="" method="post">
							<table  class="table table-hover" border="" cellspacing="" cellpadding="" style="width: 100%;">
								<thead>
									<tr>
										<th class="first" rowspan="2">
											<canvas id="myCanvas" style="width: 100%;height: 100%;">您的浏览器不支持 HTML5 canvas 标签。</canvas>
											<script type="text/javascript">
												//绘制表格斜线头
												var c=document.getElementById("myCanvas");
												var ctx=c.getContext("2d");
												ctx.moveTo(0,0);
												var th_height=$("[class=first]").height();
												console.log(th_height);
												var w=$("#myCanvas").width(),
													h=$("#myCanvas").height();
												ctx.lineTo(w,h);
												ctx.stroke();
											</script>
											<div class="x_axis">科目 / 次数</div>
											<div class="y_axis">成绩 / 排名</div>
										</th>
										<th colspan="3">语文</th>
										<th colspan="3">语文</th>
										<th colspan="3">语文</th>
									</tr>
									<tr>
										<th>第一次</th><th>第二次</th><th>第三次</th>
										<th>第一次</th><th>第二次</th><th>第三次</th>
										<th>第一次</th><th>第二次</th><th>第三次</th>
									</tr>
								</thead>
								<tbody class="text-center">
									<tr><td>成绩</td>
										<td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td>
										<td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td>
										<td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td>
									</tr>
									<tr><td>排名</td>
										<td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td>
										<td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td>
										<td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td>
										
									</tr>
									<tr><td>排名</td>
										<td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td>
										<td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td>
										<td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td><td><input type="" name="" id="" value=""/></td>
									</tr>
								</tbody>
							</table>
							<div class="text-center margin_top">
								<input class="btn btn-primary small" type="submit" value="完成并提交"/>
							</div>
						</form>
					</div>
				</div>

			</section>

		</main>
		<!-- 页面底部-->
<c:import url="../public/side_right.jsp"></c:import>	
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
	</body>
</html>

