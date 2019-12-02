<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>好前途后台登录页</title>
<meta name="viewport" content="width=device-width, initial-scale=0.1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/animate.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/swiper.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/swper5.0.1.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/wow.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/web/xgk/jquery.countup.min.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
<script src="http://res.wx.qq.com/connect/zh_CN/htmledition/js/wxLogin.js"></script>
</head>
<body>
		<header class="padding-side login_head">
			<nav class="">
				<ul class="margin_top1">
					<li><a href="">新手教程</a></li>
					<li><a href="">志愿填报QQ群</a></li>
					<li><a href="">官方微信</a></li>
					<li><a href="">开通/激活VIP</a></li>
					<li><a href="">商务合作</a></li>
				</ul>
			</nav>
		</header>
		<banner class="">
			 <!-- Swiper -->
			<div class="swiper-container">				
				<form action="" method="post" style="background-color: #ffffff;" onsubmit="return false">
				<fieldset id="">
					<legend class="text-primary"><h3>臻选高考云端系统</h3></legend>
					<div class="">
						<input id="mobile" onblur="check_mobile ()" type="text"  value="" placeholder="手机号"/>
						<span class="glyphicon glyphicon-phone text-muted"></span>
						<div id="tip1" class="tip text-danger"></div>
					</div>
					<div class="margin_top1">
						<input id="password" onblur="check_pwd ()" type="password" id="password" value="" placeholder="密码"/>
						<span class="glyphicon glyphicon-tag text-muted"></span>
						<div id="tip2" class="tip text-danger"></div>
					</div>
				</fieldset>				
				<div class="text-center margin_bot margin_top1">
					<input class="login_btn" type="button" name="" onclick="login()"  id="subm" value="登录" />
				</div>
				<div class="forget margin_top1 clearfix">
					<a href="" class="text-primary pull-left">忘记密码？</a>
					<a href="${pageContext.request.contextPath}/user/register.do" class="text-primary pull-right">免费注册</a>
				</div>
				<div class=" margin_top1">
					<div class="text-primary thirds_login text-center">
						<span class="text-primary">第三方账号登录</span>
					</div>
					<ul class="others_acc margin_top">
						<li><a  href="${pageContext.request.contextPath}/qq_login.do"><img id="qqLogin" src="${pageContext.request.contextPath}/img/xgk/qq.jpg"/></a></li>

						<li><a href="javascript:;"><img onclick="wechatQRCode()" src="${pageContext.request.contextPath}/img/xgk/wechat.jpg"/></a></li>
					</ul>

				</div>

			</form>
				<script type="text/javascript">
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
							appid:"wx7287a60bb700fd21",
							scope:"snsapi_login",
							redirect_uri:"http://www.txjava.cn/loginServlet"
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
							$('#tip1').text('手机号不能为空')
						} else if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(mobile))){
							$('#tip1').text('手机号码有误，请重新输入');
					        return false; 
					    } else{
					    	$('#tip1').text('');
					    }						
					}					
					/**
					 * 密码规则
					 */
					function check_pwd () {
						var pwd_tip=$('#tip2').text();
						var pwd=$("#password").val();
						if (pwd=='') {
							$('#tip2').text('密码不能为空');
						} else if(!(/^(\w){6,20}$/).test(pwd)){
							//最少6位，包括至少1个大写字母，1个小写字母，1个数字，1个特殊字符
							$('#tip2').text('密码只能输入6-20个字母、数字、下划线_ ');
							return false; 
						}else{
							$('#tip2').text('');
						}
					}
				</script>				
			    <div class="swiper-wrapper">
				    <div class="swiper-slide"><a href=""><img src="${pageContext.request.contextPath}/img/xgk/banner_login1.jpg"/></a></div>
				    <div class="swiper-slide"><a href=""><img src="${pageContext.request.contextPath}/img/xgk/banner.jpg"/></a></div>
			      <div class="swiper-slide"><a href=""><img src="${pageContext.request.contextPath}/img/xgk/banner1.jpg"/></a></div>
			      <div class="swiper-slide"><a href=""><img src="${pageContext.request.contextPath}/img/xgk/timg.jpg"/></a></div>
			    </div>
			    <!-- Add Pagination -->
			    <div class="swiper-pagination"></div>
			    <!-- Add Arrows -->
			    <div class="swiper-button-next"></div>
			    <div class="swiper-button-prev"></div>
			</div>
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
//			    $('banner .swiper-slide').mouseenter(function () {
//		    	   swiperBanner.autoplay.stop();
//		    	})
//		    	$('banner .swiper-slide').mouseleave(function () {
//		    	   swiperBanner.autoplay.start();
//		    	})
			</script>			
		</banner>		
		<section class="login container">
			 <div class="bg1 margin_top1">
			 	<div class="words">
			 		<p class="wow fadeInLeftBig sense">一句简短的话</p>
			 		<div class="wow bounceInUp">
			 			这是一段长简介这是一段长简介这是一段长简介这是一段长简介这是一段长简介这是一段长简介
			 		</div>
			 		<div class="check_detail">
			 			<a class="text-white" href="">查看详情</a>
			 		</div>
			 	</div>
			 </div>			 
			 <div class="bg2">
			 	<div class="words">
			 		<h3 class="wow bounceInLeft">我是一个小标题</h3>
			 		<h1 class="wow bounceInRight">此处是一个大标题</h1>
			 		<div class="wow bounceInUp">
			 			这是一段长简介这是一段长简介这是一段长简介这是一段长简介这是一段长简介这是一段长简介
			 		</div>
			 	</div>
			 	<div class="case_searvice text-center">
			 		<h2 class="text-white">服务案例</h2>
			 		<div class="margin_top">
			 			<h1 class="counter">5464</h1>
			 			<p class="text-right padding-side2">一个单位</p>
			 		</div>
			 	</div>
			 </div>
			  <div class="bg3">
			 	<div class="words">
			 		<h3 class="wow bounceInLeft">我是一个小标题</h3>
			 		<h1 class="wow bounceInRight">此处是一个大标题</h1>
			 		<div class="wow bounceInUp">
			 			这是一段长简介这是一段长简介这是一段长简介这是一段长简介这是一段长简介这是一段长简介
			 		</div>
			 	</div>
			 	<div class="others text-center">
			 		<h2 class="text-white">其它数据</h2>
			 		<div class="margin_top">
			 			<h1 class="counter">43546</h1>
			 			<p class="text-right padding-side2">一个单位</p>
			 		</div>
			 	</div>
			 </div>
		</section>
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
		<c:import url="footer.jsp"></c:import>	
	</body>
