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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/web/xgk/editTable.js"></script>
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
								<span class="fontwei">${username}</span>
							</div>
							<div class="">
								<div class="">
									<p class="">请从以下学科中选出3个您确定今后学习的科目。</p>
									<p class="">(注：请根据自己学校情况，结合自身兴趣爱好选择3科进行报告生成，报告结果仅供参考使用)</p>
									<div class="options">
										<div class="">
											<div class="">
												<span class=""><input type="checkbox" name="custombox" id="physics" value="物" /><label for="physics">物理</label></span>
												<span class=""><input type="checkbox" name="custombox" id="policy" value="化" /><label for="policy">化学</label></span>
											</div>
											<div class="">
												<span class=""><input type="checkbox" name="custombox" id="chemistry" value="生" /><label for="chemistry">生物</label></span>
												<span class=""><input type="checkbox" name="custombox" id="history" value="政" /><label for="history">政治</label></span>
											</div>
											<div class="">
												<span class=""><input type="checkbox" name="custombox" id="biology" value="历" /><label for="biology">历史</label></span>
												<span class=""><input type="checkbox" name="custombox" id="geography" value="地" /><label for="geography">地理</label></span>
											</div>
										</div>
									</div>
									<p class="text-right">
										<a class="btn btn-primary" href="javascript:void(0);" onclick="customxk()">生成我的选题报告 >></a>
									</p>
								</div>
								<div class="">
									<p class="">如何对自己选择的科目没有深刻的认知可以从一下20中学科组合中挑选4中组合进行报考专业的简单对比，从而找出适合自己的学科组合，生成自己的选科报告</p>
									<p class="">(注：请根据自己学校情况，结合自身兴趣爱好最多选择3科进行报告生成，报告结果仅供参考使用)</p>
									<div class="options">
										<div class="">
											<div class="">
												<span class=""><input type="checkbox" name="coursesetbox" id="whs" onchange="xgkxk(this)"value="物化生" /><label for="whs">物化生</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="wsz" onchange="xgkxk(this)"value="物生政" /><label for="wsz">物生政</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="wzd" onchange="xgkxk(this)"value="物政地" /><label for="wzd">物政地</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="hsd" onchange="xgkxk(this)"value="化生地" /><label for="hsd">化生地</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="szl" onchange="xgkxk(this)"value="生政历" /><label for="szl">生政历</label></span>
											</div>
											<div class="">
												<span class=""><input type="checkbox" name="coursesetbox" id="whz" onchange="xgkxk(this)"value="物化政" /><label for="whz">物化政</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="wsl" onchange="xgkxk(this)"value="物生历" /><label for="wsl">物生历</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="wld" onchange="xgkxk(this)"value="物历地" /><label for="wld">物历地</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="hzl" onchange="xgkxk(this)"value="化政历" /><label for="hzl">化政历</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="szd" onchange="xgkxk(this)"value="生政地" /><label for="szd">生政地</label></span>
											</div>
											<div class="">
												<span class=""><input type="checkbox" name="coursesetbox" id="whl" onchange="xgkxk(this)" value="物化历" /><label for="whl">物化历</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="lsd" onchange="xgkxk(this)"value="物生地" /><label for="lsd">物生地</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="hsz" onchange="xgkxk(this)"value="化生政" /><label for="hsz">化生政</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="hzd" onchange="xgkxk(this)"value="化政地" /><label for="hzd">化政地</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="sld" onchange="xgkxk(this)"value="生历地" /><label for="sld">生历地</label></span>
											</div>
											<div class="">
												<span class=""><input type="checkbox" name="coursesetbox" id="whd" onchange="xgkxk(this)"value="物化地" /><label for="whd">物化地</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="wzl" onchange="xgkxk(this)"value="物政历" /><label for="wzl">物政历</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="hsl" onchange="xgkxk(this)"value="化生历" /><label for="hsl">化生历</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="hld" onchange="xgkxk(this)"value="化历地" /><label for="hld">化历地</label></span>
												<span class=""><input type="checkbox" name="coursesetbox" id="zld" onchange="xgkxk(this)" value="政历地" /><label for="zld">政历地</label></span>
											</div>
										</div>
									</div>									
									<div id="table-div" class="" style="display: none;">
										<h3 class="text-primary margin_bot1">自定义选科对比表</h3>
										<table id="tableid" class="table-b el_customise margin_top1 text-center"  border="" cellspacing="" cellpadding="5">
											<thead><tr><th style="220px;">分类</th></tr></thead>
											<tbody>
												<tr id="major-nub"><td>报考专业数</td></tr>
												<tr id="major-max"><td>专业大类</td></tr>
												<tr id="major-min"><td>专业小类</td></tr>
												<tr id="major-no"><td>不同的专业（相对组合1）</td></tr>
											</tbody>
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
<c:import url="../public/side_right.jsp"></c:import>	
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
</body>
<script type="text/javascript">
var id="${id}";
$( "#xgk"+id).addClass( "active" );
</script>
</html>
