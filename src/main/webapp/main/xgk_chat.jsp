<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<% pageContext.setAttribute("basePath", request.getContextPath());%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>好前途后台登录页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public/xgk_chat.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
</head>
<body>
	<div class="dialog margin_top" style="height: 600px;">
			<div class="chat_header clearfix bg-primary">
				<div class="clearfix pull-left">
					<span class="pull-left glyphicon glyphicon-user padding-side"></span>
					<span class="pull-left">						
						<div class="">
							<label style="color: red">客服96966</label>正在为您服务
						</div>
						<div class="">
							联系电话：0851-88546461
						</div>
					</span>
				</div>
				<a class="btn btn-default" href="">结束沟通</a>
			</div>
			<div class="body clearfix">
				<div class="body_left pull-left" style="    width: 70%;">
					<div class="chat_record" style="    height: 350px;text-align: center;    overflow: auto;">
						<header class="header-title text-center margin_bot margin_top" id="title"style="background-color: #f9f9f9;padding: .4em;">标题</header>
						<section class="chat-box">
							<div class="bubbleDiv" id="talkInfo">				
							</div>
						</section>						
						
					</div>
					<div class="">
						<div class="tool_list padding-side">
							<a href=""><span class="glyphicon glyphicon-info-sign text-muted"></span></a>
							<a href=""><span class="glyphicon glyphicon-font text-muted"></span></a>
							<a href=""><span class="glyphicon glyphicon-picture text-muted"></span></a>
							<a href=""><span class="glyphicon glyphicon-folder-close text-muted"></span></a>
							<a href=""><span class="glyphicon glyphicon-transfer text-muted"></span></a>
						</div>
						<div class="padding-side">
							<textarea id="chatContent" rows="4" class="chat-info" placeholder="想咨询他什么内容..."></textarea>
						</div>
						<div class="text-right padding-side margin_bot1">
							<a class="btn btn-primary" href="javascript:;" id="subsend" onclick="subSend()">发送 | <span class="glyphicon glyphicon-chevron-down"></span></a>
						</div>
					</div>
				</div>
				<div class="body_right pull-left">
					<div class="currentUser">				
						<img src="${pageContext.request.contextPath}/img/public/test4.jpg" class="userImage" style="width: 50px;"><br>
						<span class="userName" id="onlineName"></span>					
					</div>
				</div>
			</div>
		</div>
