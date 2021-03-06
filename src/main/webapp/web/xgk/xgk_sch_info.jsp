<%@ page contentType="text/html; charset=utf-8"
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
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/swiper.min.css" /> 
		<link rel="icon" href="${pageContext.request.contextPath}/web/xgk/favicon.ico" type="image/x-icon">
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script> 
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/swper5.0.1.js"></script>		
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/echarts.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/liquidFill.js" type="text/javascript" charset="utf-8"></script>
		<%-- <script src="${pageContext.request.contextPath}/js/web/xgk/sch_chart.js" type="text/javascript" charset="utf-8"></script> --%>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/common.js" type="text/javascript" charset="utf-8"></script> 
		<script src="${pageContext.request.contextPath}/js/jPages.js"></script>		
	</head>	
	<body>
		<c:import url="header.jsp"></c:import>	
 
		<main class="sch_info margin_bot">
			<p class="text-right container"><a class="btn btn-primary" href="javascript:history.go(-1)">< 返回</a></p>
			<section class="" style="background: url(${pageContext.request.contextPath}/img/xgk/sch_info.jpg) no-repeat;background-size: inherit;background-position: 0 -238px;padding-bottom: 2em;">
				<div class="container">
					<div class="row sch_info_head">
						<div class="col-lg-2  col-sm-2 col-md-2 sch_logo">		
								<img src="${COLLEGE_PHOTO_PREFIX}${school.universitiesLogo}" style="width: 100%;border-radius: 10px;"/>
						</div>
						<div class="col-lg-6 col-sm-6 col-md-6 sch_title_info">
							<h3 class="text-white margin_top1">${school.universitiesName}</h3>
							<div class="text-white"><span class="sch_code" id="${school.universitiesCode}">院校代码：</span>${school.universitiesCode}</div>
							<p class="margin_top sch_label" id="universities_attributes">
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
									<c:if test="${school.eId != null}">
										<a class="text-white" id="${school.eId}" href="javascript:;" onclick="like(this)" >喜欢
											<img src="${pageContext.request.contextPath}/img/xgk/like.png"/>
										</a>
									</c:if>
									<c:if test="${school.eId == null}">	
										<a id="" href="javascript:;" onclick="like(this)">喜欢
											<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
										</a>											
									</c:if>								
							</div>
							<!--<div class="collection">
								<a href="" class="glyphicon glyphicon-heart-empty text-danger"></a>
							</div>-->
						</div>
					</div>
				</div>
			</section>
			
			<section class="container panel panel-default sch_info">
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
			    					<h2 class="text-primary fontwei"> <span style="background-image: url(${pageContext.request.contextPath}/img/xgk/1.png);"></span>学校介绍 </h2>
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
			    						<span style="background-image: url(${pageContext.request.contextPath}/img/xgk/2.png);"></span>校园生活
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
														<img src="${COLLEGE_PHOTO_PREFIX}/${img}" style="width: 100%;"/>
													</a>
													</c:forEach>
												</div>
												<!-- Add Pagination -->
												<div class="swiper-pagination"></div>
											</div>
										</div>
										<script type="text/javascript">
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
			    							<p class="">${school.roomAndBoard}</p>
			    						</div>
			    					</div>
			    					<div class="sch_live_polocy padding-side2" style="display: none;" id="scholarships">
			    						<div class="polocy_model padding-side2">
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
				    							<div class="circle">${item[1]}</div>
				    							<p class="text-center">${item[0]}</p>
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
			    						<span style="background-image: url(${pageContext.request.contextPath}/img/xgk/4.png);"></span>男女比例
			    					</h2>
			    					
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
			    						<span style="background-image: url(${pageContext.request.contextPath}/img/xgk/1.png);"></span>院校分数线
			    					</h2>
			    					<p class="">
			    						<select id="ur_province_yxfsx" onchange="select_relation('yxfsx')" >
			    							<c:forEach items="${proviceOption}" var="item" varStatus="vs">
			    									<c:if test="${item != null}">
			    										<option value="${item}">${item}</option>
			    									</c:if>			    								
			    							</c:forEach>
				    					</select>
				    					<select id="subject_type_yxfsx" onchange="select_relation('yxfsx')">
			    							<c:forEach items="${typeOption}" var="item">
			    								<c:if test="${item != null}">
			    									<option value="${item}" >${item}</option>
			    								</c:if>
			    							</c:forEach>
				    					</select>
				    					<select  id="ur_year_yxfsx" onchange="select_relation('yxfsx')">
			    							<c:forEach items="${yearOption}" var="item">
				    							<c:if test="${item != null}">
				    								<option value="${item}">${item}</option>
				    							</c:if>	
			    							</c:forEach>
				    					</select>
				    					<select id="admission_batch_yxfsx" onchange="select_relation('yxfsx')">
			    							<c:forEach items="${batchOption}" var="item">
			    								<c:if test="${item != null}">
			    									<option value="${item}">${item}</option>
			    								</c:if>	
			    							</c:forEach>
				    					</select>
			    					</p>
			    					<div class="">
			    						<table class="table table-hover">
			    					
			    						<script type="text/javascript">
			    						function select_relation(e){
			    							var universities_code = $(".sch_code").attr("id");
			    							var ur_province = $("#ur_province_" + e + " option:selected").val();
			    							var subject_type = $("#subject_type_" + e + " option:selected").val();
			    							var ur_year = $("#ur_year_" + e + " option:selected").val();
			    							var admission_batch = $("#admission_batch_" + e + " option:selected").val();
			    							var data = "universitiesCode=" + universities_code + "&urProvince=" + ur_province 
			    									 + "&subjectType=" + subject_type + "&urYear=" + ur_year
			    									 + "&admissionBatch=" + admission_batch + "&type=" + e;
			    							$.ajax({
			    								url: "${pageContext.request.contextPath}/school/xgk_university_relation.do",
			    								data: data,
			    								type: "POST",
			    								dataType: "json",
			    								success:function(obj){
			    									if(obj.state == 1){		
			    										var content = "";
		    											var list = obj.data;
			    										if(e == "yxfsx"){			    											
			    											for(var i=0; i<list.length; i++){
			    												content += "<tr>";
			    												content += "<td>" + list[i].urProvince + "</td>";
			    												content += "<td>" + list[i].urYear + "</td>";
			    												content += "<td>" + list[i].subjectType + "</td>";
			    												content += "<td>" + list[i].admissionBatch + "</td>";
			    												if(list[i].collegeScoreLineList == null || list[i].collegeScoreLineList.length == 0){
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";
			    												} else {
			    													content += "<td>" + list[i].collegeScoreLineList[0] + "</td>";
			    													content += "<td>" + list[i].collegeScoreLineList[1] + "</td>";
			    													content += "<td>" + list[i].collegeScoreLineList[2] + "</td>";
			    													content += "<td>" + list[i].collegeScoreLineList[3] + "</td>";
			    													content += "<td>" + list[i].collegeScoreLineList[4] + "</td>";
			    													content += "<td>" + list[i].collegeScoreLineList[5] + "</td>";
			    													content += "<td>" + list[i].collegeScoreLineList[6] + "</td>";
			    													content += "<td>" + list[i].collegeScoreLineList[7] + "</td>";
			    												}
			    												content += "</tr>";
			    											}	
			    											$("#sshy2").html(content);
			    											$("div.holder2").jPages({
				    						    			       containerID : "sshy2",
				    						    			       perPage     : 8,
				    						    			       first       : "首页",
				    						    			       previous    : "上一页",
				    						    			       next        : "下一页",
				    						    			       last        : "尾页"
				    						    			 });
			    										}
			    										if(e == "zsjh"){
			    											for(var i=0; i<list.length; i++){			    											
			    												if(list[i].enrollmentPlanList == null || list[i].enrollmentPlanList.length == 0){
			    													content += "<tr>";
				    												content += "<td>" + list[i].urProvince + "</td>";
				    												content += "<td>" + list[i].urYear + "</td>";
				    												content += "<td>" + list[i].subjectType + "</td>";
				    												content += "<td>" + list[i].admissionBatch + "</td>";
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";
			    													content += "</tr>";
			    												} else {
			    													for(var j=0; j<list[i].enrollmentPlanList.length; j++){
			    														content += "<tr>";
					    												content += "<td>" + list[i].urProvince + "</td>";
					    												content += "<td>" + list[i].urYear + "</td>";
					    												content += "<td>" + list[i].subjectType + "</td>";
					    												content += "<td>" + list[i].admissionBatch + "</td>";
				    													content += "<td>" + list[i].enrollmentPlanList[j][1] + "</td>";
				    													content += "<td>" + list[i].enrollmentPlanList[j][2] + "</td>";
				    													content += "<td>" + list[i].enrollmentPlanList[j][3] + "</td>";
				    													content += "<td>" + list[i].enrollmentPlanList[j][4] + "</td>";
				    													content += "</tr>";
			    													}			    													
			    												}
			    												
			    											}
			    											$("#sshy").html(content);
			    											$("div.holder").jPages({
				    						    			       containerID : "sshy",
				    						    			       perPage     : 8,
				    						    			       first       : "首页",
				    						    			       previous    : "上一页",
				    						    			       next        : "下一页",
				    						    			       last        : "尾页"
				    						    			 });
			    										}
			    										if(e == "zylqfsx"){
			    											for(var i=0; i<list.length; i++){			    											
			    												if(list[i].professionalAdmissionScoreList == null || list[i].professionalAdmissionScoreList.length == 0){
			    													content += "<tr>";
				    												content += "<td>" + list[i].urProvince + "</td>";
				    												content += "<td>" + list[i].urYear + "</td>";
				    												content += "<td>" + list[i].subjectType + "</td>";
				    												content += "<td>" + list[i].admissionBatch + "</td>";
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";
			    													content += "<td>-</td>";			    													
			    													content += "</tr>";
			    												} else {
			    													for(var j=0; j<list[i].professionalAdmissionScoreList.length; j++){
			    														content += "<tr>";
					    												content += "<td>" + list[i].urProvince + "</td>";
					    												content += "<td>" + list[i].urYear + "</td>";
					    												content += "<td>" + list[i].subjectType + "</td>";
					    												content += "<td>" + list[i].admissionBatch + "</td>";
				    													content += "<td>" + list[i].professionalAdmissionScoreList[j][1] + "</td>";
				    													content += "<td>" + list[i].professionalAdmissionScoreList[j][2] + "</td>";
				    													content += "<td>" + list[i].professionalAdmissionScoreList[j][3] + "</td>";
				    													content += "<td>" + list[i].professionalAdmissionScoreList[j][4] + "</td>";
				    													content += "<td>" + list[i].professionalAdmissionScoreList[j][5] + "</td>";
				    													content += "</tr>";
			    													}			    													
			    												}
			    												
			    											}
			    											$("#sshy1").html(content);
			    											$("div.holder1").jPages({
				    						    			       containerID : "sshy1",
				    						    			       perPage     : 8,
				    						    			       first       : "首页",
				    						    			       previous    : "上一页",
				    						    			       next        : "下一页",
				    						    			       last        : "尾页"
				    						    			 });
			    										}
			    									}
			    								}
			    							});
			    						}
								
								$(function(){								
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
									var universRelationList = '${school.universRelationList}';
									for(var i=0; i<universRelationList.length; i++){
										//var universRelation = JSON.parse(universRelationList[i]);
										//var college = universRelation.collegeScoreLine;
										//console.log(universRelationList[i].year);//年份
										//console.log(college.平均分);
									}
								});
								
								
							</script>
								<thead>
									<tr><th>省份</th><th>年份</th><th>类型</th><th>录取批次</th>
			    							<th>最低分</th><th>平均分</th><th>最高分</th><th>投档线</th><th>线差</th><th>最低位次</th><th>计划人数</th><th>录取人数</th></tr>
								</thead>
								<tbody id="sshy2">
			    							<c:forEach items="${school.universRelationList}" var="item" >
			    								<tr>
				    								<td>${item.urProvince}</td>
				    								<td>${item.urYear}</td>
				    								<td>${item.subjectType}</td>
				    								<td>${item.admissionBatch}</td>
				    								<c:if test="${empty item.collegeScoreLineList}">
				    									<td>-</td>
				    									<td>-</td>
				    									<td>-</td>
				    									<td>-</td>
				    									<td>-</td>
				    									<td>-</td>
				    									<td>-</td>
				    									<td>-</td>
				    								</c:if>
				    								<c:if test="${not empty item.collegeScoreLineList}">
				    									<td>${item.collegeScoreLineList[0]}</td>
				    									<td>${item.collegeScoreLineList[1]}</td>
				    									<td>${item.collegeScoreLineList[2]}</td>
				    									<td>${item.collegeScoreLineList[3]}</td>
				    									<td>${item.collegeScoreLineList[4]}</td>
				    									<td>${item.collegeScoreLineList[5]}</td>
				    									<td>${item.collegeScoreLineList[6]}</td>
				    									<td>${item.collegeScoreLineList[7]}</td>
				    								</c:if>
			    								</tr>								
			    							</c:forEach>
			    							</tbody>			    			
			    						</table>
			    						<div class="col-xs-12 bg-white p-10 m-t-10 t-a-c"style="box-shadow: 0px 0px 0px #bdb8b8;">
											<div class="holder2" style="text-align: center;"></div>
										</div>	
			    						<p class="text-muted margin_top1">"-"表示暂无该项数据或学校概念无招生</p>
			    					</div>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(${pageContext.request.contextPath}/img/xgk/2.png);"></span>招生计划
			    					</h2>
			    					<p class="">
			    					<select id="ur_province_zsjh" onchange="select_relation('zsjh')" >
			    							<c:forEach items="${proviceOption}" var="item" varStatus="vs">		
			    								<c:if test="${item != null}">
			    									<option value="${item}">${item}</option>	
			    								</c:if>		    								
			    							</c:forEach>
				    					</select>
				    					<select id="subject_type_zsjh" onchange="select_relation('zsjh')">
			    							<c:forEach items="${typeOption}" var="item">
			    								<c:if test="${item != null}">
			    									<option value="${item}">${item}</option>	
			    								</c:if>
			    							</c:forEach>
				    					</select>
				    					<select  id="ur_year_zsjh" onchange="select_relation('zsjh')">
			    							<c:forEach items="${yearOption}" var="item">
			    								<c:if test="${item != null}">
			    									<option value="${item}">${item}</option>	
			    								</c:if>
			    							</c:forEach>
				    					</select>
				    					<select id="admission_batch_zsjh" onchange="select_relation('zsjh')">
			    							<c:forEach items="${batchOption}" var="item">
			    								<c:if test="${item != null}">
			    									<option value="${item}">${item}</option>	
			    								</c:if>
			    							</c:forEach>
				    					</select>			    						
			    					</p>
			    					<div class="">
			    						<table class="table table-hover" >
			    							<thead>
			    							<tr><th>省份</th><th>年份</th><th>类型</th><th>录取批次</th><th>专业名称</th><th>学科门类</th><th>二级门类</th><th>计划招生</th></tr>
			    							</thead>
			    							<tbody id="sshy">			    							
			    							<c:forEach items="${school.universRelationList}" var="item" >
			    								<c:forEach items="${item.enrollmentPlanList }" var="it">
			    									<tr>
			    										<c:if test="${empty it}">
			    											<td id="">${item.urProvince}</td>
			    										</c:if>
			    										<c:if test="${not empty it}">
			    											<td id="${it[0] }">${item.urProvince}</td>
			    										</c:if>
				    									<td>${item.urYear}</td>
				    									<td>${item.subjectType}</td>
				    									<td>${item.admissionBatch}</td>
				    									<c:if test="${empty it}">
					    									<td>-</td>
					    									<td>-</td>
					    									<td>-</td>
					    									<td>-</td>
				    									</c:if>
				    									<c:if test="${not empty it}">
					    									<td>${it[1]}</td>
					    									<td>${it[2]}</td>
					    									<td>${it[3]}</td>
					    									<td>${it[4]}</td>
				    									</c:if>
			    									</tr>								
			    								</c:forEach>					
			    							</c:forEach>			    											
			    							</tbody>
			    						</table>	
			    						
			    							<div class="col-xs-12 bg-white p-10 m-t-10 t-a-c"style="box-shadow: 0px 0px 0px #bdb8b8;">
											<div class="holder" style="text-align: center;"></div>
										</div>	    						
			    					</div> 
			    					<!-- 分页 -->	
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei" style="display: block;">
			    						<span style="background-image: url(${pageContext.request.contextPath}/img/xgk/3.png);"></span>专业录取分数线
			    					</h2>
			    					<p class="">
			    						<select id="ur_province_zylqfsx" onchange="select_relation('zylqfsx')" >
			    							<c:forEach items="${proviceOption}" var="item" varStatus="vs">			    								
			    								<c:if test="${item != null}">
			    									<option value="${item}">${item}</option>	
			    								</c:if>			    								
			    							</c:forEach>
				    					</select>
				    					<select id="subject_type_zylqfsx" onchange="select_relation('zylqfsx')">
			    							<c:forEach items="${typeOption}" var="item">
			    								<c:if test="${item != null}">
			    									<option value="${item}">${item}</option>	
			    								</c:if>
			    							</c:forEach>
				    					</select>
				    					<select  id="ur_year_zylqfsx" onchange="select_relation('zylqfsx')">
			    							<c:forEach items="${yearOption}" var="item">
			    								<c:if test="${item != null}">
			    									<option value="${item}">${item}</option>	
			    								</c:if>
			    							</c:forEach>
				    					</select>
				    					<select id="admission_batch_zylqfsx" onchange="select_relation('zylqfsx')">
			    							<c:forEach items="${batchOption}" var="item">
			    								<c:if test="${item != null}">
			    									<option value="${item}">${item}</option>	
			    								</c:if>
			    							</c:forEach>
				    					</select>			    						
			    					</p>
			    					<div class="">
			    						<table class="table table-hover">
			    						<thead>
			    							<tr><th>省份</th><th>年份</th><th>类型</th><th>录取批次</th><th>专业名称</th><th>学科门类</th><th>录取人数</th><th>录取平均分</th><th>录取最低分</th></tr>
			    						
			    						</thead>
			    						<tbody id="sshy1">
			    							<c:forEach items="${school.universRelationList}" var="item" >		
			    								<c:forEach items="${item.professionalAdmissionScoreList}" var="it">
			    									<tr>
				    									<td id="${it[0]}">${item.urProvince}</td>
				    									<td>${item.urYear}</td><td>${item.subjectType}</td>
				    									<td>${item.admissionBatch}</td>
				    									<td>${it[1]}</td>
				    									<td>${it[2]}</td>
				    									<td>${it[3]}</td>
				    									<td>${it[4]}</td>
				    									<td>${it[5]}</td>
			    									</tr>								
			    								</c:forEach>
			    							</c:forEach>
			    						</tbody>
			    						</table>
			    						<div class="col-xs-12 bg-white p-10 m-t-10 t-a-c"style="box-shadow: 0px 0px 0px #bdb8b8;">
											<div class="holder1" style="text-align: center;"></div>
										</div>	
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
			    					<div class="circle_list margin_top" style="height: 140px;">
			    						<c:forEach items="${teachingResearch }" var="item" varStatus="cc">
				    						<div class="">
				    							<div class="circle">${item[1]}</div>
				    							<p class="text-center">${item[0]}</p>
				    						</div>
				    					</c:forEach>
			    					</div>
			    					<%-- <div class="border_major flex_jcstart w_ball" style="width: 100%;">
			    						<c:forEach items="${teachingResearch }" var="item" varStatus="cc">
			    							<div class="">
				    							<div class="" id="water${cc.count}" style="width: 160px;height: 160px;"></div>
				    							<p class="text-center">${item[0]}</p>
				    						</div>
			    						</c:forEach>
			    					</div> --%>
			    					<div></div>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(${pageContext.request.contextPath}/img/xgk/2.png);"></span>师资力量
			    					</h2>
			    					<div class="border_major">
			    						${school.teachersResources}
			    					</div>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(${pageContext.request.contextPath}/img/xgk/3.png);"></span>重点专业
			    					</h2>
			    					<table class="table table-bordered">
			    						<thead>
			    							<tr>
			    								<td>国家特色专业<div>双一流专业</div></td>
				    							<td style="text-align:left;">	
				    								<c:forEach items="${coreSpecialty}" var="item">
				    									<a class="text-primary" href="${pageContext.request.contextPath}/school/xgk_specialty_detail.do?specialtyId=${item[0]}" id="${item[0]}">${item[1]}&emsp;</a>
				    								</c:forEach>
				    								<!-- TODO跳转专业 -->
				    							</td>
				    						</tr>
			    					</table>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(${pageContext.request.contextPath}/img/xgk/3.png);"></span>重点学科
			    					</h2>
			    					<table class="table table-bordered">
			    						<c:forEach items="${coreSubject}" var="item">
			    							<tr><td>${item[0][0]}</td><td style="text-align:left;">
										<c:forEach items="${item[1]}" var="it" >
											<c:forEach items="${it}" var="i" >
												<a>${i}&nbsp;&nbsp;&nbsp;&nbsp;</a>
											</c:forEach>											
										</c:forEach>
										</td></tr>
									</c:forEach>
			    					</table>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei">
			    						<span style="background-image: url(${pageContext.request.contextPath}/img/xgk/3.png);"></span>重点实验室及科研中心
			    					</h2>
			    					<table class="table table-bordered" border="" cellspacing="" cellpadding="">
			    						<c:forEach items="${coreLaboratoriesList}" var="item">
			    							<tr><td>${item[0][0]}</td>
			    						<td style="text-align:left;">
										<c:forEach items="${item[1]}" var="it" >
											<c:forEach items="${it}" var="i" >
												<a>${i}&nbsp;&nbsp;&nbsp;&nbsp;</a>
											</c:forEach>											
										</c:forEach>
										</td></tr>
									</c:forEach>
			    					</table>
			    				</div>
				    		</div>
			    		</div>
			    		<div class="tab_b2">
			    			<div class="major_info margin_bot">
				    			<div class="items margin_top">
			    					<h2 class="text-primary fontwei margin_bot1">
			    						<span style="background-image: url(${pageContext.request.contextPath}/img/xgk/1.png);"></span>招生简章
			    					</h2>
			    					<p class="">
				    					<select name="">
			    							<c:forEach items="${yearOption}" var="item">
			    								<c:if test="${item != null}">
			    									<option value="${item}">${item}</option>
			    								</c:if>
			    							</c:forEach>
				    					</select>
				    					
			    					</p>
			    					<div class="panel panel-default">
			    						<ul class="list-group list_article">
			    							<c:forEach items="${school.universityAdmissionList}" var="item" varStatus="vs">
			    								<li class="list-group-item">
									        	<a href="javascript:;" id="${item.uaId};1" onclick="modelshow($(this).html(),$('#list${vs.count}').html());browse(this)">${school.universitiesName}${item.uaYear}年招生简章</a>
									        	<span class="text-right text-muted">
									        		<span>发布时间<fmt:formatDate value="${item.pubdate}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
									        		<c:if test="${item.brochureBrowseCount > 10000}">
									        			<span>浏览${item.brochureBrowseCount/10000}w</span>
									        		</c:if>
									        		<c:if test="${item.brochureBrowseCount <= 10000}">
									        			<span>浏览${item.brochureBrowseCount}</span>
									        		</c:if>
									        	</span>
									        </li>
			    							</c:forEach>
										</ul>
			    					</div>
			    				</div>
			    				<div class="items margin_top">
			    					<h2 class="text-primary fontwei margin_bot1">
			    						<span style="background-image: url(${pageContext.request.contextPath}/img/xgk/2.png);"></span>招生章程
			    					</h2>
			    					<p class="">
			    			  			<select name="">
			    							<c:forEach items="${yearOption}" var="item">
			    								<c:if test="${item != null}">
			    									<option value="${item}">${item}</option>
			    								</c:if>
			    							</c:forEach>
				    					</select>
			    					</p>
			    					<div class="panel panel-default">
			    						<ul class="list-group list_article">
			    							<c:forEach items="${school.universityAdmissionList}" var="item" varStatus="vs">
			    								<li class="list-group-item">
									        	<a href="javascript:;" id="${item.uaId};2" onclick="modelshow($(this).html(),$('#set${vs.count}').html());browse(this)">${school.universitiesName}${item.uaYear}年招生章程</a>
									        	<span class="text-right text-muted">
									        		<span>发布时间<fmt:formatDate value="${item.pubdate}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
									        		<c:if test="${item.regulationsBrowseCount > 10000}">
									        			<span>浏览${item.regulationsBrowseCount/10000}w</span>
									        		</c:if>
									        		<c:if test="${item.regulationsBrowseCount <= 10000}">
									        			<span>浏览${item.regulationsBrowseCount}</span>
									        		</c:if>
									        	</span>
									        </li>
			    							</c:forEach>
										</ul>
			    					</div>
			    					<script type="text/javascript">
			    						function browse(e){
			    							var id_type = $(e).attr("id").split(";");
			    							$.ajax({
			    								url: "${pageContext.request.contextPath}/school/xgk_admission_browse.do",
			    								data:"uaId=" + id_type[0] + "&type=" + id_type[1],
			    								type:"POST",
			    								dataType:"json",
			    								success:function(obj){
			    									console.log(obj.message);
			    								}
			    							});
			    						}
			    					</script>
			    				</div>
			    				<c:forEach items="${school.universityAdmissionList }" var="item" varStatus="vs">
			    					<div id="list${vs.count}" class="" style="display: none;">
									<div class="padding-side2 margin_top1">
										<h2 class="text-center fontwei">${school.universitiesName}${item.uaYear}年招生简章</h2>
										<div class="margin_top2">
											${item.admissionsBrochure}
										</div>
									</div>
								</div>
								<div id="set${vs.count}" class="" style="display: none;">
									<div class="padding-side2 margin_top1">
										<h2 class="text-center fontwei">${school.universitiesName}${item.uaYear}年招生章程</h2>
										${item.admissionsRegulations}
										<div class="margin_top2">
											${item.admissionsRegulations}
										</div>
									</div>
								</div>
			    				</c:forEach>
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
		    					<p class="text-center"><!-- <a class="text-primary" href="javascript:void(0)">查看地图</a> --></p>		    				  				
		    			</div>
		    			<div class="margin_top1" id="positionBox" style="">
							<!--百度地图容器onclick="modelshow('学校地址',$('#positionBox'),1)"-->
							<div style="width:100%;height:366px;border:#ccc solid 1px;" id="dituContent"></div>
							<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
						</div>
		    		</div>
		    		
			    </div>
			    <script type="text/javascript">
			    function like(obj){
				    	var y;
				    	var o = $(obj).find('img').attr('src');
				    	switch(o) {
				    		case '${pageContext.request.contextPath}/img/xgk/like.png':
				    			y = '${pageContext.request.contextPath}/img/xgk/unlike.png';
				    			$(obj).find('span').text('取消喜欢');
				    			unlove(obj);		    			
				    			break;
				    		case '${pageContext.request.contextPath}/img/xgk/unlike.png':
				    			y = '${pageContext.request.contextPath}/img/xgk/like.png';
				    			$(obj).find('span').text('喜欢');	
				    			love(obj);				    			
				    			break;
				    		default:
				    			y = '${pageContext.request.contextPath}/img/xgk/unlike.png';
				    			$(obj).find('span').text('喜欢');
				    			break;
				    	}
				    	$(obj).find('img').attr('src', y);
			    } 
			    
			     function love(obj){
			    	if('${uid}' != ''){				    				
		    			var data = "eCode=${school.universitiesCode}&eName=${school.universitiesName}&eLogo=${school.universitiesLogo}&eType=0";
		    			$.ajax({
		    				url: "${pageContext.request.contextPath}/ens/hqt_add_enshrine.do",
		    				data:data,
		    				type:"POST",
		    				dataType:"json",
		    				success:function(obj){
		    					if(obj.state == 0){
		    						layer.msg(obj.message,{icon:2,time:1000});
		    					}else{
		    						$(obj).attr("id",obj.data.eId);
		    						layer.msg(obj.message,{icon:6,time:1000});
		    						
		    					}
		    				}	
	    				});
    					}		
		    		}
			     function unlove(obj){
		    			if($(obj).attr("id") != ''){					    			
			    			$.ajax({
			    				url: "${pageContext.request.contextPath}/ens/hqt_delete_enshrine.do",
			    				data: "eId=" + $(obj).attr("id"),
			    				type: "POST",
			    				dataType:"json",
			    				success:function(obj){
			    					if(obj.state == 0){
			    						layer.msg(obj.message,{icon:2,time:1000});
			    					}else{
			    						layer.msg(obj.message,{icon:6,time:1000});
			    					}
			    				}	
			    			});
		    			}	
	    			} 	
				   
					
			    	$(document).ready(function() {			    		
			    		$('.tab_head li').click(function(){
			    			$(this).parent().children().removeClass('cur');
			    			$(this).addClass('cur');
			    			var index=$(this).index();
			    			$(this).parents('.tab_list').find('.tab_body').children().removeClass('cur');
			    			$(this).parents('.tab_list').find('.tab_body').children().eq(index).addClass('cur');
			    			$("div.holder").jPages({
			    			       containerID : "sshy",
			    			       perPage     : 8,
			    			       first       : "首页",
			    			       previous    : "上一页",
			    			       next        : "下一页",
			    			       last        : "尾页"
			    			 });
			    			$("div.holder1").jPages({
			    			       containerID : "sshy1",
			    			       perPage     : 8,
			    			       first       : "首页",
			    			       previous    : "上一页",
			    			       next        : "下一页",
			    			       last        : "尾页"
			    			 });
			    			$("div.holder2").jPages({
			    			       containerID : "sshy2",
			    			       perPage     : 8,
			    			       first       : "首页",
			    			       previous    : "上一页",
			    			       next        : "下一页",
			    			       last        : "尾页"
			    			 });
			    		})
			    	})
			    </script>
			</section>
			<div class="school_address hide">${school.address}</div>
		</main>
			<script type="text/javascript">
			//创建和初始化地图函数：
			function initMap() {
				createMap(); //创建地图
				setMapEvent(); //设置地图事件
				addMapControl(); //向地图添加控件
				addMarker(); //向地图中添加marker
			}
			//str = str.replace(/[\r\n]/g,"");
			//创建地图函数：
			function createMap() {
				var map = new BMap.Map("dituContent"); //在百度地图容器中创建一个地图
				// 创建地址解析器实例     
				var myGeo = new BMap.Geocoder();    
				// 将地址解析结果显示在地图上，并调整地图视野  
				var aa=$(".school_address").text();
				bb=aa.replace(/[\r\n]/g,"");
				myGeo.getPoint(bb, function(point){ //${school.address}
//							console.log(Position)
				          if (point) {      
				              map.centerAndZoom(point, 16);
				              map.addOverlay(new BMap.Marker(point));      
				          }      
				      }, "${school.province}");
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
				content: "我的备注",
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
				var icon = new BMap.Icon("http://api.map.baidu.com/lbsapi/creatmap/images/us_mk_icon.png", new BMap.Size(json.w, json.h), {
					imageOffset: new BMap.Size(-json.l, -json.t),
					infoWindowOffset: new BMap.Size(json.lb + 5, 1),
					offset: new BMap.Size(json.x, json.h)
				})
				return icon;
			}
	
			initMap(); //创建和初始化地图
		</script>
		<!-- 右侧边栏-->
		<c:import url="../public/side_right.jsp"></c:import>
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>	

	</body>

</html>