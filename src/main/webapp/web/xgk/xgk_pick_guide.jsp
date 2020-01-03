<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<meta name="viewport" content="width=device-width, initial-scale=0.3">
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/animate.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/wow.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/area_json.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
	</head>

	<body>
		<c:import url="header.jsp"></c:import>

		<main class="container">
			<section class="row">
				<h2 class="text-primary fontwei">选科报告</h2>
				<div class="panel panel-default border-radius box-shadow">
					<div class="panel-body padding-side2">
						<div class="margin_top">
							<h3 class="text-muted fontwei">测评报告</h3>
							<div class="">请完成相关测评后，根据测评结果及各项评分为您选科的优势及劣势。</div>
							<div class="margin_top1" style="padding: 0 6em;height: 200px;">
								<div class="done_situation">
									<div class="p_relative step_wrap">
										<div class="doneStep bg-danger" style="border-top-left-radius: 1em; border-bottom-left-radius: 1em;"></div>
										<div class="s_pot bg-primary"></div>
										<div class="done_item wow swing">
											<div class="flex_Al_c yline_wrap p_relative">
												<div class="yline"></div>
											</div>
											<div class="flex_Al_c">
												<div class="circle bg-primary" style="display: flex;align-items: center;">
													<div class="analyze1">
														<p class="fontwei">成绩分析</p>
														<span class="glyphicon glyphicon-ok"></span>
													</div>
												</div>
											</div>
											<p class="text-center" style="display: none;"><a class="btn btn-primary" href="${pageContext.request.contextPath}/sub/xgk_subject_score.do" style="margin: 0;">去测评</a></p>
										</div>
									</div>
									<div class="p_relative step_wrap">
										<div class="doneStep bg-info"></div>
										<div class="s_pot bg-warning"></div>
										<div class="done_item wow swing">
											<div class="flex_Al_c yline_wrap">
												<div class="yline"></div>
											</div>
											<div class="flex_Al_c">
												<div class="circle bg-warning" style="display: flex;align-items: center;">
													<div class="analyze2">
														<p class="fontwei">学科潜能</p>
														<span class="glyphicon glyphicon-ok"></span>
													</div>
												</div>
											</div>
											<p class="text-center" style="display: none;"><a class="btn btn-primary" href="${pageContext.request.contextPath}/sub/xgk_subject_score.do" style="margin: 0;">去测评</a></p>
										</div>
									</div>
									<div class="p_relative step_wrap">
										<div class="doneStep bg-primary"></div>
										<div class="s_pot bg-danger"></div>
										<div class="done_item wow swing">
											<div class="flex_Al_c yline_wrap">
												<div class="yline"></div>
											</div>
											<div class="flex_Al_c">
												<div class="circle bg-danger" style="display: flex;align-items: center;">
													<div class="analyze3">
														<p class="fontwei">认知测评</p>
														<span class="glyphicon glyphicon-remove"></span>
													</div>
												</div>
											</div>
											<p class="text-center" style="display: none;"><a class="btn btn-primary" href="${pageContext.request.contextPath}/cp/xgk_choice.do" style="margin: 0;">去测评</a></p>
										</div>
									</div>
									<div class="p_relative">
										<div class="doneStep bg-warning" style="border-top-right-radius: 1em; border-bottom-right-radius: 1em;"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="margin_top">
							<h3 class="text-muted fontwei" >理想职业</h3>
							<div class="">请在下列表格中选择一种您心仪的职业</div>
							<div class="margin_top1">
								<select name="" class="large_class" onclick='selectVocation()'>
									<option value="">请选择一种心仪 的职业大类</option>
									<option value="">工程师</option>
									<option value="">设计师</option>
								</select>
							</div>
							<table class="table-bordered margin_top1 width100" style="text-align: center;" id="vocation_list">
								<tr><td>报刊发行员</td><td>编辑</td><td>编曲家</td><td>导演</td><td>雕刻师</td></tr>
								<tr><td>歌手</td><td>教练</td><td>记者</td><td>录音师</td><td>漫画家</td></tr>
							</table>
						</div>
						<div class="margin_top">
							<h3 class="text-muted fontwei">理想专业</h3>
							<div class="">根据您选择的职业，我们为您推荐了以下专业，请从中选择一种您心仪的专业。</div>
							<div class="text-center margin_top1">
								<select name="" class="specialty_list">
									<option value="0" selected="selected">请选择专业</option>
								</select>
								
							</div>
						</div>
					</div>
					<div>
					</div>
					<p class="text-center margin_top">
						<shiro:guest>
							<a class="btn btn-default cancel margin0 vipLimite" href="javascript:;"><label class="padding-side fontwei">VIP</label>生成报告</a>
						</shiro:guest>
						<shiro:user>
							<shiro:hasPermission name="xkzd_scbk:add">
								<a class="btn btn-default cancel margin0" href="javascript:;" onclick="generateReport()">生成报告</a>		
							</shiro:hasPermission>
							<shiro:lacksPermission name="xkzd_scbk:add">
								<a class="btn btn-default cancel margin0 vipLimite" href="javascript:;"><label class="padding-side fontwei">VIP</label>生成报告</a>
							</shiro:lacksPermission>
						</shiro:user>
					</p>						
				</div>
			</section>
		</main>

		<!-- 右侧边栏-->
		<c:import url="../public/side_right.jsp"></c:import>
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>	

	</body>
	<script type="text/javascript">		
									new WOW().init(); 
									var wow = new WOW({  
									    boxClass: 'wow', //需要执行动画的class 
									    animateClass: 'animated',  //animate.css的class
									    offset: 0,  //距可视区域多少开始执行动画
									    mobile: true,  //是否在移动设备上执行动画
									    live: true  //一部加载的内容是否有效
									});
									
									//去测评按钮控制
									var step_wrap=$(".step_wrap .circle .glyphicon");
									var btn=$(".step_wrap .done_item>p");
									for (var i=0;i<step_wrap.length;i++){
										if (step_wrap[i].getAttribute("class")=="glyphicon glyphicon-remove") {
											btn[i].style.display="block";
										} else{
											btn[i].style.display=="none";
										}
									}
									
									//初始化页面
									var score = "${SCORE_ANALYZE}";//成绩分析
									var potentail = "${POTENTIAL_ANALYZE}";//学科潜能
									var cognize = "${COGNIZE_ANALYZE}";//认知测评
									var largeClass = JSON.parse('${LARGE_CLASS}');//职业大类
									$(function(){
										var type_start = "<p class='fontwei'>";
										var type_end = "</p>";
										var ok = "<span class='glyphicon glyphicon-ok'></span>";
										var err = "<span class='glyphicon glyphicon-remove'></span>";
										if(score == 1){
											$(".analyze1").html(type_start + "成绩分析" + type_end + ok);
											$(".analyze1").parents(".flex_Al_c").next().hide();
										}else{
											$(".analyze1").html(type_start + "成绩分析" + type_end + err);
											$(".analyze1").parents(".flex_Al_c").next().show();
											$(".analyze1").parents(".flex_Al_c").next().children().attr('href','${pageContext.request.contextPath}/sub/xgk_subject_score.do');
										}
										if(potentail == 1){
											$(".analyze2").html(type_start + "学科潜能" + type_end + ok);
											$(".analyze2").parents(".flex_Al_c").next().hide();
										}else{
											$(".analyze2").html(type_start + "学科潜能" + type_end + err);
											$(".analyze2").parents(".flex_Al_c").next().show();
											$(".analyze2").parents(".flex_Al_c").next().children().attr('href','${pageContext.request.contextPath}/sub/xgk_subject_score.do');
										}
										if(cognize == 1){
											$(".analyze3").html(type_start + "认知测评" + type_end + ok);
											$(".analyze3").parents(".flex_Al_c").next().hide();
										}else{
											$(".analyze3").html(type_start + "认知测评" + type_end + err);
											$(".analyze3").parents(".flex_Al_c").next().show();
											$(".analyze3").parents(".flex_Al_c").next().children().attr('href','${pageContext.request.contextPath}/cp/xgk_choice.do');
										}
										
										var vocationLargeClass = "<option value=''>请选择一种心仪 的职业大类</option>";
										for(var i=0; i<largeClass.length; i++){
											vocationLargeClass += "<option value=''>"+ largeClass[i].industryName + "</option>";
										}
										$(".large_class").html(vocationLargeClass);
									});
									
									//查询职业列表清单
									function selectVocation(){
										var industryName = $('.large_class').find("option:selected").text();
										$.ajax({
											url:"${pageContext.request.contextPath}/xk/xgk_guide_vocation_list.do",
											data:"industryName=" + industryName,
											type:"POST",
											dataType:"json",
											success:function(obj){
												//console.log(obj.data[0])
												if(obj.state == 1){
													var data = obj.data;
													var vocationList = "<tr>";
													var id = "";
													var name = "";
													for(var j=0; j<data.length; j++){
														if (j%5 == 0 && j>0){
															vocationList += "</tr><tr>";//
														}
														id = data[j].vocationId;
														name = data[j].vocationName;
														vocationList += '<td onclick="getSpecialtyList(this)" id="' + id + '">' + name + '</td>';
													}
													$("#vocation_list").html(vocationList + "</tr>");
												}
											}
										});
									}
									
									//获得专业列表清单
									function getSpecialtyList(e){
										var vocationId = $(e).attr("id");
										$.ajax({
											url:"${pageContext.request.contextPath}/xk/xgk_guide_specialt_list.do",
											data:"vocationId=" + vocationId,
											type:"POST",
											dataType:"json",
											success:function(obj){
												console.log(obj);
												if(obj.state == 1){
													var data = obj.data;
													var specialtyList = "";
													if(data.length <= 0){
														specialtyList += "<option value='0'>暂无专业数据</option>";
													}else{
														for(var i=0; i<data.length; i++){
															specialtyList += "<option value='" + data[i].specialtyId + "'>" + data[i].specialtyName + "</option>";
														}
													}
													$(".specialty_list").html(specialtyList);
												}
											}
										});	
									}
									
									

									//点击生成报告
									function generateReport(){
										if(score != 1){
											layer.msg("请先完成成绩分析相关测评后继续该操作！",{icon:2,time:1000});
											return;
										}
										if(potentail != 1){
											layer.msg("请先完成学科潜能相关测评后继续该操作！",{icon:2,time:1000});
											return;
										}
										if(cognize != 1){
											layer.msg("请先完成认知相关测评后继续该操作！",{icon:2,time:1000});
											return;
										}
										var specialtyId = $(".specialty_list option:selected").val();//专业ID
										var province = $("#province option:selected").val();//省份信息
										console.log(province);
										if(specialtyId == "" || specialtyId == "0"){
											layer.msg("请选择专业",{icon:2,time:1000});
											return;
										}else{
											$.ajax({
												url:"${pageContext.request.contextPath}/xk/xgk_pick_verdict.do",
												data:"",
												type:"POST",
												contentType: 'text/json,charset=utf-8',
												dataType:"json",
												success:function(obj){
													if(obj.state == 1){
														location.href = "${pageContext.request.contextPath}/xk/xgk_pick_report.do?province=" + decodeURI(province) + "&specialtyId=" + specialtyId;
													} else if(obj.state == 2){
														layer.confirm(obj.message, {
															  btn: ['确认', '取消']
															}, function(index, layero){
																location.href = "${pageContext.request.contextPath}/xk/xgk_pick_report.do?province=" + decodeURI(province) + "&specialtyId=" + specialtyId;
															}, function(index){
																layer.close(index);
															}); 
													} else {
														layer.msg(obj.message,{icon:2,time:1000});
													}
												}
											});	
										}
									}
								</script>
</html>