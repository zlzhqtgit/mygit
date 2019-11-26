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
	<script type="text/javascript"	src="${pageContext.request.contextPath}/js/web/xgk/xgk_analyse.js"></script>
</head>
<body>
<!-- 页面顶部-->
<c:import url="header.jsp"></c:import>	

<main class="container">
	<section class="row">
		<p class="text-right"><a class="btn btn-primary" href="javascript:void(0);">打印报告</a></p>
		<h1 class="text-primary fontwei">学科分析报告</h1>
		<div class="panel panel-default">
			<div class="padding-side2 margin_top margin_bot">
				<div class="report_box padding-side2">
					<p class="">通过学科潜能测评结果对比分析，发现6门选考科目的适合度排序为：</p>
					<p class="margin_top margin_bot"><a class="btn btn-primary" href="" id="one">物理</a><a class="btn btn-primary" href="" id="two">化学</a><a class="btn btn-primary" href=" "id="three">生物</a></p>
					<p class="">前三门科目是你的优势学科，你学习起来更感兴趣,也更容易学好，并且你对于学号这些科目更有信心；而后三门科目是你的非优势学科，在确定高考选考科目时，应当选择自己擅长的，回避自己的若是的科目。当然，你业可以根据上述各学科的发展建议提升自己想要选考科目的兴趣、能力、自信程度，并结合“学科推荐”系统中的其它维度统合分析，帮您做出最为科学、合理的决策。</p>
					<div class="analyse_report margin_top">
						<div id="xk_analyse_report1" class="" style="width: 600px;height:400px; margin: 3em auto;"></div>
						<script type="text/javascript">
									option1 = {
											title:{
												show:true,
												text:'图一 学科潜能总体分析',
												bottom:'-10',
												left:'center'
											},
						                    tooltip: {
						                        trigger: 'axis'
						                    },	
						                    legend: {
						                        data:['实际得分','平均得分'],
						                        left:'center'
						                    },
						                    xAxis: [
						                        {
						                            type: 'category',
						                            data: ['物理','化学','生物']
						                        }
						                    ],
						                    yAxis: [
						                        {
						                            type: 'value',
//						                            name: '水量/ml',
						                            min: 0,
						                            max: 80,
						                            interval: 50,
						                            axisLabel: {
						                                formatter: '{value} '
						                            }
						                        }
						                    ],
						                    series: [
						                         
						                        {
						                            name:'实际得分',
						                            type:'bar',
						                            barWidth:'60',
						                            
						                            /*设置柱状图颜色*/
						                            itemStyle: {
						                                normal: {
						                                    color: function(params) {
						                                        var colorList = [
						                                        	'#fe4f4f','#fead33','#feca2b','#fef728','#c5ee4a',
						                                            '#87ee4a','#46eda9','#47e4ed','#4bbbee','#7646d8',
						                                            '#924ae2','#C6E579','#F4E001','#F0805A','#26C0C0',
						                                        ];
						                                        return colorList[params.dataIndex]
						                                    },
						                                    /*信息显示方式*/
						                                    label: {
						                                        show: true,
						                                        position: 'top',
						                                        formatter: '{b}\n{c}'
						                                    }
						                                }
						                            },
						                            data:[65, 55, 50]
						                        },
						                        {
						                            name:'平均得分',
						                            type:'line',
						                            itemStyle : {  /*设置折线颜色*/
						                                normal : {
						                                   /* color:'#c4cddc'*/
						                                }
						                            },
						                            data:[20, 36, 40, ]
						                        }
						                    ]
						            };
									var list = '${list}';
									var report = JSON.parse(list);
									// option1.xAxis[0].data[0] = report[0].key;
									// option1.xAxis[0].data[1] = report[1].key;
									// option1.xAxis[0].data[2] = report[2].key;
									option1.series[0].data[0] = report[0].value;
									option1.series[0].data[1] = report[1].value;
									option1.series[0].data[2] = report[2].value;
									option1.series[1].data[0] = report[0].value/3;
									option1.series[1].data[1] = report[1].value/3;
									option1.series[1].data[2] = report[2].value/3;
									for (var i=0; i<title_subject.length; i++){
										if (title_subject[i].title == report[0].key){
											option1.xAxis[0].data[0] = title_subject[i].subject;
											$("#one").html(title_subject[i].subject);
										}
										if (title_subject[i].title == report[1].key){
											option1.xAxis[0].data[1] = title_subject[i].subject;
											$("#one").html(title_subject[i].subject);
										}
										if (title_subject[i].title == report[2].key){
											option1.xAxis[0].data[2] = title_subject[i].subject;
											$("#one").html(title_subject[i].subject);
										}
									}
									var myChart1 = echarts.init(document.getElementById('xk_analyse_report1'));
									myChart1.setOption(option1);
								</script>
						
						<div id="xk_analyse_report2" class="" style="width: 600px;height:400px; margin: 0 auto;"></div>
						<script type="text/javascript">
							var name='学科兴趣';
							option2 = {
								title:{
									show:true,
									text:'图二 学科潜能分项分析',
									bottom:'-10',
									left:'center'
								},
							    legend: {},
							    tooltip: {},
							    dataset: {
							        dimensions: ['product', '学科兴趣', '学科能力', '学科自信度'],
							        source: [
							            {product: '物理', '学科兴趣': 43.3, '学科能力': 85.8, '学科自信度': 93.7},
							            {product: '化学', '学科兴趣': 83.1, '学科能力': 73.4, '学科自信度': 55.1},
							            {product: '生物', '学科兴趣': 86.4, '学科能力': 65.2, '学科自信度': 82.5},
							            {product: '政治', '学科兴趣': 72.4, '学科能力': 53.9, '学科自信度': 39.1},
							            {product: '历史', '学科兴趣': 83.1, '学科能力': 73.4, '学科自信度': 55.1},
							            {product: '地理', '学科兴趣': 86.4, '学科能力': 65.2, '学科自信度': 82.5},
							        ]
							    },
							    xAxis: {type: 'category'},
							    yAxis: {},
							    // Declare several bar series, each will be mapped
							    // to a column of dataset.source by default.
							    series: [
							        {type: 'bar'},
							        {type: 'bar'},
							        {type: 'bar'}
							    ]
							};
							// alert(option2.dataset.source[0].学科兴趣);
							var evaluationFraction = '${evaluationFraction}';
							var array = JSON.parse(evaluationFraction);
							for (var i=0;i<array.length;i++){
								if (array[i][0] == '物'){
									if (array[i][1] == '兴趣'){
										option2.dataset.source[0].学科兴趣 = array[i][2];
									}
									if (array[i][1] == '能力'){
										option2.dataset.source[0].学科能力 = array[i][2];
									}
									if (array[i][1] == '自信'){
										option2.dataset.source[0].学科自信度 = array[i][2];
									}
								}
								if (array[i][0] == '化'){
									if (array[i][1] == '兴趣'){
										option2.dataset.source[1].学科兴趣 = array[i][2];
									}
									if (array[i][1] == '能力'){
										option2.dataset.source[1].学科能力 = array[i][2];
									}
									if (array[i][1] == '自信'){
										option2.dataset.source[1].学科自信度 = array[i][2];
									}
								}
								if (array[i][0] == '生'){
									if (array[i][1] == '兴趣'){
										option2.dataset.source[2].学科兴趣 = array[i][2];
									}
									if (array[i][1] == '能力'){
										option2.dataset.source[2].学科能力 = array[i][2];
									}
									if (array[i][1] == '自信'){
										option2.dataset.source[2].学科自信度 = array[i][2];
									}
								}
								if (array[i][0] == '政'){
									if (array[i][1] == '兴趣'){
										option2.dataset.source[3].学科兴趣 = array[i][2];
									}
									if (array[i][1] == '能力'){
										option2.dataset.source[3].学科能力 = array[i][2];
									}
									if (array[i][1] == '自信'){
										option2.dataset.source[3].学科自信度 = array[i][2];
									}
								}
								if (array[i][0] == '历'){
									if (array[i][1] == '兴趣'){
										option2.dataset.source[4].学科兴趣 = array[i][2];
									}
									if (array[i][1] == '能力'){
										option2.dataset.source[4].学科能力 = array[i][2];
									}
									if (array[i][1] == '自信'){
										option2.dataset.source[4].学科自信度 = array[i][2];
									}
								}
								if (array[i][0] == '地'){
									if (array[i][1] == '兴趣'){
										option2.dataset.source[5].学科兴趣 = array[i][2];
									}
									if (array[i][1] == '能力'){
										option2.dataset.source[5].学科能力 = array[i][2];
									}
									if (array[i][1] == '自信'){
										option2.dataset.source[5].学科自信度 = array[i][2];
									}
								}
							}
							var myChart2 = echarts.init(document.getElementById('xk_analyse_report2'));
							myChart2.setOption(option2);
						</script>
						<div class="">
							<h3 class="fontwei">测评分析</h3>
							<div class="">
								学科潜能测评综合考量各个学科的学习兴趣、学科能力、学科自信程度三方面因素，简言之，就是兴趣、能力、自信心。从多维度对每个学科进行综合分析，助你做出最科学的选择。
								<p>让我们了解一下什么是学科兴趣、学科能力、学科自信程度。</p>
							</div>
						</div>
						<div class="">
							<h3 class="fontwei">学科兴趣</h3>
							<div class="">
								兴趣是最好的老师，成功的秘诀在于兴趣。学习兴趣是指推动个体探求知识并带有积极情绪色彩的一种个性倾向。当学科兴趣被激发是，个体不仅会体验到喜欢学该门课，同时还会体验到惊讶、好奇、快乐等正向情感体验。
							</div>
						</div>
						<div class="">
							<h3 class="fontwei">学科能力</h3>
							<div class="">
								学科能力指学生在学习某学科时的智力活动及其有关的智力与能力的成分，也指学习某学科的学习能力、学习策略与学习方法。心理学家研究发现，学科能力对于学生在该学科上的成绩具有稳定的预测力。
							</div>
						</div>
						<div class="">
							<h3 class="fontwei">学科自信程度</h3>
							<div class="">
								学科自信程度指学习者对自己能否利用所拥有的能力或技能去完成学习任务的自信程度的评价，是个体对控制自己学习行为和学习成绩的一种主观判断。研究表明，学科自信程度与学习成绩存在显著正相关，较高的学科自我自信程度能促进学习成绩的提高。
							</div>
						</div>
						
						<table class="table-hover center-block margin_top margin_bot" border="" cellspacing="" cellpadding="">
							<thead>
								<tr style="background-color: #3b8bec;color: #fff;"><th>学科</th><th>维度</th><th>测评得分</th><th>学科维度解释</th></tr>
							</thead>
							<tbody id="analyze">
								<tr><td rowspan="4">物理</td></tr>
								<tr><td>能力 </td><td>Data</td><td>你的物理学科能力分数为20.0处于同类人的75%以上，说明你具备学好物理学科的能力具有对物理概念和规律进行探寻的习惯，善于分析物理概念规律的内涵和外延，掌握物理因果思维程序，运用物理模型解决实际生活中的具体问题。</td></tr>
								<tr><td>兴趣 </td><td>Data</td><td>你的物理学科兴趣分数为15.0，处于同类人群的25%--75%之间，说明你对物理学科的兴趣处于中等水平，你对物理学科的学习没有表现出极大的热情，但是也没有表现出明显的反感情绪，可以通过观察与实验的方法来激发你对物理学习的兴趣，在生活中模拟各种物理现象和规律，带着问题去主动转眼与探索，培养学科兴趣。</td></tr>
								<tr><td>自信 </td><td>Data</td><td>你的物理学科自信程度分数为17.0，处于同类人群的25%--75%之间，说明你的物理学科自信程度处于中等水平，你在学习物理学科的过程中，偶有不自信的表现，建立学科自信心，首先要正确地评价、认识自己，结合自己的实际情况定位，确立符合客观事实的目标，在达成目标的成功喜悦感中增强学科自信心。</td></tr>
								<tr><td rowspan="4">化学</td></tr>
								<tr><td>能力 </td><td>Data</td><td>你的化学学科能力分数为20.0，处于同类人群的75%以上，说明你具备学好化学的能力，会用归纳总结的记忆方法，将不同符号进行归纳记忆，。具备认真观察和动手实验的能力，掌握理解记忆化学方程式的方法，并能用化学知识解决实际生活中的问题。</td></tr>
								<tr><td>兴趣 </td><td>Data</td><td>你的化学学科兴趣分数为15.0，处于同类人群的25%--75%之间，说明你对化学学科的兴趣处于中等水平，你对化学学科的学习没有表现出极大的热情，但是也没有表实现出明显的反感情情绪。可以从注意身边一些非常熟悉的“小事”入手，是自己认识到身边处处有化学，激励自己注意周围的生活现象、自然现象，以及人类关心的各种热点问题，如环保、能演、材料、保健等，培养自己的化学兴趣。</td></tr>
								<tr><td>自信</td><td>Data</td><td>你的化学学科自信在成都分数为欸15.0，处于同类人群的25%--75%之间，说明你的化学学科自信程度处于中等水平，说明你在学习化学学科的过程中，偶有不自信的表现。如果能够客服消极心理状态，树立“我能学好化学”的信心和勇气，就会帮助你提升化学成绩。在化学学科上，哪怕是成绩上一点小进步，也是一次成功的学习体验，要牢记这种体验。</td></tr>
							</tbody>
							<script type="text/javascript">
								var evaluationFraction = '${evaluationFraction}';
								var array = JSON.parse(evaluationFraction);
								// var tbody = "<thead><tr style='background-color: #3b8bec;color: #fff;'><th>学科</th><th>维度</th><th>测评得分</th><th>学科维度解释</th></tr></thead><tbody>";
								var tbody = "";
								// <tr><td rowspan="4">物理</td></tr>
								// <tr><td>能力 </td><td>Data</td><td>你的物理学科能力分数为20.0处于同类人的75%以上，说明你具备学好物理学科的能力具有对物理概念和规律进行探寻的习惯，善于分析物理概念规律的内涵和外延，掌握物理因果思维程序，运用物理模型解决实际生活中的具体问题。</td></tr>
								// <tr><td>兴趣 </td><td>Data</td><td>你的物理学科兴趣分数为15.0，处于同类人群的25%--75%之间，说明你对物理学科的兴趣处于中等水平，你对物理学科的学习没有表现出极大的热情，但是也没有表现出明显的反感情绪，可以通过观察与实验的方法来激发你对物理学习的兴趣，在生活中模拟各种物理现象和规律，带着问题去主动转眼与探索，培养学科兴趣。</td></tr>
								// <tr><td>自信 </td><td>Data</td><td>你的物理学科自信程度分数为17.0，处于同类人群的25%--75%之间，说明你的物理学科自信程度处于中等水平，你在学习物理学科的过程中，偶有不自信的表现，建立学科自信心，首先要正确地评价、认识自己，结合自己的实际情况定位，确立符合客观事实的目标，在达成目标的成功喜悦感中增强学科自信心。</td></tr>

								// 标题前缀 + 科目
								var prefix_sub_tr = "<tr><td rowspan='4'>";
								// 标题后缀
								var suffix_sub_tr = "</td></tr>";

								// 维度前缀 + [能力、兴趣、自信]
								var prefix_analyze_type = "<tr><td>";
								// 维度后缀
								var suffix_analyze_type = "</td>";
								// 分数前缀 + 测评分数
								var prefix_analyze_score = "<td>";
								// 分数后缀
								var suffix_analyze_score = "</td>";
								// 维度分析前缀 + 内容
								var prefix_analyze = "<td>";
								// 维度分析后缀
								var suffix_analyze = "</td></tr>";
								for (var i=0; i<array.length; i++){
									for (var j=0; j<analysis_items.length; j++){
										//科目 + 维度 + 分数 匹配
										// alert(i + ":[array[i]=" + array[i] + "  ]");
										if (analysis_items[j].title == array[i][0] && analysis_items[j].type == array[i][1] && analysis_items[j].score == array[i][2]){
											if (i%3 == 0){
												//单科维度分析 开始 标题
												tbody += prefix_sub_tr + analysis_items[j].subject + suffix_sub_tr ;
											}
											//自信 能力 兴趣
											tbody += prefix_analyze_type + array[i][1] + suffix_analyze_type + prefix_analyze_score + array[i][2] + suffix_analyze_score + prefix_analyze + analysis_items[j].analysis + suffix_analyze;
											continue;
										}
									}
								}
								$("#analyze").html(tbody);
							</script>
						</table>
						
						<div class="open-btn">
			                <a class="show_more btn btn-primary" onclick="showMore()">查看更多</a>
			            </div>
			            <script>
					        // 点击显示更多按钮
					        function showMore() {
					            $(".analyse_report").height("auto");//取消文字容器高度限制
					            $(".open-btn").hide();//隐藏查看更多按钮
					            var datas=''
					            $.ajax({
					            	type:"post",
					            	url:"",
					            	async:true,
					            	data:datas,
					            	dataType:'json',
					            	ssuccess:function(res){
					            		
					            	}
					            });
					        }
					    </script>
					</div>
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