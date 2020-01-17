<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=0.3">
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
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/web/xgk/jquery.countup.min.js"></script>
	</head>
	<body>
	<!-- 页面顶部-->
	<c:import url="header.jsp"></c:import>
		<banner class="p_relative">
			<shiro:guest>
				<div class="login_form">
					<form action="" method="post">
						<fieldset id="" class="">
							<legend class="text-primary margin0"><h3 class="margin0" style="padding-top:.6em;padding-bottom:1em;">立学道综合改革云平台</h3></legend>
							<div class="">
								<input id="mobile" onblur="check_mobile()" type="text" value="" placeholder="手机号"/>
								<label for="mobile"><span class="glyphicon glyphicon-phone text-muted"></span></label>
							</div>
							<div class="margin_top1">
								<input id="password" onblur="check_pwd()" type="password" value="" placeholder="密码"/>
								<label for="password"><span class="glyphicon glyphicon-tag text-muted"></span></label>
							</div>
						</fieldset>
						
						
						<div class="text-center margin_top1">
							<input class="login_btn" type="button" name="" onclick="login()"  id="subm" value="登录" />
						</div>
						<div class="tip text-center text-danger margin_top1" id="tip1" style="height: 1em;"></div>
						<div class="forget clearfix margin_top1">
							<a href="${pageContext.request.contextPath}/reset_password.do" class="text-primary pull-left">忘记密码？</a>
							<a href="javascript:void(0)" onclick="xgkRegister()" class="text-primary pull-right">免费注册</a>
						</div>
						<div class="">
							<div class="text-primary text-center thirds_login">
								<div class="third_line"></div>
								<span class="text-primary">第三方账号登录</span>
								<div class="third_line"></div>
							</div>
							<ul class="others_acc margin0">
								<li><a  href="${pageContext.request.contextPath}/qq_login.do"><img src="${pageContext.request.contextPath}/img/xgk/qq.jpg"/></a></li>
								<li><a href="javascript:;"><img onclick="wechatQRCode()" src="${pageContext.request.contextPath}/img/xgk/wechat.jpg"/></a></li>
								<!--<li><a href="">淘宝</a></li>
								<li><a href="">支付宝</a></li>-->
							</ul>
						</div>
					</form>
				</div>
			</shiro:guest>
			
			<div class="swiper-container">
				<!-- Swiper -->
			    <div class="swiper-wrapper">
				    <div class="swiper-slide"><a href="${pageContext.request.contextPath}/sub/xgk_subject_score.do"><img class="" src="${pageContext.request.contextPath}/img/xgk/banner_login1.png"/></a></div>
				   	<div class="swiper-slide"><a href="javascript:;"><img class="" src="${pageContext.request.contextPath}/img/xgk/banner2.jpg"/></a></div>
				    <div class="swiper-slide"><a href="javascript:;"><img class="" src="${pageContext.request.contextPath}/img/xgk/banner3.jpg"/></a></div>
				   <%--<div class="swiper-slide"><a href=""><img class="" src="${pageContext.request.contextPath}/img/xgk/timg.jpg"/></a></div> --%>
			    </div>
			    <!-- Add Pagination -->
			    <div class="swiper-pagination"></div>
			    <!-- Add Arrows -->
			    <div class="swiper-button-next"></div>
			    <div class="swiper-button-prev"></div>
			</div>			
		</banner>
		<main class="index">
			<section class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 wow bounceInLeft">
						<img src="${pageContext.request.contextPath}/img/xgk/index1.png" class="img-responsive"/>
					</div>
					<div class="col-md-6 col-sm-6 wow bounceInRight">
						<h2 class="text-primary alignCenter fontwei">
							<span class="vip_icon_tit" style="background-size: cover;background-img: url(../../img/xgk/index_icon.png) no-repeat;"></span>认知更清晰 
						</h2>
						<div class="">
							全方位了解认识自己，发掘隐藏潜能。针对发展自我能力，定位更准确，未来不迷茫！
						</div>
						<ul class="sectionList1 clearfix">
							<li class="">
								<div class="">
									<div class="fontwei"> 1 </div>
									<div class=""> 成绩分析 </div>
								</div>
							</li>
							<li class="">
								<div class="">
									<div class="fontwei"> 2 </div>
									<div class=""> 学科潜能测评 </div>
								</div>
							</li>
							<li class="">
								<div class="">
									<div class="fontwei"> 3 </div>
									<div class=""> 霍兰德职业兴趣测评 </div>
								</div>
							</li>
							<li class="">
								<div class="">
									<div class="fontwei"> 4 </div>
									<div class=""> MBTI职业性格测评 </div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</section>
			<section class=""style="background-color:#e4f5ff; padding-top: 1em;">
				<div class="container">
					<ul class="sectionList2 clearfix row">
						<li class="wow zoomIn">
							<div class="" style="background: url(./../img/xgk/multi.png) no-repeat 45% center / 54%;">
								<div class="">
									<div class="text-center">
										<img src="${pageContext.request.contextPath}/img/xgk/sect21.png" style="width: 3em;"/>
									</div>
									<p class="text-center text-white fontwei">2688</p>
								</div>
							</div>
							<p class="text-center margin_top1 fontwei">高等院校</p>
						</li>
						<li class="wow zoomIn">
							<div class="" style="background: url(./../img/xgk/multi.png) no-repeat 45% center / 54%;;">
								<div class="">
									<div class="text-center">
										<img src="${pageContext.request.contextPath}/img/xgk/sect22.png" style="width: 3em;"/>
									</div>
									<p class="text-center text-white fontwei">6288</p>
								</div>
							</div>
							<p class="text-center margin_top1 fontwei">高校专业</p>
						</li>
						<li class="wow zoomIn">
							<div class="" style="background: url(./../img/xgk/multi.png) no-repeat 45% center / 54%;">
								<div class="">
									<div class="text-center">
										<img src="${pageContext.request.contextPath}/img/xgk/sect23.png" style="width: 3em;"/>
									</div>
									<p class="text-center text-white fontwei">3288</p>
								</div>
							</div>
							<p class="text-center margin_top1 fontwei">职业类型</p>
						</li>
						<li class="wow zoomIn">
							<div class="" style="background: url(./../img/xgk/multi.png) no-repeat 45% center / 54%;;">
								<div class="">
									<div class="text-center">
										<img src="${pageContext.request.contextPath}/img/xgk/sect24.png" style="width: 3em;"/>
									</div>
									<p class="text-center text-white fontwei"><span class="">30</span>W+</p>
								</div>
							</div>
							<p class="text-center margin_top1 fontwei">考生信赖</p>
						</li>
					</ul>
				</div>	
			</section>
			<section class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 wow bounceInLeft">
						<h2 class="text-primary alignCenter fontwei">
							<span class="vip_icon_tit type2" style="background-size: cover;background-img: url(../../img/xgk/index_icon1.png) no-repeat;"></span>数据更全面 
						</h2>
						<div class="">
							早一步查询，早一步知道，了解高校、专业、职业，更了解自己，让高考不留遗憾。
						</div>
						<ul class="sectionList1 clearfix">
							<li class="">
								<div class="">
									<div class="fontwei"> 1 </div>
									<div class=""> 近三年高校录取数据 </div>
								</div>
							</li>
							<li class="">
								<div class="">
									<div class="fontwei"> 2 </div>
									<div class=""> 职业薪酬发展 </div>
								</div>
							</li>
							<li class="">
								<div class="">
									<div class="fontwei"> 3 </div>
									<div class=""> 高校专业详细信息 </div>
								</div>
							</li>
							<li class="">
								<div class="">
									<div class="fontwei"> 4 </div>
									<div class=""> 专业职业对照 </div>
								</div>
							</li>
						</ul>
					</div>
					<div class="col-md-6 col-sm-6 wow bounceInRight">
						<img src="${pageContext.request.contextPath}/img/xgk/index2.png" class="img-responsive"/>
					</div>
				</div>
			</section>
		</main>
		<!-- 页面右侧-->
		<c:import url="../public/side_right.jsp"></c:import>
		<c:import url="../xgk/footer.jsp"></c:import>
	</body>
				<script>
			    var swiperBanner = new Swiper('banner .swiper-container', {
			      autoplay:false,
			      slidesPerView: 1,
			      spaceBetween: 30,
			      loop: true,
			      effect : 'fade',
			      fadeEffect: {
				    crossFade: true,
				  },
			      pagination: {
			        el: '.swiper-pagination',
			        clickable: true,
			      },
			      navigation: {
			        nextEl: '.swiper-button-next',
			        prevEl: '.swiper-button-prev',
			      },
			    });
			    $('banner .swiper-slide').mouseenter(function () {
		    	   swiperBanner.autoplay.stop();
		    	})
		    	$('banner .swiper-slide').mouseleave(function () {
		    	   swiperBanner.autoplay.start();
		    	})
		    	
		    	
		    	function login(){
					var nowUrl="${nowUrl}";
					if(nowUrl==null||nowUrl==""){
						nowUrl="${pageContext.request.contextPath}/cp/xgk_index.do";
					}
					var tip1=$('#tip1').text();
					var mobile=$("#mobile").val();
					var pwd_tip=$('#tip2').text();
					var pwd=$("#password").val();
					if (mobile=='') {
						$('#tip1').text('手机号不能为空')
					} else if(mobile.length == 11 && !(/^1(3|4|5|6|7|8|9)\d{9}$/.test(mobile))){
						$('#tip1').text('手机号码有误，请重新输入');
				    } else if (pwd=='') {
						$('#tip2').text('密码不能为空');
					/* } else if(!(/^(\w){6,20}$/).test(pwd)){
						//最少6位，包括至少1个大写字母，1个小写字母，1个数字，1个特殊字符
						$('#tip2').text('密码只能输入6-20个字母、数字、下划线_ ');	 */	
					}else{
						var url = "${pageContext.request.contextPath}/user/xgk_userLogin.do";
						var phone=$("#mobile").val();
						var password=$("#password").val();		
						var data = "account="+phone+"&password="+password;		
						$.ajax({
							"url" : url,
							"data" : data,
							"type" : "POST",
							"dataType" : "json",
							"success" : function(obj) {
								if (obj.state == 0) {
									layer.msg(obj.message,{icon:2,time:1000});
									$(".login_form").hide;
									return;
								}else{
									location.href = "${pageContext.request.contextPath}/sub/xgk_subject_score.do";
								}
							}
						});  
				    }
				}
		    	
		    	function xgkRegister() {
					var nowUrl=window.location.href;
					location.href = "${pageContext.request.contextPath}/user/register.do?nowUrl="+nowUrl;
				}
			    
			    function wechatQRCode() {
					var weixin = '<div id="weixin" ></div>';
					layer.open({
						type: 1,
						area: ['300px', '420px'],
						// fix: false, //不固定
						// maxmin: true,
						shade:false,
						title: false,
						content: weixin,
						scrollbar: false
					});
					drawingQRCode();
				}
				function drawingQRCode() {
					//生成微信二维码,工具类
					var obj = new WxLogin({
						id:"weixin",
						appid:"wxf9d480d0ab316606",
						scope:"snsapi_login",
						redirect_uri:"http://xgk.sxghfwzx.com/wxLoginCallback.do"
					});
				}

				//登录规则部分，防止XSS注入
				/**
				 * 手机号规则
				 */
				function check_mobile () {
					var tip1=$('#tip1').text();
					var mobile=$("#mobile").val();
					if (mobile=='') {
						$('#tip1').html('<span class="glyphicon glyphicon-exclamation-sign"></span> 手机号不能为空')
					} else if(mobile.length == 11 && !(/^1(3|4|5|6|7|8|9)\d{9}$/.test(mobile))){
						$('#tip1').html('<span class="glyphicon glyphicon-exclamation-sign"></span> 手机号码有误，请重新输入');
				        return false; 
				    } else{
				    	$('#tip1').html('');
				    }
					
				}
				
				/**
				 * 密码规则
				 */
				function check_pwd () {
					var pwd_tip=$('#tip2').text();
					var pwd=$("#password").val();
					if (pwd=='') {
						$('#tip1').html('<span class="glyphicon glyphicon-exclamation-sign"></span> 密码不能为空');
					} else if(!(/^(\w){6,20}$/).test(pwd)){
						//最少6位，包括至少1个大写字母，1个小写字母，1个数字，1个特殊字符
						$('#tip1').html('<span class="glyphicon glyphicon-exclamation-sign"></span> 密码只能由6-20个字母、数字、和特殊字符组成');
						return false; 
					}else{
						$('#tip1').html('');
					}
				}
			</script>
</html>
