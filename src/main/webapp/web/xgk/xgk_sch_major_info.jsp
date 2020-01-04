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
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/web/xgk/echarts.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
	<script src="${pageContext.request.contextPath}/js/jPages.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/province.js"></script>
</head>

<body>
<c:import url="header.jsp"></c:import>

<main class="major_pro">
	<section class="container">
		<p class="text-right"><a class="btn btn-primary" href="javascript:history.go(-1)">返回</a></p>
		<div class="panel panel-default" style="padding-top: 0;">
			<div class="panel-heading" style="border-top-left-radius: 20px;border-top-right-radius: 20px;">
				<div class="row">
					<div class="col-md-8 col-lg-8 col-sm-8">
						<h2 class="inline_block fontwei">${specialty.specialtyName}</h2>
						<div class="padding-side inline_block">
							<span>${specialty.specialtyMajorName}&emsp;&emsp;</span><span>${specialty.specialtyDisciplines }</span>
						</div>
					</div>
					<div class="col-md-4 col-lg-4 col-sm-4 collection margin_top">										
							<div class="">
								<a href="javascript:void(0)" onclick="test()"><span class=""><img src="${pageContext.request.contextPath}/img/xgk/ic3.png"/></span>测评选专业</a>
							</div>						
						<script type="text/javascript">
							function test(){
								layer.confirm('请在以下测评内容，选择一项进行测评！', {
									btn: ['学科探索','认知测评','潜能测评'] //
									,btn3: function(index, layero){
										location.href = "${pageContext.request.contextPath}/sub/xgk_subject_score.do"
									}
								}, function(index, layero){
									location.href = "${pageContext.request.contextPath}/sub/xgk_subject_score.do"
								}, function(index){
									location.href = "${pageContext.request.contextPath}/cp/xgk_choice.do"
								});
							}
						</script>
						<div class="like">							
								<c:if test="${school_like != null}">
								<a id="${school_like.eId}" href="javascript:;" onclick="like(this)" >&emsp;&emsp;喜欢
									<img src="${pageContext.request.contextPath}/img/xgk/like.png"/>
								</a>
							</c:if>
							<c:if test="${school_like == null}">
								<a id="" href="javascript:;" onclick="like(this)">&emsp;&emsp;喜欢
									<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
								</a>
							</c:if>													
						</div>
					</div>
				</div>
				<p class="" id="specialty_id" name="${specialty.specialtyId}">国际代码：${specialty.specialtyId}（不可用于填报）</p>
			</div>
			<div class="tab_list">
				<ul class="tab_head margin_top clearfix">
						<li class="cur">专业概况</li>
						<li>开设院校</li>
						<li class="">就业概况</li>				
				</ul>
				<div class="tab_body padding-side2">
					<div class="tab_b1 cur">
						<div class="major_info">
							<div class="items margin_top">
								<h2 class="text-primary fontwei">
									<span style="background-image: url(../../img/xgk/1.png);"></span>专业概览
								</h2>
								<div class="circle_list">
									<div class="">
										<img src="${pageContext.request.contextPath}/img/xgk/ic1.png" style=""/>
										<span class="text-center padding-side">
				    								<div class="">${specialty.specialtyEducation }</div>
				    								<div class="">学历层次</div>
				    							</span>
									</div>
									<div class="">
										<img src="${pageContext.request.contextPath}/img/xgk/ic2.png" style=""/>
										<span class="text-center padding-side">
				    								<div class="">${specialty.studyDuration }</div>
				    								<div class="">修业年限</div>
				    							</span>
									</div>
									<div class="">
										<img src="${pageContext.request.contextPath}/img/xgk/ic4.png" style=""/>
										<span class="text-center padding-side">
				    								<div class="">${specialty.bachelorDegree }</div>
				    								<div class="">授予学位</div>
				    							</span>
									</div>
									<div class="">
										<img src="${pageContext.request.contextPath}/img/xgk/ic5.png" style=""/>
										<span class="text-center padding-side">
				    								<div class="">${specialty.maleFemaleRatio}</div>
				    								<div class="">男女比例</div>
				    							</span>
									</div>
								</div>
							</div>
							<div class="items margin_top">
								<h2 class="text-primary fontwei">
									<span style="background-image: url(../../img/xgk/2.png);"></span>专业介绍
								</h2>
								<ul class="padding-side2" style="list-style: disc;">
									<li>
										<h4 class="fontwei">专业简介</h4>
										<div class="">
											${specialty.specialtySummary}
										</div>
									</li>
									<li>
										<h4 class="fontwei">培养目标</h4>
										<div class="">
											${specialty.specialtyObjective}
										</div>
									</li>
									<li>
										<h4 class="fontwei">培养要求</h4>
										<div class="">
											${specialty.trainRequirement}
										</div>
									</li>
									<li>
										<h4 class="fontwei">学科要求</h4>
										<div class="">
											${specialty.subjectRequirement}
										</div>
									</li>
									<li>
										<h4 class="fontwei">知识能力</h4>
										<div class="">
											${specialty.knowledgeAbility }
										</div>
									</li>
								</ul>
							</div>
							<div class="items margin_top">
								<h2 class="text-primary fontwei">
									<span style="background-image: url(../../img/xgk/3.png);"></span>主要课程
								</h2>
								<div class="padding-side">
									<c:if test="${not empty majorCourses}">
										<c:forEach items="${majorCourses}" var="item">
											<a class="padding-side">${item }</a>
										</c:forEach>
									</c:if>
									<c:if test="${empty majorCourses}">
										<a>暂无相关数据</a>
									</c:if>

								</div>
							</div>
							<div class="items margin_top">
								<h2 class="text-primary fontwei">
									<span style="background-image: url(../../img/xgk/4.png);"></span>考研方向
								</h2>
								<div class="padding-side2">${specialty.postgraduateDirection}</div>
							</div>
						</div>
					</div>
					<div class="tab_b2">
						<div class="major_info">
							<div class="items major_panhead margin_top">
								<div class="panel panel-default" style="padding: 1em 2em;">
									<h2 class="text-primary fontwei">
										<span style="background-image: url(../../img/xgk/1.png);"></span>开设此专业的学校(推荐)
									</h2>																	
									<div class="">
										<div class="margin_top">
											考生生源地：
											<select name="" id="er_year">
												<option value="">全部</option>
												<option value="2017">2017</option>
												<option value="2018">2018</option>
												<option value="2019">2019</option>
												<option value="2020" selected="selected">2020</option>
												<option value="2021">2021</option>
												<option value="2022">2022</option>
												<option value="2023">2023</option>
												<option value="2024">2024</option>
												<option value="2025">2025</option>
