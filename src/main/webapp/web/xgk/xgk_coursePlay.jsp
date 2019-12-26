<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=0.1,user-scalable=no" />
		<title>贵州好前途教育科技有限公司</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jsmodern.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/animate.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/sch_search.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/web/xgk/wow.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/jsmodern.min.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<!-- 页面顶部-->
		<c:import url="header.jsp"></c:import>	

		<style>#video { width: 100%; height: 100%; margin: 0 auto; position: relative; }  #video video { width: 100%; height: 100%; object-fit: fill; }  .VideoBtn { position: absolute; left: 50%; top: 50%; display: block; width: 70px; height: 70px; margin-left: -35px; margin-top: -35px; cursor: pointer; z-index: 10; } </style>
		<main class="container">
			<div class="">
				<div class="flex_jc_sb">
					<div class="flex_jcstart" style="justify-content:start;align-items: center;width: 60%;">
						<h2 class="fontwei videoTitle">如何填报高考志愿</h2>
						<span class="inline_block text-white tag" style="padding: .4em 1em;background-color: #45d7e6;margin-left: 1em;margin-top: 1em;">高考</span>
					</div>
					<div class="flex_Al_c">
						<span class=""><i class="text-danger">xx人</i>已学习</span>&ensp;
						<input type="text" name="" id="" value="" placeholder="输入课程名称自动搜索"/>
					</div>
				</div>
				<div class="zytb_tit thumbnail flex_jc_sb row">
					<div class="col-md-9" style="">
						<div id="video">
							<video height="100%" poster="${pageContext.request.contextPath}/img/xgk/car.jpg" id="videoShow" style="object-fit:fill;">
								<source src="${pageContext.request.contextPath}/img/xgk/video/2.mp4" type="video/mp4"></source>
								<source src="myvideo.ogv" type="video/ogg"></source>
								<source src="myvideo.webm" type="video/webm"></source>
								<object width="" height="" type="application/x-shockwave-flash" data="myvideo.swf">
									<param name="movie" value="myvideo.swf" />
									<param name="flashvars" value="autostart=true&amp;file=myvideo.swf" />
								</object>
								当前浏览器不支持 video直接播放，点击这里下载视频： <a href="myvideo.webm">下载视频</a>
							</video>
							<span class="VideoBtn"><img src="${pageContext.request.contextPath}/img/xgk/play.png"></span>
						</div>
					</div>
					<div class="col-md-3" style="">
						<div class="border-primary padding-side">
							<h3 class="text-primary">目录</h3>
						</div>
						<div class="border-primary content_list" id="play_list"></div>
					</div>
					<script src="${pageContext.request.contextPath}/js/web/xgk/video_list.js" type="text/javascript" charset="utf-8"></script>
					<script type="text/javascript">
						//获取播放列表
						var courseList='';
						for (var i=0;i<videos.length;i++) {	
							courseList+='<div class="padding-side margin_top1"><h4 class="text-primary">'+videos[i].section+'</h4><ul class="vlist">'
							for (var k=0;k<videos[i].lists.length;k++){
								console.log(videos[i].lists[k].vurl);
								courseList+='<li data-src="'+videos[i].lists[k].vurl+'" tag="'+videos[i].lists[k].tag+'" title="'+videos[i].lists[k].title+'"><a href="javascript:void(0)">'+videos[i].lists[k].title+'</a></li>'
							}
							courseList+='</ul></div>';						
						}
						$(".content_list").html(courseList);
						
						
						//点击播放功能
						var lis=$(".content_list ul li");
						var video=$("video");
						var url = [];
						var curr = 1; // 当前播放的视频
					    for(var i=0;i<lis.length;i++){
				            url[i] = lis[i].getAttribute('data-src')
					    }
						for(var i=0;i<lis.length;i++){
				            lis[i].onclick = function(){
				                for(var j=0;j<lis.length;j++){
				                    if(lis[j] == this){
				                        video.attr("src",$(this).attr("data-src")); //获取src路径
				                        video.attr('autoplay','autoplay');//自动播放
//				                        this.innerHTML = '【play】'+this.innerHTML;//点击后的列表显示
				                        this.className = "select";//点击后的列表显示
				                        $(".videoTitle").text(lis[j].getAttribute("title"));
				                        $(".tag").text(lis[j].getAttribute("tag"))
				                        curr = j+1;//定位下一播放位置
				                    }else{
				                        lis[j].children.innerHTML = lis[j].getAttribute("title");//没有点击的列表显示
				                        lis[j].className = "";
				                    }
				                }
					        }
					    }
					
						//列表自动播放
						$(function () {
				            //视频
				            jsModern.video("#video");
				            //播放视频
				            $(".VideoBtn").click(function () {
				                var video = document.getElementById("videoShow");
				                video.play();
				                $('.VideoBtn').hide();
				            })
				            //监听视频的播放状态
				            var video = document.getElementById("videoShow");
				            video.oncanplay = function () {
				                $(".VideoBtn").show();
				                //$("#video").attr("poster","");
				            }
				            //视频播放事件
				            video.onplay = function () {
				                $("#videoShow").attr("poster", "");
				                $(".VideoBtn").hide();
				            };
				            video.onplaying = function () {
				                $(".VideoBtn").hide();
				            };
				
				            //视频暂停事件
				            video.onpause = function () {
				                $(".VideoBtn").show();
				            };
				            //点击视频周围暂停播放图片出现
				            video.onclick = function () {
				                if (video.paused) {
				                    $(".VideoBtn").hide();
				                    video.play();
				                } else {
				                    $(".VideoBtn").show();
				                    video.pause();
				                }
				            };
				            
				            //点击获取播放列表
							play_list ($(".recom_course"));
							function play_list (listUl) {
								var video=$("video");
								var playerTitle=$(".videoTitle").text();
								var list=listUl.find("li");
								for (j=0;j<list.length;j++) {
									list[j].onclick=function() {
										for (var k=0;k<list.length;k++) {
											if (list[k]==this) {
												video.attr("src",list[k].getAttribute("data-src"));
												video.attr("autoplay","autoplay");
												$(".videoTitle").text(list[k].getAttribute("title"));
											}
										}
									}
								}
							}
				        })
					</script>
				</div>
			</div>
			<div class="recom_course">
				<div class="padding-side flex_jc_sb wow fadeInUp">
					<div class="flex_jcstart">
						<h3 class="fontwei">推荐课程</h3>
						<span class="text-muted flex_Al_c">&ensp;共xxxx个视频</span>
					</div> 
					<div class="" style="display: flex;align-items: flex-end;">
						<a class="text-primary border-primary btn" href=""><span class="glyphicon glyphicon-refresh"></span>换一组</a>
					</div>
				</div>
				<ul class="clearfix course_list margin_top1 wow fadeInUp">
					<li class="pull-left padding-side" data-src="${pageContext.request.contextPath}/img/xgk/video/1.mp4" title="疯狂的max">
						<div class="thumbnail">
							<a href="javascript:void(0)" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="javascript:void(0)" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-info" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side" data-src="${pageContext.request.contextPath}/img/xgk/video/3.mp4" title="千与千寻">
						<div class="thumbnail">
							<a href="javascript:void(0)" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="javascript:void(0)" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-warning" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side" data-src="${pageContext.request.contextPath}/img/xgk/video/2.mp4" title="如何填报高考志愿3">
						<div class="thumbnail">
							<a href="javascript:void(0)" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="javascript:void(0)" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-danger" href="">预习</span></p>
						</div>
					</li>
					<li class="pull-left padding-side" data-src="${pageContext.request.contextPath}/img/xgk/video/4.mp4" title="菊花台">
						<div class="thumbnail">
							<a href="javascript:void(0)" class="converse_info">
								<img src="${pageContext.request.contextPath}/img/xgk/car.jpg"/>
							</a>
							<a href="javascript:void(0)" class="caption flex_jc_sb">
								<span>语文预习</span>
								<span>高一上学期第一单元</span>
							</a>
							<p class="text-left text-left"><span class="label label-success" href="">预习</span></p>
						</div>
					</li>
				</ul>
			</div>
			
			<div class="margin_bot1 wow fadeInUp">
				<div class="border-primary padding-side"><h4 class="text-muted">课程评价</h4> </div>
				<div class="flex_Al_c border-primary padding-side" style="height: 6em;">暂无相关评价 </div>
			</div>
			<script type="text/javascript">
				new WOW().init();
				var wow = new WOW({
				    boxClass: 'wow', //需要执行动画的class
				    animateClass: 'animated',  //animate.css的class
				    offset: 0,  //距可视区域多少开始执行动画
				    mobile: true,  //是否在移动设备上执行动画
				    live: true  //一部加载的内容是否有效
				});
			</script>
		</main>

	<!-- 页面右侧-->
	<c:import url="../public/side_right.jsp"></c:import>	
	<!-- 页面底部-->
	<c:import url="footer.jsp"></c:import>

	</body>

</html>