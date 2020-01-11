<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=0.2">
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />	
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/swiper.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/certify.css" />	
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/animate.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="icon" href="${pageContext.request.contextPath}/web/xgk/favicon.ico" type="image/x-icon">
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/swper5.0.1.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/wow.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/jquery.waypoints.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script src="http://res.wx.qq.com/connect/zh_CN/htmledition/js/wxLogin.js"></script>
		<script src="${pageContext.request.contextPath}/js/common.js" type="text/javascript" charset="utf-8"></script>
	</head>
	
	
	<body>
		<!-- 页面顶部-->
		<c:import url="header.jsp"></c:import>
		<div class="">
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
											<span class="price" id="${VIPRECHAARGE.sysname}" name="${VIPRECHAARGE.syscommet}">${VIPRECHAARGE.sysnub}</span> 元/年
										</div>
										<p class="fsize12">${VIPRECHAARGE.syscommet}</p>
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
											<span class="price" id="${COUNSELORRECHAARGE.sysname}" name="${COUNSELORRECHAARGE.syscommet}">${COUNSELORRECHAARGE.sysnub}</span> 元/年
										</div>
										<p class="fsize12">${COUNSELORRECHAARGE.syscommet}</p>
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
				<div class="" id="pay_info" style="display: none;">
					<div class="pay">
						<div class="margin_bot">
							<span class="">已选商品名称：</span><span class="text-danger padding-side fontwei" id="show_name">立学臻选套餐</span><span class="padding-side"><span id="show_money">599</span>元</span>
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
								<div class="">
									<div class="">
										<img src="${pageContext.request.contextPath}/img/xgk/1568099441.jpg" class="img-responsive"/>
										<div class="text-center"> 支付宝扫码 </div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>				
				<script type="text/javascript">
					//选择套餐生成微信支付二维码
					function choice_combo(e){
						 var outTradeNo="";  //订单号
						 $("#show_money").html($(e).parents(".series_item").find(".series_item_tit .price").text());
						 $("#show_name").html($(e).parents(".series_item").find(".series_item_tit .price").attr("name"));
						 var body = $(e).parents(".series_item").find(".series_item_tit .price").attr("id");
						 var nowUrl=window.location.href;
						 for(var i=0;i<4;i++){ //4位随机数，用以加在时间戳后面。
							 outTradeNo += Math.floor(Math.random()*10);
						 }
						 outTradeNo = new Date().getTime() + outTradeNo;  //时间戳，用来生成订单号。
						 if('${uid}' != ""){
							 modelshow(false,$('#pay_info'),1);
							 $("#qr_code").attr("src", "${pageContext.request.contextPath}/api/weixinQRCode.do?body=" + body + "&outTradeNo=" + outTradeNo);	 
							 settime(outTradeNo,nowUrl);
						 }else{
							 layer.msg('您未登录立学道平台,无法购买vip特权！', {icon: 5,time:2000});
						 }
					}
					var countdown = 60;//查询60次
					function settime(order,url) {
					    if (countdown == 0) { 
					    	layer.msg('超过二分钟未支付，二维码已超时！', {icon: 5,time:1000});
					    	setTimeout(function(){  //使用  setTimeout（）方法设定定时2000毫秒
					    		window.location.reload();//页面刷新
					    		//location.href = "${pageContext.request.contextPath}/api/wx_pay_fail.do?nowUrl=" + url;
					    		countdown = 60;
					    	},2000);
						} else {							
							$.ajax({
								type:"POST",
								url:"${pageContext.request.contextPath}/api/query_wx_is_pay.do",
								data:"outTradeNo=" + order,
								datatype:'json',
								success:function(obj){
									if(obj.state == 1){
										layer.msg('支付成功', {icon: 5,time:1000});
								    	setTimeout(function(){  //使用  setTimeout（）方法设定定时2000毫秒
								    		window.location.reload();//页面刷新
								    		//location.href = "${pageContext.request.contextPath}/api/wx_pay_sucees.do?nowUrl=" + url;
								    	},2000);
									}
									countdown -- ;
								}
							});
						} 
						setTimeout(function() { 
						    settime(order,url) }
						    ,2000) 
					}
				</script>
				<div class="row">
					<div class="illustration">
						<h4 class="fontwei">套餐权益说明：</h4>
						<div class="padding-side2">
							<table class="table table-bordered table-hover" cellspacing="" cellpadding="">
								<thead><tr><th>账户类型</th><th>包含账户数（个）</th><th>报告下载次数（次）</th><th>使用期限（年）</th></tr></thead>
								<tr><td>学生套餐</td><td>1</td><td>9</td><td>1</td></tr>
								<tr><td>咨询师套餐</td><td>1</td><td>100</td><td>1</td></tr>
								<tr><td>工作室套餐</td><td>3</td><td>100</td><td>1</td></tr>
								<tr><td>公司套餐</td><td>50</td><td>100</td><td>1</td></tr>
							</table>
						</div>
					</div>
				</div>
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
		</div>
		<!-- 页面右侧-->
		<c:import url="../public/side_right.jsp"></c:import>
		<c:import url="../xgk/footer.jsp"></c:import>
	</body>
</html>
