<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset=utf-8>
<title>Insert title here</title>
<script type="text/javascript">
/*window.onload = function() {
	var url = "../admin/side_right.do";
	var data ="";
	$.ajax({
		"url" : url,
		"data" : data,
		"type" : "POST",
		"dataType" : "json",
		"success" : function(obj) {
			if (obj.state == 0) {				
			}else{
				var d=obj.data;				
				var str="";
				for(var i=0;i<d.length;i++){					
					str+='<li><a href="javascript:;"  onclick="chat2('+d[i].id+')"><img src="${pageContext.request.contextPath}/img/public/searve_con.gif" style="max-width: 1.4em;border-radius: 50%;"/>'+d[i].username+'客服</a></li>';
				}			
				$("#chatmove").html(str);
			}				
		}
	}); 
}*/
function chat2(id) {	
	window.open ('${pageContext.request.contextPath}/web/hqt_chat.do?id='+id,'好前途在线咨询平台', 'height=630, width=800, top=200px, left=520px, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no') 
}
</script>
</head>
<body>
		<div class="side-right">
			<div class="text-center mark-box online_server">
				<a href="javascript:void(0);"">
					<span class="btn-mark"> <img src="${pageContext.request.contextPath}/img/xgk/rside3.png" > </span>
					<div class=""> 在线客服 </div>
				</a>	
				<div class="submenu">
					<div>
						<div class="submenu_tit bg-primary"><span class="glyphicon glyphicon-headphones"></span> 在线客服 </div>
						<div class="submenu_con">
							<div class="">
								<div style="font-size: 1em;">
									<div class="text-left padding-side">服务时间：</div>
									<div class="text-muted">9：00-18：00</div>
								</div>
								<ul class="" id="chatmove"></ul>
							</div>
							<!-- <div class="">
								<div class="serve_class">升学规划</div>
								<ul class="">
									<li><a href="">客服1</a></li>
									<li><a href="">客服2</a></li>
									<li><a href="">客服3</a></li>
									<li><a href="">客服4</a></li>
								</ul>
							</div> -->
						</div>
					</div>
				</div>
			</div>
			<div class="text-center mark-box course_server">
				<a href="${pageContext.request.contextPath}/online/xgk_online_index.do">
					<span class="btn-mark"> <img src="${pageContext.request.contextPath}/img/xgk/rside1.png" > </span>
					<div class=""> 在线课程</div>
				</a>
			</div>
			<div class="text-center mark-box vip_server">
				<a href="${pageContext.request.contextPath}/web/hqt_vip_index.do">
					<span class="btn-mark"> <img src="${pageContext.request.contextPath}/img/xgk/rside2.png" > </span>
					<div class=""> VIP</div>
				</a>
			</div>
			<div class="text-center mark-box tel_server">
				<a href="javascript:void(0)">
					<span class="btn-mark"> <img src="${pageContext.request.contextPath}/img/xgk/rside3.png" > </span>
					<div class=""> 电话咨询</div>
				</a>
				<div class="submenu">
					<div class="">
						<div class="submenu_tit bg-primary" style="width: 100%;"><span class="glyphicon glyphicon-headphones"></span>&nbsp;电话咨询 </div>
						<div class="submenu_con">
							<div class="">
								<div class="serve_class">精准教学</div>
								<ul class="">
									<li><a href="javascript:void(0)">付老师：17585728282</a></li>
									<li><a href="javascript:void(0)">刘老师：18286758419</a></li>
								</ul>
							</div>
							<div class="">
								<div class="serve_class">升学规划</div>
								<ul class="">
									<li><a href="javascript:void(0)">张老师：18085107264</a></li>
									<li><a href="javascript:void(0)">胡老师：15885105016</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>				
			</div>
			
			<div class="text-center mark-box qq_server">
				<a href="javascript:void(0)">
					<span class="btn-mark"> <img src="${pageContext.request.contextPath}/img/xgk/rside3.png" > </span>
					<div class=""> QQ客服</div>
				</a>
				<div class="submenu">
					<div class="">
						<div class="submenu_tit bg-primary" style="width: 100%;"><span class="glyphicon glyphicon-headphones"></span> QQ在线客服 </div>
						<div class="submenu_con qqsearve">
							<div class="">
								<div class="serve_class">精准教学</div>
								<ul class="">
									<li>
										<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=867187836&site=qq&menu=yes">
											<img src="${pageContext.request.contextPath}/img/public/qq_side.gif" style="max-width: 2em;"/>在线客服
										</a>
									</li>
									<li>
										<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3303174399&site=qq&menu=yes">
											<img src="${pageContext.request.contextPath}/img/public/qq_side.gif" style="max-width: 2em;"/>在线客服
										</a>										
									</li>
								</ul>
							</div>
							<div class="">
								<div class="serve_class">升学规划</div>
								<ul class="">
									<li>
									<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=401375488&site=qq&menu=yes">
										<img src="${pageContext.request.contextPath}/img/public/qq_side.gif" style="max-width: 2em;"/>在线客服
									</a>									
									</li>
									<li>									
									<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=210881296&site=qq&menu=yes">
										<img src="${pageContext.request.contextPath}/img/public/qq_side.gif" style="max-width: 2em;"/>在线客服										
									</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="text-center mark-box backtop">
				<a href="javascript:void(0)">
					<span class="btn-mark"> <img src="${pageContext.request.contextPath}/img/xgk/rside4.png" > </span>
					<div class=""> 回到顶部 </div>
				</a>
			</div>
		</div>
</body>
<script type="text/javascript">
			/**
			 * 右侧边栏子菜单显示隐藏控制
			 * @param {Object} obj 目标子菜单类名
			 */
			function menuSwitch(obj) {
				var timer = null;
				$(obj).hover(function(){
					var timer =setTimeout(function(){
						$(obj).find(".submenu").show(); 
					},100);
				},function(){					
					clearTimeout(timer);
					 $(this).find(".submenu").hide(); 
				});
			}
			
			menuSwitch(".qq_server");
			menuSwitch(".tel_server");
			menuSwitch(".online_server");
			//menuSwitch(".vip_server");
			menuSwitch(".course_server");
			
			$(".backtop").on('click',scroll_top)
			function scroll_top() {
				$("body,html").animate({scrollTop:0},500);
			}
		</script>
</html>