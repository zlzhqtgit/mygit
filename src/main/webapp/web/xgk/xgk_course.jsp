<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>在线课程</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/swiper.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/swper5.0.1.js"></script>
		<script type="text/javascript"	src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script src="${pageContext.request.contextPath}/js/common.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<!-- 页面顶部-->
		<c:import url="header.jsp"></c:import>	
		<style type="text/css">
			banner .swiper-container {
				width: 100%;
				height: 100%;
				margin-left: auto;
				margin-right: auto;
			}
			
			banner .swiper-slide {
				text-align: center;
				font-size: 18px;
				background: #fff;
			}
			
			banner .swiper-slide a {
				display: block;
				width: 100%;
			}
			
			banner .swiper-slide img {
				width: 100%;
			}
			
			banner .swiper-button-prev,
			.swiper-container-rtl .swiper-button-next {
				background-image: url(img/arrows_left.png);
				background-color: gainsboro;
				opacity: .3;
				cursor: pointer;
				left: 10px;
				right: auto;
				padding: 4em 2em;
			}
			
			banner .swiper-button-next,
			.swiper-container-rtl .swiper-button-prev {
				background-image: url(img/arrows_righ.png);
				background-color: gainsboro;
				opacity: .3;
				cursor: pointer;
				right: 10px;
				left: auto;
				padding: 4em 2em;
			}
		</style>
		<banner class="">
			<!-- Swiper -->
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<a href=""><img src="${pageContext.request.contextPath}/img/xgk/bannerBg.png" /></a>
					</div>
					<div class="swiper-slide">
						<a href=""><img src="${pageContext.request.contextPath}/img/xgk/bg-banner-1.jpg" /></a>
					</div>
				</div>
				<!-- Add Pagination -->
				<div class="swiper-pagination"></div>
			</div>
			<script>
				
				var swiperBanner = new Swiper('banner .swiper-container', {
					slidesPerView: 1,
					spaceBetween: 30,
					loop: true,
					effect: 'fade',
					fadeEffect: {
						crossFade: true,
					},
					pagination: {
						el: '.swiper-pagination',
						clickable: true,
					},
				});
				$('banner .swiper-slide').mouseenter(function() {
					swiperBanner.autoplay.stop();
				})
				$('banner .swiper-slide').mouseleave(function() {
					swiperBanner.autoplay.start();
				})
			</script>
		</banner>
		<ul class="course_nav">
			<li class="current"><a href="#con1">推荐课程</a></li>
			<li><a href="#con2">预习课程</a></li>
			<li><a href="#con3">归纳梳理</a></li>
			<li><a href="javascript:void(0)">复习课程</a></li>
			<li><a href="javascript:void(0)">拔高提升</a></li>
			<li><a href="javascript:void(0)">高考填报</a></li>
			<li><a href="javascript:void(0)">自主招生</a></li>
		</ul>
		<script type="text/javascript">
			$(function() {
				var _index=0;
		        $(".course_nav li").click(function(){
		            $(this).parent().children().removeClass("current");
		            $(this).addClass("current");
		            _index=$(this).index()+1;
		            console.log(_index)
		            //通过拼接字符串获取元素，再取得相对于文档的高度
		            var _top=$("#con"+_index).offset().top;
		            
		            //scrollTop滚动到对应高度
		            $("body,html").animate({scrollTop:_top},500);
		        });
				var top1=$('#con1').offset().top;
				$(window).scroll(function() {
					if ($(document).scrollTop()>top1-50) {
						$('.course_nav').show();
					} else{
						$('.course_nav').hide();
					}
				})
				
				//回到顶部
				$(".backtop").on('click',scroll_top)
				function scroll_top() {
					$("body,html").animate({scrollTop:0},500);
				}
				
				$(".input-group-addon").on('click',function() {
					modelshow('您感兴趣的课程',$(".modalbox"),1)
				})
				
			})

		</script>
		<main class="container p_relative margin_bot">
			<div class="margin_bot" style="padding: 1em 100px 1em;">
			    <form class="bs-example bs-example-form" role="form">
			        <div class="input-group input-group-lg">
			            <span class="input-group-addon" style="cursor: pointer;"><span class="glyphicon glyphicon-search text-muted"></span></span>
			            <input type="text" class="form-control" placeholder="搜索你感兴趣的课程">
			        </div>
			    </form>
			</div>
			
			<!--弹框-->
			<div class="modalbox" style="display: none;">
				<div class="padding-side margin_top1">
					<ul class="list-group">
					    <a href="#" class="list-group-item">
					        <div class="media">
							  <div class="media-left media-middle">
							    <img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png" class="media-object" style="width:60px">
							  </div>
							  <div class="media-body">
							    <h4 class="media-heading">居中</h4>
							    <p>这是一些示例文本...</p>
							  </div>
							</div>
					    </a>
					    <a href="#" class="list-group-item">
					        <div class="media">
							  <div class="media-left media-middle">
							    <img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png" class="media-object" style="width:60px">
							  </div>
							  <div class="media-body">
							    <h4 class="media-heading">居中</h4>
							    <p>这是一些示例文本...</p>
							  </div>
							</div>
					    </a>
					    <a href="#" class="list-group-item">
					        <div class="media">
							  <div class="media-left media-middle">
							    <img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png" class="media-object" style="width:60px">
							  </div>
							  <div class="media-body">
							    <h4 class="media-heading">居中</h4>
							    <p>这是一些示例文本...</p>
							  </div>
							</div>
					    </a>
					    <a href="#" class="list-group-item">
					        <div class="media">
							  <div class="media-left media-middle">
							    <img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png" class="media-object" style="width:60px">
							  </div>
							  <div class="media-body">
							    <h4 class="media-heading">居中</h4>
							    <p>这是一些示例文本...</p>
							  </div>
							</div>
					    </a>
					    <a href="#" class="list-group-item">
					        <div class="media">
							  <div class="media-left media-middle">
							    <img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png" class="media-object" style="width:60px">
							  </div>
							  <div class="media-body">
							    <h4 class="media-heading">居中</h4>
							    <p>这是一些示例文本...</p>
							  </div>
							</div>
					    </a>
					    <a href="#" class="list-group-item">
					        <div class="media">
							  <div class="media-left media-middle">
							    <img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png" class="media-object" style="width:60px">
							  </div>
							  <div class="media-body">
							    <h4 class="media-heading">居中</h4>
							    <p>这是一些示例文本...</p>
							  </div>
							</div>
					    </a>
					</ul>
				</div>
			</div>
			<!--/弹框-->
			
			<div class="" id="con1">
				<div class="padding-side flex_jc_sb">
					<span class="flex_jc_sb">
						<h3>推荐课程</h3>
						<span class="text-muted flex_Al_c">&ensp;共xxxx个视频</span>
					</span> 
					<a href="${pageContext.request.contextPath}/web/xgk/xgk_courseList.jsp">查看更多课程&raquo;</a>
				</div>
				<ul class="clearfix course_list margin_top1">
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="coursePlay.html" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-info" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="coursePlay.html" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-warning" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-danger" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="coursePlay.html" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-success" href="">预习</span></p>
						</div>
					</li>
				</ul>
				<p class="text-center"><a class="text-primary btn btn_border_p" href="">
					<span class="glyphicon glyphicon-refresh"></span> 换一组</a>
				</p>
			</div>
			<div class="" id="con2">
				<div class="padding-side flex_jc_sb">
					<span class="flex_jc_sb">
						<h3>预习课程</h3>
						<span class="text-muted flex_Al_c">&ensp;共xxxx个视频</span>
					</span> 
					<a href="course_list.html">查看更多课程&raquo;</a>
				</div>
				<ul class="clearfix course_list margin_top1">
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="coursePlay.html" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-info" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="coursePlay.html" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-warning" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-danger" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="coursePlay.html" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-success" href="">预习</span></p>
						</div>
					</li>
				</ul>
				<p class="text-center"><a class="text-primary btn btn_border_p" href="">
					<span class="glyphicon glyphicon-refresh"></span> 换一组</a>
				</p>
			</div>
			<div class="" id="con3">
				<div class="padding-side flex_jc_sb">
					<span class="flex_jc_sb">
						<h3>预习课程</h3>
						<span class="text-muted flex_Al_c">&ensp;共xxxx个视频</span>
					</span> 
					<a href="">查看更多课程&raquo;</a>
				</div>
				<ul class="clearfix course_list margin_top1">
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="coursePlay.html" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-info" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="coursePlay.html" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-warning" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-danger" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side">
						<div class="thumbnail">
							<a href="coursePlay.html" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="coursePlay.html" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-success" href="">预习</span></p>
						</div>
					</li>
				</ul>
				<p class="text-center"><a class="text-primary btn btn_border_p" href="">
					<span class="glyphicon glyphicon-refresh"></span> 换一组</a>
				</p>
			</div>
		</main>
		
	<!-- 页面右侧-->
	<c:import url="../public/side_right.jsp"></c:import>	
	<!-- 页面底部-->
	<c:import url="footer.jsp"></c:import>	

	</body>

</html>