<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset=utf-8>
<title>Insert title here</title>
<script type="text/javascript">
function chat2() {	
	window.open ('${pageContext.request.contextPath}/web/hqt_chat.do','好前途在线咨询平台', 'height=605, width=800, top=200px, left=520px, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no') 
}
</script>
</head>
<body>
		<div class="side-right">
			<div class="text-center mark-box online_server" href="">
				<span class="btn-mark">
					<img src="${pageContext.request.contextPath}/img/xgk/rside3.png" >
				</span>
				<div class="">
					<a href="javascript:;"  onclick="chat2()">在线客服</a>
				</div>			
				<div class="submenu">
					<div class="submenu_tit bg-primary"><span class="glyphicon glyphicon-headphones"></span> QQ在线客服 </div>
					<div class="submenu_con">
						<div class="">
							<div class="serve_class">精准教学</div>
							<ul class="">
								<li><a href="">客服1</a></li>
								<li><a href="">客服2</a></li>
								<li><a href="">客服3</a></li>
								<li><a href="">客服4</a></li>
							</ul>
						</div>
						<div class="">
							<div class="serve_class">升学规划</div>
							<ul class="">
								<li><a href="">客服1</a></li>
								<li><a href="">客服2</a></li>
								<li><a href="">客服3</a></li>
								<li><a href="">客服4</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="text-center mark-box course_server">
				<span class="btn-mark">
					<img src="${pageContext.request.contextPath}/img/xgk/rside1.png" >
				</span>				
				<div class="">
					<a href="">线上课程</a>
				</div>
				
			</div>
			<div class="text-center mark-box vip_server">
				<span class="btn-mark">
					<img src="${pageContext.request.contextPath}/img/xgk/rside2.png" >
				</span>
				<div class="">
					<a href="">VIP</a>
				</div>
				
			</div>
			<div class="text-center mark-box tel_server" href="">
				<span class="btn-mark">
					<img src="${pageContext.request.contextPath}/img/xgk/rside3.png" >
				</span>
				<div class="">
					<a href="tencent://message/?Site=baidu.com&uin=3303174399&Menu=yes">电话咨询</a>
				</div>
				<div class="submenu">
					<div class="submenu_tit bg-primary"><span class="glyphicon glyphicon-headphones"></span> QQ在线客服 </div>
					<div class="submenu_con">
						<div class="">
							<div class="serve_class">精准教学</div>
							<ul class="">
								<li><a href="">客服1</a></li>
								<li><a href="">客服2</a></li>
								<li><a href="">客服3</a></li>
								<li><a href="">客服4</a></li>
							</ul>
						</div>
						<div class="">
							<div class="serve_class">升学规划</div>
							<ul class="">
								<li><a href="">客服1</a></li>
								<li><a href="">客服2</a></li>
								<li><a href="">客服3</a></li>
								<li><a href="">客服4</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			
			<div class="text-center mark-box qq_server" href="">
				<span class="btn-mark">
					<img src="${pageContext.request.contextPath}/img/xgk/rside3.png" >
				</span>
				<div class="">
					<a href="tencent://message/?Site=baidu.com&uin=3303174399&Menu=yes">QQ客服</a>
				</div>
				<div class="submenu">
					<div class="submenu_tit bg-primary"><span class="glyphicon glyphicon-headphones"></span> QQ在线客服 </div>
					<div class="submenu_con">
						<div class="">
							<div class="serve_class">精准教学</div>
							<ul class="">
								<li><a href="">客服1</a></li>
								<li><a href="">客服2</a></li>
								<li><a href="">客服3</a></li>
								<li><a href="">客服4</a></li>
							</ul>
						</div>
						<div class="">
							<div class="serve_class">升学规划</div>
							<ul class="">
								<li><a href="">客服1</a></li>
								<li><a href="">客服2</a></li>
								<li><a href="">客服3</a></li>
								<li><a href="">客服4</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="text-center mark-box backtop">
				<span class="btn-mark">
					<img src="${pageContext.request.contextPath}/img/xgk/rside4.png" >
				</span>
				<div class="">
					<a href="">回到顶部</a>
				</div>
			</div>
		</div>
</body>
<script type="text/javascript">
			/**
			 * 右侧边栏子菜单显示隐藏控制
			 * @param {Object} obj 目标子菜单类名
			 */
			function menuSwitch(obj) {
				$(obj).hover(function(){
					timer=setTimeout(function(){
						$(obj).find(".submenu").fadeIn() 
					},100);
				},function(){
					clearTimeout(timer);
					$(this).find(".submenu").fadeOut();
				});
			}
			
			menuSwitch(".qq_server");
			menuSwitch(".tel_server");
			//menuSwitch(".online_server");
			//menuSwitch(".vip_server");
			menuSwitch(".course_server");
			
			$(".backtop").on('click',scroll_top)
			function scroll_top() {
				$(window).scrollTop(0)
			}
		</script>
</html>