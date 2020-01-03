<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="viewport" content="width=device-width, initial-scale=0.3">
<title>新高考-学科探索</title>
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath}/css/xgk/index.css" />
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath}/css/xgk/xgk_subject.css" />
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/web/xgk/echarts.min.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/web/xgk/xgk_subject.js"></script>
</head>
<body>
	<!-- 页面顶部-->
	<c:import url="header.jsp"></c:import>
	<main class="container">
	<section class="row">
		<p class="text-right">
			<a href="javascript:history.go(-1)" class="btn btn-primary">返回</a>
		</p>
		<h1 class="text-primary fontwei">学科探索</h1>
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="padding-side2">
					<div class="">
						<h3 class="margin_top1">学科推荐</h3>
						<p class="padding-side2 margin_bot margin_top1">通过成绩分析、学科潜能测评，我们可以得到一个适合您的一项报告，报告将从几个方面来呈现学科特点，请认真测评并如实填写相关测评数据。</p>
					</div>
					<div class="margin_top">
						<h3 class="">成绩分析</h3>
						<p class="padding-side2 margin_bot margin_top1">
							请根据下表所需的内容，填写相关数据信息，请如实填写表格内容，以保证结果的准确性。</br> <span
								style="color: #e40d0d;">注：如果没有期中成绩和期末成绩，请填写最近三次相关的成绩。</span>
						</p>
						<table class="score_in table-hover" border="" cellspacing=""
							cellpadding="">
							<thead>
								<tr>
									<th class="first" style="padding: 0;" rowspan="2">
										<canvas id="myCanvas" style="width: 128px; height: 92px;">您的浏览器不支持 HTML5 canvas 标签。</canvas>
										<script type="text/javascript">
											//绘制表格斜线头
											var c = document.getElementById("myCanvas");
											var ctx = c.getContext("2d");
											ctx.strokeStyle = "#fff";
											ctx.moveTo(0, 0);
											var w = $("#myCanvas").width(), h = $("#myCanvas").height();
											ctx.lineTo(330, 166);
											ctx.stroke();
										</script>
										<div class="x_axis text-center">科类</div>
										<div class="y_axis text-center">次数</div>
									</th>
									<th colspan="2">物理</th>
									<th colspan="2">化学</th>
									<th colspan="2">生物</th>
									<th colspan="2">政治</th>
									<th colspan="2">历史</th>
									<th colspan="2">地理</th>
								</tr>
								<tr>
									<th>成绩</th>
									<th>满分</th>
									<th>成绩</th>
									<th>满分</th>
									<th>成绩</th>
									<th>满分</th>
									<th>成绩</th>
									<th>满分</th>
									<th>成绩</th>
									<th>满分</th>
									<th>成绩</th>
									<th>满分</th>
								</tr>
							</thead>
							<tbody>
								<tr class="firsr_tr">
									<td><div>最近一次</div></td>
									<td><input type="" name="wuli" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="wuli" name="wuli" onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="huax" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="huax" name="huax" onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="sengw" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="sengw" name="sengw"
										onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="zhengz" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="zhengz" name="zhengz"
										onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="lis" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="lis" name="lis" onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="dil" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="dil" name="dil" onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
								</tr>
								<tr>
									<td>期中考试</td>
									<td><input type="" name="wuli" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="wuli" name="wuli" onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="huax" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="huax" name="huax" onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="sengw" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="sengw" name="sengw"
										onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="zhengz" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="zhengz" name="zhengz"
										onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="lis" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="lis" name="lis" onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="dil" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="dil" name="dil" onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
								</tr>
								<tr>
									<td>期末考试</td>
									<td><input type="" name="wuli" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="wuli" name="wuli" onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="huax" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="huax" name="huax" onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="sengw" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="sengw" name="sengw"
										onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="zhengz" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="zhengz" name="zhengz"
										onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="lis" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="lis" name="lis" onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
									<td><input type="" name="dil" maxlength="3"
										oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										onkeyup="fxshuj(this)" /></td>
									<td><select id="dil" name="dil" onchange="fxshuj(this)">
											<option value="150">150</option>
											<option value="120">120</option>
											<option value="100">100</option>
									</select></td>
								</tr>
								<tr>
									<td style="border-right: 1px solid #72aef6;"></td>
									<td colspan="12" style="background: #72aef6;"></td>
								</tr>
								<tr>
									<td>平均得分率</td>
									<td id="wulidfl" colspan="2"></td>
									<td id="huaxdfl" colspan="2"></td>
									<td id="sengwdfl" colspan="2"></td>
									<td id="zhengzdfl" colspan="2"></td>
									<td id="lisdfl" colspan="2"></td>
									<td id="dildfl" colspan="2"></td>
								</tr>
								<tr>
									<td>良好(平均)</td>
									<td id="wulilh" colspan="2"></td>
									<td id="huaxlh" colspan="2"></td>
									<td id="sengwlh" colspan="2"></td>
									<td id="zhengzlh" colspan="2"></td>
									<td id="lislh" colspan="2"></td>
									<td id="dillh" colspan="2"></td>
								</tr>
								<tr>
									<td>优秀(平均)</td>
									<td id="wuliyx" colspan="2"></td>
									<td id="huaxyx" colspan="2"></td>
									<td id="sengwyx" colspan="2"></td>
									<td id="zhengzyx" colspan="2"></td>
									<td id="lisyx" colspan="2"></td>
									<td id="dilyx" colspan="2"></td>
								</tr>
								<tr>
									<td>低分(平均)</td>
									<td id="wulidf" colspan="2"></td>
									<td id="huaxdf" colspan="2"></td>
									<td id="sengwdf" colspan="2"></td>
									<td id="zhengzdf" colspan="2"></td>
									<td id="lisdf" colspan="2"></td>
									<td id="dildf" colspan="2"></td>
								</tr>
							</tbody>
						</table>
						<div class="score_ts">
							<p>
								良好(平均):<label></label>
							</p>
							<p>
								优秀(平均):<label style="background: #e8bb0d;"></label>
							</p>
							<p>
								低分(平均):<label style="background: #ce0d0d;"></label>
							</p>
						</div>
						<div class="score_tsa">
							<p>温馨提示：</p>
							<p class="score_ts_p">平均得分率：是根据你输入的成绩/你本次的满分，再根据的输入的成绩次数取平均值，如果只输入了一次就按一次计算。</p>
							<p class="score_ts_p">良好(平均)：是指根据的满分取平均分，再根据你的成绩的平均分所在范围值。处于及格以上、80%以下属于良好。如果只输入了一次就按一次计算。</p>
							<p class="score_ts_p">优秀(平均)：是指根据的满分取平均分，再根据你的成绩的平均分所在范围值。处于80%以上属于高分。如果只输入了一次就按一次计算。</p>
							<p class="score_ts_p">低分(平均)：是指根据的满分取平均分，再根据你的成绩的平均分所在范围值。处于及格一下属于低分。如果只输入了一次就按一次计算。</p>
						</div>
					</div>
										
					<p class="text-right  margin_bot">
							<a class="btn btn-primary" onclick="haveYouSubjectExploration()" href="javascript:void(0)">下一步</a>					
					</p>
					<script type="text/javascript">
						var cjfx = "${CJFX.featureId}";
						var qnfx = "${QNFX.featureId}";
						$(function(){
							var jump = '${jump}';
							if(jump == 3){
								score = JSON.parse('${CJFX.evaluationFraction}');
								total_sc = JSON.parse('${QNFX.evaluationFraction}');
								analysis();//进入潜能分析报告
							}
							if(jump == 1){
								score = JSON.parse('${CJFX.evaluationFraction}');
								layer.msg('您未做过学科潜能测评，未能查看成绩分析报告。请进行潜能分析测评后进行查看！', {icon: 5,time:2000});
								sectshow(1);
							}
							var test = '${test}';
							if (test != null && test != ""){
								if(test == 1){
									score = JSON.parse('${CJFX.evaluationFraction}');
									sectshow(1);
								}
								if(test == 0){
									layer.msg('您未做过学科探索之成绩分析，请先进行成绩分析。在进入潜能测评！', {icon: 5,time:2000});
									sectshow(0);
								}
							}
						})
						// 判断用户是否已做过学科探索
						function haveYouSubjectExploration() {
							var uid = '${uid}';
							if(uid == "" || uid == null){
								onlogin();
							}else{
								console.log(score);
								if(cjfx == ""){									
									//未做过成绩分析
									tip_input();
									//成绩分析纳入数据统计
									$.ajax({
										url: "${pageContext.request.contextPath}/sub/xgk_score_analysis.do",
										data:"score=" + JSON.stringify(score),
										type:"POST",
										dataType:"json",
										success:function(obj){
											if(obj.state == 0){
												layer.msg(obj.message,{icon:2,time:1000});
											}
										}
									});	
								} else {
									//已做过学科探索 弹出选项提示
									layer.confirm('您已做过学科探索之成绩分析，是否继续？继续将覆盖学科探索之成绩分析！', {
									btn: ['确定', '取消', '进入潜能测评']
									,btn3: function(index, layero){
										//进入潜能分析
										sectshow(1);
									}
									}, function(index, layero){
										//确定
										tip_input();										
										$.ajax({
											url: "${pageContext.request.contextPath}/sub/xgk_score_analysis.do",
											data:"score=" + JSON.stringify(score),
											type:"POST",
											dataType:"json",
											success:function(obj){
												if(obj.state == 0){
													layer.msg(obj.message,{icon:2,time:1000});
												}
											}
										});	
										layer.close(index, layero);
									}, function(index){
										//取消
										layer.close(index);
									});
								}
							}
						}
					</script>
				</div>
			</div>
		</div>
	</section>
	<section class="row">
		<p class="text-right">
			<a class="btn btn-primary" href="javascript:;" onclick="sectshow(0);">返回</a>
		</p>
		
		<h1 class="text-primary fontwei">学科潜能测评</h1>	
		<div class="panel panel-default">
			<div class="text-muted padding-side2 margin_top margin_bot1">
				<img src="${pageContext.request.contextPath}/img/xgk/user.png"
					/ style="max-width: 3em;"> <span class="">您好！</span>
			</div>
			<p class="padding-side2 tindent fontwei">学科潜能测评是从学科兴趣、学科能力、学科自信程度三个维度了解学科潜能。学科兴趣是指对某一门学科或课程的学习兴趣；学科能力是学生的智力、能力与特定学科的有机结合，是学生的智力能力在特定学科中的具体体现；学科自信度是学生对自己在某一学科上完成学习任务，客服学习困难的自信程度。</p>
			<ul class="padding-side2"
				style="padding-left: 4em; list-style: disc; font-family: '楷体';">
				<li>测评分两个部分，一共90道题，建议大家一次完成所有测题，如果觉得一次完成比较困难，大家也可以先完成第一部分，在完成第二部分。</li>
				<li>第一部分一共60道测题，请认真阅读题目，并在5个选项中，选择最符合你自身特点的一项。答案没有对错、好坏之分，一般完成事件在20分钟以内。</li>
				<li>第二部分一共30道题，请认真阅读题目，并选出正确答案。</li>
			</ul>
			<p class="text-right padding-side2 margin_bot">
					<a class="btn btn-primary" href="javascript:;" onclick="answer();">开始答题</a>
			</p>
			<script type="text/javascript">
				//答题
				function answer(){
					var QNFX = "${QNFX.featureId}";
					if(QNFX != ""){
						layer.confirm('您已做过学科探索之潜能分析，是否继续？继续将覆盖学科探索之潜能分析！', {
							  btn: ['确定', '取消', '进入分析结果页面'] //可以无限个按钮
							  ,btn3: function(index, layero){
								  total_sc = JSON.parse('${QNFX.evaluationFraction}');
								  $.ajax({
										url: "${pageContext.request.contextPath}/sub/xgk_score_report.do",
										data:"",
										type:"POST",
										dataType:"json",
										success:function(obj){
											if(obj.state == 0){
												layer.msg(obj.message,{icon:2,time:1000});
											}else{
												score = JSON.parse(obj.data.evaluationFraction);
												analysis();
											}
										}	
									});
							  }
							}, function(index, layero){
							  	//确定
								layer.close(index)
								getScore();
							}, function(index){
							 	//取消
							});
					}else{
						getScore();
					}
				}
				//获得成绩分析成绩
				function getScore(){
					$.ajax({
						url: "${pageContext.request.contextPath}/sub/xgk_score_report.do",
						data:"",
						type:"POST",
						dataType:"json",
						success:function(obj){
							if(obj.state == 0){
								layer.msg(obj.message,{icon:2,time:1000});
							}else{
								score = JSON.parse(obj.data.evaluationFraction);
								sectshow(2);
							}
						}	
					});
				}
			</script>
		</div>
	</section>
	<section class="row">
		<p class="text-right">
			<a class="btn btn-primary" href="javascript:;" onclick="sectshow(1);">返回</a>
		</p>
		<h1 class="text-primary fontwei">学科潜能测评</h1>
		<div class="panel panel-default content" style="height: 433.7px;">
			<div class="padding-side2 margin_top">
				<p class="tm" style="font-family: '楷体';">1、老师在课堂上讲述的地理知识，我基本全部能理解。</p>
				<input id="num" type="hidden" value="0" />
				<div class="choise margin_top1" style="height: 210px;"></div>
			</div>
			<div class="padding-side2 margin_top1 margin_bot">
				<p class="text-right">
					<span id="current">1</span>/<span id="total">60</span>
				</p>
				<div class="progress" style="height: 6px;">
					<div id="progress" class="progress-bar" role="progressbar"
						aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"
						style="width: 10%;">
						<span class="sr-only">10%</span>
					</div>
				</div>
			</div>		
		</div>
	</section>
	<section class="row">
		<p class="text-right">
			<a class="btn btn-primary" href="javascript:;" onclick="sectshow(2);">返回</a>
		</p>
		<h1 class="text-primary">分析结果</h1>
		<div class="panel panel-default">
			<div class="padding-side2 margin_top margin_bot">
				<p class="padding-side2">根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下</p>
				<div class="score_analyse">
					<div id="major"	style="width: 800px; height: 600px; margin: 0 auto;"></div>					
				</div>
				<div class="padding-side2">
					<h3 class="fontwei margin_top margin_bot1">潜能分析</h3>
					<table class="margin_bot qnAnalyse" border="" cellspacing="" cellpadding=""
						style="margin-left: auto; margin-right: auto;">
						<thead>
							<tr style="background-color: #3b8bec; color: white;">
								<th class="first1" style="padding: 0;height: 5em;">
									<canvas id="myCanvas1" style="width: 100%;height: 100%;">您的浏览器不支持 HTML5 canvas 标签。</canvas>
									<div class="x_axis">科目</div>
									<div class="y_axis">类别</div>
								</th>
								<script type="text/javascript">
									//绘制表格斜线头
									var c1 = document.getElementById("myCanvas1");
									var ctx1 = c1.getContext("2d");
									ctx1.strokeStyle = "#fff";
									ctx1.moveTo(0, 0);
									var th_height1 = $("[class=first1]").height();
									
									var w1 = $("#myCanvas1").width();
									var h1 = $("#myCanvas1").height();
									ctx1.lineTo(330, 166);
									ctx1.stroke();
								</script>
								<th>物理</th>
								<th>化学</th>
								<th>生物</th>
								<th>政治</th>
								<th>历史</th>
								<th>地理</th>
							</tr>
						</thead>
						<tbody id="cptbody">
							<tr>
								<td >能力</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
							</tr>
							<tr>
								<td>兴趣</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
							</tr>
							<tr>
								<td>自信</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
							</tr>
						</tbody>
					</table>
					<p class="text-right">						
							<a href="${pageContext.request.contextPath}/sub/xgk_potential_report.do" class="btn btn-primary fontwei">查看潜能报告</a>					
					</p>
				</div>

				<div class="score_analyse">
					<div id="major1" style="width: 800px; height: 600px; margin: 0 auto;"></div>
					
				</div>

				<div class="comprehensive padding-side2">
					<p class="text-right">
						<a href="${pageContext.request.contextPath}/cp/xgk_choice.do" class="btn btn-primary fontwei">下一步</a>
					</p>
				</div>
			</div>
		</div>
	</section>
	</main>
	<!-- 页面右侧-->
	<c:import url="../public/side_right.jsp"></c:import>
	<!-- 页面底部-->
	<c:import url="footer.jsp"></c:import>
</body>
</html>