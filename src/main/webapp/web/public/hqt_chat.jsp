<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% pageContext.setAttribute("basePath", request.getContextPath());%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>好前途在线咨询平台</title>
<meta name="viewport" content="width=device-width, initial-scale=0.3">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xgk/index.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public/xgk_chat.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ajaxfileupload.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/2.4/layer.js"></script>
<style type="text/css">
	.com_form p { height: 28px; line-height: 28px; position: relative; margin-top: 10px; }
	span.emotion { width: 42px; height: 20px; padding-left: 20px; cursor: pointer }
	span.emotion:hover { background-position: 2px -28px }
	.qqFace { margin-top: 4px; background: #fff; padding: 2px; border: 1px #dfe6f6 solid; }
	.qqFace table td { padding: 0px; }
	.qqFace table td img { cursor: pointer; border: 1px #fff solid; }
	.qqFace table td img:hover { border: 1px #0066cc solid; }
	#show{ width: 100%; margin: 20px auto; background: #fff; padding: 5px; border: 1px solid #DDD; vertical-align: top; }
</style>
</head>
<body>
	<div class="dialog ">
			<div class="chat_header clearfix bg-primary">
				<div class="clearfix pull-left">
					<span class="pull-left padding-side"><img src="${pageContext.request.contextPath}/img/xgk/user.png" style="max-width: 36px;"/></span>
					<span class="pull-left">						
						<div class="">
							欢迎使用好前途在线咨询平台
						</div>
						<div class="">
							联系电话：0851-88546461
						</div>
					</span>
				</div>				
			</div>
			<div class="body clearfix">
				<div class="body_left pull-left" style="width: 70%;">
					<div class="chat_record" style="height: 350px;overflow: auto;">						
						<section class="chat-box">
							<div class="bubbleDiv" id="talkInfo">				
							</div>
						</section>	
					</div>
					<div class="">
						<div class="tool_list padding-side">
							<span class="emotion"><img src="${pageContext.request.contextPath}/img/public/e.jpg" title="表情" style="max-width: 34px;"/></span>
							<label id="chat-tuxiang" title="发送图片" for="inputImage" class="">
	                            <input type="file" onchange="selectImg(this)" accept="image/jpg,image/jpeg,image/png"
	                                   name="inputImage" id="inputImage" class="hidden">
	                            <img src="${pageContext.request.contextPath}/img/public/pictures.jpg" title="图片" style="max-width: 28px;"/>
	                        </label>
						</div>
						<div class="">
							<!-- <textarea id="chatContent" rows="4" class="chat-info" placeholder="想咨询他什么内容..."></textarea> -->
							<div id="chatContent" name="chatContent" class="bg-info  margin_bot1 chat-info" contenteditable="true" style=""></div>
						</div>
						<div class="text-right padding-side margin_bot1">
							<a class="btn btn-primary sub_btn" onclick="subSend()" href="javascript:void(0);" id="subsend">发送 </a>
						</div>
					</div>
				</div>
				<div class="body_right pull-left " style="width:30%;">					
            			<div class="nav">
                			<div class="nav-tabs text-center" style=" padding: 0.8em;">客服信息</div>                		
            			</div>
            			<div class="tab-content test-1">
                			<div class="tabs show" id="service-info">
                    			<p class="text-center" style="padding: 0.8em;margin: 40px 0 30px 0;">
                        			<img id="userimg" src="" alt="" style="width: 50%; border-radius: 50%;">
                    			</p>                    			
                    			<p class="" style="margin-left: 20%;color: #121312;"><span>名称：</span><span id="username" style="color: #106ce2;font-size: 16px;"></span></p>                  				
                    			<p class="" style="margin-left: 20%;color: #121312;"><span>电话：</span><span id="custTel" style="color: #106ce2;font-size: 16px;">17784160219</span></p>
                			</div>
                			<div class="tabs" id="about-us" >
                				<img  src="${pageContext.request.contextPath}/img/public/zxkf.jpg" style="width: 100%; margin-top: 71px;"/>
                			</div>
            			</div>       			 	
				</div>
			</div>
		</div>
</body>
<script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/jquery.qqFace.js" type="text/javascript" charset="utf-8"></script>
<script>

$(function(){
	$('.emotion').qqFace({
		id : 'facebox', 
		assign:'chatContent', 
		path:'emotions/'	//表情存放的路径
	});	
});


//聊天框默认最底部
function info_bottom(){
	var scr_h=$(".chat_record")[0].scrollHeight;
    $(".chat_record").scrollTop(scr_h);
}

//限制文件上传只能为图片
function uploadImg() {
    var _name, _fileName, personsFile;
    personsFile = document.getElementById("inputImage");
    _name = personsFile.value;
    _fileName = _name.substring(_name.lastIndexOf(".") + 1).toLowerCase();
    if (_fileName !== "png" && _fileName !== "jpg" && _fileName !== "gif") {
        alert("上传图片格式不正确，请重新上传");
        return;
    }
}

//发送粘贴的图片
function pasteItem() {
	var str = $("#chatContent").html();
	var postImg="<div class='margin_top1 dialog_con chatmsg_imgbox margin_bot bg-info' ondblclick='preImg(this)'><span onclick='close_preImg(this)' style='display: none;'>&times;</span>"+str+"</div>";
	$('.chat_record').append("<div class=\"padding-side margin_top clearfix\"><span class=\"pull-left padding-side\" style=\"\"/><img src=\"${pageContext.request.contextPath}/img/xgk/user.png\" style=\"max-width: 32px; \"/></span> <span class=\"text-warning\">凤姐</span> <span class=\"text-muted\">2019-10-14 今天 14：40</span></div>"+postImg);
}

//      发送图片
function selectImg(pic){
    if (!pic.files || !pic.files[0]) {
        return;
    }
    //限制文件上传只能为图片
    var _name, _fileName, personsFile;
    personsFile = document.getElementById("inputImage");
    _name = personsFile.value;
    _fileName = _name.substring(_name.lastIndexOf(".") + 1).toLowerCase();
    if (_fileName !== "png" && _fileName !== "jpg" && _fileName !== "gif") {
        alert("上传图片格式不正确，请重新上传");
        //跳出方法
        return;
    }
    
    /* var reader = new FileReader();
    reader.onload = function (evt) {
        var images = evt.target.result;
        var tag_img="<img class='chat_img' style='width: 100%;' src="+images +">"
        chat("rightBubble", userImgSrc,tag_img);		
       //聊天框默认最底部
       info_bottom();
    };
    reader.readAsDataURL(pic.files[0]); */
    var formData = new FormData();	    
    formData.append('inputImage', $('#inputImage')[0].files[0]);
      $.ajax({
          url: '../web/hqt_img.do',
          type: 'POST',
          cache: false,
          data: formData,
          processData: false,
          contentType: false,
          success: function(obj) {
	             if (obj.state == 0) {           
	            	 layer.msg(obj.message,{icon:2,time:2000});	
	            	 return false;
	             }else{
	            	var tag_img="<img class='chat_img' style='width: 100%;' src='${pageContext.request.contextPath}"+obj.message +"'>"
	                // chat("rightBubble", userImgSrc,tag_img);
	            	 var obj = {
	     					say : user.id, //说话人的名称
	     					message : tag_img, //聊天消息
	     					type : 2
	     				// 1 表示客服给游客发消息  2 表示游客给客服发消息
	     				}			
	     			ws.send(JSON.stringify(obj));
	                //聊天框默认最底部
	                info_bottom();
	                personsFile.value='';
	                return;
	            	 //layer.msg(obj.message,{icon:1,time:1000});
	           	}		            	   		             
	         }
      });    
    
}

//图片预览
function preImg (obj) {
	var owidth=$(obj).width();
	var objwidth=owidth*1.4
	$(obj).css({"position":"absolute","z-index":"99","width":"700px","top":"0","box-shadow":"0 0 20px #999"});
	$(obj).find("span").show();
}

//关闭图片预览
function close_preImg(obj) {
	var owidth=$(obj).width();
	$(obj).hide();
	$(obj).parent().css({"position":"relative","width":"100%","z-index":"1","box-shadow":"0 0 0 #999"});
	
	 //聊天框默认最底部
    info_bottom();
}
	
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
	//console.log(user);
	var kfname="${chatName}"+"客服";
	/* *************************************   进入该页面直接打开websocket通讯连接   **************************************/
 window.onload = function() {		
		//显示当前用户名
		$("#onlineName").html(tempName);		
		$("#kfname").html(kfname);	
		$("#username").html(kfname);
		$("#userimg").attr('src',adminImgSrc); 
		//加载聊天信息
		chatRecord(user.id,"${chatId}");
		target = "ws://localhost:8080/ChatOnLine";
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
			var message = $("#chatContent").html().trim();//获取聊天信息	
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
			$("#chatContent").html("");//清空文本域框内容
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
			//跳转底部
			info_bottom();

		}

		//显示在左边的聊天信息
		function createdLeft(imgSrc, textContent) {
			var $textContent = textContent;
			var $imgSrc = imgSrc;
			var block;
			var date = new Date();
			var time=getTime(date);			
			block = '<div class="bubbleItem">' + '<div class="left-head">'
					+ '<img src="'+ imgSrc +'" alt="doctor"/><span class="kf-name">'+kfname+'</span><span class="kf-time">' +time+ '</span></div>'
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
</html>
