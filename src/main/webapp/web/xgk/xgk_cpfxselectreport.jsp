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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />		
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/web/xgk/echarts.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script> 
</head>

<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>			
		<main class="container">
			<section class="row">
				<p class="text-right">
					<a href="" class="btn btn-primary">打印报告</a>
				</p>
				<div class="panel panel-default">

					<div class="panel-body">
						<h1 class="text-primary fontwei">测评分析选课报告</h1>

						<div class="margin_top1">
							<img src="${pageContext.request.contextPath}/img/xgk/user.png" style="width: 3em;">
							<span class="fontwei">用户名</span>
						</div>
						<p class="margin_top1">							
								<span class="padding-side text-muted">你的测评类型为 :<label class="text-danger">${personalityType}</label></span>
								<span class="padding-side text-muted">你的测评结果为：<label class="text-danger">${personalityCode}</label></span>
						</p>
						<div class="img margin_top1 text-center margin_bot1" style="padding: 2em 0;">
							<img src="${pageContext.request.contextPath}/img/xgk/guide_select.png" style="" />
						</div>
						<div class="">							
									<p class="">根据你的测评结果我们为你推荐如下职业，你可以根据自己的喜好选择相应的职业（最多可选6种）生成自己的选科报告。</p>
									<p class="text-danger">(注：以下职业是通过你的测评结果为你推荐，结果仅供参考使用)</p>
									<div class="options">
										<div class="">
											<div class="" style="    margin-left: 35px;">
												<c:forEach items="${vocationlist}" var="b" varStatus="startb">
													<span class="" style="    width: 260px; display: -webkit-inline-box;">
														<input type="checkbox" name="vocationbox" id="whs" value="${b.vocationId}" />
														<a title="查看" href="javascript:;" onclick="enrollment_select('${b.vocationName}详情','xgk_vocation.do?vocationId=${b.vocationId}','4','1200','600')">
															<label for="whs">${b.vocationName}</label>
														</a>
													</span>																							
												</c:forEach>											
											</div>											
										</div>
									</div>
									<p class="text-right">
										<a class="btn btn-primary" onclick="cpcheck()">生成报告>></a>
									</p>									
								</div>
					</div>
				</div>

				<div class="panel panel-default">
					<!-- Default panel contents -->
					<div class="panel-heading fontwei">测评分析选课报告</div>
					<c:if test="${pdcheck==1}">
						<p class="text-center margin_top1"><label class="text-danger">请选择相对应的职业</label></p>
					</c:if>
					<c:if test="${pdcheck != 1}">	
					<label>你选择的职业是：
						<c:forEach items="${vocationlistbyid}" var="b" varStatus="startb">
							${b.vocationName}
						</c:forEach>
					</label>		
					<div class="panel-body report">
						<ul>							
							<li>
								<h2 class="fontwei margin_bot1">职业技能要求</h2>
								<div class="">
									<div id="tech_require" style="width: 78%;height:400px;margin: 0 auto;" class=""></div>
									<p class="text-danger" style="margin-left: 150px;">注:以上列举了前4个职业的职业技能要求数据,更多职业的职业技能要求请参考下列的图表。</p>									
									<table id="vocationtb" class="" style="margin: 0 auto;" border="" cellspacing="" cellpadding="">
										<tr>
											<th>职业名称</th>
											<th>学历要求</th>
											<th>专业知识</th>
											<th>专业技能</th>
											<th>工作年限</th>
											<th>工作能力</th>
											<th>组织能力</th>
											<th>策划能力</th>
										</tr>																															
												<c:forEach items="${vocationlistbyid}" var="b" varStatus="startb">																									
													
														<tr>
															<td>${b.vocationName}</td>
															<td>${b.educationQalification}</td>
															<td>${b.specialtyKnow}</td>
															<td>${b.specialtySkill}</td>
															<td>${b.workYear}</td>
															<td>${b.workAchieved}</td>
															<td>${b.organizationAbility}</td>
															<td>${b.planAbility}</td>
														</tr>	
																																						
												</c:forEach>									
																				
									</table>
								</div>
							</li>
							<li>
								<h2 class="fontwei margin_bot1">推荐专业介绍</h2>
								<div class="">
									<c:forEach items="${largeClasslist}" var="c" varStatus="start">
										<div class="">
											<h4 class="fontwei">&emsp;&emsp;${start.count}、${c.specialtyDivided}</h4>
											<ul>										
												<c:forEach items="${specialtylist}" var="b" varStatus="startb">													
													<c:if test="${c.specialtyDivided eq b.specialtyDivided}">
														<li class="padding-side pull-left"><a title="查看" href="javascript:;" onclick="enrollment_select('${b.specialtyName}详情','xgk_specialty.do?specialtyId=${b.specialtyId}','4','1200','600')">${b.specialtyName}</a></li>
													</c:if>
												</c:forEach>
											</ul>	
										</div>
									</c:forEach>								
								</div>
							</li>
							<!-- 专业适配度 -->
							<li>
								<h2 class="fontwei margin_bot1">专业适配度</h2>
								<div class="">
									<table class="" style="margin: 0 auto;width: 95%;" border="" cellspacing="" cellpadding="">
										<tr>											
											<th>专业名称</th>
											<th>物理要求</th>
											<th>化学要求</th>
											<th>政治要求</th>
											<th>历史要求</th>
											<th>地理要求</th>
											<th>生物要求</th>
											<th>专业选考科目要求</th>
										</tr>
									<c:forEach items="${largeClasslist}" var="c" varStatus="start">
										<c:forEach items="${specialtylist}" var="b" varStatus="startb">	
											<tr>												
											<c:if test="${c.specialtyDivided eq b.specialtyDivided}">												
												<td>${b.specialtyName}</td>
												<td>${b.physicsPerformance}%</td>
												<td>${b.chemistryPerformance}%</td>
												<td>${b.politicPerformance}%</td>
												<td>${b.historyPerformance}%</td>
												<td>${b.geographyPerformance}%</td>
												<td>${b.biologyPerformance}%</td>
												<td><a title="查看详情" href="javascript:;" onclick="enrollment_select('${b.specialtyName}招生要求','xgk_cpEnrollment.do?includeMajor=${b.specialtyName}','4','1200','600')">查看详情</a></td>
											</c:if>
											</tr>
										</c:forEach>
									</c:forEach>
									</table>
								</div>
							</li>							
							<li>
								<h2 class="fontwei margin_bot1">单科学科选择与专业匹配度</h2>
								<div class="">
									<div class="">
										<p class="">
											以下图示仅表示推荐专业的报考的匹配度
										</p>
										<div id="xkxz" style="width: 600px;height:420px; margin: 0 auto;"></div>
										<script type="text/javascript">
											var option = {
												title: {
													text: '专业学科适配量表',
//													subtext: '数据来自网络',
													x:'center',
											        y:'top',
											        textAlign:'left'
												},
												tooltip: {
													trigger: 'axis',
													axisPointer: {
														type: 'shadow'
													}
												},
//												legend: {//图例
//													data: ['2011年'],
//												},
												grid: {//网格
													left: '1%',
													right: '4%',
													bottom: '3%',
													containLabel: true
												},
												xAxis: {
													type: 'value',
													min:0,
													max:100,
													splitLine: { //坐标轴在 grid 区域中的分隔线
												        show: false,
												    },
													boundaryGap: [0, 0.01]
												},
												yAxis: {
													type: 'category',
													data: ['巴西','印尼','美国','印度','中国','生物'],
													axisTick: {//坐标轴刻度相关设置。
												        show: false
												    },
												},
												series: [
													{
														name: '2011年',
														type: 'bar',
														data: [55, 88, 33, 44, 66, 77],
														barWidth:40,
														barCategoryGap:'50%',//柱图间距
														itemStyle: {
															normal: {
																color: function(params) {
							                                        let colorList = [
							                                            "#c23531",
							                                            "#2f4554",
							                                            "#61a0a8",
							                                            "#d48265",
							                                            "#91c7ae",
							                                            "#749f83",
							                                            "#6e7074",
							                                        ];
							                                        return colorList[params.dataIndex];
							                                   	},
																label: {
																	show: true, //开启显示
																	color:"#ddd",
																	position: 'insideRight', //在上方显示
																	distance: 20,
																	textStyle: { //数值样式
																		color: 'white',
																		fontSize: 16
																	}
																}
															}
														}
													},
												]
											};
											var myChart = echarts.init(document.getElementById('xkxz'));
											myChart.setOption(option);
										</script>
									</div>
									<h3 class="fontwei" style="color: red;">
										注意：以上报告最优科目选择为，物理、化学、生物这三种科目的搭配组合对应专业、职业的报考与选择，匹配度最高，如使用最优推荐学科组合，可直接点击顶部打印按钮直接
										保存选科测评报告并打印，或在不改变职业和专业选择的前提下，使用相似学科组合作为最终选科，并生成选科报告。
									</h3>
								</div>
							</li>
						</ul>
					</div>
					</c:if>
			</section>
		</main>		