<%--												<c:if test="${not empty er_yaerList}">--%>
<%--													<c:forEach items="${er_yaerList }" var="item">--%>
<%--														<option value="${item}">${item}</option>--%>
<%--													</c:forEach>--%>
<%--												</c:if>--%>
<%--												<c:if test="${empty er_yaerList}">--%>
<%--													<option value="">暂无</option>--%>
<%--												</c:if>--%>
											</select>
											<select name="" id="hhhprovince">
												<option value="">暂无</option>
												<%--<c:if test="${not empty er_provinceList}">
													<c:forEach items="${er_provinceList }" var="item">
														<option value="${item}">${item}</option>
													</c:forEach>
												</c:if>
												<c:if test="${empty er_provinceList}">
													<option value="">暂无</option>
												</c:if>--%>
											</select>
											<!-- <select name="">
                                                <option value="">6选3</option>
                                            </select> -->
										</div>
										<div class="sch_province flex_jcstart margin_top1">
					    							<span id="sch_province">
					    								院校省份：
					    							</span>
											<ul id="sch_ur">
												<li class="cur"><a>全部</a></li>
												<c:forEach items="${sch_provinceList }" var="item">
													<li ><a>${item}</a></li>
												</c:forEach>
											</ul>

										</div>
									</div>
								</div>								
									<p class="text-center margin_top"><a class="btn btn-primary" href="javascript:;" onclick="queryschool()">开始推荐</a></p>
							</div>

							<div class="panel panel-default">
								<div class="panel_head padding-side">
									<h4 class="fontwei">共找到<a id="shc_count">8</a>条结果</h4>
								</div>
								<ul class="list-group search_result" id="sch_data">
									<%-- <li class="list-group-item row">
                                        <div class="flex_jcstart">
                                            <div class="inline_block">
                                                <a href="xgk_sch_info.jsp"><img alt="学校logo" src="${pageContext.request.contextPath}/img/xgk/sch_logo.png"/></a>
                                            </div>
                                            <div class="sch_info inline_block">
                                                <div class="padding-side">
                                                    <div class="">
                                                        <a class="inline_block" href="">
                                                            <h4>上海外国语大学</h4>
                                                        </a>
                                                        <span class=""><img src="${pageContext.request.contextPath}/img/xgk/label.png"/></span>
                                                        <a class="inline_block" href="">
                                                            <span class="text-muted"><img src="${pageContext.request.contextPath}/img/xgk/position.png"/>上海</span></a>
                                                    </div>
                                                    <p class="">录取平均分排行（本科一批）<span class="text-danger fontwei">34</span></p>
                                                    <div class="">
                                                        <span class="">隶属：教育部</span>
                                                        <span class="">院校类型：语言类</span>
                                                        <span class="">硕士点数：43个</span>
                                                        <span class="">博士点数：17个</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="text-center like">
                                            <a class="" onclick="like(this)" href="javascript:">
                                                <img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
                                                <span class="">喜欢</span>
                                            </a>
                                            <div class="">喜欢人数：22W</div>
                                        </div>
                                    </li>
                                    <li class="list-group-item row">
                                        <div class="flex_jcstart">
                                            <div class="inline_block">
                                                <a href="xgk_sch_info.jsp"><img alt="学校logo" src="${pageContext.request.contextPath}/img/xgk/sch_logo.png"/></a>
                                            </div>
                                            <div class="sch_info inline_block">
                                                <div class="padding-side">
                                                    <div class="">
                                                        <a class="inline_block" href=""><h4>上海外国语大学</h4></a>
                                                        <span class=""><img src="${pageContext.request.contextPath}/img/xgk/label.png"/></span>
                                                        <a class="inline_block" href=""><span class="text-muted"><img src="${pageContext.request.contextPath}/img/xgk/position.png"/>上海</span></a>
                                                    </div>
                                                    <p class="">录取平均分排行（本科一批）<span class="text-danger fontwei">34</span></p>
                                                    <div class="">
                                                        <span class="">隶属：教育部</span>
                                                        <span class="">院校类型：语言类</span>
                                                        <span class="">硕士点数：43个</span>
                                                        <span class="">博士点数：17个</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="text-center like">
                                            <a class="" onclick="like(this)" href="javascript:">
                                                <img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/><span class="">喜欢</span>
                                            </a>
                                            <div class="">喜欢人数：22W</div>
                                        </div>
                                    </li> --%>

								</ul>
								<!--  分页      -->
								<div class="bg-white p-10 m-t-10 t-a-c"style="box-shadow: 0px 0px 0px #bdb8b8;">
									<div class="holder" style="text-align: center;"></div>
								</div>
								
							</div>
						</div>
						<script type="text/javascript">
									//给院校省份点击事件
									$(document).ready(function(){
										$("#sch_ur li").click(function() {
											$(this).parents("ul").children().removeClass("cur");
											$(this).addClass("cur");
										})
									});
									//通过专业查询学校
									function queryschool(){
										var er_year = $("#er_year option:selected").val();
										var er_province = $("#er_province option:selected").val();
										var sch_province = $("ul .cur a").text();
										var specialtyId= $("#specialty_id").attr("name");

										var data = "er_year=" + er_year + "&er_province=" + er_province + "&sch_province=" + sch_province + "&specialtyId=" + specialtyId;
										$.ajax({
											url: "${pageContext.request.contextPath}/school/xgk_specialty_school.do",
											type: "POST",
											data: data,
											dataType: "JSON",
											success: function(obj) {
												console.log(obj)
												if(obj.state == 1){
													var list = obj.data;
													$("#shc_count").html(list.length);
													var sch_data = "";
													console.log(list)
													for(var i=0; i<list.length; i++){
														var admission_lot = "";//录取批次
														var admissionLotList = JSON.parse(list[i].admissionLot);
														for (var j=0; j<admissionLotList.length; j++){
															admission_lot += " " + admissionLotList[j];
														}

														var attrImg = "";//院校属性图片
														var universitiesAttributes = JSON.parse(list[i].universitiesAttributes);
														if(universitiesAttributes != null){
															for (var f=0; f<universitiesAttributes.length; f++){
																if (universitiesAttributes[f] == "985"){
																	attrImg += '<img src="${pageContext.request.contextPath}/img/xgk/attr/985.png"/>'
																}
																if (universitiesAttributes[f] == "211"){
																	attrImg += '<img src="${pageContext.request.contextPath}/img/xgk/attr/211.png"/>'
																}
																if (universitiesAttributes[f] == "双一流"){
																	attrImg += '<img src="${pageContext.request.contextPath}/img/xgk/attr/syl.png"/>'
																}
																if (universitiesAttributes[f] == "行业领军"){
																	attrImg += '<img src="${pageContext.request.contextPath}/img/xgk/attr/hylj.png"/>'
																}
																if (universitiesAttributes[f] == "研究生院"){
																	attrImg += '<img src="${pageContext.request.contextPath}/img/xgk/attr/yjsy.png"/>'
																}
															}
														}
														var master = "";//硕士点数
														var doctor = "";//博士点数
														var teaching_research = JSON.parse(list[i].teachingResearch);
														for(var j=0; j<teaching_research.length; j++){
															if(teaching_research[j][0] == "硕士点"){
																master = teaching_research[j][0] + "数: " + teaching_research[j][1];
															}
															if(teaching_research[j][0] == "博士点"){
																doctor = teaching_research[j][0] + "数 :" + teaching_research[j][1];
															}
														}


														sch_data += '<li class="list-group-item row">';
														sch_data += '<div class="flex_jcstart">';
														sch_data += '<div class="inline_block">';
														//院校logo
														sch_data += '<a href="${pageContext.request.contextPath}/school/xgk_university_info.do?universityCode=' + list[i].universitiesCode + '"><img alt="学校logo" src="${pageContext.request.contextPath}/' + list[i].universitiesLogo + '"/></a>';
														sch_data += '</div>';
														sch_data += '<div class="sch_info inline_block">';
														sch_data += '<div class="padding-side">';
														sch_data += '<div class="">';
														sch_data += '<a class="inline_block" href="">';
														//院校名字
														sch_data += '<h4>' + list[i].universitiesName + '</h4>';
														sch_data += '</a>';
														//院校属性图片
														sch_data += '<span class="">' + attrImg + '</span>';
														sch_data += '<a class="inline_block" >';
														//省份
														sch_data += '<span class="text-muted"><img src="${pageContext.request.contextPath}/img/xgk/position.png"/>' + list[i].province + '</span>';
														sch_data += '</a>';
														sch_data += '</div>';
														//录取批次   + 综合评级
														sch_data += '<p class="">综合评级（' + admission_lot + '）<span class="text-danger fontwei">' + list[i].totalRanking + '</span></p>';
														sch_data += '<div class="">';
														sch_data += '<span class="">隶属：' + list[i].belongTo + '</span>&emsp;';
														sch_data += '<span class="">院校类型：' + list[i].universitiesType + '</span>&emsp;';
														sch_data += '<span class="">硕士点数：' + master + '个</span>&emsp;';
														sch_data += '<span class="">博士点数：' + doctor + '个</span>&emsp;';
														sch_data += '</div>';
														sch_data += '</div>';
														sch_data += '</div>';
														sch_data += '</div>';
														sch_data += '<div class="text-center like">';
														sch_data += '<a class="" onclick="like(this)" href="javascript:">';
														sch_data += '<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>';
														sch_data += '<span class="">喜欢</span>';
														sch_data += '</a>';
														sch_data += '<div class="">喜欢人数：22W</div>';
														sch_data += '</li>';
													}
													console.log(sch_data)
													$("#sch_data").html(sch_data);
												}
												$("div.holder").jPages({
													containerID : "sch_data",
													perPage     : 3,
													first       : "首页",
													previous    : "上一页",
													next        : "下一页",
													last        : "尾页"
												});
											}
										});
									}
									
									//点赞
									function like(obj) {
										var y;
										var o=$(obj).find('img').attr('src');
										switch (o){
											case '${pageContext.request.contextPath}/img/xgk/like.png':
												y='${pageContext.request.contextPath}/img/xgk/unlike.png';
												$(obj).find('span').text('取消喜欢');
												unlove(obj);
												break;
											case '${pageContext.request.contextPath}/img/xgk/unlike.png':
												y='${pageContext.request.contextPath}/img/xgk/like.png';
												$(obj).find('span').text('喜欢');
												love(obj);
												break;
											default:
												y='${pageContext.request.contextPath}/img/xgk/unlike.png';
												$(obj).find('span').text('喜欢');
												break;
										}
										$(obj).find('img').attr('src',y);
									}
									function love(obj){
										if('${uid}' != ''){
											var data = "eCode=${specialty.specialtyId}&eName=${specialty.specialtyName}&eType=1";
											$.ajax({
												url: "${pageContext.request.contextPath}/ens/hqt_add_enshrine.do",
												data:data,
												type:"POST",
												dataType:"json",
												success:function(obj){
													if(obj.state == 0){
														console.log(obj.message);
														layer.msg(obj.message,{icon:2,time:1000});
													}else{
														console.log(obj.message);
														$(obj).attr("id",obj.data.eId);
														layer.msg(obj.message,{icon:6,time:1000});

													}
												}
											});
										}
									}
									function unlove(obj){
										console.log("取消喜欢")
										if($(obj).attr("id") != ''){
											$.ajax({
												url: "${pageContext.request.contextPath}/ens/hqt_delete_enshrine.do",
												data: "eId=" + $(obj).attr("id"),
												type: "POST",
												dataType:"json",
												success:function(obj){
													if(obj.state == 0){
														console.log(obj.message);
														layer.msg(obj.message,{icon:2,time:1000});
													}else{
														console.log(obj.message);
														layer.msg(obj.message,{icon:6,time:1000});
													}
												}
											});
										}
									}

								</script>
					</div>
					
					<div class="tab_b2 ">
						<div class="major_info">
							<div class="items margin_top">
								<h2 class="text-primary fontwei">
									<span style="background-image: url(../../img/xgk/1.png);"></span>就业职业方向
								</h2>
								<div class="collection row" style="padding: 0 1em;">
									<div class="col-md-4 border_major">
										<ul style="padding-left: 1em;list-style: disc;height:384px;margin: 0;">
											<li>
												<div class="">
													<p class="fontwei occupation_tit">行政/后勤/文秘</p>
													<p id="percent" class="">12.6%</p>
													<p class="text-center"><a class="next_one btn btn-default" onclick="pie_next_one()" href="javascript:void(0)">下一个</a></p>
												</div>
											</li>
											<li>
												<div class="margin_top1">
													<p class="fontwei">具体职业</p>
													<div class="" id="vocation">
														经理助理/秘书，后勤人员，公务员/事业单位，经理助理/秘书，后勤人员，公务员/事业单位，经理助理/秘书，后勤人员，公务员/事业单位，经理助理/秘书，后勤人员，公务员/事业单位，
													</div>
												</div>
											</li>
										</ul>
									</div>
									<div class="col-md-8 col-lg-8 col-sm-8 border_major">
										<div id="major" style="width: 800px;height:384px; margin: 0 auto;"></div>
										<script type="text/javascript">
											var myChart = echarts.init(document.getElementById('major'));
											$(function(){});
											var career = JSON.parse('${employment_career_direction}') ;
											var data = new Array();
											var count = 0;
											var map = new Map();
											for(var i=0; i<career.length; i++){
												map.set(career[i][0],career[i][2]);
												var jy = {};
												var str = "jy.value=" + career[i][1] + ",jy.name='" + career[i][0] + "'";
												eval(str);
												data[i] = jy;
												count += parseInt(career[i][1]);
											}
											if(count < 100){
												var jy = {};
												var str = "jy.value=" + (100 - count) + ",jy.name='其他'";
												eval(str);
												data.push(jy);
												map.set('其他','暂无相关数据');
											}
											var datas = data;
											$('.occupation_tit').text(datas[0].name);
											var option = {
												title : {
//														    text: '某站点用户访问来源',
//														    subtext: '纯属虚构',
													x:'center'
												},
												selectedMode:'single',
												tooltip : {
													trigger: 'item',
													formatter: "{a} <br/>{b} : {c}%"
												},
												series : [
													{
														name: '访问来源',
														type: 'pie',
														radius : '55%',
														center: ['50%', '50%'],
														data:datas,
														itemStyle: {
															emphasis: {
																shadowBlur: 10,
																shadowOffsetX: 0,
																shadowColor: 'rgba(0, 0, 0, 0.5)'
															}
														}
													}
												]
											};
											var myChart = echarts.init(document.getElementById('major'));
											myChart.setOption(option);
											window.addEventListener("resize",function(){
												myChart.resize();
											});

											var index = 0;
											myChart.dispatchAction({ type: 'pieSelect', seriesIndex: 0, dataIndex:index, })
											myChart.on('click',function (params) {;
												if (params.dataIndex != index) {
													index = params.dataIndex;
													$("#percent").text(params.percent+"%"); //职业率
													$("#vocation").html(map.get(params.name));//职业描述
													for (var i=0;i<datas.length;i++) {
														var element = datas[i];
														if (i != index) {
															myChart.dispatchAction({ type: 'pieSelect',dataIndex:params.dataIndex });
														}
													}
												} else {
													//取消高亮
													myChart.dispatchAction({ type: 'pieUnSelect', seriesIndex: 0, dataIndex:index, })
												}

												$('.next_one').delegate({title:params.name},'click',pie_next_one)//像函数中传递数据

											});

											function pie_next_one() {
												index++;
												if (index>datas.length-1) {
													index=0;
												}
												$("#vocation").html(map.get(datas[index].name));//更新职业介绍信息
												$("#percent").text(datas[index].value + '%');//职业率
												$('.occupation_tit').text(datas[index].name);//更新职业名字
												myChart.dispatchAction({ type: 'pieSelect',dataIndex:index });
											}
										</script>
									</div>
								</div>
							</div>
							<div class="row job">
								<div class="items margin_top col-md-6 col-lg-6 col-sm-6">
									<h2 class="text-primary fontwei">
										<span style="background-image: url(../../img/xgk/2.png);"></span>就业行业分布
									</h2>
									<ul class="border_major">
										<c:if test="${not empty employment_industry_distribution }">
											<c:forEach items="${employment_industry_distribution }" var="item">
												<li>
													<div class="" style="width: 88%;">
														<p class="">${item[0]}</p>
														<div class="per_all">
															<div class="per_inner" style="width:${item[1]}%"></div>
														</div>
													</div>
													<div class="text-center">${item[1]}%</div>
												</li>
											</c:forEach>
										</c:if>
										<c:if test="${empty employment_industry_distribution }">
											<li>
												<div class="" style="width: 88%;">
													<p class="">教育/培训/院校</p>
													<div class="per_all">
														<div class="per_inner"></div>
													</div>
												</div>
												<div class="text-center" style="width: 18%;">26%</div>
											</li>
											<li>
												<div class="" style="width: 88%;">
													<p class="">教育/培训/院校</p>
													<div class="per_all">
														<div class="per_inner"></div>
													</div>
												</div>
												<div class="text-center" style="width: 12%;">26%</div>
											</li>
										</c:if>

									</ul>
								</div>
								<div class="items margin_top col-md-6 col-lg-6 col-sm-6">
									<h2 class="text-primary fontwei">
										<span style="background-image: url(../../img/xgk/3.png);"></span>就业地区分布
									</h2>
									<ul class="border_major">
										<c:if test="${not empty employment_area_distribution }">
											<c:forEach items="${employment_area_distribution }" var="item">
												<li>
													<div class="" style="width: 88%;">
														<p class="">${item[0]}</p>
														<div class="per_all">
															<div class="per_inner" style="width:${item[1]}%"></div>
														</div>
													</div>
													<div class="text-center">${item[1]}%</div>
												</li>
											</c:forEach>
										</c:if>
										<c:if test="${empty employment_area_distribution }">
											<li>
												<div class="" style="width: 88%;">
													<p class="">教育/培训/院校</p>
													<div class="per_all">
														<div class="per_inner"></div>
													</div>
												</div>
												<div class="text-center" style="width: 12%;">26%</div>
											</li>
											<li>
												<div class="" style="width: 88%;">
													<p class="">教育/培训/院校</p>
													<div class="per_all">
														<div class="per_inner"></div>
													</div>
												</div>
												<div class="text-center" style="width: 12%;">26%</div>
											</li>
										</c:if>


									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				//选项卡
				$(document).ready(function() {
//				    		$('.tab_body .tab_b2').hide();
					$('.tab_head li').click(function(){
						$(this).parent().children().removeClass('cur');
						$(this).addClass('cur');
						var index=$(this).index();
						$(this).parents('.tab_list').find('.tab_body').children().removeClass('cur');
						$(this).parents('.tab_list').find('.tab_body').children().eq(index).addClass('cur');
					})
				})
				$(function () { $("[data-toggle='tooltip']").tooltip(); });
			</script>

		</div>
	</section>
</main>
<!-- 页面底部-->
<c:import url="../public/side_right.jsp"></c:import>
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>

</body>
<script type="text/javascript">
	//就读省份
	//var sProvince = $("#er_province");
	var options = '<option value="">全部</option>';
	for (var i=0;i<province.length;i++) {
		if(province[i].name.search('${province}') != -1){
			options+='<option value="'+province[i].name+'" selected="selected">'+province[i].name+'</option>';
		}else{
			options+='<option value="'+province[i].name+'">'+province[i].name+'</option>';
		}
	}
	//$("#er_province").append(options);
	$("#hhhprovince").html(options);
</script>
</html>