<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/swiper.min.css" />
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/swper5.0.1.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/echarts.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/liquidFill.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/sch_chart.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/common.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<c:import url="header.jsp"></c:import>

		<main class="sch_info margin_bot">
			<p class="text-right container"><a class="btn btn-primary" href="">< 返回</a></p>
			<section class="" style="background: url(${pageContext.request.contextPath}/img/xgk/bannerBg.png) no-repeat;background-size: inherit;background-position: 0 -238px;padding-bottom: 2em;">
				<div class="container">
					<div class="row sch_info_head">
						<div class="col-lg-2  col-sm-2 col-md-2 sch_logo">
							<img src="${pageContext.request.contextPath}/img/xgk/report/ESFP_Jordan.jpg" style="width: 100%;border-radius: 10px;"/>
						</div>
						<div class="col-lg-6 col-sm-6 col-md-6 sch_title_info">
							<h3 class="text-white margin_top1">中山大学</h3>
							<script type="text/javascript">
								var sch = ${school};
								$(function(){
									alert(sch)
								});
								
								/* if(){
									
								} */
								
							</script>
							<p class="margin_top" id="universities_attributes">
								<span class="btn btn-default">本科</span>
								<span class="btn btn-default">双一流</span>
								<span class="btn btn-default">211</span>
							</p>
							<p class="clearfix text-white margin_top">
								<span class="pull-left">学校官网：</span>
								<span class="pull-right">招生电话：</span>
							</p>
						</div>
						<div class="col-lg-4  col-sm-4 col-md-4" style="display: flex;align-items: center;justify-content: center;">
							<div class="like">
								<a href="javascript:" onclick="like(this)"><img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/></a>
							</div>
							<!--<div class="collection">
								<a href="" class="glyphicon glyphicon-heart-empty text-danger"></a>
							</div>-->
						</div>
					</div>
				</div>
			</section>
			
			<section class="container panel panel-default">
				<div class="tab_list padding-side2 row">
			    	<ul class="tab_head">
			    		<li class="cur">学校介绍</li>
			    		<li>招生录取</li>
			    		<li>教研教学</li>
			    		<li>招生简章</li>
			    	</ul>
			    	<div class="tab_body col-lg-9 col-sm-9 col-md-9">
			    		<div class="tab_b1 cur">
			    			<div class="major_info margin_bot">
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei"> <span style="background-image: url(../../img/xgk/1.png);"></span>学校介绍 </h2>
		    						<div class="p_relative">
		    							<div class="tindent " style="height: 100px; overflow: hidden;">
			    							在行色匆匆的世界里，懂得如何从容；面对莫测的变化和以外，总能有所预测；
				    						任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。 
				    						总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。  
				    						总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。  
				    						总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。  
				    						总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。  
				    						总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。  
				    						总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。  
				    						总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。  
				    						总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。  
				    						总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。  
				    						总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。  
				    						总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。  
				    						总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。  
				    						总能有所预测；任凭外界喧嚣浮华，始终坚守本心。人生的每一步，张弛有度，且游刃有余。  
			    						</div>
			    						<div class="open-btn" style="height: 100px;">
											<a class="show_more btn btn-primary" onclick="showMore(this)" style="text-align:center; bottom: 3em; margin: 0;overflow: hidden;box-shadow: 0 0 4px #ddd;"> 查看更多 <div class="light"></div> </a>
							            </div>
		    						</div>
			    					<!--<p class="text-center margin_top"><a class="btn btn-default" href="">展开更多</a></p>-->
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(../../img/xgk/2.png);"></span>校园生活
			    					</h2>
			    					<div class="margin_top1">
										<style type="text/css">
											.schlive .swiper-container { width: 100%; height: 100%; }
											.schlive .swiper-slide { text-align: center; font-size: 18px; display: -webkit-box; display: -ms-flexbox; display: -webkit-flex; display: flex; -webkit-box-pack: center; -ms-flex-pack: center; -webkit-justify-content: center; justify-content: center; -webkit-box-align: center; -ms-flex-align: center; -webkit-align-items: center; align-items: center; }
											.schlive .swiper-slide .thumbnail {padding: 2em 4px;}
											.schlive .swiper-slide .thumbnail .glyphicon-user {padding-left: 10px;color: darkgray;}
											.schlive .swiper-slide .thumbnail .glyphicon-map-marker {margin-right: 10px;}
											.schlive .swiper-slide .thumbnail .caption p {margin-bottom: 2em;font-size: 14px;}
											.schlive .swiper-slide .user_right h4 {font-weight: bold;}
										</style>
										<div class="schlive">
											<div class="swiper-container">
												<div class="swiper-wrapper">
													<a href="javascript:void(0)" class="swiper-slide">
														<img src="${pageContext.request.contextPath}/img/xgk/certify04.png" style="width: 100%;"/>
													</a>
													<a href="javascript:void(0)" class="swiper-slide">
														<img src="${pageContext.request.contextPath}/img/xgk/certify04.png" style="width: 100%;"/>
													</a>
													<a href="javascript:void(0)" class="swiper-slide">
														<img src="${pageContext.request.contextPath}/img/xgk/certify04.png" style="width: 100%;"/>
													</a>
													<a href="javascript:void(0)" class="swiper-slide">
														<img src="${pageContext.request.contextPath}/img/xgk/certify04.png" style="width: 100%;"/>
													</a>
													<a href="javascript:void(0)" class="swiper-slide">
														<img src="${pageContext.request.contextPath}/img/xgk/certify04.png" style="width: 100%;"/>
													</a>
												</div>
												<!-- Add Pagination -->
												<div class="swiper-pagination"></div>
											</div>
										</div>
										<script>
											var schlive_swiper = new Swiper('.schlive .swiper-container', {
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
													el: '.schlive .swiper-pagination',
													clickable: true,
												},
											});
											$('.schlive .swiper-slide').mouseenter(function () {
									    	   schlive_swiper.autoplay.stop();
									    	})
									    	$('.schlive .swiper-slide').mouseleave(function () {
									    	   schlive_swiper.autoplay.start();
									    	})
									    	
											layer.photos({
											  photos: '.swiper-slide',
											  shade:0.5,//阴影透明度
											  area: ['1000px', '600px'],
											  anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
											}); 
										</script>
			    					</div>
			    					<div class="clearfix sch_info_twobox margin_top1">
			    						<a class="two_box pull-left border-primary" href="javascript:void(0)" onclick="modelshow('',$('.sch_live_polocy').html())">
			    							<div class="padding-side">
			    								<h3 class="">食宿条件</h3>
			    								<p class="">查看该校的食堂和宿舍情况</p>
			    							</div>
			    							<span class="glyphicon glyphicon-chevron-right"></span>
			    						</a>
			    						<a class="two_box pull-left" href="javascript:void(0)" onclick="modelshow('',$('.sch_live_polocy').html())">
			    							<div class="padding-side">
			    								<h3 class="">奖助学金</h3>
			    								<p class="">查看该校的奖学金和贫困生助学金情况</p>
			    							</div>
			    							<span class="glyphicon glyphicon-chevron-right"></span>
			    						</a>
			    					</div>
			    					
			    					<div class="sch_live_polocy padding-side2" style="display: none;">
			    						<div class="polocy_model padding-side2">
			    							<h2 class="">食堂和宿舍情况</h2>
			    							<p class="">查看该校的食堂和宿舍情况查看该校的食堂和宿舍情况查看该校的食堂和宿舍情况查看该校的食堂和宿舍情况查看该校的食堂和宿舍情况</p>
			    						</div>
			    					</div>
			    					<!--/模态框-->
									<script type="text/javascript">
										// 点击后激活样式
										$('.sch_info_twobox a').click(function() {
											$(this).parent().children().removeClass('border-primary');
											$(this).addClass('border-primary');
										})
									</script>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(${pageContext.request.contextPath}/img/xgk/3.png);"></span>教研教学
			    					</h2>
			    					<div class="p_relative">
			    						<div class="circle_list margin_top" style="height: 140px;">
				    						<div class="">
				    							<div class="circle">53</div>
				    							<p class="text-center">硕士点</p>
				    						</div>
				    						<div class="">
				    							<div class="circle">53</div>
				    							<p class="text-center">博士点</p>
				    						</div>
				    						<div class="">
				    							<div class="circle">53</div>
				    							<p class="text-center">重点专业</p>
				    						</div>
				    						<div class="">
				    							<div class="circle">53</div>
				    							<p class="text-center">重点实验室</p>
				    						</div>
				    						
				    					</div>
				    					<div class="open-btn" style="height: 100px;">
											<a class="show_more btn btn-primary" onclick="showMore(this)" style="text-align:center; bottom: 3em; margin: 0;overflow: hidden;box-shadow: 0 0 4px #ddd;"> 查看更多 <div class="light"></div> </a>
							            </div>
			    					</div>
			    					<!--<p class="text-center margin_top"><a class="btn btn-default" href="">查看更多</a></p>-->
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(../../img/xgk/4.png);"></span>男女比例
			    					</h2>
			    					<div class="percentage margin_top">
			    						<div class="text-primary">
			    							<img src="${pageContext.request.contextPath}/img/xgk/male.png"/>
			    							<span class="male_percent">56%</span>
			    						</div>
			    						<div class="percentage_con_box">
			    							<div class="percentage_con">
				    							<div class="pmale" style=""></div>
				    						</div>
			    						</div>
			    						<div class="text-danger">
			    							<span class=""> 44% </span>
			    							<img src="${pageContext.request.contextPath}/img/xgk/female.png"/>
			    						</div>
			    					</div>
			    					<!--https://gallery.echartsjs.com/editor.html?c=xBk9gt-o_l-->
			    					<script type="text/javascript">
			    						var male_percent=parseInt($('.male_percent').text());
			    						var box_w=$('.percentage_con').width();
			    						$('.pmale').width(male_percent-2+'%');
			    					</script>
			    				</div>
			    			</div>
			    		</div>
			    		<div class="tab_b2">
			    			<div class="major_info margin_bot tab2">
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(../../img/xgk/1.png);"></span>院校分数线
			    					</h2>
			    					<p class="">
			    						<select name="">
				    						<option value="">G贵州</option>
				    					</select>
				    					<select name="">
				    						<option value="">6选3</option>
				    					</select>
			    					</p>
			    					<div class="">
			    						<table class="table table-hover">
			    							<tr><th>Header</th><th>Header</th><th>Header</th><th>Header</th><th>Header</th></tr>
			    							<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
			    							<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
			    							<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
			    							<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
			    						</table>
			    						<p class="text-muted margin_top1">"-"表示暂无该项数据或学校概念无招生</p>
			    					</div>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(../../img/xgk/2.png);"></span>招生计划
			    					</h2>
			    					<div class="">
			    						<table class="table table-hover">
			    							<tr><th>Header</th><th>Header</th><th>Header</th><th>Header</th><th>Header</th></tr>
			    							<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
			    							<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
			    							<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
			    							<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
			    						</table>
			    					</div>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(../../img/xgk/3.png);"></span>专业录取分数线
			    					</h2>
			    					<div class="">
			    						<table class="table table-hover">
			    							<tr><th>Header</th><th>Header</th><th>Header</th><th>Header</th><th>Header</th></tr>
			    							<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
			    							<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
			    							<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
			    							<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
			    						</table>
			    					</div>
			    				</div>
			    			</div>
			    		</div>
			    		<div class="tab_b2">
			    			<div class="major_info tab3">
				    			<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(${pageContext.request.contextPath}/img/xgk/1.png);"></span>教研教学
			    					</h2>
			    					<div class="border_major flex_jcstart w_ball" style="width: 100%;">
			    						<div class="">
			    							<div class="" id="water1" style="width: 160px;height: 160px;"></div>
			    							<p class="text-center">硕士点</p>
			    						</div>
			    						<div class="">
			    							<div class="" id="water2" style="width: 160px;height: 160px;"></div>
			    							<p class="text-center">博士点</p>
			    						</div>
			    						<div class="">
			    							<div class="" id="water3" style="width: 160px;height: 160px;"></div>
			    							<p class="text-center">重点专业</p>
			    						</div>
			    						<div class="">
			    							<div class="" id="water4" style="width: 160px;height: 160px;"></div>
			    							<p class="text-center">重点实验室</p>
			    						</div>
			    					</div>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(../../img/xgk/2.png);"></span>师资力量
			    					</h2>
			    					<div class="border_major">
			    						现有院士（含双聘）18人，长江学者特聘教授43人，杰青73人，高层次人才数量居国内高校前列。
			    					</div>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(../../img/xgk/3.png);"></span>重点专业
			    					</h2>
			    					<table class="table table-bordered">
			    						<thead>
			    							<tr>
			    								<td>国家特色专业<div>双一流专业</div></td>
				    							<td>
				    								<a class="text-primary" href="">微电子学</a>
				    								<a class="text-primary" href="">网络工程</a>
				    								<a class="text-primary" href="">汉语言文学</a>
				    							</td>
				    						</tr>
			    					</table>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(../../img/xgk/3.png);"></span>重点学科
			    					</h2>
			    					<table class="table table-bordered">
			    						<tr><td>一级学科国家重点学科</td><td>Data</td></tr>
			    						<tr><td>二级学科国家重点学科</td><td>二级学科国家重点学科二级学科国家重点学科二级学科国家重点学科</td></tr>
			    						<tr><td>国家重点（培育）学科</td><td>Data</td></tr>
			    					</table>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(../../img/xgk/3.png);"></span>重点实验室及科研中心
			    					</h2>
			    					<table class="table table-bordered" border="" cellspacing="" cellpadding="">
			    						<tr><td>国家重点实验室</td><td>Data</td></tr>
			    						<tr><td>教育部重点实验室</td><td>Data</td></tr>
			    						<tr><td>国家工程研究中心</td><td>Data</td></tr>
			    						<tr><td>国家工程技术研究中心</td><td>国家工程技术研究中心国家工程技术研究中心</td></tr>
			    						<tr><td>教育部人文社会科学重点研究基地</td><td>Data</td></tr>
			    					</table>
			    				</div>
				    		</div>
			    		</div>
			    		<div class="tab_b2">
			    			<div class="major_info margin_bot">
				    			<div class="items margin_top">
			    					<h2 class="text-primary fontwei margin_bot1">
			    						<span style="background-image: url(../../img/xgk/1.png);"></span>招生简章
			    					</h2>
			    					<p class="">
			    						<select name="">
				    						<option value="">G贵州</option>
				    					</select>
				    					<select name="">
				    						<option value="">6选3</option>
				    					</select>
				    					<select name="">
				    						<option value="">2019</option>
				    					</select>
				    					<select name="">
				    						<option value="">本科一批</option>
				    					</select>
			    					</p>
			    					<div class="panel panel-default">
			    						<ul class="list-group list_article">
									        <li class="list-group-item">
									        	<a href="javascript:;" onclick="modelshow($(this).html(),$('#list1').html())">中山大学2019年本科招生简章</a>
									        	<span class="text-right text-muted">
									        		<span>发布时间325425</span>
									        		<span>浏览15w</span>
									        	</span>
									        </li>
									        <li class="list-group-item">
									        	<a href="javascript:;" onclick="modelshow($(this).html(),$('#list2').html())">中山大学2018年本科招生简章</a>
									        	<span class="text-right text-muted">
									        		<span>发布时间325425</span>
									        		<span>浏览15w</span>
									        	</span>
									        </li>
									        <li class="list-group-item">
									        	<a href="javascript:;" onclick="modelshow($(this).html(),$('#list3').html())">中山大学2017年本科招生简章</a>
									        	<span class="text-right text-muted">
									        		<span>发布时间325425</span>
									        		<span>浏览15w</span>
									        	</span>
									        </li>
										</ul>
			    					</div>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei margin_bot1">
			    						<span style="background-image: url(../../img/xgk/2.png);"></span>招生章程
			    					</h2>
			    					<p class="">
			    						<select name="">
				    						<option value="">G贵州</option>
				    					</select>
				    					<select name="">
				    						<option value="">6选3</option>
				    					</select>
				    					<select name="">
				    						<option value="">2019</option>
				    					</select>
				    					<select name="">
				    						<option value="">本科一批</option>
				    					</select>
			    					</p>
			    					<div class="panel panel-default">
			    						<ul class="list-group list_article">
									        <li class="list-group-item">
									        	<a href="javascript:;" onclick="modelshow($(this).html(),$('#list4').html())">中山大学2019年本科招生简章</a>
									        	<span class="text-right text-muted">
									        		<span>发布时间325425</span>
									        		<span>浏览15w</span>
									        	</span>
									        </li>
									        <li class="list-group-item">
									        	<a href="javascript:;" onclick="modelshow($(this).html(),$('#list5').html())">中山大学2018年本科招生简章</a>
									        	<span class="text-right text-muted">
									        		<span>发布时间325425</span>
									        		<span>浏览15w</span>
									        	</span>
									        </li>
									        <li class="list-group-item">
									        	<a href="javascript:;" onclick="modelshow($(this).html(),$('#list6').html())">中山大学2017年本科招生简章</a>
									        	<span class="text-right text-muted">
									        		<span>发布时间325425</span>
									        		<span>浏览15w</span>
									        	</span>
									        </li>
										</ul>
			    					</div>
			    				</div>
		    					<div id="list1" class="" style="display: none;">
									<div class="padding-side2 margin_top1">
										<h2 class="text-center fontwei">中山大学2019年本科招生简章</h2>
										<div class="margin_top2">
											<p class="">第一章<span class="padding-side">总则</span></p>
											<p class="">第一条<span class="padding-side">为了全面贯彻党的政策方针，依照《中华人民共和国教育法》和《中华人民共和国高等教育法》教育部有关文件规定，制定本章程。</span></p>
											<p class="">第一章<span class="padding-side">总则</span></p>
											<p class="">第一条<span class="padding-side">为了全面贯彻党的政策方针，依照《中华人民共和国教育法》和《中华人民共和国高等教育法》教育部有关文件规定，制定本章程。</span></p>
											<p class="">第一章<span class="padding-side">总则</span></p>
											<p class="">第一条<span class="padding-side">为了全面贯彻党的政策方针，依照《中华人民共和国教育法》和《中华人民共和国高等教育法》教育部有关文件规定，制定本章程。</span></p>
											<p class="">第一章<span class="padding-side">总则</span></p>
											<p class="">第一条<span class="padding-side">为了全面贯彻党的政策方针，依照《中华人民共和国教育法》和《中华人民共和国高等教育法》教育部有关文件规定，制定本章程。</span></p>
											<p class="">第一章<span class="padding-side">总则</span></p>
											<p class="">第一条<span class="padding-side">为了全面贯彻党的政策方针，依照《中华人民共和国教育法》和《中华人民共和国高等教育法》教育部有关文件规定，制定本章程。</span></p>
										</div>
									</div>
								</div>
								<div id="list2" class="" style="display: none;">
									<div class="text-danger padding-side2 margin_top1">你好我是model2</div>
								</div>
								<div id="list3" class="" style="display: none;">
									<div class="text-danger padding-side2 margin_top1">你好我是model3</div>
								</div>
								<div id="list4" class="" style="display: none;">
									<div class="text-danger padding-side2 margin_top1">你好我是model1</div>
								</div>
								<div id="list5" class="" style="display: none;">
									<div class="text-danger padding-side2 margin_top1">你好我是model2</div>
								</div>
								<div id="list6" class="" style="display: none;">
									<div class="text-danger padding-side2 margin_top1">你好我是model3</div>
								</div>
								<div id="list7" class="" style="display: none;">
									<div class="text-danger padding-side2 margin_top1">你好我是model4</div>
								</div>
				    		</div>
			    		</div>
			    	</div>
			    	<div class="col-lg-3  col-sm-3 col-md-3">
		    			<div class="panel panel-primary margin_top">
		    				<div class="panel-heading ">
		    					<h3 class="">基础信息</h3>
		    				</div>
		    				<ul class="padding-side margin_top1">
		    					<li>创建时间：<span>1942</span></li>
		    					<li>办学性质：<span>公立</span></li>
		    					<li>隶属于：<span>教育部</span></li>
		    					<li>地址：<span>贵阳市观山湖区185号</span></li>
		    				</ul>
		    				<p class="text-center"><a class="text-primary" href="javascript:void(0)" onclick="modelshow('公司地址','position.jsp',2)">查看地图</a></p>
		    			</div>
		    			
		    			<div class="panel panel-primary margin_top">
		    				<div class="panel-heading ">
		    					<h3 class="">学校排名</h3>
		    				</div>
		    				<ul class="padding-side margin_top1">
		    					<li>武书连：<span>11</span></li>
		    					<li>校友会：<span>5</span></li>
		    					<li>软科：<span>9</span></li>
		    					<li>QS排名：<span>9</span></li>
		    					<li>USNews：<span>8</span></li>
		    				</ul>
		    			</div>
		    		</div>
			    </div>
			    <script type="text/javascript">
					//点赞
				    function like(obj) {
				    	var y;
				    	var o = $(obj).find('img').attr('src');
				    	switch(o) {
				    		case '${pageContext.request.contextPath}/img/xgk/like.png':
				    			y = '${pageContext.request.contextPath}/img/xgk/unlike.png';
				    			$(obj).find('span').text('喜欢');
				    			break;
				    		case '${pageContext.request.contextPath}/img/xgk/unlike.png':
				    			y = '${pageContext.request.contextPath}/img/xgk/like.png';
				    			$(obj).find('span').text('取消喜欢');
				    			break;
				    		default:
				    			y = '${pageContext.request.contextPath}/img/xgk/unlike.png';
				    			$(obj).find('span').text('喜欢');
				    			break;
				    	}
				    	$(obj).find('img').attr('src', y);
				    }
			    	$(document).ready(function() {
			    		$('.tab_head li').click(function(){
			    			$(this).parent().children().removeClass('cur');
			    			$(this).addClass('cur');
			    			var index=$(this).index();
			    			$(this).parents('.tab_list').find('.tab_body').children().removeClass('cur');
			    			$(this).parents('.tab_list').find('.tab_body').children().eq(index).addClass('cur');
			    		})
			    	})
			    </script>
				
			</section>
		    
		</main>

		<!-- 右侧边栏-->
		<c:import url="../public/side_right.jsp"></c:import>
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>	

	</body>

</html>