<!-- 页面底部-->
<c:import url="side_right.jsp"></c:import>	
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
</body>
<script type="text/javascript">
var id="${id}";
$( "#xgk"+id).addClass( "active" );
function enrollment_select(title,url,id,w,h){
	//捕获页

	layer.open({
	  type: 1,
	  shade: false,
	  title: false, //不显示标题
	  content: $('.layer_notice'), //捕获的元素，注意：最好该指定的元素要存放在body最外层，否则可能被其它的相对元素所影响
	  cancel: function(){
	    layer.msg('捕获就是从页面已经存在的元素上，包裹layer的结构', {time: 5000, icon:6});
	  }
	});
	/* layer_show(title,url,w,h); */
}
function cpcheck() {
	var vocationbox=new Array();
	var cont=0;
	var obj = document.getElementsByName("vocationbox");	
	for(k in obj){
	    if(obj[k].checked){
	    	vocationbox[cont]=obj[k].value;
	    	cont++;
	    }    	
	}
	 return location.href="../xk/xgk_cpfxselectreport_two.do?vocationbox="+vocationbox+"&personalityCode="+"${personalityCode}";
}
</script>
<script type="text/javascript">
	var tech_require = echarts.init(document.getElementById('tech_require'));	
	// 指定图表的配置项和数据
	var colors = [ '#5793f3', '#d14a61', '#675bba', '#ddd' ];
	var option = {
		title : {
			text : '职业技能要求',
			x : 'left',
			y : 'top',		
		},
		tooltip : {
			trigger : 'axis'
		},
		legend : {},		
		xAxis : {
			type : 'category',
			boundaryGap : false,
			data : [ '学历要求', '专业知识', '专业技能', '工作年限', '工作成果', '组织能力', '策划能力' ],
		},
		yAxis : {
			type : 'value',
			axisLine : {
				show : false
			},
			offset : 20,
			axisTick : {//坐标轴刻度相关设置。
				show : false
			},
			axisLabel : {
				formatter : '{value}'
			}
		},
		series : []
	};
	var arr = {};
	var datashu = new Array();
	var tb = document.getElementById('vocationtb'); // table 的 id
	var rows = tb.rows;// 获取表格所有行
	for (var i = 1; i < rows.length; i++) {
		if (i <=6) {
			arr.name = rows[i].cells[0].innerHTML;
			arr.type = "line";
			arr.symbol = "circle";
			arr.symbolSize = 16;
			arr.smooth = true;
			for (var j =1; j < rows[i].cells.length; j++) { // 遍历该行的 td
				datashu[j-1] = rows[i].cells[j].innerHTML;
			}
			arr.data = datashu;			
			option.series.push(arr);
			arr = {};
			datashu = new Array();
		}
	}
	// 使用刚指定的配置项和数据显示图表。
	tech_require.setOption(option);
</script>
</html>