</body>
<script>
	 //客服图像    
    var adminImgSrc = "${pageContext.request.contextPath}/img/public/test.jpg";    
    //访客图像    
    var userImgSrc ="${pageContext.request.contextPath}/img/public/test4.jpg";    	
	var tempName = "";
	var ws = null;
	var target = null;
	//获取登录用户信息
	var administrator = '${userJson}';	
	var user =JSON.parse(administrator);//由JSON字符串转换为JSON对象
	tempName = user.username; //取出用户名
	console.log(user);
	
	/* *************************************   进入该页面直接打开websocket通讯连接   **************************************/
 window.onload = function() {		
		//显示当前用户名
		$("#onlineName").html(tempName);
		$("#title").html("欢迎使用在线咨询服务");
		//加载聊天信息
		chatRecord(user.id, 4);
		target = "ws://localhost:8080/hqtzytb/ChatOnLine";
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
			
			/* ----------------------显示左侧在线人员列表--------------------- */
			if (user.id == 4) { //判断当前是否是管理员登陆
				if (undefined != msg.userList) {
					$("#userList").html("");
					var userInfo;
					var tempUser;
					$.each(msg.userList, function(index, temp) {
						if (index == 0) { //设置默认选中第一个人
							 userInfo='<div class="user-item selected" title="'+temp.username+'" ><img src="${pageContext.request.contextPath}/img/public/test4.jpg" class="head"> &nbsp;&nbsp;<span class="userName">'
							            +temp.username+'</span><input type="hidden" value="'+temp.id+'" class="userId"/>'
							            +'<div class="close"><span class="closeBtn">×</span></div></div>';
						     $("#title").html(temp.username);//默认将该用户名加载到标题
	                         $('.chat-info').val(''); //清空输入框
	                         $(".bubbleDiv").html('');//清空聊天框
						     chatRecord(user.id, temp.id)//默认加载该用户的聊天信息 		     
						}else{
							userInfo='<div class="user-item" title="'+temp.username+'" ><img src="${pageContext.request.contextPath}/img/public/test4.jpg" class="head"> &nbsp;&nbsp;<span class="userName">'
							         +temp.username+'</span><input type="hidden" value="'+temp.id+'" class="userId"/> '+'<div class="close"><span class="closeBtn">×</span></div></div>';
						}
						
						$("#userList").append(userInfo);
					}); 
				}

			}
			
			/*------------------------ 显示当前在线人数 ------------------------*/
			if (undefined != msg.count) {
				$("#count").html(msg.count);
			}
			
			/*------------------------- 展示服务端推送的即时聊天信息 --------------------*/
			if (undefined != msg.chatContent) { //判断消息不为空
				// 1. 判断当前是否是客服登陆
				if (user.id == "4") { // 1.1 当前是管理员 
					//判断消息发送者是否是管理员
					if (msg.formUID == "4") { //消息的发送者是管理员的话，显示在右边
						chat("rightBubble",adminImgSrc,msg.chatContent);
					} else {  //如果不是管理员的话
						var toUID = $('.selected').find('.userId').val();//获取当前选中的用户ID
					    //判断当前页面（管理员页面）,当前选中的用户ID是否是发送者id
					    if (msg.formUID == toUID) { //如果是当前选中的用户，则直接显示消息
					    	chat("leftBubble",userImgSrc,msg.chatContent);
						} else { //如果不是，则给出未读消息提示
							
							var html = '<span style="color: green;display: inline;margin-left: 47px;" class="remind" >新消息！</span>';
							//添加当前提示信息前，先移除之前添加的信息，防止重复添加
							$(".user-list input[value='"+ msg.formUID+"']").parent('.user-item').find('.remind').remove();
							$(".user-list input[value='"+ msg.formUID+"']").parent('.user-item').append(html);
							window.setInterval(changeText, 800);  //让changeText 多久循环一次 
							//console.log($(".user-list input[value='"+ msg.formUID+"']").parent('.user-item').hasClass('selected'),$(".user-list input").val() == msg.formUID);
						}
					}					
				} else { //1.2 当前不是管理员 判断消息发送者是否是当前用户 
					if (user.id == msg.formUID) {  // 消息发送者是当前用户   显示在右侧
						chat("rightBubble",userImgSrc,msg.chatContent);
					} else { //否则，消息显示在左侧
						chat("leftBubble",adminImgSrc,msg.chatContent);
					}
				}
			    $("#talkInfo").scrollTop(999999);
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
	
 /* 文字闪烁效果 */
function changeText(){
	$('.remind').css('color','green');  //默认值
	setTimeout(" $('.remind').css('color','white')",100); //第一次闪烁
	setTimeout( "$('.remind').css('color','green')",400); //第二次闪烁
};

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
			var obj = null;

			if (tempName == "admin") { //是管理员登陆
				var ToID = $('.selected').find('.userId').val();//获取选中的游客的id值
				//alert("获取的游客Id："+name);
				if (ToID == undefined) { //判断是否选中聊天对象
					alert("请选择聊天对象");
					return;
				}

				obj = {
					say : user.id, //说话人的名称
					message : message, //聊天消息
					ToID : ToID, //聊天对象
					type : 1
				// 1 表示客服给游客发消息  2 表示游客给客服发消息
				}
				ws.send(JSON.stringify(obj));
			} else { //如果是游客，则直接将聊天信息推送给管理员
				obj = {
					say : user.id, //说话人的名称
					message : message, //聊天消息
					type : 2
				// 1 表示客服给游客发消息  2 表示游客给客服发消息
				}
				ws.send(JSON.stringify(obj));
			}

			$("#chatContent").val("");//清空文本域框内容
			$("#chatContent").focus();//文本域框获取焦点事件
		}

		$(function() {
			/* ------------------------------左侧单击用户切换 --------------------------------*/
			$(".user-list").on('click','.user-item',function() {
						//清空输入框
						$('.chat-info').val('');
						//清空聊天框
						$(".bubbleDiv").html('');

						//给单击选中的对象添加样式，并移除其他对象的样式
						$(this).addClass('selected').siblings().removeClass('selected');
						//单击左侧用户列表对象后，获取用户名，将获取的用户名放到右侧上方标题栏中
						$(".header-title").html($(this).find('.userName').html());

						//加载聊天记录信息(此处客服端加载聊天信息，访客加载是在进入的时候)
						var toUID = $('.selected').find('.userId').val();//获取选中的游客的id值
						//清空未读消息提示
						$('.selected').find('.remind').css("display", "none");
						
						//alert("选中用户的ID："+toUID);
						//alert("当前用户的ID："+user.id);
						chatRecord(user.id, toUID)
					});

			//删除在线列表的某个用户
			$(".closeBtn").on('click', function(e) {
				$(this).parents('.user-item').remove();
				e.stopPropagation();
			});
			
		});

		
		
		
		/* 加载聊天记录信息  fromUID:发送者的id  toUID：接受者id*/
		function chatRecord(fromUID, toUID) {
					$.ajax({
						url : "${basePath}/Message/queryChatMessage",
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
									/* 	var systemMessage='<div class="bubbleItem">'+
									   '<span class="bubble2 centerBubble">'+
									     '<font size="1px" color="#888" >'+temp.mtime
									     +'</font></span></div>';
									        $("#talkInfo").append(systemMessage);  */
									 //判断当前是否是管理员
									 if (user.id == "4") { // 当前是管理员
										 //判断当发送者是否是管理员
										 if (temp.mfromUserID == "4") { //发送者是管理员，显示在右边
											 chat("rightBubble", adminImgSrc,temp.mcontent);
										} else { //发送者不是管理员  ，显示在左边
											chat("leftBubble", userImgSrc,temp.mcontent);
										}
										
									} else {  //当前不是管理员
										if (temp.mfromUserID == "4") { //发送者是管理员 ，显示在左侧
											chat("leftBubble", adminImgSrc,temp.mcontent);
										} else { //发送者不是管理员 ，显示在右侧
											chat("rightBubble", userImgSrc,temp.mcontent);
										}
									}
									

								});

								var systemMessage = '<div class="bubbleItem">'
										+ '<span class="bubble2 centerBubble">'
										+ '<font size="1px" color="#888" >'
										+ '--------------------以上是聊天记录消息-------------------</font></span></div>';
							} else {
								var systemMessage = '<div class="bubbleItem">'
										+ '<span class="bubble2 centerBubble">'
										+ '<font size="1px" color="#888" >'
										+ '--------------------暂无聊天记录-------------------</font></span></div>';

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
				// $box.append(createdLeft(imgSrc,$textContent)).stop().animate({scrollTop: $(document).height()}, 300);
				$box.append(createdLeft(imgSrc, $textContent));
			} else if ($user === "rightBubble") {
				//$box.append(createRight(imgSrc,$textContent)).stop().animate({scrollTop: $(document).height()}, 300);
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
            var time=month+'-'+day+'-'+hour+':'+minute+':'+second;
             return time;
        }

	</script>
</html>
