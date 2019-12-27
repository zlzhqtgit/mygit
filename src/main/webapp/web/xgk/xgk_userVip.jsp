<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=0.1">
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />	
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/swiper.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/certify.css" />	
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/animate.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/swper5.0.1.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/wow.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/jquery.waypoints.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script src="http://res.wx.qq.com/connect/zh_CN/htmledition/js/wxLogin.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/web/xgk/jquery.countup.min.js"></script>
	</head>
	<body>
		<!-- 页面顶部-->
		<c:import url="header.jsp"></c:import>
		<main class="">
			<div class="bg_tit">
				<img src="${pageContext.request.contextPath}/img/xgk/vip_tit1.png" class="img-responsive"/>
				<div class="">
					<div class="">
						<h2 class="fontwei wow bounceInLeft">全平台VIP特权</h2>
						<p class="wow bounceInRight">尽你所想</p>
					</div>
				</div>
			</div>
			<section class="container">
				<div class="row">
					<div class="series margin_bot">
						<div class="series_item wow zoomIn">
							<div class="series_item_tit">
								<div class="series_item_titcon">
									<div class="">
										<div class="" style="margin-top: .6em;">
											<img src="${pageContext.request.contextPath}/img/xgk/icon_vip.png" style="width: 3em;"/>
										</div>
										<h3 class="fontwei">套餐名称</h3>
										<div class="">
											<span class="price">59</span> 元/年
										</div>
										<p class="fsize12">这是一句话</p>
									</div>
								</div>
								<div class="series_item_tit1"></div>
								<div class="triangle_box"> <div class="triangle"></div> </div>
							</div>
							<div class="series_item_con padding-side2" style="padding: .4em 1em;">
								<div class="">
									<h3 class="text-center" style="margin: 0; padding: .4em 0;">套餐内容</h3>
									<div class="series_summary"> 一个划算又有用的套餐一个划算又有用的套餐一个划算又有用的套餐一个划算又有用的套餐 </div>
								</div>
								<p class="text-center margin_top1"><a class="btn btn-primary" href="javascript:;" onclick="choice_combo(this)">立即购买</a></p>
							</div>
							<script type="text/javascript"></script>
						</div>
						<div class="series_item wow zoomIn">
							<div class="series_item_tit">
								<div class="series_item_titcon">
									<div class="">
										<div class="" style="margin-top: .6em;">
											<img src="${pageContext.request.contextPath}/img/xgk/icon_vip.png" style="width: 3em;"/>
										</div>
										<h3 class="fontwei">套餐名称</h3>
										<div class="">
											<span class="price">229</span> 元/年
										</div>
										<p class="fsize12">这是一句话</p>
									</div>
								</div>
								<div class="series_item_tit1"></div>
								<div class="triangle_box"> <div class="triangle"></div> </div>
							</div>
							<div class="series_item_con padding-side2" style="padding: .4em 1em;">
								<div class="">
									<h3 class="text-center" style="margin: 0; padding: .4em 0;">套餐内容</h3>
									<div class="series_summary"> 一个划算又有用的套餐一个划算又有用的套餐一个划算又有用的套餐一个划算又有用的套餐 </div>
								</div>
								<p class="text-center margin_top1"><a class="btn btn-primary" href="javascript:;" onclick="choice_combo(this)">立即购买</a></p>
							</div>
						</div>
						<div class="series_item wow zoomIn">
							<div class="series_item_tit">
								<div class="series_item_titcon">
									<div class="">
										<div class="" style="margin-top: .6em;">
											<img src="${pageContext.request.contextPath}/img/xgk/icon_vip.png" style="width: 3em;"/>
										</div>
										<h3 class="fontwei">套餐名称</h3>
										<div class="">
											<span class="price">599</span> 元/年
										</div>
										<p class="fsize12">这是一句话</p>
									</div>
								</div>
								<div class="series_item_tit1"></div>
								<div class="triangle_box"> <div class="triangle"></div> </div>
							</div>
							<div class="series_item_con padding-side2" style="padding: .4em 1em;">
								<div class="">
									<h3 class="text-center" style="margin: 0; padding: .4em 0;">套餐内容</h3>
									<div class="series_summary">一个套餐，买它上可九天揽月，下可五洋捉鳖。一个套餐，买它上可九天揽月，下可五洋捉鳖。</div>
								</div>
								<p class="text-center margin_top1"><a class="btn btn-primary" href="javascript:;" onclick="choice_combo(this)">立即购买</a></p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<form class="pay">
						<div class="margin_bot">
							<span class="">已选商品名称：</span><span class="text-danger padding-side fontwei">立学臻选套餐</span><span class="padding-side">599元</span>
						</div>
						<table class="table table-hover table-bordered" cellspacing="" cellpadding="">
							<thead>
								<tr><th> </th><th>下载次数</th><th>xx个数</th><th>使用期限</th></tr>
							</thead>
							<tboody>
								<tr><td>套餐权益</td><td>Data</td><td>Data</td><td>Data</td></tr>
							</tboody>
						</table>
						<div class="tab_list">
							<ul class="tab_head clearfix">
								<!--<div class="pull-left" style="height: 3.1em;line-height: 3em;">支付方式：</div>-->
								<li class="cur">微信支付</li>
								<li>支付宝支付</li>
							</ul>
							<div class="tab_body">
								<div class="cur">
									<div class="">
										<img id="qr_code"  src="${pageContext.request.contextPath}/img/xgk/1568099441.jpg" class="img-responsive"/>
										<div class="text-center"> 微信扫码 </div>
									</div>
								</div>
								<script type="text/javascript">
									
									//选择套餐生成微信支付二维码
									function choice_combo(e){
										 var recharge_money = $(e).parents(".series_item").find(".series_item_tit .price").text();
										 var body = $(e).parents(".series_item_con").find(".series_summary").html();
										 var body = "立学道" + recharge_money + "元臻选套餐";
										 if('${uid}' != ""){
											 $("#qr_code").attr("src", "${pageContext.request.contextPath}/api/weixinQRCode.do?rechargeMoney=" + recharge_money + "&body=" + body);	 
										 }else{
											 layer.msg('您未登录立学道平台,无法购买vip特权！', {icon: 5,time:2000});
										 }
										 
									}
								</script>
								<div class="">
									<div class="">
										<img src="${pageContext.request.contextPath}/img/xgk/1568099441.jpg" class="img-responsive"/>
										<div class="text-center"> 支付宝扫码 </div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
				<script src="${pageContext.request.contextPath}/js/common.js" type="text/javascript" charset="utf-8"></script>
				<div class="row" style="display: flex;align-items: center;">
					<div class="col-md-6 col-sm-6 wow bounceInLeft">
						<img src="${pageContext.request.contextPath}/img/xgk/vip_pic1.png" class="img-responsive"/>
					</div>
					<div class="col-md-6 col-sm-6 wow bounceInRight">
						<h2 class="text-primary alignCenter fontwei">
							<span class="vip_icon_tit" style="display: inline-block; width: 2.4em;height: 2.4em;"></span>全面分析 
						</h2>
						<h4 class="">结果个性化，不同的结果适合不同的你，全方位勘测你的内在潜力</h4>
						<ul class="sectionList1 clearfix">
							<li class="">
								<div class="">
									<div class="fontwei"> 1 </div>
									<div class=""> 报告完整呈现 </div>
								</div>
							</li>
							<li class="">
								<div class="">
									<div class="fontwei"> 2 </div>
									<div class=""> 结果保存下载 </div>
								</div>
							</li>
							<li class="">
								<div class="">
									<div class="fontwei"> 3 </div>
									<div class=""> 不受权限干扰 </div>
								</div>
							</li>
							<li class="">
								<div class="">
									<div class="fontwei"> 4 </div>
									<div class=""> 更贴合需要 </div>
								</div>
							</li>
						</ul>
					</div>
				</div>				
			</section>
			<section class="wow flipInX">
				<div class="advert">
					<img src="${pageContext.request.contextPath}/img/xgk/vip_tit2.png" class="img-responsive"/>
				</div>	
			</section>
			<section class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 wow bounceInLeft">
						<h2 class="text-primary alignCenter fontwei">
							<span class="vip_icon_tit type2" style="background-size: cover;"></span>海量数据 
						</h2>
						<h4 class=""> 更全面的信息数据，全面呈现，报告更细致，更懂你的要求 </h4>
						<ul class="sectionList1 clearfix">
							<li class="">
								<div class="">
									<div class="fontwei"> 1 </div>
									<div class=""> 报告完整呈现 </div>
								</div>
							</li>
							<li class="">
								<div class="">
									<div class="fontwei"> 2 </div>
									<div class=""> 结果保存下载 </div>
								</div>
							</li>
							<li class="">
								<div class="">
									<div class="fontwei"> 3 </div>
									<div class=""> 不受权限干扰 </div>
								</div>
							</li>
							<li class="">
								<div class="">
									<div class="fontwei"> 4 </div>
									<div class=""> 更贴合需要 </div>
								</div>
							</li>
						</ul>
					</div>
					<div class="col-md-6 col-sm-6 wow bounceInRight">
						<img src="${pageContext.request.contextPath}/img/xgk/vip_pic2.png" class="img-responsive"/>
					</div>
					
				</div>
			</section>
		</main>
		<script type="text/javascript">
			new WOW().init(); 
			var wow = new WOW({  
			    boxClass: 'wow', //需要执行动画的class 
			    animateClass: 'animated',  //animate.css的class
			    offset: 0,  //距可视区域多少开始执行动画
			    mobile: true,  //是否在移动设备上执行动画
			    live: true  //一部加载的内容是否有效
			}); 
			$('.counter').countUp();
		</script>
		<!-- 页面右侧-->
		<c:import url="../public/side_right.jsp"></c:import>
		<c:import url="../xgk/footer.jsp"></c:import>
	</body>
</html>
