<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>好前途后台登录页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skin_/login.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
</head>

<body>

<div id="container">
    <div id="bd">
    	<div id="main">
        	<div class="login-box">
                <div id="logo"></div>
                <h1></h1>
                <div class="input username" >
                    <label for="userName">用户名</label>
                    <span></span>
                    <input type="text" id="username" />
                </div>
                <div class="input password">
                    <label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                    <span></span>
                    <input type="password" id="password" />
                </div>                                 
                <div id="btn" class="loginButton">
                    <input type="button" class="button" onclick="login()" value="登录"  />
                    <input type="button" class="button" onclick="loginreset()" value="重置"  />
                </div>
            </div>
        </div>        
    </div>
   
</div>
</body>
<script type="text/javascript">
function login(){	
	if ($("#username").val() == "") {
		alert("用户名不能为空");				
	}else if($("#password").val() == ""){
		alert("请输入密码");
	}else{
		var url = "../admin/hqt_adminlogin.do";
		var username=$("#username").val();
		var password=$("#password").val();		
		var data = "username="+username+"&password="+password;		
		$.ajax({
			"url" : url,
			"data" : data,
			"type" : "POST",
			"dataType" : "json",
			"success" : function(obj) {
				if (obj.state == 0) {
					alert(obj.message);
					return;
				}else{
					location.href = "../main/admin.do";
				}
			}
		}); 
	}			
}
</script>
<script type="text/javascript">
function loginreset(){
	$("#username").val('');
	$("#password").val('');
	$("#username").focus();
}
</script>
</html>
