<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> 
<!DOCTYPE>
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/echarts.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/html2canvas.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/jspdf.debug.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
	</head>

	<body>
		<c:import url="header.jsp"></c:import>

		<main class="container">
			<p class="text-right"><a class="btn btn-primary" href="javascript:history.go(-1)">返回</a></p>
			<div class="report_content container" id="report_content">
				<section class="row">
					<h2 class="text-primary fontwei">选科报告</h2>
					<div class="panel panel-default border-radius box-shadow">
						<div class="panel-body padding-side2">
							<div class="margin_top margin_bot">
								<div class="">
									<shiro:guest><img src="${pageContext.request.contextPath}/img/xgk/user.png" style="width: 3em;"/></shiro:guest>
									<shiro:user><img src="${headUrl}" style="border-radius: 50%; overflow: hidden; width: 3em;"/></shiro:user>
									<span class="padding-side">你好！</span>
								</div>
								<div class="padding-side2 margin_top1">
									这是一个选科报告的说明介绍这是一个选科报告的说明介绍这是一个选科报告的说明介绍这是一个选科报告的说明介绍这是一个选科报告的说明介绍
									这是一个选科报告的说明介绍这是一个选科报告的说明介绍这是一个选科报告的说明介绍这是一个选科报告的说明介绍这是一个选科报告的说明介绍
								</div>
							</div>
						</div>
					</div>
				</section>
				<section class="row">
					<div class="padding-side2">
						<h3 class="title_wrap text-primary fontwei"> 
							<span style="background-image: url(img/1.png);"></span>数据分析
						</h3>
						<div class="">
							<div class="">
								<p class="">这是根据您所填写的成绩计算出来的成绩分析图，图中包含了您6科成绩所占的比例，你可用清楚地看出来每科成绩所占的比例</p>
								<div class="flex_Al_c">
									<div class="" id="analyse_score" style="width: 440px;height:400px;"></div>
								</div>
							</div>
							<div class="">
								<p class="">这是根据你所填写的测评计算出来的潜能分析结果，图中包含了您的6科成绩所占的比例，你可可以清楚地看出来每科的能力象限大小。</p>
								<div class="flex_Al_c">
									<div class="" id="analyse_score1" style="width: 440px;height:400px;"></div>
								</div>
							</div>
							<div class="">
								<p class="">这是根据你所填写的测评计算出来的潜能分析结果，图中包含了您的6科成绩所占的比例，你可可以清楚地看出来每科的能力象限大小。</p>
								<div class="flex_Al_c">
									<div class="" id="analyse_score2" style="width: 640px;height:400px;"></div>
								</div>
							</div>
							<div class="">
								<h4 class="fontwei">通过测评结果对比分析，根据您的结果我们对20种组合方式的排序如下表：</h4>
								<div class="padding-side2">
									<table class="combile_xuank width100" border="" cellspacing="" cellpadding="" id="recommend_combination">
										<tr><td>1 物化生</td><td>1 物化生</td><td>1 物化生</td><td>1 物化生</td></tr>
										<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
										<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
										<tr><td>Data</td><td>Data</td><td>Data</td><td>Data</td></tr>
									</table>
								</div>
							</div>
							<p class="margin_top1">综合分析的一段话综合分析的一段话综合分析的一段话综合分析的一段话综合分析的一段话综合分析的一段话</p>
						</div>
							
					</div>
					<div class="padding-side2">
						<h3 class="title_wrap text-primary fontwei"> 
							<span style="background-image: url(img/2.png);"></span>限报限考
						</h3>
						<div class="">
							<div class="">
								<p class="padding-side2">根据你所在省份的高考政策以及高等院校在您所在的省份的招生考试及您所选择的理想专业，我们依照专业的招生考试要求，为您列举如下几种报考本专业的学科组合方式：</p>
								<ul class="combile clearfix" id="policy_combination">
									<li class="fontwei text-primary"><div class="border-primary">物理+化学+生物</div></li>
									<li class="fontwei text-primary"><div class="border-primary">物理+化学+生物</div></li>
									<li class="fontwei text-primary"><div class="border-primary">物理+化学+生物</div></li>
									<li class="fontwei text-primary"><div class="border-primary">物理+化学+生物</div></li>
									<li class="fontwei text-primary"><div class="border-primary">物理+化学+生物</div></li>
									<li class="fontwei text-primary"><div class="border-primary">物理+化学+生物</div></li>
								</ul>
							</div>	
							<p class="">这是一个关于报告的解读说明，里面介绍了关于不同学科组合报考的类别限制这是一个关于报告的解读说明，里面介绍了关于不同学科组合报考的类别限制这是一个关于报告的解读说明，里面介绍了关于不同学科组合报考的类别限制这是一个关于报告的解读说明，里面介绍了关于不同学科组合报考的类别限制这是一个关于报告的解读说明，里面介绍了关于不同学科组合报考的类别限制</p>
							<div class="">
								<h4 class="fontwei">根据你所测评的各项数据及分析结果来看，我们为您推荐如下三种更适合您的学科选科组合方式：</h4>
								<ul class="combile1 clearfix" style="list-style: amharic;padding-left: 2em;">
									<li class=""><div class="border-primary">物理+化学+生物</div></li>
									<li class=""><div class="border-primary">物理+化学+生物</div></li>
									<li class=""><div class="border-primary">物理+化学+生物</div></li>
								</ul>
								<div class="open-btn margin_top margin_bot" style="height: 50px;position: relative;background: inherit;">
									<a class="downloadReport show_more btn btn-primary" style="position: relative;top: 0; text-align:center; margin: 0;overflow: hidden;box-shadow: 0 0 4px #ddd;">下载报告 <div class="light"></div> </a>
		          				</div>
		          			</div>
						</div>
					</div>
				</section>
			</div>
		</main>
		
		<!--<p class="text-center margin_bot"><a class="downloadReport btn btn-primary" href="javascript:void(0)">下载报告</a></p>-->
		<!-- 右侧边栏-->
		<c:import url="../public/side_right.jsp"></c:import>
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>

	</body>
	<script type="text/javascript">
								//最终推荐学科组合	
								$(function(){
									var combination = JSON.parse('${combination}');
									var result = "";
									for(var i=0; i<3; i++){//只展示3课
										result += "<li class=''><div class='border-primary' onclick='saveReport(this)'>" + combination[i].key + "</div></li>";	
									}
									$(".combile1").html(result);
								}); 
								
								//保存学科组合数据
								function saveReport(e){
									var result = $(e).text();
									var whether_done = '${whether_done}';//是否已完成学科指导
									if(whether_done == 1){
										layer.confirm('您的学科选科组合信息已存在，请问是否继续？继续将覆盖您之前的选择！', {
											  btn: ['确认', '取消']
											}, function(index, layero){
												$.ajax({
													url:"${pageContext.request.contextPath}/xk/xgk_add_report.do",
													data:"result=" + result,
													type:"POST",
													dataType:"json",
													success:function(obj){
														if(obj.state == 1){
															layer.msg(obj.message,{icon:1,time:1000});
														}else{
															layer.msg(obj.message,{icon:2,time:1000});
														}
														
													}
												});
											}, function(index){
												layer.close(index);
											}); 
									}else{
										$.ajax({
											url:"${pageContext.request.contextPath}/xk/xgk_add_report.do",
											data:"result=" + result,
											type:"POST",
											dataType:"json",
											success:function(obj){
												if(obj.state == 1){
													layer.msg(obj.message,{icon:1,time:1000});
												}else{
													layer.msg(obj.message,{icon:2,time:1000});
												}
												
											}
										});
									}
									
									
								}
								
							
								//当地本专业 政策允许 学科组合
								$(function(){
									var recommend_combination = JSON.parse('${policy_combination}');
									var policy = "";
									for(var i=0; i<recommend_combination.length; i++ ){
										policy += "<li class='fontwei text-primary'><div class='border-primary'>" + recommend_combination[i] + "</div></li>"
									}
									$("#policy_combination").html(policy);
								});
								
								//测评推荐组合
								$(function(){
									var recommend_combination = JSON.parse('${recommend_combination}');
									var recommend = "<tr>";
									for(var i=0; i<recommend_combination.length; i++){
										if(i%5 == 0 && i > 0){
											recommend += "</tr><tr>";
										}
										recommend += "<td>" + recommend_combination[i] + "</td>";
									}
									$("#recommend_combination").html(recommend + "</tr>");
								});
				$(function() {
					
					pie_ring("analyse_score","成绩分析")
					pie_ring1("analyse_score1","潜能分析")
					bar_Yaxis("analyse_score2","认知分析")
					
					/* var myChart_circle = echarts.init(document.getElementById('analyse_score'));
					myChart_circle.setOption(option); */
					
					//成绩分析
					function pie_ring(id,title) {
						var score_analyse = JSON.parse('${score_analyse}');
				    		var myChart_circle = echarts.init(document.getElementById(id));
				    		var option = {
								    title: [{
								        text: title,
								        left:'50%',
								        bottom:'44%',
								        textStyle:{
								            fontSize:20,
								            color:"black"
								        },
								        subtextStyle: {
								            fontSize: 20,
								            color: 'black'
								        },
								        textAlign:"center",
								        x: '20%',
								    }],
								    tooltip: {
								        trigger: 'item',
								        formatter: "{a} <br/>{b}: {c} ({d}%)"
								    },
								    series: [
								        {
								            name:'成绩分析',
								            type:'pie',
								            radius: ['50%', '70%'],
								            label: {
								                normal: {
								                    show: true
								                },
								                emphasis: {
								                    show: false
								                }
								            },
								            labelLine: {
								                normal: {
								                    show: true
								                }
								            },
								            data:[
								                {value:score_analyse[0][1], name:score_analyse[0][0]},
								                {value:score_analyse[1][1], name:score_analyse[1][0]},
								                {value:score_analyse[2][1], name:score_analyse[2][0]},
								                {value:score_analyse[3][1], name:score_analyse[3][0]},
								                {value:score_analyse[4][1], name:score_analyse[4][0]},
								                {value:score_analyse[5][1], name:score_analyse[5][0]}
								            ]
								        }
								    ]
								};	
						myChart_circle.setOption(option);
				    } 
					
					
					//认知分析
					function bar_Yaxis(id,title) {
						var myChart_circle = echarts.init(document.getElementById(id));
						var cognize_analyze = JSON.parse('${cognize_analyze}');
						option = {
						    title: {
						        text: title,
						        textAlign:'left',
						        left:'50%',
						    },
						    tooltip: {
						        trigger: 'axis',
						        axisPointer: {
						            type: 'shadow'
						        },
						        formatter: "{b} <br> 合格率: {c}%"
						    },
						    grid: {
						        left: '4%',
						        right: '4%',
						        bottom: '2%',
						        containLabel: true
						    },
						    xAxis: {
						        type: 'value',
						        boundaryGap: [0, 0.01],
						        min: 0,
						        max: 100,
						        interval: 20,
						        axisLabel: {
						            formatter: '{value}',
						            textStyle: {
						                fontWeight: '80'
						            }
						        },
						        splitLine:{
								   show:false     //去掉网格线
								}
						    },
						    yAxis: {
						        type: 'category',
						        data: [cognize_analyze[0].key, cognize_analyze[1].key, cognize_analyze[2].key, cognize_analyze[3].key, cognize_analyze[4].key, cognize_analyze[5].key],
						        axisTick:{
						        	show:false,
						        },
						        axisLabel: {
						            show: true,
						            interval: 0,
						            rotate: 0,
						            margin: 10,
						            inside: false,
						            textStyle: {
						                fontWeight: '50'
						            }
						        }
						    },
						    series: [{
						        type: 'bar',
						        label: {
						            normal: {
						                show: true,
						                position:'insideRight',
						                formatter: function(v) {
						                    var val = v.data;
						                    if (val == 0) {
						                        return '';
						                    }
						                    return val;
						                },
						                color: '#fff'
						            }
						        },
						        barWidth:'60%',
						        itemStyle:{
						        	barBorderRadius: [0,8,8,0],
					                color: function(params) {
					                    var colorList = ['#c23531','#2f4554', '#61a0a8', '#d48265', '#91c7ae','#749f83', '#f0c716'];
					                    return colorList[params.dataIndex]
					                }
						        },
						        markPoint:{
						        	silent :true,
						        },
						        data: [cognize_analyze[0].value/10, cognize_analyze[1].value/10, cognize_analyze[2].value/10, cognize_analyze[3].value/10, cognize_analyze[4].value/10, cognize_analyze[5].value/10]
						    }]
						};
						myChart_circle.setOption(option);
					}
					
					//潜能分析
					function pie_ring1(id,title) {	
						var potential_analyse = JSON.parse('${potential_analyse}');	
					    	var wul  = 0;
					    	var huax  = 0;
					    	var shengw  = 0;
					    	var zhengz  = 0;
					    	var lis  = 0;
					    	var dil  = 0;
					     for(var i=0; i<potential_analyse.length; i++){
					    		if(potential_analyse[i][0] == '物'){
						    		 wul += potential_analyse[i][2];
						    	 }
						    	 if(potential_analyse[i][0] == '化'){
						    		 huax += potential_analyse[i][2];
						    	 }
						    	 if(potential_analyse[i][0] == '生'){
						    		 shengw += potential_analyse[i][2];
						    	 }
						    	 if(potential_analyse[i][0] == '政'){
						    		 zhengz += potential_analyse[i][2];
						    	 }
						    	 if(potential_analyse[i][0] == '历'){
						    		 lis += potential_analyse[i][2];
						    	 }
						    	 if(potential_analyse[i][0] == '地'){
						    		 dil += potential_analyse[i][2];
						    	 }
				     	}    
					     
					     var myChart_circle = echarts.init(document.getElementById(id));
					    	var option = {
							    title: [{
							        text: title,
							        left:'50%',
							        bottom:'44%',
							        textStyle:{
							            fontSize:20,
							            color:"black"
							        },
							        subtextStyle: {
							            fontSize: 20,
							            color: 'black'
							        },
							        textAlign:"center",
							        x: '20%',
							    }],
							    tooltip: {
							        trigger: 'item',
							        formatter: "{a} <br/>{b}: {c} ({d}%)"
							    },
							    series: [
							        {
							            name:'访问来源',
							            type:'pie',
							            radius: ['50%', '70%'],
							            label: {
							                normal: {
							                    show: true
							                },
							                emphasis: {
							                    show: false
							                }
							            },
							            labelLine: {
							                normal: {
							                    show: true
							                }
							            },
							            data:[
							                {value:wul, name:'物理'},
							                {value:huax, name:'化学'},
							                {value:shengw, name:'生物'},
							                {value:zhengz, name:'政治'},
							                {value:lis, name:'历史'},
							                {value:dil, name:'地理'}
							            ]
							        }
							    ]
							};
							myChart_circle.setOption(option);
				    }
					
					function download(){
					   var element = $("#report_content");    // 这个dom元素是要导出pdf的div容器
					   var w = element.width();    // 获得该容器的宽
					   var h = element.height();    // 获得该容器的高
					   var offsetTop = element.offset().top;    // 获得该容器到文档顶部的距离
					   var offsetLeft = element.offset().left;    // 获得该容器到文档最左的距离
					   var canvas = document.createElement("canvas");
					   var abs = 0;
					   var win_i = $(window).width();    // 获得当前可视窗口的宽度（不包含滚动条）
					   var win_o = window.innerWidth;    // 获得当前窗口的宽度（包含滚动条）
					   if(win_o>win_i){
					     abs = (win_o - win_i)/2;     
					     // 获得滚动条长度的一半
					   }
					   canvas.width = w * 2;    // 将画布宽&&高放大两倍
					   canvas.height = h * 2;
					   var context = canvas.getContext("2d");
					   context.scale(2, 2);
					   context.translate(-offsetLeft-abs,-offsetTop);
					   // 这里默认横向没有滚动条的情况，因为offset.left(),有无滚动条的时候存在差值，因此        
					   // translate的时候，要把这个差值去掉
					   element.css("background-color","#f9f9f9");
					   html2canvas(element).then(function(canvas) {
					    var contentWidth = canvas.width;
					    var contentHeight = canvas.height;
					    //一页pdf显示html页面生成的canvas高度;
					    var pageHeight = contentWidth / 595.28 * 841.89;
					    //未生成pdf的html页面高度
					    var leftHeight = contentHeight;
					    //页面偏移
					    var position = 0;
					    //a4纸的尺寸[595.28,841.89]，html页面生成的canvas在pdf中图片的宽高
					    var imgWidth = 595.28;
					    var imgHeight = 592.28/contentWidth * contentHeight;
					    var pageData = canvas.toDataURL('image/jpeg', 1.0);
					    var pdf = new jsPDF('', 'pt', 'a4');
				
					    //有两个高度需要区分，一个是html页面的实际高度，和生成pdf的页面高度(841.89)
					    //当内容未超过pdf一页显示的范围，无需分页
					    if (leftHeight < pageHeight) {
					    pdf.addImage(pageData, 'JPEG', 0, 0, imgWidth, imgHeight);
					    } else {    // 分页
					        while(leftHeight > 0) {
					            pdf.addImage(pageData, 'JPEG', 0, position, imgWidth, imgHeight)
					            leftHeight -= pageHeight;
					            position -= 841.89;
					            //避免添加空白页
					            if(leftHeight > 0) {
					              pdf.addPage();
					            }
					        }
					    }
					    pdf.save('我的选科报告.pdf');        
					  })
					}
					$(".downloadReport").click(function(){
						download();
					})
				})
			</script>
</html>