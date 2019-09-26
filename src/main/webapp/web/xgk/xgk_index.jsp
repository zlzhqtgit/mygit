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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/swiper.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/certify.css" />	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/swiper.min.js" type="text/javascript" charset="utf-8"></script>	
<script src="${pageContext.request.contextPath}/js/web/xgk/jquery.SuperSlide.2.1.3.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/swper5.0.1.js"></script>
<style type="text/css">
	h1{font-size: 4em;}
</style>
</head>

<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>
		<style type="text/css">
			banner .swiper-container { width: 100%; height: 100%; margin-left: auto; margin-right: auto; }
		    banner .swiper-slide { text-align: center; font-size: 18px; background: #fff; }
		    banner .swiper-slide a{ display: block; width: 100%; }
		    banner .swiper-slide img { width: 100%; }
		    banner .swiper-button-prev, .swiper-container-rtl .swiper-button-next{ background-image: url(${pageContext.request.contextPath}/img/xgk/arrows_left.png); background-color: gainsboro; opacity: .3;cursor: pointer;left: 10px;right: auto;padding: 4em 2em; }
		    banner .swiper-button-next, .swiper-container-rtl .swiper-button-prev{ background-image: url(${pageContext.request.contextPath}/img/xgk/arrows_righ.png); background-color: gainsboro; opacity: .3;cursor: pointer;right: 10px;left: auto;padding: 4em 2em; }
		</style>
		<banner class="">
			 <!-- Swiper -->
			<div class="swiper-container">
			    <div class="swiper-wrapper">
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
			      slidesPerView: 1,
			      spaceBetween: 30,
			      loop: true,
			      autoplay:{
			      	delay: 2500,
					disableOnInteraction: false,
			      }, 
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
			</script>
		</banner>
		
		<section class="container margin_top">
			<h1 class="text-center">视频课程</h1>
			<div class="row video_box margin_top1">
				<div class="thumbnail col-sm-6">
					<video width="" height="" class="pull-left" controls>
						<source src="${pageContext.request.contextPath}/img/xgk/video/GQ55LLI4.mp4" type="video/mp4" />						
						<source src="myvideo.ogv" type="video/ogg" />
						<source src="myvideo.webm" type="video/webm" />					
						<object width="" height="" type="application/x-shockwave-flash" data="myvideo.swf">
							<param name="movie" value="myvideo.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideo.swf" />
						</object> 
						当前浏览器不支持 video直接播放，点击这里下载视频：<a href="myvideo.webm" >下载视频</a>
					</video>
					<div class="caption"> 
						<h3>视频简介</h3>
						<p class="margin_top1">点击这里下载视频点击这里下载视频点击这里下载视频...</p>
						<div class="font_mark">
							<div class="pull-left text-left"><span class="glyphicon glyphicon-user text-muted"></span>超人</div>
							<div class="pull-left text-right"><span class="glyphicon glyphicon-heart-empty text-danger"></span>9527</div>
							<div class="clearfix"></div>
						</div>

					</div>
				</div>

				<div class="section-content  col-sm-6">
					<p>The Pulpit Rock is a massive cliff 604 metres (1982 feet) above Lysefjorden, opposite the Kjerag plateau, in Forsand, Ryfylke, Norway. The top of the cliff is approximately 25 by 25 metres (82 by 82 feet) square and almost flat, and is a famous tourist attraction in Norway.The Pulpit Rock is a massive cliff 604 metres (1982 feet) above Lysefjorden, opposite the Kjerag plateau, in Forsand, Ryfylke, Norway. </p>
					<p class="text-center margin_top"><button type="button" class="btn btn-primary">更多视频 >></button></p>
				</div>
			</div>
		</section>
		
		<section class="container">
			<h1 class="text-center">公司业务</h1>
			<style type="text/css">
				.bussiness .swiper-container { width: 100%; height: 100%; }
				.bussiness .swiper-slide { text-align: center; font-size: 18px; border: 1px solid #eee; transition: 300ms; transform: scale(.8); }
				.bussiness .swiper-slide img { width: 100%; }
				.bussiness .swiper-slide-active, .swiper-slide-duplicate-active { border: 1px solid #eee; transform: scale(1); z-index: 99999999; }
			</style>
			<div class="bussiness_bg" style="height: 520px;background-color: #fff;">
				
				<div class="bussiness container" style="padding: 0; width: 100%;">
					<div class="" style="">
						<div id="item_tit" class="item_tit text-center margin_bot" style="width: 8em;margin: 0 auto;">
							<h3 class="text-white">志愿填报</h3>
							<div class="margin_bot1" style="margin-top:10px ;position: relative;border-top: 3px solid #fff;"><span class="glyphicon glyphicon-play text-white" style="transform:rotate(90deg);"></span></div>
						</div>
					</div>
					<div class="swiper-container" style="height: 384px;">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="">
									<img src="${pageContext.request.contextPath}/img/xgk/certify01.png"/>
								</div>
								<div class="padding-side">
									<input type="hidden" name="" id="" value="志愿填报" />
									<h3 class="margin_top1">这是比较大的一句话1</h3>
									<div class="margin_top1 padding-side texts_hide text-center">这是比较大的一句话这这是比较大的一句话这是比较大的一句话这是比较大的一句话这是比较大的一句话这是比较大的一句话这是比较大的一句话</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="">
									<img src="${pageContext.request.contextPath}/img/xgk/certify02.png"/>
								</div>
								<div class="padding-side">
									<input type="hidden" name="" id="" value="选科指导" />
									<h3 class="margin_top1">这是比较大的一句话2</h3>
									<div class="margin_top1 padding-side texts_hide text-center">这是比较大的一句话这这是比较大的一句话这是比较大的一句话这是比较大的一句话这是比较大的一句话这是比较大的一句话这是比较大的一句话</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="">
									<img src="${pageContext.request.contextPath}/img/xgk/certify03.png"/>
								</div>
								<div class="padding-side">
									<input type="hidden" name="" id="" value="升学规划" />
									<h3 class="margin_top1">这是比较大的一句话3</h3>
									<div class="margin_top1 padding-side texts_hide text-center">这是比较大的一句话这这是比较大的一句话这是比较大的一句话这是比较大的一句话这是比较大的一句话这是比较大的一句话这是比较大的一句话</div>
								</div>
							</div>
						</div>
						<!-- Add Pagination -->
						<div class="swiper-pagination"></div>
					</div>
				</div>
				
			</div>

			<!-- Initialize Swiper -->
			<script>
				var swiper = new Swiper('.bussiness .swiper-container', {
					slidesPerView: 3,
					spaceBetween: 30,
					centeredSlides: true,
					loop: true,
					on:{
			    	    slideChange: function(){
				    	    var index=this.realIndex;
				    	    var input_val=$(this.slides).parent().find('.swiper-slide').eq(index).find('input').val();
				    	    $('.item_tit h3').text(input_val);
				    	},
		    	  	},
			        autoplay:{
			      	  delay: 2500,
					  disableOnInteraction: false,
			        },
					pagination: {
						el: '.bussiness .swiper-pagination',
						clickable: true,
					},
				});
				
				var item_tit=$('.bussiness #item_tit');
				var tit= $('.bussiness .swiper-wrapper .swiper-slide-active').find('input').val();
				console.log(tit)
				$('.bussiness #item_tit h3').text(tit);
			</script>
			<div class="clearfix"></div>
		</section>

		<section class="container">
			<h1 class="text-center">咨询师</h1>
			<style type="text/css">
				.consultents .swiper-container {
			      width: 100%;
			      height: 100%;
			    }
			    .consultents .swiper-slide {
			      text-align: center;
			      font-size: 18px;
			     /*  background: #fff; */
			
			      /* Center slide text vertically */
			      display: -webkit-box;
			      display: -ms-flexbox;
			      display: -webkit-flex;
			      display: flex;
			      -webkit-box-pack: center;
			      -ms-flex-pack: center;
			      -webkit-justify-content: center;
			      justify-content: center;
			      -webkit-box-align: center;
			      -ms-flex-align: center;
			      -webkit-align-items: center;
			      align-items: center;
			    }
			    .consultents .thumbnail{
			    	padding:2em 4px;
			    	/* padding-top:2em; */
			    }
			    .consultents .thumbnail .user_head{
			    	padding-left:1em;
			    	color:#d0d0d0;
			    }
			     .consultents .thumbnail .user_right .glyphicon{
			     	margin-right:.5em;
			     }
			    .consultents .thumbnail h4{
			    	font-weight:600;
			    }
			    .consultents .thumbnail p{
			    	font-size:14px;
			    }
			    .consultents .thumbnail .btns{
			    	padding-top:2em;
			    }
			    .consultents .thumbnail .caption p{
			    	margin:20px 0;
			    }
			</style>
			<div class="consultents">
				<div class="swiper-container">
				    <div class="swiper-wrapper">
				      <div class="swiper-slide">
				      	<div class="thumbnail">
							<div class="converse_info">
								<div class="pull-left user_head">
									<span class="glyphicon glyphicon-user"></span>
								</div>
								<div class="pull-left user_right">
									<h4>张XX&nbsp;生涯规划咨询师</h4>
									<p class="text-left">这里是个人签名</p>
									<p class="text-left"><span class="glyphicon glyphicon-map-marker"></span>中国&nbsp;北京</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="caption">
								<p class="text-left">这里是个人简介这里是个人简介这里是个人简介这里是个人简介这里是个人简介这里是个人简介...</p>
								<div class="btns">
									<div class="pull-left">
										<div class="pull-left">
											<h4>426</h4>
											<div class="fontwei">
												关注
											</div>
										</div>
										<div class="pull-left">
											<h4>1.6k</h4>
											<div class="fontwei">
												粉丝
											</div>
										</div>
									</div>
									<a href="#" class="btn btn-primary" role="button">+关注</a>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
				      </div>
				      <div class="swiper-slide">
				      	<div class="thumbnail">
							<div class="converse_info">
								<div class="pull-left user_head">
									<span class="glyphicon glyphicon-user"></span>
								</div>
								<div class="pull-left user_right">
									<h4>张XX&nbsp;生涯规划咨询师</h4>
									<p class="text-left">这里是个人签名</p>
									<p class="text-left"><span class="glyphicon glyphicon-map-marker"></span>中国&nbsp;北京</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="caption">
								<p class="text-left">这里是个人简介这里是个人简介这里是个人简介这里是个人简介这里是个人简介这里是个人简介...</p>
								<div class="btns">
									<div class="pull-left">
										<div class="pull-left">
											<h4>426</h4>
											<div class="fontwei">
												关注
											</div>
										</div>
										<div class="pull-left">
											<h4>1.6k</h4>
											<div class="fontwei">
												粉丝
											</div>
										</div>
									</div>
									<a href="#" class="btn btn-primary" role="button">+关注</a>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
				      </div>
				      <div class="swiper-slide">
				      	<div class="thumbnail">
							<div class="converse_info">
								<div class="pull-left user_head">
									<span class="glyphicon glyphicon-user"></span>
								</div>
								<div class="pull-left user_right">
									<h4>张XX&nbsp;生涯规划咨询师</h4>
									<p class="text-left">这里是个人签名</p>
									<p class="text-left"><span class="glyphicon glyphicon-map-marker"></span>中国&nbsp;北京</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="caption">
								<p class="text-left">这里是个人简介这里是个人简介这里是个人简介这里是个人简介这里是个人简介这里是个人简介...</p>
								<div class="btns">
									<div class="pull-left">
										<div class="pull-left">
											<h4>426</h4>
											<div class="fontwei">
												关注
											</div>
										</div>
										<div class="pull-left">
											<h4>1.6k</h4>
											<div class="fontwei">
												粉丝
											</div>
										</div>
									</div>
									<a href="#" class="btn btn-primary" role="button">+关注</a>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
				      </div>
				      <div class="swiper-slide">
				      	<div class="thumbnail">
							<div class="converse_info">
								<div class="pull-left user_head">
									<span class="glyphicon glyphicon-user"></span>
								</div>
								<div class="pull-left user_right">
									<h4>张XX&nbsp;生涯规划咨询师</h4>
									<p class="text-left">这里是个人签名</p>
									<p class="text-left"><span class="glyphicon glyphicon-map-marker"></span>中国&nbsp;北京</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="caption">
								<p class="text-left">这里是个人简介这里是个人简介这里是个人简介这里是个人简介这里是个人简介这里是个人简介...</p>
								<div class="btns">
									<div class="pull-left">
										<div class="pull-left">
											<h4>426</h4>
											<div class="fontwei">
												关注
											</div>
										</div>
										<div class="pull-left">
											<h4>1.6k</h4>
											<div class="fontwei">
												粉丝
											</div>
										</div>
									</div>
									<a href="#" class="btn btn-primary" role="button">+关注</a>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
				      </div>
				      <div class="swiper-slide">
				      	<div class="thumbnail">
							<div class="converse_info">
								<div class="pull-left user_head">
									<span class="glyphicon glyphicon-user"></span>
								</div>
								<div class="pull-left user_right">
									<h4>张XX&nbsp;生涯规划咨询师</h4>
									<p class="text-left">这里是个人签名</p>
									<p class="text-left"><span class="glyphicon glyphicon-map-marker"></span>中国&nbsp;北京</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="caption">
								<p class="text-left">这里是个人简介这里是个人简介这里是个人简介这里是个人简介这里是个人简介这里是个人简介...</p>
								<div class="btns">
									<div class="pull-left">
										<div class="pull-left">
											<h4>426</h4>
											<div class="fontwei">
												关注
											</div>
										</div>
										<div class="pull-left">
											<h4>1.6k</h4>
											<div class="fontwei">
												粉丝
											</div>
										</div>
									</div>
									<a href="#" class="btn btn-primary" role="button">+关注</a>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
				      </div>
				    </div>
				    <!-- Add Pagination -->
				    <div class="swiper-pagination"></div>
				    <!-- Add Arrows -->
				    <div class="swiper-button-next" style="background-image: url(${pageContext.request.contextPath}/img/xgk/arrows_righ.png); background-color: gainsboro; opacity: .3;cursor: pointer;"></div>
				    <div class="swiper-button-prev" style="background-image: url(${pageContext.request.contextPath}/img/xgk/arrows_left.png); background-color: gainsboro; opacity: .3;cursor: pointer;"></div>
				</div>
			</div>
			<script>
			    var consult_swiper = new Swiper('.consultents .swiper-container', {
			      autoplay:{
			      	delay: 2500,
					disableOnInteraction: false,
			      },
			      slidesPerView: 3,
			      spaceBetween: 30,
			      slidesPerGroup: 3,
			      loop: true,
			      loopFillGroupWithBlank: true,
			      pagination: {
			        el: '.consultents .swiper-pagination',
			        clickable: true,
			      },
			      navigation: {
			        nextEl: '.consultents .swiper-button-next',
			        prevEl: '.consultents .swiper-button-prev',
			      },
			    });
			</script>
		</section>

		<section class="container">
			<h1 class="text-center">学员风采</h1>
			<div id="certify">
				<div class="swiper-container">
				<div class="swiper-wrapper">
				<div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/xgk/certify01.png" /><p>非常难得又值钱的认证证书</p></div>
				<div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/xgk/certify02.png" /><p>贵阳市优秀互联网企业认定证书</p></div>
				<div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/xgk/certify03.png" /><p>质量管理体系认证荣誉证书</p></div>
				<div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/xgk/certify04.png" /><p>计算机软件著作权登记证书</p></div>
				<div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/xgk/certify05.png" /><p>增值电信业务经营许可证</p></div>
				</div>
				</div>
				<div class="swiper-pagination"></div>				
			</div>
				
				<script>
				certifySwiper = new Swiper('#certify .swiper-container', {
					watchSlidesProgress: true,
					slidesPerView: 'auto',
					centeredSlides: true,
					loop: true,
					loopedSlides: 5,
					autoplay:{
					    delay: 2500,
					    disableOnInteraction: false,
					},
					/*
					navigation: {
						nextEl: '.swiper-button-next',
						prevEl: '.swiper-button-prev',
					},*/
					pagination: {
						el: '#certify .swiper-pagination',
						clickable :true,
					},
					on: {
						progress: function(progress) {
							for (i = 0; i < this.slides.length; i++) {
								var slide = this.slides.eq(i);
								var slideProgress = this.slides[i].progress;
								modify = 1;
								if (Math.abs(slideProgress) > 1) {
									modify = (Math.abs(slideProgress) - 1) * 0.3 + 1;
								}
								translate = slideProgress * modify * 260 + 'px';
								scale = 1 - Math.abs(slideProgress) / 5;
								zIndex = 999 - Math.abs(Math.round(10 * slideProgress));
								slide.transform('translateX(' + translate + ') scale(' + scale + ')');
								slide.css('zIndex', zIndex);
								slide.css('opacity', 1);
								if (Math.abs(slideProgress) > 3) {
									slide.css('opacity', 0);
								}
							}
						},
						setTransition: function(transition) {
							for (var i = 0; i < this.slides.length; i++) {
								var slide = this.slides.eq(i)
								slide.transition(transition);
							}
				
						}
					}
				
				})
				</script>
		</section>	
		
		<section class="container">
			<h1 class="text-center">升学规划服务中心</h1>
			<div class="service-center">
				<div class="pull-left prepare">
					<div class="footer_nav">
						<h3>高考备考</h3>
						<div class="border-bt" style="background-color: #00AEFF !important; width: 20%;margin-top:10px ;"></div>
					</div>
					<ul>
						<li>
							<a href="">The Pulpit Rock is a massive cliff 604 metres (1982 feet) above</a>
						</li>
						<li>
							<a href="">The Pulpit Rock is a massive cliff 604 metres (1982 feet) above</a>
						</li>
						<li>
							<a href="">The Pulpit Rock is a massive cliff 604 metres (1982 feet) above</a>
						</li>
						<li>
							<a href="">The Pulpit Rock is a massive cliff 604 metres (1982 feet) above</a>
						</li>
					</ul>
				</div>
				<div class="pull-left">
					<div class="footer_nav">
						<h3>专家文采</h3>
						<div class="border-bt" style="background-color: #00AEFF !important; width: 20%;margin-top:10px ;"></div>
					</div>
					<ul>
						<li>
							<a href="">The Pulpit Rock is a massive cliff 604 metres (1982 feet) above</a>
						</li>
						<li>
							<a href="">The Pulpit Rock is a massive cliff 604 metres (1982 feet) above</a>
						</li>
						<li>
							<a href="">The Pulpit Rock is a massive cliff 604 metres (1982 feet) above</a>
						</li>
						<li>
							<a href="">s a massive cliff 604 metres (1982 feet)东方闪电 above</a>
						</li>
					</ul>
				</div>
			</div>
		</section>

			
<!-- 页面底部-->
<c:import url="side_right.jsp"></c:import>
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
</body>
</html>
