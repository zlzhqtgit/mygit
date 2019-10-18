<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% pageContext.setAttribute("basePath", request.getContextPath());%>
<!-- ${pageContext.request.contextPath}等价于request.getContextPath()
      如： <c:set var="ctx" value="${pageContext.request.contextPath}"/> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线聊天</title>
<link href="${basePath}/css/chat/global.css" rel="stylesheet">
<link href="${basePath}/css/chat/styles.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
</head>


<body>
	<div class="main">
		<!-- 左侧栏 显示在线人数和其他相关信息 -->
		<div class="User-Info">
			<!-- ********************左侧显示当前用户信息*********************** -->
			<div class="currentUser">			
				<img src="${basePath}/static/image/test4.jpg" class="userImage">&nbsp;&nbsp;
				<span class="userName" id="onlineName"></span>			
			</div>
			<!-- 当前在线用户列表 -->
			<div class="user-list" id="userList">                  
			</div>
			<p style="margin-left: 5px;">
				技术支持：<a href="#">XXXX科技有限公司</a>
			</p>
		</div>


		<!-- 展示聊天信息 -->
		<div class="chat-bg" >
			<header class="header-title" id="title">标题</header>
			
			<!-- *********************展示聊天内容************************** -->
			<section class="chat-box">
			<div class="bubbleDiv" id="talkInfo">
			</div>
			</section>
			
			<footer class="chat-edit clearfix"> 
			<!-- 上传文件图片按钮 -->
			  <span class="uploadImg fl">
			    <input type="file" name="uploadfile" class="uploadfile">
			  </span> 
			 <!-- *********************输入聊天内容，并发送************************** -->
			 <textarea id="chatContent" rows="4" class="chat-info" placeholder="想咨询他什么内容..."></textarea> <!-- <p class="chat-info" placeholder="想咨询他什么内容..." contenteditable="true"></p> -->
			 <button class="send-btn fr" id="subsend" onclick="subSend()" >发送</button>
			 
			</footer>
		</div>
		
	</div>
	
	<script src="${basePath}/static/js/jquery-1.8.3.min.js"></script>

	<script>
	 //客服图像
    //var leftImgSrc = 'http://120.76.230.93:8063/Upload/2017/0914/20170914092809690_55e736d12f2eb9384eade4fed6628535e4dd6ffe.jpg';
    var adminImgSrc = "${basePath}/static/image/test.jpg";
    
    //访客图像
    //var rightImgSrc = 'http://120.76.230.93:8063/Upload/2017/1116/20171116180954252_img.png';
    var userImgSrc ="${basePath}/static/image/test4.jpg";
    	
	var tempName = "";
	var ws = null;
	var target = null;
	//获取登录用户信息
	var administrator = '${userJson}';
	//alert(administrator);	
	var user =JSON.parse(administrator);//由JSON字符串转换为JSON对象
	tempName = user.username; //取出用户名
	console.log(user);
	/* *************************************   进入该页面直接打开websocket通讯连接   **************************************/
	 window.onload = function() {		
			//显示当前用户名
			$("#onlineName").html(tempName);
			$("#title").html("欢迎使用在线咨询服务");
			//加载聊天信息
			//chatRecord(user.id, 6);
			target = "ws://${pageContext.request.getServerName()}:${pageContext.request.getServerPort()}${pageContext.request.contextPath}/ChatOnLine";
			//判断当前浏览器是否支持websocket通讯
			if ('WebSocket' in window) {
				ws = new WebSocket(target);
			} else if ('MozWebSocket' in window) {
				ws = new MozWebSocket(target);
			} else {
				alert('对不起，该浏览器不支持websocket！！！');
				return;
			}		
			/* ******************************************当websocket创建成功时，即会触发onopen事件 *******************************/
			ws.onopen = function(){};		
			/* ******************************************解析后台传回的消息,并予以展示 *******************************/
			 ws.onmessage = function(event) {
				 var msg = JSON.parse(event.data);			
				console.log(msg);			
				/* --------------------- 显示系统提示信息 ------------------------ */
				if (undefined != msg.message) {
					if (msg.type == "error") { //消息发送失败的系统提示
						$("#talkInfo").append('<div class="bubbleItem">'
		                        +'<span class="bubble2 centerBubble"><img src="${pageContext.request.contextPath}/img/public/failure.png" width="14px;" height="14px;"/>&nbsp;<font size="3px">'
				                  +msg.message + '</font></span></div>');
					}else{
						$("#talkInfo").append('<div class="bubbleItem">'
						                        +'<span class="bubble2 centerBubble"><font size="3px">'
								                + msg.message + '</font></span></div>');
					}
					$("#talkInfo").scrollTop(999999);
				} 						
				/*------------------------- 展示服务端推送的即时聊天信息 --------------------*/
				if (undefined != msg.chatContent) { //判断消息不为空				
					if (user.id == msg.formUID) {  // 消息发送者是当前用户   显示在右侧
						chat("rightBubble",userImgSrc,msg.chatContent);
					} else { //否则，消息显示在左侧
						chat("leftBubble",adminImgSrc,msg.chatContent);
					}				
				}
			}
			
		/* *************************************websocket通讯连接异常  ************************************* */
	       ws.onerror = function (evt) {
			  $("#talkInfo").append("<img src='${pageContext.request.contextPath}/img/public/failure.png' width='14px;' height='14px;'><font size='3px'>通信连接发生错误！！！</font><br/>");
		  }	
	       ws.onclose = function(event){
	    	  // alert("已经与服务器断开连接 \n当前连接状态："+this.readyState);
	       };
	}

			/* *************************************  关闭和刷新页面时，关闭websocket通道，如果不关闭，后台会出现报错显现   **************************************/
			window.onbeforeunload = function() {
				alert("即将离开该页面！！")
				ws.close();
				ws = null;
			}
			/* *************************************  发送消息到服务端  ************************************* */
			function subSend() {
				var message = $("#chatContent").val().trim();//获取聊天信息
				if (message == "") {
					alert("请输入聊天内容。。。。");
					return;
				}
				var obj = {
						say : user.id, //说话人的名称
						message : message, //聊天消息
						type : 2
					// 1 表示客服给游客发消息  2 表示游客给客服发消息
					}
				ws.send(JSON.stringify(obj));
				$("#chatContent").val("");//清空文本域框内容
				$("#chatContent").focus();//文本域框获取焦点事件
			}		
			/* 加载聊天记录信息  fromUID:发送者的id  toUID：接受者id*/
			function chatRecord(fromUID, toUID) {
						$.ajax({
							url : "${basePath}/Message/queryChatMessage.do",
							type : "get",
							data : {
								fromUID : fromUID,
								toUID : toUID
							},
							async : false,
							scriptCharset : 'utf-8',
							success : function(result) {
								console.log(result);							
								if (result.length != 0) {
									$.each(result, function(index, temp) {					 
										chat("rightBubble", userImgSrc,temp.mcontent);									
									});
									var systemMessage = '<div class="bubbleItem">'
											+ '<span class="bubble2 centerBubble">'
											+ '<font size="1px" color="#888" >'
											+ '--------------------以上是聊天记录消息-------------------</font></span></div>';
								} 
								$("#talkInfo").append(systemMessage);
							}
						});
				$("#talkInfo").scrollTop(999999);
			}

			/* 发送聊天信息  element 判断发送者对象(自己 or 对方)  imgSrc 图像路径   leftTextContent 说话内容*/
			function chat(element, imgSrc, leftTextContent) {
				//判断传入的值
				var $user = element;
				var $leftHead = imgSrc;
				var $textContent = leftTextContent;
				//获取容器
				var $box = $('.bubbleDiv');
				var $boxHeght = $box.height();
				var $sectionHeght = $(".chat-box").height();
				var $elvHeght = Math.abs($boxHeght - $sectionHeght);
				//医生
				if ($user === "leftBubble") {				
					$box.append(createdLeft(imgSrc, $textContent));
				} else if ($user === "rightBubble") {				
					$box.append(createRight(imgSrc, $textContent));
				}

			}

			//显示在左边的聊天信息
			function createdLeft(imgSrc, textContent) {
				var $textContent = textContent;
				var $imgSrc = imgSrc;
				var block;
				var date = new Date();
				var time=getTime(date);			
				block = '<div class="bubbleItem">' + '<div class="left-head">'
						+ '<img src="'+ imgSrc +'" alt="doctor"/><span class="kf-name">客服1</span><span class="kf-time">' +time+ '</span></div>'
						+ '<span class="bubble leftBubble">' + $textContent
						+ '<span class="topLevel"></span></span>' + '</div>';
				return block;
			};

			//显示在右边的聊天信息
			function createRight(imgSrc, textContent) {
				var $textContent = textContent;
				var block;
				var date = new Date();
				var time=getTime(date);	
				block = '<div class="bubbleItem clearfix">'
						+ '<span class="bubble rightBubble" >' + $textContent
						+ '<span class="topLevel"></span></span>'
						+ '<div class="right-head">'
						+ '<span class="kf-time">' +time+ '</span><span class="kf-name">'+tempName+'</span><img src="'+ imgSrc +'" alt="doctor"/>' + '</div>'
						+ '</div>';
				return block;
			};
			function getTime(date){     	//获取时间        	
	        	var month=date.getMonth();
	        	var day=date.getDate();
	            var hour=date.getHours();
	            var minute=date.getMinutes();
	            var second=date.getSeconds();
	            //这样写显示时间在1~9会挤占空间；所以要在1~9的数字前补零;
	             if (month<10) {
	            	 month='0'+month;
	            }
	            if (day<10) {
	            	day='0'+day;
	            }
	            if (hour<10) {
	            	hour='0'+hour;
	            }
	            if (minute<10) {
	            	minute='0'+minute;
	            }
	            if (second<10) {
	            	second='0'+second;
	            }
	            var x=date.getDay();//获取星期
	            var time=month+'-'+day+' '+hour+':'+minute+':'+second;
	             return time;
	        }

	</script>

</body>
</html>