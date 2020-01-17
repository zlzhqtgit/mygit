<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=0.3">
		<title>商务合作</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/animate.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Hui-iconfont/1.0.8/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="icon" href="${pageContext.request.contextPath}/web/xgk/favicon.ico" type="image/x-icon">
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/wow.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script src="${pageContext.request.contextPath}/js/common.js"></script>
	</head>
</head>
<body>
	<c:import url="header.jsp"></c:import>
	<div class="cooperation">
		<section class="">
			<div class="banner">
				<img src="${pageContext.request.contextPath}/img/xgk/banner48.jpg" class="img-responsive"/>
				<div class="banner_con text-center">
					<div class="wow">
						<h1 class="fontwei wow bounceInLeft">立学道高考综合改革云平台</h1>
						<h3 class="fontwei wow bounceInRight">帮您搭建 <span class="text-danger fontwei">属于自己</span> 的服务平台</h3>
						<p class="margin_top fontwei wow fadeInDownBig">最低5千起，即可拥有专属平台</p>
						<p class="margin_top wow bounceInUp"><a class="btn" onclick="modelshow(false, $('#contactUs'), 1)" href="javascript:;">立刻体验</a></p>
					</div>
					
			</div>
		</section>
	</div>	
		<div class="container">
			<section class="row strengths">
				<div class="strengths_tit margin_bot wow rubberBand">
					<h2 class="text-center fontwei"><span class="text-danger">5</span>大服务优势</h2>
					<h4 class="fontwei text-center">免除您的后顾之忧</h4>
				</div>
				<div class="strengths_con">
					<div class="flex_Al_c">
						<div class="fontwei"><div class="">服务器<span>零</span>成本</div></div>
						<div class="fontwei"><div class="">研发<span>零</span>投入</div></div>
						<div class="fontwei"><div class="">运维<span>零</span>担忧</div></div>
					</div>
					<div class="flex_Al_c">
						<div class="fontwei"><div class="">专注服务学生</div></div>
						<div class="fontwei"><div class="">专注教育科技</div></div>
						<!--<div class="bg-primary fontwei">专注推广营销</div>-->
					</div>
					<h4 class="text-center margin_top fontwei">只需五千起即可获得您的专属平台</h4>
				</div>
				<p class="text-center margin_top"><a href="javascript:void(0)" class="btn btn-primary">立即体验</a></p>
			</section>
		</div>
		<section class="" style="background-color: #ddd;padding-top: 1em;">
			<div class="container">
				<ul class="sectionList2 clearfix row" style="width: 1170px;">
					<li class="wow zoomIn">
						<div class="" style="background: url(../../img/xgk/multi.png) no-repeat 45% center / 54%;">
							<div class="">
								<div class="text-center">
									<img src="${pageContext.request.contextPath}/img/xgk/sect21.png" style="width: 3em;"/>
								</div>
								<h4 class="text-center text-white fontwei">自管用户</h4>
							</div>
						</div>
						<i class="text-center margin_top1">
							<div class="">所有旗下账户自由管理</div>
							<div class="">实现多维度营销</div>
						</i>
					</li>
					<li class="wow zoomIn">
						<div class="" style="background: url(../../img/xgk/multi.png) no-repeat 45% center / 54%;;">
							<div class="">
								<div class="text-center">
									<img src="${pageContext.request.contextPath}/img/xgk/sect22.png" style="width: 3em;"/>
								</div>
								<h4 class="text-center text-white fontwei">自创服务</h4>
							</div>
						</div>
						<i class="text-center margin_top1">
							<div class="">服务特点自由创建</div>
							<div class="">打造自我口碑</div>
						</i>
					</li>
					<li class="wow zoomIn">
						<div class="" style="background: url(../../img/xgk/multi.png) no-repeat 45% center / 54%;">
							<div class="">
								<div class="text-center">
									<img src="${pageContext.request.contextPath}/img/xgk/sect23.png" style="width: 3em;"/>
								</div>
								<h4 class="text-center text-white fontwei">专属客服</h4>
							</div>
						</div>
						<i class="text-center margin_top1">
							<div class="">专属客服一对一解决问题</div>
						</i>
					</li>
					<li class="wow zoomIn">
						<div class="" style="background: url(../../img/xgk/multi.png) no-repeat 45% center / 54%;;">
							<div class="">
								<div class="text-center">
									<img src="${pageContext.request.contextPath}/img/xgk/sect24.png" style="width: 3em;"/>
								</div>
								<h4 class="text-center text-white fontwei">自营收入</h4>
							</div>
						</div>
						<i class="text-center margin_top1">
							<div class="">收入自己保管</div>
							<div class="">账户更安全</div>
						</i>
					</li>
				</ul>
			</div>	
		</section>
		<section class="container">
			<div class="row" style="height: 35em;width: 1170px;">
				<div class="" style="height: 5em;">
					<h2 class="fontwei text-center">服务项目及授权</h2>
				</div>
				<div class="clearfix table_list">
						<div class="left_menu pull-left bg-success">
							<div class="text-center">
								<h2 class="fontwei text-primary">品类</h2>
							</div>
							<div class="clearfix text-center">
								<div class="fontwei pull-left">
									<h4 class="fontwei text-primary">基础配置</h4>
								</div>
								<div class="pull-left">
									<p class="">账号数</p>
									<p class="">省份个数</p>
									<p class="">下载个数</p>
									<p class="">基础费用</p>
								</div>
							</div>
							<div class="clearfix text-center">
								<div class="fontwei pull-left">
									<h4 class="fontwei text-primary">应用功能</h4>
								</div>
								<div class="pull-left">
									<p class="">分数线</p>
									<p class="">查职业</p>
									<p class="">找大学</p>
									<p class="">认知测评</p>
									<p class="">潜能测评</p>
								</div>
							</div>
							<div class="clearfix text-center">
								<div class="fontwei pull-left">
									<h4 class="fontwei text-primary">授权平台功能</h4>
								</div>
								<div class="pull-left">
									<p class="">机构网站</p>
									<p class="">在线注册</p>
									<p class="">权限管理</p>
									<p class="">用户管理</p>
									<p class="">数据统计</p>
									<p class="">专属客服</p>
								</div>
							</div>
						</div>
						<div class="table_col pull-left text-center recommend bg-warning">
							<div class="">
								<div class="">
									<h4 class="fontwei">学生VIP</h4>
									<p class=""><a href="" class="btn btn-primary">立即体验</a></p>
								</div>
							</div>
							<div class="">
								<p class="">1</p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a6;</i></p>
								<p class="">9</p>
								<p class="">￥288</p>
							</div>
							<div class="">
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
							</div>
							<div class="border0">
								<p class=""><i class="icon Hui-iconfont">&#xe6a6;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a6;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a6;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a6;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a6;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a6;</i></p>
							</div>
							<div class="item_label_wrap">
								<div class="item_label fontwei">特惠</div>
							</div>
						</div>
						<div class="table_col pull-left text-center bg-danger">
							<div class="">
								<div class="">
									<h4 class="fontwei">咨询师套餐</h4>
									<p class=""><a href="" class="btn btn-primary">立即体验</a></p>
								</div>
							</div>
							<div class="">
								<p class="">1</p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class="">100</i></p>
								<p class="">￥1999</p>
							</div>
							<div class="">
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
							</div>
							<div class="border0">
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
							</div>
						</div>
						<div class="table_col pull-left text-center bg-warning">
							<div class="">
								<div class="">
									<h4 class="fontwei">工作室VIP</h4>
									<p class=""><a href="" class="btn btn-primary">立即体验</a></p>
								</div>
							</div>
							<div class="">
								<p class="">3</p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class="">100</p>
								<p class="">￥4999</p>
							</div>
							<div class="">
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
							</div>
							<div class="border0">
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
							</div>
						</div>
						<div class="table_col pull-left text-center recommend bg-info">
							<div class="">
								<div class="">
									<h4 class="fontwei">公司VIP</h4>
									<p class=""><a href="" class="btn btn-primary">立即体验</a></p>
								</div>
							</div>
							<div class="">
								<p class="">50</p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class="">100</p>
								<p class="">￥49999</p>
							</div>
							<div class="">
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
							</div>
							<div class="border0">
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
								<p class=""><i class="icon Hui-iconfont">&#xe6a7;</i></p>
							</div>
							<div class="item_label_wrap">
								<div class="item_label fontwei">推荐</div>
							</div>
						</div>
					</div>
			</div>
		</section>
		<div class="clearfix" id="contactUs" style="display: none;width: 100%;">
			<div class="community pull-left" style="width: 100%;">
				<div class="cont_wrap">
					<div class="clearfix">
						<legend><h3 class="padding-side fontwei">联系客服</h3></legend>
						<div class="pull-left padding-side2 border-right">
							<div class="padding-side2"><h5 class="fontwei">精准教学</h5></div>
							<div class="padding-side2">
								<div class="">
									<a class="padding-side" href="tencent://message/?Site=baidu.com&uin=3303174399&Menu=yes">
										<img src="${pageContext.request.contextPath}/img/public/qq_side.gif" style="max-width: 2em;"/>
										<span class="padding-side05">在线客服</span>
									</a>
									<a class="padding-side" href="tencent://message/?Site=baidu.com&uin=3303174399&Menu=yes">
										<img src="${pageContext.request.contextPath}/img/public/qq_side.gif" style="max-width: 2em;"/>
										<span class="padding-side05">在线客服</span>
									</a>
								</div>
								<div class="">
									<a class="padding-side" href="tencent://message/?Site=baidu.com&uin=3303174399&Menu=yes">
										<img src="${pageContext.request.contextPath}/img/public/qq_side.gif" style="max-width: 2em;"/>
										<span class="padding-side05">在线客服</span>
									</a>
									<a class="padding-side" href="tencent://message/?Site=baidu.com&uin=3303174399&Menu=yes">
										<img src="${pageContext.request.contextPath}/img/public/qq_side.gif" style="max-width: 2em;"/>
										<span class="padding-side05">在线客服</span>
									</a>
								</div>
							</div>
						</div>
						<div class="pull-left padding-side2">
							<div class="padding-side2"><h5 class="fontwei">升学规划</h5></div>
							<div class="padding-side2">
								<div class="">
									<a class="padding-side" href="tencent://message/?Site=baidu.com&uin=3303174399&Menu=yes">
										<img src="${pageContext.request.contextPath}/img/public/qq_side.gif" style="max-width: 2em;"/>
										<span class="padding-side05">在线客服</span>
									</a>
									<a class="padding-side" href="tencent://message/?Site=baidu.com&uin=3303174399&Menu=yes">
										<img src="${pageContext.request.contextPath}/img/public/qq_side.gif" style="max-width: 2em;"/>
										<span class="padding-side05">在线客服</span>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix">
						<div class="pull-left padding-side2 border-right">
							<div class="padding-side2"><h5 class="fontwei">官方微信</h5></div>
							<div class="flex_Al_c padding-side2">
								<img src="${pageContext.request.contextPath}/img/xgk/1568099441.jpg" class="img-responsive"/>
							</div>
						</div>
						<div class="pull-left">
							<div class="padding-side2"><h5 class="fontwei">志愿填报群</h5></div>
							<div class="text-left padding-side2">
								<p class="">QQ群1：6424323</p>
								<p class="">QQ群2：5453433</p>
								<p class="">QQ群3：2456354(已满)</p>
								<p class="">QQ群4：3321354(已满)</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 页面底部-->
	<c:import url="../public/side_right.jsp"></c:import>	
	<!-- 页面底部-->
	<c:import url="footer.jsp"></c:import>
</body>
</html>