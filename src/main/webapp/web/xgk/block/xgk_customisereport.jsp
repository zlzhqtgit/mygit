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
						<h1 class="text-primary fontwei">自定义选课分析报告</h1>

						<div class="margin_top1">
							<img src="${pageContext.request.contextPath}/img/xgk/user.png" style="width: 3em;">
							<span class="fontwei">用户名</span>
						</div>
						<p class="margin_top1">为了让你对自己有一个深入的了解，下面是关于你本次霍兰德职业兴趣测评的报告！</p>
						<div class="img margin_top1 text-center margin_bot1" style="padding: 2em 0;">
							<img src="${pageContext.request.contextPath}/img/xgk/select_arrow.png" style="" />
						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<!-- Default panel contents -->
					<div class="panel-heading fontwei">自定义选课分析报告</div>
					<div class="panel-body report">
						<ul>
							<li>
								<h2 class="fontwei margin_bot1">推荐专业介绍</h2>
								<div class="">
									<div class="">
										<h4 class="fontwei">1、生物学</h4>
										<p class="tindent">
											专业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
									<div class="">
										<h4 class="fontwei">2、生物学</h4>
										<p class="tindent">
											专业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
									<div class="">
										<h4 class="fontwei">3、生物学</h4>
										<p class="tindent">
											专业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
									<div class="">
										<h4 class="fontwei">4、生物学</h4>
										<p class="tindent">
											专业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
								</div>
							</li>

							<li>
								<h2 class="fontwei margin_bot1">专业课程</h2>
								<div class="">
									<div class="">
										<h4 class="fontwei">1、生物学</h4>
										<p class="tindent">
											专业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
									<div class="">
										<h4 class="fontwei">2、生物学</h4>
										<p class="tindent">
											专业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
									<div class="">
										<h4 class="fontwei">3、生物学</h4>
										<p class="tindent">
											专业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
									<div class="">
										<h4 class="fontwei">4、生物学</h4>
										<p class="tindent">
											专业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
								</div>
							</li>

							<li>
								<h2 class="fontwei margin_bot1">专业适配度</h2>
								<div class="">
									<div class="">
										<h4 class="fontwei">1、生物学报考要求</h4>
										<p class="tindent">
											专业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
										
										<!--<div id="major" class="atable text-center margin_bot margin_top"></div>-->
										<div id="major" style="width: 600px;height:600px; margin: 0 auto;"></div>
										<script type="text/javascript">
											var option = {
												title: {
													text: '专业学科适配量表',
													subtext: '数据来自网络',
													x:'left',
											        y:'top',
											        textAlign:'left'
												},
												tooltip: {
													trigger: 'axis',
													axisPointer: {
														type: 'shadow'
													}
												},
												legend: {
													data: ['2011年', '2012年']
												},
												grid: {
													left: '3%',
													right: '4%',
													bottom: '3%',
													containLabel: true
												},
												xAxis: {
													type: 'value',
													boundaryGap: [0, 0.01]
												},
												yAxis: {
													type: 'category',
													data: ['巴西','印尼','美国','印度','中国','世界人口(万)']
												},
												series: [
													{
														name: '2011年',
														type: 'bar',
														data: [18203, 23489, 29034, 104970, 131744, 630230]
													},
													{
														name: '2012年',
														type: 'bar',
														data: [19325, 23438, 31000, 121594, 134141, 681807]
													}
												]
											};
											var myChart = echarts.init(document.getElementById('major'));
											myChart.setOption(option);
										</script>
									</div>
									<div class="">
										<h4 class="fontwei">2、生物学报考要求</h4>
										<p class="tindent">
											专业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
									<div class="">
										<h4 class="fontwei">3、生物学报考要求</h4>
										<p class="tindent">
											专业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
									<div class="">
										<h4 class="fontwei">4、生物学报考要求</h4>
										<p class="tindent">
											专业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
								</div>
							</li>

							<li>
								<h2 class="fontwei margin_bot1">推荐职业介绍</h2>
								<div class="">
									<div class="">
										<h4 class="fontwei">1、生物学家</h4>
										<p class="tindent">
											职业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
									<div class="">
										<h4 class="fontwei">1、生物学家</h4>
										<p class="tindent">
											职业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
									<div class="">
										<h4 class="fontwei">1、生物学家</h4>
										<p class="tindent">
											职业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
									<div class="">
										<h4 class="fontwei">1、生物学家</h4>
										<p class="tindent">
											职业介绍：这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍这是一个专业介绍
										</p>
									</div>
								</div>
							</li>

							<li>
								<h2 class="fontwei margin_bot1">历年薪资及就业情况</h2>
								<div id="wages" style="width: 600px;height:400px;margin: 0 auto;" class="text-center"></div>
								<script type="text/javascript">
									// 基于准备好的dom，初始化echarts实例
									var wages = echarts.init(document.getElementById('wages'));
									// 指定图表的配置项和数据
									var option = {
										title: {
											text: 'xxx职业薪资及就业率'
										},
										legend: {},
										tooltip: {},
										dataset: {
											source: [
												['product', '2015', '2016', '2017'],
												['Matcha Latte', 43.3, 85.8, 93.7],
												['Milk Tea', 83.1, 73.4, 55.1],
												['Cheese Cocoa', 86.4, 65.2, 82.5],
												['Walnut Brownie', 72.4, 53.9, 39.1]
											]
										},
										xAxis: {
											type: 'category'
										},
										yAxis: {},
										// Declare several bar series, each will be mapped
										// to a column of dataset.source by default.
										series: [
											{
												type: 'bar'
											},
											{
												type: 'bar'
											},
											{
												type: 'bar'
											}
										]
									};
									// 使用刚指定的配置项和数据显示图表。
									wages.setOption(option);
								</script>
							</li>

							<li>
								<h2 class="fontwei margin_bot1">职业技能要求</h2>
								<div class="">
									<div id="tech_require" style="width: 600px;height:400px;margin: 0 auto;" class=""></div>
									<script type="text/javascript">
										var tech_require = echarts.init(document.getElementById('tech_require'));
										// 指定图表的配置项和数据
										var option = {
											title: {
										        text: '职业技能要求',
										        x:'center',
										        y:'top',
										        textAlign:'right'
//										        subtext: '纯属虚构'
										    },
										    tooltip: {
										        trigger: 'axis',
										        axisPointer: {
										            type: 'cross'
										        }
										    },
										    
										    //保存位图片
//										    toolbox: {
//										        show: true,
//										        feature: {
//										            saveAsImage: {}
//										        }
//										    },
										    xAxis:  {
										        type: 'category',
										        boundaryGap: false,
										        data: [
										        	'学历要求',
										        	'专业知识',
										        	'专业技能',
										        	'工作年限',
										        	'工作成果',
										        	'组织能力',
										        	'策划能力'
										        ]
										    },
										    yAxis: {
										        type: 'value',
										        min: 0,
										        max: 10,
										        axisLabel: {
										            formatter: '{value}'
										        },
										        axisPointer: {
										            snap: true
										        }
										    },
										    visualMap: {
										        show: false,
										        dimension: 0,
										        pieces: [{
										            lte: 6,
										            color: 'green'
										        }, {
										            gt: 6,
										            lte: 8,
										            color: 'red'
										        }, {
										            gt: 8,
										            lte: 14,
										            color: 'green'
										        }, {
										            gt: 14,
										            lte: 17,
										            color: 'red'
										        }, {
										            gt: 17,
										            color: 'green'
										        }]
										    },
										    series: [
										        {
										            name:'用电量',
										            type:'line',
										            smooth: true,
										            data: [4, 2, 8, 2, 8, 4, 2],
										            markArea: {
										                data: [ [{
										                    xAxis: '07:30'
										                }, {
										                    xAxis: '10:00'
										                }], [{
										                    xAxis: '17:30'
										                }, {
										                    xAxis: '21:15'
										                }] ]
										            }
										        }
										    ]
										};
										// 使用刚指定的配置项和数据显示图表。
										tech_require.setOption(option);
									</script>
								</div>
							</li>

							<li>
								<h2 class="fontwei margin_bot1">其它相似学科组合</h2>
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
							</li>

						</ul>
					</div>
			</section>

		</main>
				
		
<!-- 页面底部-->
<c:import url="../public/side_right.jsp"></c:import>	
<!-- 页面底部-->
<c:import url="footer.jsp"></c:import>	
</body>
<script type="text/javascript">
var id="${id}";
$( "#xgk"+id).addClass( "active" );
</script>
</html>
