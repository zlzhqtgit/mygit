<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset=utf-8>
<title>Insert title here</title>
</head>
<body>
		<main class="container">
			<section class="row">
				<p class="text-right"><a href="" class="btn btn-primary">打印报告</a></p>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="text-primary">霍兰德职业兴趣测试报告</h3>
					</div>
					<div class="panel-body">
						<div class="">
							<img src="${pageContext.request.contextPath}/img/xgk/banner1.jpg" style="width: 100%;" />
						</div>
						<div class="margin_top1">
							<img src="${pageContext.request.contextPath}/img/xgk/user.png" style="width: 3em;">
							<span class="fontwei">${username}</span>
						</div>
						<p class="margin_top1">为了让你对自己有一个深入的了解，下面是关于你本次霍兰德职业兴趣测评的报告！</p>
					</div>
				</div>

				<div class="panel panel-default">
					<!-- Default panel contents -->
					<div class="panel-heading fontwei">霍兰德职业兴趣测试报告</div>
					<div class="panel-body report" style="padding: 2em 4em;">
							<ul>
								<li>
									<h4 class="fontwei">阅读注意事项：</h4>
									<ol class="notice" style="padding-left: 2em;">
										<li>本测评所有题项采用0、1计分，每个维度得分为该维度下所有题项的得分总和，满分10分。因此测试者在某种职业类型上的得分越高（越接近10分），表明其越适合从事该职业环境的相关工作；反之，测试者在某种类型上的得分越低（越接近1分），表明越不适合从事该类型的职业；</li>
										<li>本报告会根据测试得分，将分数最高的前三个职业兴趣组成一个职业兴趣代码，代表测试者的职业兴趣倾向，并会根据结果呈现测试者感兴趣或推荐适合测试者的具体职业类型，但是请不要过于依赖测验结果，而束缚了个人的选择；</li>
										<li>报告展示的是测试者的人格类型和职业兴趣倾向，报告结果没有“好”与“坏”之分，每个人都有不同的人格特征，自然而然职业兴趣也不同，适合他人的职业不一定适合自己，所以应该辩证看待测验结果。</li>
										<li>人格特点是由多方面的因素综合决定的，具有稳定性，但也可以在日常生活中扬长避短， 有意识地去让自己变得更好，实现自己的价值；</li>
										<li>索引表中推荐的职业是基于大数据呈现出来的，但每个人都有个体差异，不能保证表中列出的职业一定是适合测试者的，所以需要具体结合个人的其他条件进行选择；</li>
										<li>对于初次阅读此类报告的人员，需在专业人士的指导下阅读，或请专业人士解释此报告。</li>
									</ol>
								</li>
								<li>
									<h4 class="fontwei">测评结果与分析：</h4>
									<div class="">
										<script src="${pageContext.request.contextPath}/js/web/xgk/echarts.min.js" type="text/javascript" charset="utf-8"></script>
										<div id="main" style="width: 600px;height:600px; margin: 0 auto;"></div>
										    
											<script type="text/javascript">										    	
										    	var cpFengshu="${cpFengshu}";	
										    	var cpfs = new Array();
										    	var words = cpFengshu.split('-');
										    	for(var i=0;i<words.length;i++){
										    		var dd=words[i].split(',');
										    		cpfs[i] = new Array();
										    		cpfs[i][0]=dd[0];
										    		cpfs[i][1]=dd[1];
										    		cpfs[i][2]=dd[2];
										    	}
										        // 基于准备好的dom，初始化echarts实例
										        var myChart = echarts.init(document.getElementById('main'));										
										        // 指定图表的配置项和数据
										        var option = {
												    title: {
//												        text: '基础雷达图'
												    },
												    tooltip: {},
												    legend: {//图例组件
												        data: [/*'平均成绩',*/ '实际得分']
												    },
												    radar: {
												        // shape: 'circle',
												        name: {
												            textStyle: {
												                color: '#333',
												                borderRadius: 3,
												                padding: [3, 5]
												           }
												        },												        
												        indicator: [
												           { name: cpfs[0][2], max:10},
												           { name: cpfs[1][2], max: 10},
												           { name: cpfs[2][2], max: 10},
												           { name: cpfs[3][2], max: 10},
												           { name: cpfs[4][2], max: 10},
												           { name: cpfs[5][2], max: 10}
												        ]
												    },
												    series: [{
												        name: '',
												        type: 'radar',
												        // areaStyle: {normal: {}},
												        data : [
												           /* {
												                value : [2, 2, 4, 5, 6, 7],
												                name : '平均成绩',
												                label:[{
												                	position:"bottom"
												                }]
												            },*/
												             {
												                value : [cpfs[0][1],cpfs[1][1], cpfs[2][1], cpfs[3][1], cpfs[4][1],cpfs[5][1]],
												                name : '实际得分'
												            }
												        ]
												    }]
												};
										        // 使用刚指定的配置项和数据显示图表。
										        myChart.setOption(option);	       
										    </script>
									</div>
									<p class="fontwei">
										上面雷达图呈现了你的职业兴趣测试结果，职业兴趣得分越高，表示你越倾向于该兴趣类型。下面我们将为你具体介绍六种职业兴趣，你需要特别关注自己得分最高的前三种职业兴趣：${hldreport[0].personalityCode}
									</p>
									<ol>
										<li>
											<h4 class="fontwei">职业兴趣特点与职业推荐</h4>
											<p>人们在择业的的时候，通常倾向于与自我的职业类型相匹配的职业环境，如具有“现时型”职业倾向的人，往往希望在“现时型”的职业环境中工作，同时当他在该环境下工作的时候，一般也可以最好的发挥其个人的潜能。</p>
											<p>建议在选择专业或职业的时候，尽量选择与自己职业类型相匹配的职业环境，这样既有利于我们在工作中做出成绩，也有利于我们从工作中收获许多的乐趣和满足感。</p>
											
										</li>
									</ol>
									<table border=""  style="margin: 0 auto;">
										<tr><th>类型</th><th>喜欢的活动</th><th style="width:200px">重视</th><th>职业环境要求</th><th>典型职业</th></tr>
										<tr>
											<td class="text-center">现实型<div>R(realistic)</div></td>
											<td>用手、工具、机器制造或修理东西。愿意从事实物性的工作、体力活动，喜欢户外活动或操作机器，而不喜欢在办公室工作</td>
											<td>具体实际的事物，城市，有常识</td>
											<td>使用手工或机械技能对物体、工具、机器、动物等进行操作，与“事物”工作的能力比与“人”打交道的能力更为重要</td>
											<td>园艺师、木匠、汽车修理工、工程师、军官、兽医、足球教练员</td>
										</tr>
										<tr>
											<td class="text-center">研究型<div>I(investigative)</div></td>
											<td>喜欢探索和理解事物，喜欢学习研究那些需要分析、思考的抽象问题，喜欢阅读和讨论有关科学性的论题，喜欢独立工作，对未知问题的挑战充满兴趣</td>
											<td>知识、学习、成就、独立</td>
											<td>分析研究问题，运用复杂和抽象的思考创造性的解决问题的能力，谨慎缜密，能运用智慧独立的工作，一定的写作能力</td>
											<td>实验室工作人员、生物学家、化学家、心理学家、工程设计师、大学教授</td>
										</tr>
										<tr>
											<td class="text-center">艺术型<div>A(artistic)</div></td>
											<td>喜欢自我表达，喜欢文学、音乐、艺术和表演等具有创造性、变化性的工作，重视作品的原创性和创意</td>
											<td>有创意的想法，自我表达，自我战赞美</td>
											<td>创造力，对情感的表现能力，以非传统的方式来表现自己；相当自由、开放</td>
											<td>作家、编辑、音乐家、摄影师、厨师、漫画家、导演、室内装潢设计师</td>
										</tr>
										<tr>
											<td class="text-center">社会型<div>S(social)</div></td>
											<td>喜欢与人合作，热情关心他人的幸福，愿意帮助别人成长或解决困难、为他人提供服务</td>
											<td>服务社会与他人，公正，理解，平等，立项</td>
											<td>人际交往能力，教导、医治、帮助他人等方面的技能，对他人表现出精神上的关爱，愿意负担社会责任</td>
											<td>教师、社会工作者、牧师、心理咨询师、护士</td>
										</tr>
										<tr>
											<td class="text-center">企业型<div>E(enterprising)</div></td>
											<td>喜欢领导和支配别人，通过领导、劝说他人或推销自己的观念、产品而达到个人或组织的目标，希望成就一番事业</td>
											<td>经济和社会地位上的成功，忠诚，冒险精神，责任</td>
											<td>说服他人或支配他人的能力，敢于承担风险，目标导向</td>
											<td>律师、政治运动领袖、营销商、市场部经理、电视制片人、保险代理</td>
										</tr>
										<tr>
											<td class="text-center">常规型<div>C(conventional)</div></td>
											<td>喜欢固定的、有秩序的工作或活动，希望确切地知道工作的要求和标准，愿意在一个大的机构中初愈从属地位，对文字、数据和事物进行细致有序的系统处理以达到特定的标准</td>
											<td>准确、有条理、节俭、盈利</td>
											<td>文书技巧，组织能力，听取并遵从指示的能力，能够按时完成工作并达到严格的标准，有组织有计划</td>
											<td>文字编辑、会计师、银行家、簿记员、办事员、税务员和计算机操作员</td>
										</tr>
									</table>
								</li>
								<div>
									<h4 class="fontwei">由测评得分可知，您的职业兴趣代码是：${hldreport[0].personalityCode}</h4>
									<div class="">
										<p>${hldreport[0].personalitySpecialty}</p>
										<p>${hldreport[0].personalityVocation}</p>
									</div>
								</div>
								<table border="" >
									<tr><th>代码</th><th>适合的典型专业</th><th>适合的典型职业</th></tr>
									<c:forEach items="${hldreport}" var="c" step="1" begin="1">
										<tr>
											<td>${c.personalityCode}</td>
											<td>${c.personalitySpecialty}</td>
											<td>${c.personalityVocation}</td>
										</tr>
									</c:forEach>									
								</table>
							</ul>
					</div>
			</section>
		</main>
</body>
</html>