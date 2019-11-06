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
	<style type="text/css">
		th{position: relative;text-align: center;}
		.table > thead > tr > th[class=first]{ padding: 0; }
		th>div{font-size: 14px;position: absolute;}
		.x_axis{top: 1em;right: 1em;}
		.y_axis{bottom: 1em;left: 1em;}
		table input{
			width: 100%;
			border: 0;
			text-align: center;
		}
		td{text-align: center;}
		tr td:first-of-type{
			color: #fff;
			background-color: #3b8bec;
		}
	</style>		
</head>
<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>	

	<main class="container">
		<section class="row">
			<h1 class="text-primary">分析结果</h1>
			<div class="panel panel-default">
				<div class="padding-side2 margin_top margin_bot">
					<p class="padding-side2">根据您所填写的成绩及所做的潜能测评来看，您学科单科的能力、潜能分析及两者的综合分析如下</p>
					<div class="score_analyse">
						<div id="major" style="width: 800px;height:600px; margin: 0 auto;"></div>
						<script type="text/javascript">
							var option = {
								title:{
									show:true,
									text:'成绩分析',
									top:'50%',
									left:'center',
									textVerticalAlign:'middle',
									textStyle:{
										fontSize:50,
									}
								},
								tooltip: {
							        trigger: 'item',
							        formatter: "{a} <br/>{b}: {c} ({d}%)"
							    },
							    legend: {
							    	show:false,
							        orient: 'vertical',
							        x: 'left',
							        data:['直接访问','邮件营销','联盟广告','视频广告','搜索引擎']
							    },
							    series: [
							        {
							            name:'访问来源',
							            type:'pie',
							            radius: ['50%', '70%'],
							            avoidLabelOverlap: false,
							            label: {
							                normal: {
							                    show: true,
							                    fontSize:'20',
							                    position: 'outside'
							                },
							                emphasis: {
							                    show: true,
							                    textStyle: {
							                        fontSize: '22',
							                        fontWeight: 'bold'
							                    }
							                }
							            },
							            labelLine: {
							                normal: {
							                    show: true
							                }
							            },
							            data:[
							                {value:335, name:'直接访问'},
							                {value:310, name:'邮件营销'},
							                {value:234, name:'联盟广告'},
							                {value:135, name:'视频广告'},
							                {value:1548, name:'搜索引擎'}
							            ]
							        }
							    ]
							};
							var myChart = echarts.init(document.getElementById('major'));
							myChart.setOption(option);
						</script>
					</div>
					<div class="padding-side2">
						<h3 class="fontwei margin_top margin_bot1">潜能分析</h3>
						<table class="margin_bot" border="" cellspacing="" cellpadding="" style="margin-left:auto;margin-right: auto;">
							<thead>
								<tr style="background-color: #3b8bec;color: white;">
									<th class="first" style="padding: 0;">
										<canvas id="myCanvas" style="width: 100%;height: 100%;">您的浏览器不支持 HTML5 canvas 标签。</canvas>
										<script type="text/javascript">
											//绘制表格斜线头
											var c=document.getElementById("myCanvas");
											var ctx=c.getContext("2d");
											ctx.moveTo(0,0);
											ctx.strokeStyle="#fff";
											var th_height=$("[class=first]").height();
											console.log(th_height);
											var w=$("#myCanvas").width(),
												h=$("#myCanvas").height();
											ctx.lineTo(w,h);
											ctx.stroke();
										</script>
										<div class="x_axis">科目 / 次数</div>
										<div class="y_axis">成绩 / 排名</div>
									</th>
									<th>物理</th>
									<th>化学</th>
									<th>生物</th>
									<th>政治</th>
									<th>历史</th>
									<th>地理</th>
								</tr>
							</thead>
							<tbody>
								<tr><td>能力</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
								<tr><td>兴趣</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
								<tr><td>自信</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
							</tbody>
						</table>
						<p class="text-right"><a class="btn btn-primary fontwei" href="${pageContext.request.contextPath}/web/xgk/xgk_xk_analyse_rpt.jsp">查看潜能报告</a></p>
					</div>
					
					<div class="score_analyse">
						<div id="major1" style="width: 800px;height:600px; margin: 0 auto;"></div>
						<script type="text/javascript">
							var option = {
								title:{
									show:true,
									text:'综合分析',
									top:'50%',
									left:'center',
									textVerticalAlign:'middle',
									textStyle:{
										fontSize:50,
									}
								},
								tooltip: {
							        trigger: 'item',
							        formatter: "{a} <br/>{b}: {c} ({d}%)"
							    },
							    legend: {
							    	show:false,
							        orient: 'vertical',
							        x: 'left',
							        data:['直接访问','邮件营销','联盟广告','视频广告','搜索引擎']
							    },
							    series: [
							        {
							            name:'访问来源',
							            type:'pie',
							            radius: ['50%', '70%'],
							            avoidLabelOverlap: false,
							            label: {
							                normal: {
							                    show: true,
							                    fontSize:'20',
							                    position: 'outside'
							                },
							                emphasis: {
							                    show: true,
							                    textStyle: {
							                        fontSize: '22',
							                        fontWeight: 'bold'
							                    }
							                }
							            },
							            labelLine: {
							                normal: {
							                    show: true
							                }
							            },
							            data:[
							                {value:10, name:'直接访问'},
							                {value:5, name:'邮件营销'},
							                {value:20, name:'联盟广告'},
							                {value:40, name:'视频广告'},
							                {value:30, name:'搜索引擎'}
							            ]
							        }
							    ]
							};
							var myChart1 = echarts.init(document.getElementById('major1'));
							myChart1.setOption(option);
						</script>
					</div>
					
					<div class="comprehensive padding-side2">
						<p class="text-right"><a class="btn btn-primary fontwei" href="">下一步</a></p>
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
<script type="text/javascript">
var id="${id}";
$( "#xgk"+id).addClass( "active" );
</script>
</html>