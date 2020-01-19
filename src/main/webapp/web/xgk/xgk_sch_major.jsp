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
		<link rel="icon" href="${pageContext.request.contextPath}/web/xgk/favicon.ico" type="image/x-icon">
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" charset="utf-8"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script>
		<script src="${pageContext.request.contextPath}/js/jPages.js"></script>
	</head>

	<body>
		<c:import url="header.jsp"></c:import>

		<main class="">
			<section class="sch_search container">				
				<div style="padding: 1em 100px 1em;">
				    <div class="bs-example bs-example-form">
				        <div class="input-group input-group-lg">
				            <input id="search_info" type="text" class="search_info form-control" placeholder="搜索你感兴趣的专业" >
				            <span class="input-group-addon" style="cursor: pointer;"  onclick="querySpecialty(1)" ><span class="glyphicon glyphicon-search text-muted"></span></span>				            	            
				        </div>
				    </div>
				</div>

				<div class="panel panel-default">
				    <ul class="list-group slice_list">
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>专业属性</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<dd><a href="javascript:void(0)" >本科专业</a></dd>
				        		<dd><a href="javascript:void(0)" >专科专业</a></dd>
				        	</dl>
				        	<div class="clearfix"></div>
				        </li>				      
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>本科专业类别</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<c:forEach items="${specialtyClassList}" var="item">
					    	   		<c:if test="${item.specialtyEducation == '本科'}">
					    	   			<dd><a href="javascript:void(0)">${item.specialtyMajorName}</a></dd>
					    	   		</c:if>
				    	   		</c:forEach>
				        	</dl>				        
				        </li>
				        <li class="list-group-item">
				        	<dl class="pull-left item_tit">
				        		<dt>专科专业类型</dt>
				        	</dl>
				        	<dl class="pull-left item_body">
				        		<dd class=""><a class="active" href="javascript:void(0)">全部</a></dd>
				        		<c:forEach items="${specialtyClassList}" var="item">
					    	   		<c:if test="${item.specialtyEducation == '专科'}">
					    	   			<dd><a href="javascript:void(0)">${item.specialtyMajorName}</a></dd>
					    	   		</c:if>
				    	   		</c:forEach>
				        	</dl>
				        </li>
				    </ul>
				    
				</div>
					<p class="text-center margin_bot margin_top"><a class="btn btn-primary fontwei begin_btn" href="javascript:void(0)" onclick="querySpecialty(2)">开始查询</a></p>
				<script type="text/javascript">
					//判断登录后才能查询
					function onlogin() {
						layer.confirm('未登陆状态，请先进行登陆？', {
							icon : 1,
							btn : [ '确定登陆', '取消' ]
						}, function(index) {
							location.href = "../user/xgk_login.do?nowUrl="+ window.location.href;
						});
					}	
				
					$('#search_info').bind('keypress',function(event){
	 					if(event.keyCode == "13"){
	 						querySpecialty(1);	 						
	 					}
	 				});
				
					
					function querySpecialty(e){
						var uid = "${uid}";
						if(uid == ""){
							onlogin();
						}else{
							var c = $("li dd a.active");
							var where = "";
							if( e == 2){
								var specialty_education = c[0].text.replace("专业","");
								var specialty_major_name1 = c[1].text;
								var specialty_major_name2 = c[2].text;
								var flag = false;
								if(specialty_education != "全部"){
									where += " b.specialty_education='" + specialty_education + "' ";
									flag = true;
								}
								if(specialty_major_name1 != "全部" && specialty_major_name2 != "全部"){
									if(flag){	 
										where += " AND (LOCATE('" + specialty_major_name1  +"',b.specialty_major_name) OR LOCATE('" + specialty_major_name2 + "',b.specialty_major_name))";
									} else {
										where += " LOCATE('" + specialty_major_name1  +"',b.specialty_major_name) OR LOCATE('" + specialty_major_name2 + "',b.specialty_major_name)";
									}
									
								}
								if(specialty_major_name1 != "全部" && specialty_major_name2 == "全部"){
									if(flag){	 
										where += " AND LOCATE('" + specialty_major_name1  +"',b.specialty_major_name)";
									} else {
										where += " LOCATE('" + specialty_major_name1  +"',b.specialty_major_name)";
									}
									
								}
								if(specialty_major_name1 == "全部" && specialty_major_name2 != "全部"){
									if(flag){	 
										where += " AND LOCATE('" + specialty_major_name2  +"',b.specialty_major_name)";
									} else {
										where += " LOCATE('" + specialty_major_name2  +"',b.specialty_major_name)";
									}
									
								}
							}else{
								var search_info = $("#search_info").val();
								if(search_info != ""){
									where += " LOCATE('" + search_info  + "',b.specialty_name) OR LOCATE('" + search_info + "',b.specialty_major_name) OR LOCATE('" + search_info + "', b.specialty_disciplines)";
								}
							}
							console.log("where:" + where);
							$.ajax({
								url: "${pageContext.request.contextPath}/school/xgk_specialty_query.do",
								type: "POST",
								data: "where=" + where,
								dataType: "JSON",
								success: function(obj) {
									$(".search_resultBox").css("display","block");
									if(obj.state == 1){
										var list = obj.data;									
										var bkdata = "";
										var zkdata = "";
										for(var i=0; i<list.length; i++){
											if(list[i].education == '本科'){
												var specialtyOutList = list[i].specialtyOutList;//专业大类
												for(var j=0; j<specialtyOutList.length; j++){
													bkdata += '<div class="major_info margin_bot">';
													bkdata += '<div class="clearfix major_info_head">';
													bkdata += '<span class="pull-left"><h3>' + specialtyOutList[j].majorName + '</h3></span>';
													bkdata += '<span class="pull-right  text-muted">1个专业类>' + specialtyOutList[j].disciplinesList.length + '个本科专业</span>';
													bkdata += '</div>';												
													var disciplinesList = specialtyOutList[j].disciplinesList;//专业分类
													for(var k=0; k<disciplinesList.length; k++){
														bkdata += '<div class="clearfix major_info_sub">';
														bkdata += '<span class="pull-left"><h4 class="fontwei">' + disciplinesList[k].disciplines + '</h4></span>';
														bkdata += '<span class="pull-right" style="color:#4b9f64;">' + disciplinesList[k].specialtyList.length + '个专业</span>';
														bkdata += '</div>';
														bkdata += '<ul class="major_list clearfix margin_top1">';
														var specialtyList = disciplinesList[k].specialtyList;
														for(var l=0; l<specialtyList.length; l++){
															bkdata += '<li class=""><a id="" href="${pageContext.request.contextPath}/school/xgk_specialty_detail.do?specialtyId=' + specialtyList[l].specialtyId + '">' + specialtyList[l].specialtyName + '</a></li>';
														}
														bkdata += '</ul>';
													}
													bkdata += '</div>';	
												}									
											}
											if(list[i].education == '专科'){
												var specialtyOutList = list[i].specialtyOutList;//专业大类
												for(var j=0; j<specialtyOutList.length; j++){
													zkdata += '<div class="major_info margin_bot">';
													zkdata += '<div class="clearfix major_info_head">';
													zkdata += '<span class="pull-left"><h3>' + specialtyOutList[j].majorName + '</h3></span>';
													zkdata += '<span class="pull-right  text-muted">1个专业类>' + specialtyOutList[j].disciplinesList.length + '个本科专业</span>';
													zkdata += '</div>';												
													var disciplinesList = specialtyOutList[j].disciplinesList;//专业分类
													for(var k=0; k<disciplinesList.length; k++){
														zkdata += '<div class="clearfix major_info_sub">';
														zkdata += '<span class="pull-left"><h4 class="fontwei">' + disciplinesList[k].disciplines + '</h4></span>';
														zkdata += '<span class="pull-right" style="color:#4b9f64;">' + disciplinesList[k].specialtyList.length + '个专业</span>';
														zkdata += '</div>';
														zkdata += '<ul class="major_list clearfix margin_top1">';
														var specialtyList = disciplinesList[k].specialtyList;
														for(var l=0; l<specialtyList.length; l++){
															zkdata += '<li class=""><a id="" href="${pageContext.request.contextPath}/school/xgk_specialty_detail.do?specialtyId=' + specialtyList[l].specialtyId + '">' + specialtyList[l].specialtyName + '</a></li>';
														}
														zkdata += '</ul>';
													}
													zkdata += '</div>';	
												}				
											}
										}									
										$("#bklist").html(bkdata);//本科列表数据
										$("#zklist").html(zkdata);//专科列表数据
										//$("#zklist").text("zkdata");//专科列表数据
										console.log("zkdata ： " + zkdata);
										if(c[0].text == '本科专业'){
											$("#cur_bkzy").show();
											$("#cur_zkzy").hide();
											$("#cur_zklit").removeClass("cur");
											$("#cur_bklit").addClass("cur");	
										}
										if(c[0].text == '专科专业'){
											$("#cur_bkzy").hide();
											$("#cur_zkzy").show();
											$("#cur_bklit").removeClass("cur");
											$("#cur_zklit").addClass("cur");										
										}
										if(c[0].text == '全部'){
											$("#cur_bkzy").show();
											$("#cur_zkzy").show();
											$("#cur_zklit").removeClass("cur");
											$("#cur_bklit").addClass("cur");
										}
										$("div.holder1").jPages({
						    			       containerID : "bklist",
						    			       perPage     : 3,
						    			       first       : "首页",
						    			       previous    : "上一页",
						    			       next        : "下一页",
						    			       last        : "尾页"
						    				 });
							    			$("div.holder2").jPages({
							    			       containerID : "zklist",
							    			       perPage     : 3,
							    			       first       : "首页",
							    			       previous    : "上一页",
							    			       next        : "下一页",
							    			       last        : "尾页"
							    			 });
									} 
								}
							}); 
							
						}
					}
				</script>
				<div class="search_resultBox panel panel-default" style="display:none;">
				    <div class="tab_list padding-side2">
				    	<ul class="tab_head clearfix">
			    			<li class="cur" id="cur_bkzy">本科专业</li>
			    			<li id="cur_zkzy">专科专业</li>				    		
				    	</ul>
				    	<div class="tab_body">
				    		<div class="tab_b1 cur" id="cur_bklit">
				    			<div class="major_info" id="bklist">				    				
				    			</div>
				    			<div class="" style="box-shadow: 0px 0px 0px #bdb8b8;display:block;">
								<div class="holder1" style="text-align: center;"></div>
							</div>
				    		</div>	
				    		<div class="tab_b2" id="cur_zklit">
				    			<div class="major_info" id="zklist">				    				
				    			</div>
				    			<div class="bg-white p-10 m-t-10 t-a-c"style="box-shadow: 0px 0px 0px #bdb8b8;">
								<div class="holder2" style="text-align: center;"></div>
							</div>
				    		</div>
				    	</div>
				    	
				    <!--tips-->
				    <div class="tipsbox" style="display: none;">
				    	<h4 style="color: #333;">可从事的职业</h4>
				    	<div style="color: #333;"> 销售、编辑、文案、秘书、销售、编辑、文案、秘书、销售、编辑、文案、秘书、销售、编辑、文案、秘书、 </div>
				    </div>
				    <!--/tips-->
	
				    <script type="text/javascript">
				    	//弹框
						function tips(content,el,director){
							layer.tips(content, el, {
							  tips: [director, '#fff'],
							  time: 2500,
							});
						}
				    	
						//点击筛选样式
						$(".item_body dd a").click(function() {
							$(this).parents("dl").children().find("a").removeClass("active");
							$(this).addClass("active");
						})

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
				    </script>
				    
				</div>
			</div>
			<!-- -->
		</main>

		<!-- 右侧边栏-->
	<c:import url="../public/side_right.jsp"></c:import>
	<!-- 页面底部-->
	<c:import url="footer.jsp"></c:import>

	</body>

</html>