<script type="text/javascript">
function login(){
	var nowUrl="${nowUrl}";
	if(nowUrl==null||nowUrl==""){
		nowUrl="../cp/xgk_index.do";
	}
	var tip1=$('#tip1').text();
	var mobile=$("#mobile").val();
	var pwd_tip=$('#tip2').text();
	var pwd=$("#password").val();
	if (mobile=='') {
		$('#tip1').text('手机号不能为空')
	} else if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(mobile))){
		$('#tip1').text('手机号码有误，请重新输入');      
    } else if (pwd=='') {
		$('#tip2').text('密码不能为空');
	} else if(!(/^(\w){6,20}$/).test(pwd)){
		//最少6位，包括至少1个大写字母，1个小写字母，1个数字，1个特殊字符
		$('#tip2').text('密码只能输入6-20个字母、数字、下划线_ ');		
	}else{
		var url = "../user/xgk_userLogin.do";
		var phone=$("#mobile").val();
		var password=$("#password").val();		
		var data = "phone="+phone+"&password="+password;		
		$.ajax({
			"url" : url,
			"data" : data,
			"type" : "POST",
			"dataType" : "json",
			"success" : function(obj) {
				if (obj.state == 0) {
					alert(obj.message);
					return;
				}else{
					location.href = nowUrl;
				}
			}
		});  
    }
}
</script>
</html>

