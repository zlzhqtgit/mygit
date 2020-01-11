<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=0.3">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<link rel="icon" href="${pageContext.request.contextPath}/web/xgk/favicon.ico" type="image/x-icon">
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/echarts.min.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<!-- 页面头部-->
		<c:import url="header.jsp"></c:import>

		<main class="sch_search">
			<section class="sch_search container">
				<h2 class="fontwei text-primary">${vocationList[0].vocationName}</h2>	
				<div class="panel panel-default margin_top1">
					<div class="padding-side">
						<div class="">
							<h3 class="text-primary fontwei icon_tit">
								<span style="background-image: url(../../img/xgk/1.png);"></span>职业概述
							</h3>
							<ul class="padding-side margin_bot1">
								<li>
									<h4 class="fontwei">职业介绍</h4>
									<!-- <script type="text/javascript">
										var map = JSON.parse('${map}');
										console.log(map);
										var vocationList = JSON.parse('${vocationList[0]}');
										console.log(vocationList)
									</script> -->
									<div class="">
										${vocationList[0].vocationBrief}
									</div>
								</li>
								<li>
									<h4 class="fontwei">工作职责</h4>
									<div class="">
										${vocationList[0].workContent}
									</div>
								</li>
								<li>
									<h4 class="fontwei">招聘要求</h4>
									<div class="">
										${vocationList[0].educationCredential}
									</div>
								</li>
							</ul>
						</div>
						<div class="station">
							<h3 class="text-primary fontwei margin_bot1 icon_tit">
								<span style="background-image: url(../../img/xgk/2.png);"></span>就业岗位
							</h3>
							<div class="tab_list job_position">
								<ul class="tab_head clearfix">
									<c:forEach items="${vocationList}" var="item" varStatus="vs">									
										<c:if test="${vs.first}">
											<li onclick="other_vocation(this)" class="cur">
								    			<div><h5 class="fontwei" id="${item.vocationId}">${item.vocationName}</h5>${item.incomeInfo}</div>
								    		</li>
								    	</c:if>
							    		<c:if test="${vs.first == false}">
											<li class="" onclick="other_vocation(this)">
								    			<div><h5 class="fontwei" id="${item.vocationId}">${item.vocationName}</h5>${item.incomeInfo}</div>
								    		</li>
										</c:if>
										<%-- <li class="" onclick="other_vocation(this)">
							    			<div><h5 class="fontwei" id="${item.vocationId}">${item.vocationName}</h5>${item.incomeInfo}</div>
							    		</li> --%>	
						    		</c:forEach>
						    	</ul>
						    	<div class="tab_body">
						    		<div class="tab1 cur">
						    			<ul class="padding-side2" style="list-style: disc;">
						    				<li>
						    					<h3>薪酬统计</h3>
						    					<div class="border_major margin_top1 margin_bot flex_jc_sb">
					    							<div id="pic1" style="width: 50%;height: 400px;"></div>
					    							<div id="pic2" style="width: 50%;height: 400px;"></div>
						    					</div>
						    				</li>
						    				<li>
						    					<h3>就业形势</h3>
						    					<div class="border_major margin_top1 margin_bot flex_jc_sb">
					    							<div id="pic3" style="width: 50%;height: 400px;"></div>
					    							<div id="pic4" style="width: 50%;height: 400px;"></div>
						    					</div>
						    				</li>
						    				<li>
						    					<h3>从业资格要求</h3>
						    					<div class="margin_top1 margin_bot" id="requirement_qualification">
						    						<c:forEach items="${requirement_qualification}" var="item">
						    							<span class="btn btn_border_p">${item}</span>
						    						</c:forEach>
						    					</div>
						    				</li>
						    				<li>
						    					<h3>相关专业</h3>
						    					<div class="p_relative major_relative border_major margin_top1 margin_bot1 flex_jcstart width100">
						    						<div class="circle text-primary fontwei bg-primary p_relative">推荐专业</div>
						    						<div class="major_con border_major bg-info" id="relation_specialty">
						    							<c:forEach items="${relation_specialty}" var="item">
						    								<a href="">${item}</a>
						    							</c:forEach>
						    						</div>
						    					</div>
						    				</li>
						    			</ul>
						    			<script type="text/javascript">
										var pic1 = echarts.init(document.getElementById('pic1'));
										//薪资趋势
						    				var option = {
//											    backgroundColor: "#05224d",
											    tooltip: {},
											    grid: {
											        top: '8%',
											        left: '1%',
											        right: '1%',
											        bottom: '8%',
											        containLabel: true,
											    },
											    legend: {
											        itemGap: 50,
											        data: ['注册总量' ,'最新注册量'],
											        textStyle: {
											            color: '#333',
											            borderColor: '#fff'
											        },
											    },
											    xAxis: [{
											        type: 'category',
											        boundaryGap: true,
											        axisLine: { //坐标轴轴线相关设置。数学上的x轴
											            show: true,
											            lineStyle: {
											                color: '#999'
											            },
											        },
											        axisLabel: { //坐标轴刻度标签的相关设置
											            textStyle: {
											                color: '#333',
											                margin: 15,
											            },
											        },
											        axisTick: {
											            show: false,
											        },
											        data: ['${salary_trend[0][0]}','${salary_trend[1][0]}', '${salary_trend[2][0]}', '${salary_trend[3][0]}', '${salary_trend[4][0]}' ],
											    }],
											    yAxis: [{
											    	show: true,
											        type: 'value',
											    }],
											    series: [{
											        name: '薪资趋势',
											        type: 'line',
											        // smooth: true, //是否平滑曲线显示
											        // symbol:'circle',  // 默认是空心圆（中间是白色的），改成实心圆
											        showAllSymbol: true,
											        symbol: 'emptyCircle',
											        symbolSize: 6,
											        lineStyle: {
											            normal: {
											                color: "#3b8bec", // 线条颜色
											            },
											            borderColor: '#f0f'
											        },
											        label: {
											            show: true,
											            position: 'top',
											            textStyle: {
											                color: '#fff',
											            }
											        },
											        itemStyle: {
											            normal: {
											            	label : {show: true},
											                color: "#3b8bec",
											            }
											        },
											        tooltip: {
											            show: false
											        },
											        areaStyle: { //区域填充样式
											            normal: {
											                //线性渐变，前4个参数分别是x0,y0,x2,y2(范围0~1);相当于图形包围盒中的百分比。如果最后一个参数是‘true’，则该四个值是绝对像素位置。
											                color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
											                        offset: 0,
											                        color: 'rgba(0,154,120,1)'
											                    },
											                    {
											                        offset: 1,
											                        color: 'rgba(0,0,0, 0)'
											                    }
											                ], false),
											                shadowColor: 'rgba(53,142,215, 0.9)', //阴影颜色
											                shadowBlur: 20 //shadowBlur设图形阴影的模糊大小。配合shadowColor,shadowOffsetX/Y, 设置图形的阴影效果。
											            }
											        },
											        data: ['${salary_trend[0][1]}', '${salary_trend[1][1]}','${salary_trend[2][1]}', '${salary_trend[3][1]}', '${salary_trend[4][1]}']
											    }]
											};
										    var data_1 = new Array();										   
										    pic1.setOption(option);
										    

								    		
							
										    
										    
										  //薪酬分布
										    var pic2 = echarts.init(document.getElementById("pic2"));
										    var option1 = {
												    title: [{
												        text: '薪酬分布',
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
												                {value:'${salary_distribution[0][1]}', name:'${salary_distribution[0][0]}'},
												                {value:'${salary_distribution[1][1]}', name:'${salary_distribution[1][0]}'},
												                {value:'${salary_distribution[2][1]}', name:'${salary_distribution[2][0]}'},
												                {value:'${salary_distribution[3][1]}', name:'${salary_distribution[3][0]}'},
												                {value:'${salary_distribution[4][1]}', name:'${salary_distribution[4][0]}'},
												                {value:'${salary_distribution[5][1]}', name:'${salary_distribution[5][0]}'}
												            ]
												        }
												    ]
												};
										    pic2.setOption(option1);
										    			    
										    
										    //按学历
										    var pic3 = echarts.init(document.getElementById("pic3"));
												    var option2 = {
													    title: [{
													        text: '按学历',
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
													                {value:'${employment_situation_education[0][1]}', name:'${employment_situation_education[0][0]}'},
													                {value:'${employment_situation_education[1][1]}', name:'${employment_situation_education[1][0]}'},
													                {value:'${employment_situation_education[2][1]}', name:'${employment_situation_education[2][0]}'},
													                {value:'${employment_situation_education[3][1]}', name:'${employment_situation_education[3][0]}'},
													                {value:'${employment_situation_education[4][1]}', name:'${employment_situation_education[4][0]}'},
													                {value:'${employment_situation_education[5][1]}', name:'${employment_situation_education[5][0]}'}
													            ]
													        }
													    ]
													};
												    pic3.setOption(option2);
										    
												    	
										  	//按经验
										  	var pic4 = echarts.init(document.getElementById("pic4"));
												    var option3 = {
													    title: [{
													        text: '按经验',
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
													                {value:'${employment_situation_experience[0][1]}', name:'${employment_situation_experience[0][0]}'},
													                {value:'${employment_situation_experience[1][1]}', name:'${employment_situation_experience[1][0]}'},
													                {value:'${employment_situation_experience[2][1]}', name:'${employment_situation_experience[2][0]}'},
													                {value:'${employment_situation_experience[3][1]}', name:'${employment_situation_experience[3][0]}'},
													                {value:'${employment_situation_experience[4][1]}', name:'${employment_situation_experience[4][0]}'}
													            ]
													        }
													    ]
													};
												    pic4.setOption(option3);
												    
												    
												  //获取其他职业相关数据		
												    function other_vocation(e){
										    			var url = "${pageContext.request.contextPath}/voc/xgk_voc_other.do";
										    			var data = "vocationId=" + $(e).find('h5').attr("id");
										    			$.ajax({
														url: url,
														data: data,
														type: "POST",
														dataType: "json",
														success: function(obj) {
															if(obj.state == 1) {
																//薪资趋势														
																for(var i=0; i<obj.data.salary_trend.length; i++){
																	option.xAxis[0].data[i] = obj.data.salary_trend[i][0];
																	option.series[0].data[i] = obj.data.salary_trend[i][1];																													
																}														
																pic1.setOption(option);
																
																
																//薪酬分布
																for(var i=0; i<obj.data.salary_distribution.length-1; i++){
																	option1.series[0].data[i].name = obj.data.salary_distribution[i][0];
																	option1.series[0].data[i].value = obj.data.salary_distribution[i][1];
																}
																pic2.setOption(option1);
																
																//按学历
																for(var i=0; i<obj.data.employment_situation_education.length; i++){
																	option2.series[0].data[i].name = obj.data.employment_situation_education[i][0];
																	option2.series[0].data[i].value = obj.data.employment_situation_education[i][1];
																}
																pic3.setOption(option2);
																
																//按经验
																for(var i=0; i<obj.data.employment_situation_experience.length; i++){
																	option3.series[0].data[i].name = obj.data.employment_situation_experience[i][0];
																	option3.series[0].data[i].value = obj.data.employment_situation_experience[i][1];
																}
																pic4.setOption(option3);
																
																
																//从业资格要求
																var requirement = "";
																for(var i=0; i<obj.data.requirement_qualification.length-1; i++){
																	requirement += '<span class="btn btn_border_p">' + obj.data.requirement_qualification[i] + '</span>';
																}
																$("#requirement_qualification").html(requirement);
																	//requirement_qualification
																	
																//相关专业
																var relation = "";
																for(var i=0; i<obj.data.relation_specialty.length; i++){
																	relation += '<a href="">' + obj.data.relation_specialty[i] + '</a>';
																}
																$("#relation_specialty").html(relation);	
																
																//industry_income 行业收入
																var industry = "";
																for(var i=0; i<obj.data.industry_income.length; i++){
																	industry += '<li><div><span>' + obj.data.industry_income[i][0] + '</span><span>' + obj.data.industry_income[i][1] + '</span></div></li>';
																}
																$("#industry_income").html(industry);	
																
																
																//regional_income 地区收入
																var regional = "";
																for(var i=0; i<obj.data.regional_income.length; i++){
																	regional += '<li><div><span>' + obj.data.regional_income[i][0] + '</span><span>' + obj.data.regional_income[i][1] + '</span></div></li>';
																}
																$("#regional_income").html(regional);	
															}
														}	
										    			});
										    		}				
						    			</script>
						    		</div>
						    	</div>
							</div>
							<script type="text/javascript">
								$('.tab_head li').click(function(){
					    			$(this).parent().children().removeClass('cur');
					    			$(this).addClass('cur');
			
					    			})
							</script>
						</div>
						<div class="margin_bot1 development">
							<h3 class="text-primary fontwei icon_tit">
								<span style="background-image: url(../../img/xgk/3.png);"></span>发展前景
							</h3>
							<div class="row padding-side margin_top1 rank_salary">
								<div class="col-lg-6 col-md-6 col-sm-6 border_major">
									<h4 class="fontwei">行业收入</h4>
									<div class=""></div>
									<ul class="padding-side2" style="list-style: symbols;" id="industry_income">
										<c:forEach items="${industry_income}" var="item">
											<li><div><span>${item[0]}</span><span>${item[1]}</span></div></li>
										</c:forEach>
									</ul>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 border_major">
									<h4 class="fontwei">地区收入</h4>
									<div class=""></div>
									<ul class="padding-side2" style="list-style: symbols" id="regional_income">
										<c:forEach items="${regional_income}" var="item">
											<li><div><span>${item[0]}</span><span>${item[1]}</span></div></li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
						<div class="margin_bot1">
							<h3 class="text-primary fontwei icon_tit">
								<span style="background-image: url(../../img/xgk/4.png);"></span>职业视频
							</h3>
							<div class="border_major margin_top1 flex_Al_c"><div class="margin_top margin_bot">暂无相关视频</div></div>
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

