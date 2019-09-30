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
						<p class="margin_top1">为了让你对自己有一个深入的了解，下面是关于你本次霍兰德职业兴趣测评的报告！</p>
						<div class="img margin_top1 text-center margin_bot1" style="padding: 2em 0;">
							<img src="${pageContext.request.contextPath}/img/xgk/guide_select.png" style="" />
						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<!-- Default panel contents -->
					<div class="panel-heading fontwei">测评分析选课报告</div>
					<div class="panel-body report">
						<ul>
							<li>
								<h2 class="fontwei margin_bot1">推荐职业介绍</h2>
								<div class="">
									<c:forEach items="${vocationLClist}" var="c" varStatus="start">
										<div class="">
											<h4 class="fontwei">&emsp;&emsp;${start.count}、${c.industryName}</h4>											
												<c:forEach items="${vocationlist}" var="b" varStatus="startb">																									
													<c:if test="${c.industryName eq b.industryName}">
															&emsp;&emsp;<a title="查看" href="javascript:;" onclick="enrollment_select('${b.vocationName}详情','xgk_vocation.do?vocationId=${b.vocationId}','4','1200','600')">${b.vocationName}</a>
													</c:if>																										
												</c:forEach>											
										</div>
									</c:forEach>			
								</div>
							</li>

							<li>
								<h2 class="fontwei margin_bot1">历年薪资及就业情况</h2>
								<div class="">
									<div id="wages" style="width: 600px;height:400px;margin: 0 auto;" class="text-center"></div>
									<script type="text/javascript">
										var colors = ['#5793f3', '#d14a61', '#666'];
										// 基于准备好的dom，初始化echarts实例
										var wages = echarts.init(document.getElementById('wages'));
										// 指定图表的配置项和数据
										var option = {
											title: {
										        text: '职业薪资及就业率',
										        x:'center',
										        y:'top',
//										        subtext: '纯属虚构'
										    },
											color: colors,
										    tooltip: {
										        trigger: 'axis',
										        axisPointer: {
										            type: 'cross'
										        }
										    },
										    grid: {
										        right: '20%'
										    },
//										    toolbox: {
//										        feature: {
//										            dataView: {show: true, readOnly: false},
//										            restore: {show: true},
//										            saveAsImage: {show: true}
//										        }
//										    },
										    legend: {
										        data:['就业平均值','某职业就业','薪资水平'],
										        bottom:0
										    },
										    xAxis: [
										        {
										            type: 'category',
										            axisTick: {
										                alignWithLabel: true
										            },
										            data: ['2015','2016','2017','2018']
										        }
										    ],
										    yAxis: [
										        {
										            type: 'value',
										            name: '就业平均值',
										            min: 0,
										            max: 6,
										            position: 'right',
										            offset: 20,
										            axisTick: {//坐标轴刻度相关设置。
												        show: false
												    },
												    splitLine: { //坐标轴在 grid 区域中的分隔线
												        show: false,
												    },
										            axisLine: {
										            	show: false,
										                lineStyle: {
										                    color: "#666"
										                }
										            },
										            axisLabel: {
										                formatter: '{value}'
										            }
										        },
										        {
										            type: 'value',
//										            name: '某职业就业',
										            min: 0,
										            max: 5,
//										            position: 'right',
										            offset: 20,
										            axisTick: {//坐标轴刻度相关设置。
												        show: false
												    },
												    splitLine: { //坐标轴在 grid 区域中的分隔线
												        show: false,
												    },
										            axisLine: {
										            	show:false,
										                lineStyle: {
										                    color: colors[1]
										                }
										            },
//										            axisLabel: {
//										                formatter: '{value} +'
//										            }
										        },
										        {
										            type: 'value',
										            name: '就业率',
										            min: 0,
										            max: 5,
										            position: 'left',
										            offset: 20,
										            axisTick: {//坐标轴刻度相关设置。
												        show: false
												    },
										            axisLine: {
										            	show: false,
										                lineStyle: {
										                    color: colors[2]
										                }
										            },
										            axisLabel: {
										                formatter: '{value}'
										            }
										        }
										    ],
										    series: [
										        {
										            name:'就业平均值',
										            barGap:'80%',/*多个并排柱子设置柱子之间的间距*/
									  	            barCategoryGap:'40%',/*多个并排柱子设置柱子之间的间距*/
										            type:'bar',
										            data:[2.0, 4.9, 3.0, 2.5]
										        },
										        {
										            name:'某职业就业',
										            type:'bar',
										            yAxisIndex: 1,
										            data:[2.6, 3.9, 2.0, 3.4]
										        },
										        {
										            name:'薪资水平',
										            type:'line',
										            yAxisIndex: 2,
										            data:[2.0, 2.4, 2.6, 3.5]
										        }
										    ]
										};
										// 使用刚指定的配置项和数据显示图表。
										wages.setOption(option);
									</script>
								</div>
							</li>

							<li>
								<h2 class="fontwei margin_bot1">职业技能要求</h2>
								<div class="">
									<div id="tech_require" style="width: 78%;height:400px;margin: 0 auto;" class=""></div>
									<script type="text/javascript">
										var tech_require = echarts.init(document.getElementById('tech_require'));
										// 指定图表的配置项和数据
										var colors = ['#5793f3', '#d14a61', '#675bba','#ddd'];
										var option = {
											title: {
										        text: '职业技能要求',
										        x:'left',
										        y:'top',
//										        subtext: '纯属虚构'
										    },
										    tooltip: {
										        trigger: 'axis'
										    },
										    legend: {
										        data:['生物学家','语言学家','物理学家','历史学家']
										    },
//										    toolbox: {//下载表格控件
//										        show: true,
//										        feature: {
//										            magicType: {show: true, type: ['stack', 'tiled']},
//										            saveAsImage: {show: true}
//										        }
//										    },
										    xAxis: {
										        type: 'category',
										        boundaryGap: false,
										        data: ['学历要求','专业知识','专业技能','工作年限','工作成果','组织能力','策划能力'],
										    },
										    yAxis: {
										        type: 'value',
										        axisLine: {
									            	show: false
									        	},
									        	offset: 20,
									        	axisTick: {//坐标轴刻度相关设置。
											        show: false
											    },
									        	axisLabel: {
									                formatter: '{value}'
									            }
										    },
										    series: [{
										        name: '生物学家',
										        type: 'line',
										        symbol:'circle',
										        symbolSize:16,
										        smooth: true,
										        data: [44, 88, 22, 88, 30, 55, 66]										        
										    },
										    {
										        name: '语言学家',
										        type: 'line',
										        symbol:'circle',
										        symbolSize:16,
										        smooth: true,
										        data: [30, 18, 22, 55, 77, 44, 60]
										    },
										    {
										        name: '物理学家',
										        type: 'line',
										        symbolSize:16,
										        symbol:'circle',
										        smooth: true,
										        data: [51, 77, 55, 33, 66, 44, 22]
										    },
										    {
										        name: '历史学家',
										        type: 'line',
										        symbolSize:16,
										        symbol:'circle',
										        smooth: true,
										        data: [22, 66, 44, 66, 44, 66, 44]
										    }]
										};
										// 使用刚指定的配置项和数据显示图表。
										tech_require.setOption(option);
									</script>
									<table class="" style="margin: 0 auto;" border="" cellspacing="" cellpadding="">
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
											<c:forEach items="${vocationLClist}" var="c" varStatus="start">																						
												<c:forEach items="${vocationlist}" var="b" varStatus="startb">																									
													<c:if test="${c.industryName eq b.industryName}">
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
													</c:if>																										
												</c:forEach>									
										</c:forEach>										
									</table>
								</div>
							</li>
							<li>
								<h2 class="fontwei margin_bot1">推荐专业介绍</h2>
								<div class="">
									<c:forEach items="${largeClasslist}" var="c" varStatus="start">
										<div class="">
											<h4 class="fontwei">&emsp;&emsp;${start.count}、${c.specialtyDisciplines}</h4>											
												<c:forEach items="${specialtylist}" var="b" varStatus="startb">																									
													<c:if test="${c.specialtyDisciplines eq b.specialtyDisciplines}">
															&emsp;&emsp;&emsp;&emsp;<a title="查看" href="javascript:;" onclick="enrollment_select('${b.specialtyName}详情','xgk_specialty.do?specialtyId=${b.specialtyId}','4','1200','600')">${b.specialtyName}</a>
													</c:if>																										
												</c:forEach>											
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
											<c:if test="${c.specialtyDisciplines eq b.specialtyDisciplines}">												
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
							<li>
								<h2 class="fontwei margin_bot1">其它相似学科组合及报考概率</h2>
								<style type="text/css">
									.combile_list li {
										width: 100px;
										list-style: circle;
									}
								</style>
								<ul class="combile_list" style="padding-left: 50px;">
									<li class="pull-left">物化生</li>
									<li class="pull-left">物生地</li>
									<li class="pull-left">生物历</li>
									<li class="pull-left">生化物</li>
								</ul>
								<div id="bkgl" style="width: 600px;height:400px; margin: 0 auto;"></div>
								<script type="text/javascript">
									var option = {
										title: {
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
//										legend: {
//											data: ['2011年', '2012年']
//										},
										grid: {//网格
											left: '10%',
											right: '4%',
											bottom: '3%',
											containLabel: true
										},
										xAxis: {
											type: 'value',
											min:0,
											max:100,
											show:false,
											boundaryGap: [0, 0.01],
											axisTick: {//坐标轴刻度相关设置。
										        show: false
										    },
										    splitLine: { //坐标轴在 grid 区域中的分隔线
										        show: false,
										    },
										},
										yAxis: {
											type: 'category',
											axisTick: {//坐标轴刻度相关设置。
										        show: false
										    },
											data: ['化物生','化生物','生化物','物化生']
										},
										series: [
											{
												name: '2011年',
												type: 'bar',
												data: [20, 47, 88, 44,],
												barWidth:40,
												itemStyle: {
													normal: {
														color:function(params) {
					                                        let colorList = [
					                                            "#c23531",
					                                            "#2f4554",
					                                            "#61a0a8",
					                                            "#d48265",
					                                        ];
					                                        return colorList[params.dataIndex];
					                                  	},
														label: {
															show: true, //开启显示
															position: 'insideRight', //在上方显示
															distance:-30,
															textStyle: { //数值样式
																color: 'black',
																fontSize: 16
															}
														}
													}
												}
											},
										]
									};
									var myChart = echarts.init(document.getElementById('bkgl'));
									myChart.setOption(option);
								</script>
							</li>
						</ul>
					</div>
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
	layer_show(title,url,w,h);
}
</script>
</html>
