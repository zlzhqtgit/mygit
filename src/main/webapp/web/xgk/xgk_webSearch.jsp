<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=0.3">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<title>贵州好前途教育科技有限公司</title>
 		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/layui-v2.5.5/layui/css/layui.css"  media="all">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jPages.css" />
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script src="${pageContext.request.contextPath}/js/common.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/area_json.js"></script> 
		<script src="${pageContext.request.contextPath}/js/layui-v2.5.5/layui/layui.js" charset="utf-8"></script>
		
	</head>

	<body>
		<c:import url="header.jsp"></c:import>
		<main class="sch_search">
			<section class="sch_search container">
				<div style="padding: 1em 100px 1em;">
				    <!-- <form class="bs-example bs-example-form" role="form" id="universities_name" onsubmit="return function(){return false;}"></form> -->
				    <div class="input-group input-group-lg">
			            <span class="input-group-addon" style="cursor: pointer;" onclick="web_search()"><span class="glyphicon glyphicon-search text-muted"></span></span>
			            <input type="text" class="form-control" placeholder="搜索你感兴趣的学校" id="search_info" value="${search_content}">
			        </div>
				</div>

				<div class="tab_list index_searchDetal">
					<ul class="tab_head list-unstyled clearfix">
						<li class="cur">高校</li>
						<li>专业</li>
						<li>职业</li>
					</ul>
					<div class="tab_body">
						<div class="panel panel-default cur">
							<div class="panel_head">
								<h4 class="fontwei padding-side margin_top1">共找到${universityCount}条结果</h4>
							</div>
							<ul id="search_university_list">
								<c:forEach items="${universityList}" var="item"  varStatus="vs">
										<li>
											<div class="padding-side2">
												<div class="sch_info">
													<a href="${pageContext.request.contextPath}/school/xgk_university_info.do?universityCode=${item.universitiesCode}" class=""> <img class="schLogo" src="${COLLEGE_PHOTO_PREFIX}${item.universitiesLogo}" style="width: 7em;"/> </a>
													<div class="padding-side">
														<div class="">
															<div class="sch_tit">
																<a href="${pageContext.request.contextPath}/school/xgk_university_info.do?universityCode=${item.universitiesCode}"><h4 id="${item.universitiesCode}" class="schName fontwei">${item.universitiesName}</h4></a>
																<div class="" style="display:flex;align-items:center;">
																	<c:if test="${item.universitiesAttributes.contains('985')}">
																		<span style><img src="${pageContext.request.contextPath}/img/xgk/attr/985.png" class="img-responsive"/></span>
																	</c:if>
																	<c:if test="${item.universitiesAttributes.contains('211')}">
																		<span><img src="${pageContext.request.contextPath}/img/xgk/attr/211.png" class="img-responsive"/></span>
																	</c:if>
																	<c:if test="${item.universitiesAttributes.contains('双一流')}">
																		<span><img src="${pageContext.request.contextPath}/img/xgk/attr/syl.png" class="img-responsive"/></span>
																	</c:if>
																	<c:if test="${item.universitiesAttributes.contains('研究生院')}">
																		<span><img src="${pageContext.request.contextPath}/img/xgk/attr/yjsy.png" class="img-responsive"/></span>
																	</c:if>
																	<label class="text-muted padding-side margin0">
																		<span class="glyphicon glyphicon-map-marker"></span>
																		<span class="">${item.province}</span>
																	</label>
																</div>
															</div>
															<div class="text-muted">综合排行（
															<c:if test="${item.admissionLot.contains('本科一批')}">
																本科一批&nbsp;
															</c:if>
															<c:if test="${item.admissionLot.contains('本科二批')}">
																本科二批&nbsp;
															</c:if>
															<c:if test="${item.admissionLot.contains('高职高专')}">
																高职高专
															</c:if>）
															<span class="text-danger">${item.totalRanking}</span></div>
															<div class="text-muted">
																<span class="">隶属：${item.belongTo}</span>
																<span class="padding-side">院校类型：${item.universitiesNature}</span>
																<c:forEach items="${item.teachingResearchList}" var="it">
																	<c:if test="${it[0] == '硕士点'}">
																		<span class="padding-side">硕士点数：${it[1]}个</span>
																	</c:if>
																	<c:if test="${it[0] == '博士点'}">
																		<span class="padding-side">博士点数：${it[1]}个</span>
																	</c:if>															
																</c:forEach>
															</div>
														</div>
													</div>
												</div>
												<div class="text-center like">
													<c:if test="${item.eId != null}">
														<a id="${item.eId}" class="" onclick="sch_like(this)" href="javascript:">
										        			<img src="${pageContext.request.contextPath}/img/xgk/like.png"/>
										        			<span class="">取消喜欢</span>
									        			</a>
													</c:if>		
													<c:if test="${item.eId == null}">
														<a id="" class="" onclick="sch_like(this)" href="javascript:">
										        			<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
										        			<span class="">喜欢</span>
									        			</a>
													</c:if>
									        		<div class="text-center text-muted">喜欢人数：${item.enshrineCount}</div>
									        	</div>
										</div>
									</li>
							</c:forEach>
							<!-- 查询结果 -->
							
						</ul>
						<ul id="search_university_page"></ul>
							<script type="text/javascript">
								$('#search_info').bind('keypress',function(event){
									if(event.keyCode == "13"){
										web_search();								
									}
								});
								
								 //学校喜欢
								 function sch_like(obj) {
									var o = $(obj).find('img').attr('src');
									switch(o) {
										case '${pageContext.request.contextPath}/img/xgk/like.png':
											y = '${pageContext.request.contextPath}/img/xgk/unlike.png';
											$(obj).find('span').text('喜欢');
											unlove(obj);											
											break;
										case '${pageContext.request.contextPath}/img/xgk/unlike.png':
											y = '${pageContext.request.contextPath}/img/xgk/like.png';
											$(obj).find('span').text('取消喜欢');
											if('${uid}' != ''){
												var schLogo = $(obj).parents("li").find(".schLogo").attr("src");							
												var schName = $(obj).parents("li").find(".schName").text();
												var schCode = $(obj).parents("li").find(".schName").attr("id");
												var data = "eCode=" + schCode + "&eName=" + schName + "&eLogo=" + schLogo + "&eType=0";
												$.ajax({
													url: "${pageContext.request.contextPath}/ens/hqt_add_enshrine.do",
													data: data,
													type: "POST",
													dataType: "json",
													success:function(ob){
														if(ob.state == 0){
															layer.msg(ob.message,{icon:2,time:1000});
														}else{
															$(obj).attr("id",ob.data.eId);
															layer.msg(ob.message,{icon:6,time:1000});
														}
													}
												});
											}											
											break;
										default:
											y = '${pageContext.request.contextPath}/img/xgk/unlike.png';
											$(obj).find('span').text('喜欢');
											break;
									}
									$(obj).find('img').attr('src', y);
								}
								
								 
								 //专业收藏
								 function s_like(obj) {									
									var o = $(obj).find('img').attr('src');
									switch(o) {
										case '${pageContext.request.contextPath}/img/xgk/like.png':
											y = '${pageContext.request.contextPath}/img/xgk/unlike.png';
											$(obj).find('span').text('喜欢');
											unlove(obj);											
											break;
										case '${pageContext.request.contextPath}/img/xgk/unlike.png':
											y = '${pageContext.request.contextPath}/img/xgk/like.png';
											$(obj).find('span').text('取消喜欢');
											if('${uid}' != ''){
												var sName = $(obj).parents("li").find(".sName").text();
												var sCode = $(obj).parents("li").find(".sName").attr("id");
												var data = "eCode=" + sCode + "&eName=" + sName + "&eType=1";
												console.log(data);
												$.ajax({
													url: "${pageContext.request.contextPath}/ens/hqt_add_enshrine.do",
													data: data,
													type: "POST",
													dataType: "json",
													success:function(ob){
														if(ob.state == 0){
															layer.msg(ob.message,{icon:2,time:1000});
														}else{
															$(obj).attr("id",ob.data.eId);
															layer.msg(ob.message,{icon:6,time:1000});
														}
													}
												});
											}								
											break;
										default:
											y = '${pageContext.request.contextPath}/img/xgk/unlike.png';
											$(obj).find('span').text('喜欢');
											break;
									}
									$(obj).find('img').attr('src', y);
								}
								 
								//职业收藏
								 function v_like(obj) {									
									var o = $(obj).find('img').attr('src');
									switch(o) {
										case '${pageContext.request.contextPath}/img/xgk/like.png':
											y = '${pageContext.request.contextPath}/img/xgk/unlike.png';
											$(obj).find('span').text('喜欢');
											unlove(obj);											
											break;
										case '${pageContext.request.contextPath}/img/xgk/unlike.png':
											y = '${pageContext.request.contextPath}/img/xgk/like.png';
											$(obj).find('span').text('取消喜欢');
											if('${uid}' != ''){
												var sName = $(obj).parents("li").find(".vName").text();
												var sCode = $(obj).parents("li").find(".vName").attr("id");
												var data = "eCode=" + sCode + "&eName=" + sName + "&eType=2";
												console.log(data);
												$.ajax({
													url: "${pageContext.request.contextPath}/ens/hqt_add_enshrine.do",
													data: data,
													type: "POST",
													dataType: "json",
													success:function(ob){
														if(ob.state == 0){
															layer.msg(ob.message,{icon:2,time:1000});
														}else{
															$(obj).attr("id",ob.data.eId);
															layer.msg(ob.message,{icon:6,time:1000});
														}
													}
												});
											}								
											break;
										default:
											y = '${pageContext.request.contextPath}/img/xgk/unlike.png';
											$(obj).find('span').text('喜欢');
											break;
									}
									$(obj).find('img').attr('src', y);
								}								 
								 
									function unlove(obj){
										console.log(obj);
										console.log("取消喜欢 eId:" + $(obj).attr("id") );
										if($(obj).attr("id") != ''){
											$.ajax({
												url: "${pageContext.request.contextPath}/ens/hqt_delete_enshrine.do",
												data: "eId=" + $(obj).attr("id"),
												type: "POST",
												dataType:"json",
												success:function(ob){
													if(ob.state == 0){
														layer.msg(ob.message,{icon:2,time:1000});
													}else{
														layer.msg(ob.message,{icon:6,time:1000});
													}
												}
											});
										}
									}

								
								//搜索
								function web_search(){
									location.href = "${pageContext.request.contextPath}/web/hqt_search.do?content=" + $("#search_info").val();
								}
								
								//分页
								layui.use(['laypage', 'layer'], function(){
									  var laypage = layui.laypage
									  ,layer = layui.layer;
								
									  //院校分页
									  laypage.render({
									    elem: 'search_university_page',
									    count: '${universityCount}', //数据总数
									    limit: 5,
									    limits: [5,10,15,20,25,30,35,40,45],
									    layout: ['prev', 'page', 'next', 'limit',],
									    jump: function(obj,first){
									    	var offset = parseInt(obj.limit)*(parseInt(obj.curr)-1);
										    var countPerPage = parseInt(obj.limit);
										    var where = "where=" + ('${search_content}') + "&offset=" + offset + "&countPerPage=" + countPerPage;									    	 	
									      	if(!first){									    	  	
										    	   	$.ajax({
													url: "${pageContext.request.contextPath}/school/xgk_school_query.do",
													data: where,
													async:true,
													type: "POST",
													dataType: "json",							
													success: function (obj) {
														if(obj.state == 1){
															console.log(obj)
															var list = obj.data.list;
															var sch_search = "";
															for(var i=0; i<list.length; i++){
																var attrImg = "";//院校属性图片
							                                    var universitiesAttributes = JSON.parse(list[i].universitiesAttributes);
							                                    if(universitiesAttributes != null){
								        							for (var f=0; f<universitiesAttributes.length; f++){
								        								if (universitiesAttributes[f] == "985"){
								        									attrImg += '<img src="${pageContext.request.contextPath}/img/xgk/attr/985.png" width="6%"/>'
								        								}
								        								if (universitiesAttributes[f] == "211"){
								        									attrImg += '<img src="${pageContext.request.contextPath}/img/xgk/attr/211.png" width="6%"/>'
								        								}
								        								if (universitiesAttributes[f] == "双一流"){
								        									attrImg += '<img src="${pageContext.request.contextPath}/img/xgk/attr/syl.png"  width="6%"/>'
								        								}
								        								if (universitiesAttributes[f] == "行业领军"){
								        									attrImg += '<img src="${pageContext.request.contextPath}/img/xgk/attr/hylj.png"  width="6%"/>'
								        								}
								        								if (universitiesAttributes[f] == "研究生院"){
								        									attrImg += '<img src="${pageContext.request.contextPath}/img/xgk/attr/yjsy.png"  width="6%"/>'
								        								}
								        							}
						                                        }
							                                    var admissionLots = "";// 录取批次
							                                    if(list[i].admissionLot != null){
							                                    	var admissionLotList = JSON.parse(list[i].admissionLot);							                                    
									                                for (var j=0; j<admissionLotList.length; j++){
									                                	if (j == admissionLotList.length-1) {
									                                        admissionLots += admissionLotList[j];
									                                    }else {
									                                        admissionLots += admissionLotList[j] + " ";
									                                    }
									                                }	
							                                    }						                                        
								                                var master = 0;//硕士点数
								    							var doctor = 0;//博士点数
								    							var teaching_research = JSON.parse(list[i].teachingResearch);
								    							for(var j=0; j<teaching_research.length; j++){
								    								if(teaching_research[j][0] == "硕士点"){
								    									master = teaching_research[j][0] + "数: " + teaching_research[j][1];
								    								}
								    								if(teaching_research[j][0] == "博士点"){
								    									doctor = teaching_research[j][0] + "数 :" + teaching_research[j][1];
								    								}
								    							}
																sch_search += '<li>';
																sch_search += '<div class="padding-side2">';
																sch_search += '<div class="sch_info">';
																//院校logo
																sch_search += '<a href="${pageContext.request.contextPath}/school/xgk_university_info.do?universityCode="' + list[i].universitiesCode + '" class=""> <img class="schLogo" src="${COLLEGE_PHOTO_PREFIX}' + list[i].universitiesLogo + '" style="width: 7em;"/></a>';
																sch_search += '<div class="padding-side">';
																sch_search += '<div class="">';
																sch_search += '<div class="sch_tit">';
																//院校名字
																sch_search += '<a href="${pageContext.request.contextPath}/school/xgk_university_info.do?universityCode="' + list[i].universitiesCode + '"><h4 class="schName"  id="' + list[i].universitiesCode + '" class="schName fontwei">' + list[i].universitiesName + '</h4></a>';
																sch_search += '<div class="">';
																//院校属性图片
																sch_search += attrImg;
																sch_search += '</div>';
																sch_search += '<span class="glyphicon glyphicon-map-marker"></span>';
																//院校省份
																sch_search += '<span class="text-muted">' + list[i].province + '</span>';
																sch_search += '</div>';
																sch_search += '<div class="text-muted">综合排行（';
																//录取批次
																sch_search += admissionLots;
																//综合排名
																sch_search += '）<span class="text-danger">' + list[i].totalRanking + '</span></div>';
																sch_search += '<div class="text-muted">';
																//隶属
																sch_search += '<span class="">隶属：' + (list[i].belongTo == null ? '-' : list[i].belongTo) + '</span>';
																//院校类型
																sch_search += '<span class="padding-side">院校类型：' + list[i].universitiesNature + '</span>';														
																sch_search += '<span class="padding-side">硕士点数：' + master + '个</span><span class="padding-side">博士点数：' + doctor + '个</span>';
																sch_search += '</div>';
																sch_search += '</div>';
																sch_search += '</div>';
																sch_search += '</div>';
																sch_search += '<div class="text-center like">';		
																console.log(list[i].eId)
																if(list[i].eId != null){
																	sch_search += '<a id="' + list[i].eId + '" onclick="sch_like(this)" href="javascript:">';
																	sch_search += '<img src="${pageContext.request.contextPath}/img/xgk/like.png"/>';
																	sch_search += '<span class="">取消喜欢</span>';
																} else {
																	sch_search += '<a id="" onclick="sch_like(this)" href="javascript:">';
																	sch_search += '<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>';
																	sch_search += '<span class="">喜欢</span>';
																}
																sch_search += '</a>';
																sch_search += '<div class="text-center text-muted">喜欢人数：' + list[i].enshrineCount + '</div>';
																sch_search += '</div>';
																sch_search += '</div>';
																sch_search += '</li>';																
															}															
														}
														$("#search_university_list").html(sch_search);
										      		}
										    	});
									      	} 	
									    } 
									  });
									  
									  //专业分页
									  laypage.render({
										    elem: 'search_specialty_page',
										    count: '${specialtyCount}', //数据总数
										    limit: 5,
										    limits: [5,10,15,20,25,30,35,40,45],
										    layout: ['prev', 'page', 'next', 'limit',],
										    jump: function(obj,first){
										    		var offset = parseInt(obj.limit)*(parseInt(obj.curr)-1);
									    			var countPerPage = parseInt(obj.limit);
									    			var where = "where=" + ('${search_content}') + "&offset=" + offset + "&countPerPage=" + countPerPage;									    	 	
										    		if(!first){
										    			$.ajax({
														url: "${pageContext.request.contextPath}/school/xgk_specialty_list.do",
														data: where,
														async:true,
														type: "POST",
														dataType: "json",							
														success: function (obj) {
															if(obj.state == 1){
												      			var list = obj.data.specialtyList;
												      			var spec_search = "";
												      			for(var i=0; i<list.length; i++){
												      				spec_search += '<li>';
												      				spec_search += '<div class="padding-side2">';
												      				spec_search += '<div class="">';
												      				spec_search += '<div class="sch_tit">';
												      				spec_search += '<a href="${pageContext.request.contextPath}/school/xgk_specialty_detail.do?specialtyId=' + list[i].specialtyId + '"><h4 id="' + list[i].specialtyId + '" class="sName" fontwei">' + list[i].specialtyName + '</h4></a><span class="padding-side text-muted">国际代码：' + list[i].specialtyId + '</span>';
												      				spec_search += '</div>';
												      				spec_search += '<p class="text-muted margin0">';
												      				spec_search += '<span class="">学历层次：' + list[i].specialtyEducation + '</span>';
												      				spec_search += '<span class="padding-side">修业年限：' + list[i].studyDuration + '</span>';
												      				spec_search += '<span class="padding-side">授予学位：' + list[i].bachelorDegree + '</span>';
												      				spec_search += '<span class="padding-side">男女比例：' + list[i].maleFemaleRatio + '</span>';
												      				spec_search += '</p>';
												      				spec_search += '</div>';
												      				spec_search += '<div class="text-center like">';
												      				if(list[i].eId != null){
												      					spec_search += '<a id="' + list[i].eId + '" class="" onclick="s_like(this)" href="javascript:">';
													      				spec_search += '<img src="${pageContext.request.contextPath}/img/xgk/like.png"/>';
													      				spec_search += '<span class="">取消喜欢</span>';
												      				}else{
												      					spec_search += '<a id="" class="" onclick="s_like(this)" href="javascript:">';
													      				spec_search += '<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>';
													      				spec_search += '<span class="">喜欢</span>';
												      				}												      				
												      				spec_search += '</a>';
												      				spec_search += '</div>';
												      				spec_search += '</div>';
												      				spec_search += '</li>';
												      			}
												      			$("#search_specialty_list").html(spec_search);
												      		}
														}
										    			});	
										    		}										    		
										    }
									  });	
									  

									  //职业分页
									  laypage.render({
										    elem: 'search_vocation_page',
										    count: '${vocationCount}', //数据总数
										    limit: 5,
										    limits: [5,10,15,20,25,30,35,40,45],
										    layout: ['prev', 'page', 'next', 'limit',],
										    jump: function(obj,first){
										    		var offset = parseInt(obj.limit)*(parseInt(obj.curr)-1);
									    			var countPerPage = parseInt(obj.limit);
									    			var where = "where=" + ('${search_content}') + "&offset=" + offset + "&countPerPage=" + countPerPage;									    	 	
										    		if(!first){
										    			$.ajax({
														url: "${pageContext.request.contextPath}/voc/xgk_voc_list.do",
														data: where,
														async:true,
														type: "POST",
														dataType: "json",							
														success: function (obj) {
															if(obj.state == 1){
												      			var list = obj.data.vocationList;
												      			var voc_search = '';
												      			for(var i=0; i<list.length; i++){
												      				voc_search += '<li>';
												      				voc_search += '<div class="padding-side2">';
												      				voc_search += '<div class="job_infos">';
												      				voc_search += '<div class="sch_tit">';
												      				voc_search += '<a href="${pageContext.request.contextPath}/voc/xgk_voc_detail.do?vocationId=' + list[i].vocationId + '"><h4 id="' + list[i].vocationId + '" class="vName fontwei">' + list[i].vocationName + '</h4></a><span class="padding-side text-muted">' + list[i].industryMajorName + ' > ' + list[i].industryName + '</span>';
												      				voc_search += '</div>';
												      				voc_search += '<p class="text-muted margin0 job_sum"> ' + list[i].vocationBrief + ' </p>';
												      				voc_search += '</div>';
												      				voc_search += '<div class="text-center like">';
												      				if(list[i].eId != null){
												      					voc_search += '<a id="' + list[i].eId + '" class="" onclick="v_like(this)" href="javascript:">';
												      					voc_search += '<img src="${pageContext.request.contextPath}/img/xgk/like.png"/>';
												      					voc_search += '<span class="">取消喜欢</span>';
												      				}else{
												      					voc_search += '<a id="" class="" onclick="v_like(this)" href="javascript:">';
												      					voc_search += '<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>';
												      					voc_search += '<span class="">喜欢</span>';
												      				}												      				
												      				voc_search += '</a>';
												      				voc_search += '</div>';
												      				voc_search += '</div>';
												      				voc_search += '</li>';
												      			}
												      			$("#search_vocation_list").html(voc_search);
												      		}
														}
										    			});	
										    		}										    		
										    }
									  });	
								});								
							  </script>
						</div>
						<div class="panel panel-default">
							<div class="panel_head">
								<h4 class="fontwei padding-side margin_top1">共找到${specialtyCount}条结果</h4>
								<ul id="search_specialty_list">
									<c:forEach items="${specialtyList}" var="item">
										<li>
										<div class="padding-side2">
											<div class="">
												<div class="sch_tit">
													<a href="${pageContext.request.contextPath}/school/xgk_specialty_detail.do?specialtyId=${item.specialtyId}"><h4 class="sName fontwei" id="${item.specialtyId}">${item.specialtyName}</h4></a><span class="padding-side text-muted">国际代码：${item.specialtyId}</span>
												</div>
												<p class="text-muted margin0">
													<span class="">学历层次：${item.specialtyEducation}</span>
													<span class="padding-side">修业年限：${item.studyDuration}</span>
													<span class="padding-side">授予学位：${item.bachelorDegree}</span>
													<span class="padding-side">男女比例：${item.maleFemaleRatio}</span>
												</p>
											</div>
											<div class="text-center like">	
												<c:if test="${item.eId != null}">
													<a id="${item.eId}" class="" onclick="s_like(this)" href="javascript:">
									        			<img src="${pageContext.request.contextPath}/img/xgk/like.png"/>
									        			<span class="">取消喜欢</span>
									        		</a>
												</c:if>
												<c:if test="${item.eId == null}">
													<a id="" class="" onclick="s_like(this)" href="javascript:">
									        			<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
									        			<span class="">喜欢</span>
									        		</a>
												</c:if>	
								        	</div>
										</div>
									</li>
									</c:forEach>
								</ul>
								<ul id="search_specialty_page"></ul>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel_head">
								<h4 class="fontwei padding-side margin_top1">共找到${vocationCount}条结果</h4>
								<ul id="search_vocation_list">
									<c:forEach items="${vocationList}" var="item">
										<li>
											<div class="padding-side2">
												<div class="job_infos">
													<div class="sch_tit">
														<a href="${pageContext.request.contextPath}/voc/xgk_voc_detail.do?vocationId=${item.vocationId}"><h4 id="${item.vocationId}" class="vName fontwei">${item.vocationName}</h4></a><span class="padding-side text-muted">${item.industryMajorName} > ${item.industryName}</span>
													</div>
													<p class="text-muted margin0 job_sum"> ${item.vocationBrief} </p>
												</div>
												<div class="text-center like">
										        		<c:if test="${item.eId != null}">
															<a id="${item.eId}" class="" onclick="v_like(this)" href="javascript:">
											        			<img src="${pageContext.request.contextPath}/img/xgk/like.png"/>
											        			<span class="">取消喜欢</span>
											        		</a>
														</c:if>
														<c:if test="${item.eId == null}">
															<a id="" class="" onclick="v_like(this)" href="javascript:">
											        			<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
											        			<span class="">喜欢</span>
											        		</a>
														</c:if>	
									        		</div>
											</div>
										</li>
									</c:forEach>
								
								<%-- <li>
									<div class="padding-side2">
										<div class="job_infos">
											<div class="sch_tit">
												<a href=""><h4 class="fontwei">银行清算员</h4></a><span class="padding-side text-muted">金融/银行>金融业务</span>
											</div>
											<p class="text-muted margin0 job_sum"> 利用资金清算网路系统，从事银行业务资金的和结计电子汇划会差工作的人员利用资金清算网路系统，从事银行业务资金的和结计电子汇划会差工作的人员利用资金清算网路系统，从事银行业务资金的和结计电子汇划会差工作的人员 </p>
										</div>
										<div class="text-center like">
							        		<a class="" onclick="like(this)" href="javascript:">
							        			<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
							        			<span class="">喜欢</span>
							        		</a>
							        	</div>
									</div>
								</li> --%>
							</ul>
							<ul id="search_vocation_page"></ul>
							</div>
						</div>
					</div>
				</div>
			</section>
		</main>

		<!-- 右侧边栏-->
		<c:import url="../public/side_right.jsp"></c:import>
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>	

	</body>
</html>