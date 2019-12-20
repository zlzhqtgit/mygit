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
	<%-- 	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script> --%>
	</head>
	<body>
		<c:import url="header.jsp"></c:import>

		<main class="sch_info margin_bot">
			<p class="text-right container"><a class="btn btn-primary" href="">< 返回</a></p>
			<section class="" style="background: url(${pageContext.request.contextPath}/img/xgk/bannerBg.png) no-repeat;background-size: inherit;background-position: 0 -238px;padding-bottom: 2em;">
				<div class="container">
					<div class="row sch_info_head">
						<div class="col-lg-2  col-sm-2 col-md-2 sch_logo">		
								<img src="${pageContext.request.contextPath}/${school.universitiesLogo}" style="width: 100%;border-radius: 10px;"/>
						</div>
						<div class="col-lg-6 col-sm-6 col-md-6 sch_title_info">
							<h3 class="text-white margin_top1">${school.universitiesName }</h3>10001
							
							<p class="margin_top" id="universities_attributes">
								<span class="btn btn-default">本科</span>
								<span class="btn btn-default">双一流</span>
								<span class="btn btn-default">211</span>
							</p>
							<p class="clearfix text-white margin_top">
								<span class="pull-left">学校官网：${school.universitiesWebsite}</span>
								<span class="pull-right">招生电话：${school.universitiesPhone}</span>
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
		    								${school.universitiesIntroduction}
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
													<c:forEach items="${images}" var="img">
														<a href="javascript:void(0)" class="swiper-slide" >
														<img src="${pageContext.request.contextPath}/${img}" style="width: 100%;"/>
													</a>
													</c:forEach>
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
			    						<a class="two_box pull-left border-primary" href="javascript:void(0)" onclick="modelshow('食宿条件',$('#room_and_board'),1)">
			    							<div class="padding-side">
			    								<h3 class="">食宿条件</h3>
			    								<p class="">查看该校的食堂和宿舍情况</p>
			    							</div>
			    							<span class="glyphicon glyphicon-chevron-right"></span>
			    						</a>
			    						<a class="two_box pull-left" href="javascript:void(0)" onclick="modelshow('奖助学金',$('#scholarships'),1)">
			    							<div class="padding-side">
			    								<h3 class="">奖助学金</h3>
			    								<p class="">查看该校的奖学金和贫困生助学金情况</p>
			    							</div>
			    							<span class="glyphicon glyphicon-chevron-right"></span>
			    						</a>
			    					</div>
			    					
			    					<div class="sch_live_polocy padding-side2" style="display: none;" id="room_and_board">
			    						<div class="polocy_model padding-side2">
			    							<h2 class="">食堂和宿舍情况</h2>
			    							<p class="">${school.roomAndBoard}</p>
			    						</div>
			    					</div>
			    					<div class="sch_live_polocy padding-side2" style="display: none;" id="scholarships">
			    						<div class="polocy_model padding-side2">
			    							<h2 class="">奖助学金</h2>
			    							<p class="">${school.scholarships}</p>
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
			    							<c:forEach items="${teachingResearch}" var="item">
			    								<div class="">
				    							<div class="circle">${item[1] }</div>
				    							<p class="text-center">${item[0] }</p>
				    						</div>
			    							</c:forEach>	
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
			    					<script type="text/javascript">
								
								$(function(){
									console.log('${school.address}');
									var attributes  = '${school.universitiesAttributes}';
									if( attributes != ""){
										var attributesList = JSON.parse(attributes);
										var universities_attributes = "";
										for(var i=0; i<attributesList.length; i++){
											universities_attributes += '<span class="btn btn-default">' + attributesList[i] + '</span>';
										}
										$("#universities_attributes").html(universities_attributes);
									}
									var maleFemaleRatio = '${school.maleFemaleRatio}';
									var maleRatio = maleFemaleRatio.split(":")
									$("#male").html(maleRatio[0] + "%");
									$("#ratio").html(maleRatio[1] + "%");
								});
								
								
							</script>
			    					<div class="percentage margin_top">
			    						<div class="text-primary">
			    							<img src="${pageContext.request.contextPath}/img/xgk/male.png"/>
			    							<span class="male_percent" id="male">56%</span>
			    						</div>
			    						<div class="percentage_con_box">
			    							<div class="percentage_con">
				    							<div class="pmale" style=""></div>
				    						</div>
			    						</div>
			    						<div class="text-danger">
			    							<span class="" id="ratio"> 44% </span>
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
		    					<li>创建时间：<span>${school.establishedTime }</span></li>
		    					<li>办学性质：<span>${school.universitiesNature }</span></li>
		    					<li>隶属于：<span>${school.belongTo}</span></li>
		    					<li>地址：<span>${school.address}</span></li>
		    				</ul>
		    				<p class="text-center"><a class="text-primary" href="javascript:void(0)" onclick="modelshow('公司地址',$('#positonBox'),1)">查看地图</a></p>
		    			</div>
		    			<div class="" id="positonBox" style="display:none;">
							<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
							<!--百度地图容器-->
							<div style="width:796px;height:456px;border:#ccc solid 1px;" id="dituContent"></div>
							<script type="text/javascript">
							//创建和初始化地图函数：
							function initMap() {
								createMap(); //创建地图
								setMapEvent(); //设置地图事件
								addMapControl(); //向地图添加控件
								addMarker(); //向地图中添加marker
							}
					
							//创建地图函数：
							function createMap() {
								var map = new BMap.Map("dituContent"); //在百度地图容器中创建一个地图
								var myGeo = new BMap.Geocoder(); 
								// 将地址解析结果显示在地图上，并调整地图视野  
								myGeo.getPoint('${school.address}', function(point){
							          if (point) {
							              map.centerAndZoom(point, 14);
							              map.addOverlay(new BMap.Marker(point));
							          }      
							      }, '${school.province}');
								//var point = new BMap.Point(106.649765, 26.617046); //定义一个中心点坐标
								//map.centerAndZoom(point, 18); //设定地图的中心点和坐标并将地图显示在地图容器中
								window.map = map; //将map变量存储在全局
							}
					
							//地图事件设置函数：
							function setMapEvent() {
								map.enableDragging(); //启用地图拖拽事件，默认启用(可不写)
								map.enableScrollWheelZoom(); //启用地图滚轮放大缩小
								map.enableDoubleClickZoom(); //启用鼠标双击放大，默认启用(可不写)
								map.enableKeyboard(); //启用键盘上下左右键移动地图
							}
					
							//地图控件添加函数：
							function addMapControl() {
								//向地图中添加缩放控件
								var ctrl_nav = new BMap.NavigationControl({
									anchor: BMAP_ANCHOR_TOP_LEFT,
									type: BMAP_NAVIGATION_CONTROL_LARGE
								});
								map.addControl(ctrl_nav);
								//向地图中添加缩略图控件
								var ctrl_ove = new BMap.OverviewMapControl({
									anchor: BMAP_ANCHOR_BOTTOM_RIGHT,
									isOpen: 1
								});
								map.addControl(ctrl_ove);
								//向地图中添加比例尺控件
								var ctrl_sca = new BMap.ScaleControl({
									anchor: BMAP_ANCHOR_BOTTOM_LEFT
								});
								map.addControl(ctrl_sca);
							}
					
							//标注点数组
							var markerArr = [{
								title: "贵州好前途教育科技有限公司",
								content: "贵阳市观山湖区世纪金源国际财富中心B栋10楼",
								point: "106.649734|26.617006",
								isOpen: 0,
								icon: {
									w: 21,
									h: 21,
									l: 0,
									t: 0,
									x: 6,
									lb: 5
								}
							}];
							//创建marker
							function addMarker() {
								for(var i = 0; i < markerArr.length; i++) {
									var json = markerArr[i];
									var p0 = json.point.split("|")[0];
									var p1 = json.point.split("|")[1];
									var point = new BMap.Point(p0, p1);
									var iconImg = createIcon(json.icon);
									var marker = new BMap.Marker(point, {
										icon: iconImg
									});
									var iw = createInfoWindow(i);
									var label = new BMap.Label(json.title, {
										"offset": new BMap.Size(json.icon.lb - json.icon.x + 10, -20)
									});
									marker.setLabel(label);
									map.addOverlay(marker);
									label.setStyle({
										borderColor: "#808080",
										color: "#333",
										cursor: "pointer"
									});
					
									(function() {
										var index = i;
										var _iw = createInfoWindow(i);
										var _marker = marker;
										_marker.addEventListener("click", function() {
											this.openInfoWindow(_iw);
										});
										_iw.addEventListener("open", function() {
											_marker.getLabel().hide();
										})
										_iw.addEventListener("close", function() {
											_marker.getLabel().show();
										})
										label.addEventListener("click", function() {
											_marker.openInfoWindow(_iw);
										})
										if(!!json.isOpen) {
											label.hide();
											_marker.openInfoWindow(_iw);
										}
									})()
								}
							}
							//创建InfoWindow
							function createInfoWindow(i) {
								var json = markerArr[i];
								var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>" + json.content + "</div>");
								return iw;
							}
							//创建一个Icon
							function createIcon(json) {
								var icon = new BMap.Icon(" http://api.map.baidu.com/lbsapi/creatmap/images/us_mk_icon.png", new BMap.Size(json.w, json.h), {
									imageOffset: new BMap.Size(-json.l, -json.t),
									infoWindowOffset: new BMap.Size(json.lb + 5, 1),
									offset: new BMap.Size(json.x, json.h)
								})
								return icon;
							}
					
							initMap(); //创建和初始化地图
						</script>
					</div>
		    			<div class="panel panel-primary margin_top">
		    				<div class="panel-heading ">
		    					<h3 class="">学校排名</h3>
		    				</div>
		    				<ul class="padding-side margin_top1">
		    					<li>武书连：<span>${school.martialBookAssociationRanking }</span></li>
		    					<li>校友会：<span>${school.alumniAssociationRanking }</span></li>
		    					<li>软科：<span>${school.softScienceRanking }</span></li>
		    					<li>QS排名：<span>${school.quacquarelliSymondsRanking }</span></li>
		    					<li>USNews：<span>${school.usNewsRanking }</span></li>
		    				</ul>
		    			</div>
		    		</div>
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