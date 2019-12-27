<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<title>贵州好前途教育科技有限公司</title>
		<meta charset="utf-8">
 		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/layui-v2.5.5/layui/css/layui.css"  media="all">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jPages.css" />
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
		<script src="${pageContext.request.contextPath}/js/common.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/area_json.js"></script> 
		<script src="${pageContext.request.contextPath}/js/layui-v2.5.5/layui/layui.js" charset="utf-8"></script>
		
	</head>

	<body>
		<c:import url="header.jsp"></c:import>
		<main class="sch_search">
			<section class="sch_search container">
				<div style="padding: 1em 100px 1em;">
				    <form class="bs-example bs-example-form" role="form" id="universities_name">
				        <div class="input-group input-group-lg">
				            <span class="input-group-addon" style="cursor: pointer;" onclick="schoolSearch(1)"><span class="glyphicon glyphicon-search text-muted"></span></span>
				            <input type="text" class="form-control" placeholder="搜索你感兴趣的学校" >
				        </div>
				    </form>
				</div>

				<div class="tab_list index_searchDetal">
					<ul class="tab_head list-unstyled clearfix">
						<li class="cur">高校</li>
						<li>专业</li>
						<li>职业</li>
					</ul>
					<div class="tab_body">
						<div class="panel panel-default cur">
							<div class="panel_head">
								<h4 class="fontwei padding-side">共找到xx条结果1</h4>
							</div>
							<ul>
								<li>
									<div class="padding-side2">
										<div class="sch_info">
											<a href="" class=""> <img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png" style="width: 7em;"/> </a>
											<div class="padding-side">
												<div class="">
													<div class="sch_tit">
														<a href=""><h4 class="fontwei">上海外国语大学</h4></a>
														<div class="">
															<img src="${pageContext.request.contextPath}/img/xgk/label.png"/>
															<span class="glyphicon glyphicon-map-marker"></span>
															<span class="text-muted">上海</span>
														</div>
													</div>
													<div class="text-muted">录取平均分排行（本科一批）<span class="text-danger">34</span></div>
													<div class="text-muted">
														<span class="">隶属：教育部</span>
														<span class="padding-side">院校类型：语言类</span>
														<span class="padding-side">硕士点数：43个</span>
														<span class="padding-side">博士点数：17个</span>
													</div>
												</div>
											</div>
										</div>
										<div class="text-center like">
							        		<a class="" onclick="like(this)" href="javascript:">
							        			<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
							        			<span class="">喜欢</span>
							        		</a>
							        		<div class="text-center text-muted">喜欢人数：22W</div>
							        	</div>
									</div>
								</li>
								<li>
									<div class="padding-side2">
										<div class="sch_info">
											<a href="" class=""> <img src="${pageContext.request.contextPath}/img/xgk/sch_logo.png" style="width: 7em;"/> </a>
											<div class="padding-side">
												<div class="">
													<div class="sch_tit">
														<a href=""><h4 class="fontwei">上海外国语大学</h4></a>
														<div class="">
															<img src="${pageContext.request.contextPath}/img/xgk/label.png"/>
															<span class="glyphicon glyphicon-map-marker"></span>
															<span class="text-muted">上海</span>
														</div>
													</div>
													<div class="text-muted">录取平均分排行（本科一批）<span class="text-danger">34</span></div>
													<div class="text-muted">
														<span class="">隶属：教育部</span>
														<span class="padding-side">院校类型：语言类</span>
														<span class="padding-side">硕士点数：43个</span>
														<span class="padding-side">博士点数：17个</span>
													</div>
												</div>
											</div>
										</div>
										<div class="text-center like">
							        		<a class="" onclick="like(this)" href="javascript:">
							        			<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
							        			<span class="">喜欢</span>
							        		</a>
							        		<div class="text-center text-muted">喜欢人数：22W</div>
							        	</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="panel panel-default">
							<div class="panel_head">
								<h4 class="fontwei padding-side">共找到xx条结果2</h4>
								<ul>
									<li>
										<div class="padding-side2">
											<div class="">
												<div class="sch_tit">
													<a href=""><h4 class="fontwei">经济学</h4></a><span class="padding-side text-muted">国际代码：010101</span>
												</div>
												<p class="text-muted margin0">
													<span class="">学历层次：本科</span>
													<span class="padding-side">修业年限：四年</span>
													<span class="padding-side">授予学位：哲学学士</span>
													<span class="padding-side">男女比例：40：60</span>
												</p>
											</div>
											<div class="text-center like">
								        		<a class="" onclick="like(this)" href="javascript:">
								        			<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
								        			<span class="">喜欢</span>
								        		</a>
								        	</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel_head">
								<h4 class="fontwei padding-side">共找到xx条结果3</h4>
								<ul>
								<li>
									<div class="padding-side2">
										<div class="job_infos">
											<div class="sch_tit">
												<a href=""><h4 class="fontwei">银行清算员</h4></a><span class="padding-side text-muted">金融/银行>金融业务</span>
											</div>
											<p class="text-muted margin0 job_sum"> 利用资金清算网路系统，从事银行业务资金的和结计电子汇划会差工作的人员利用资金清算网路系统，从事银行业务资金的和结计电子汇划会差工作的人员利用资金清算网路系统，从事银行业务资金的和结计电子汇划会差工作的人员 </p>
										</div>
										<div class="text-center like">
							        		<a class="" onclick="like(this)" href="javascript:">
							        			<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
							        			<span class="">喜欢</span>
							        		</a>
							        	</div>
									</div>
								</li>
								<li>
									<div class="padding-side2">
										<div class="job_infos">
											<div class="sch_tit">
												<a href=""><h4 class="fontwei">银行清算员</h4></a><span class="padding-side text-muted">金融/银行>金融业务</span>
											</div>
											<p class="text-muted margin0 job_sum"> 利用资金清算网路系统，从事银行业务资金的和结计电子汇划会差工作的人员利用资金清算网路系统，从事银行业务资金的和结计电子汇划会差工作的人员利用资金清算网路系统，从事银行业务资金的和结计电子汇划会差工作的人员 </p>
										</div>
										<div class="text-center like">
							        		<a class="" onclick="like(this)" href="javascript:">
							        			<img src="${pageContext.request.contextPath}/img/xgk/unlike.png"/>
							        			<span class="">喜欢</span>
							        		</a>
							        	</div>
									</div>
								</li>
							</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
		</main>

		<!-- 右侧边栏-->
		<c:import url="../public/side_right.jsp"></c:import>
		<!-- 页面底部-->
		<c:import url="footer.jsp"></c:import>	

	</body>
</html>