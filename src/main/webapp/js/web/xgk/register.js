var countdown=60; //60秒发送一次
function sendMobileMessage(e){
	 var phone = $("#mobile").val();
	 var obj = $("#get_verify");
	 if(e == 1){
		 obj = $("#get_verify1");
		 phone = $("#mobile1").val();
	}	
	var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
	if(!reg.test(phone)) {
		layer.msg("请输入正确格式的手机号", {icon: 3, time: 1000});
		return;
	}
	settime(obj);
	$.ajax({
		url: "../user/hqt_photoyzm.do",
		data:"phone=" + phone,
		type:"POST",
		dataType:"json",
		success:function(obj){
			if(obj.state == 0){
				layer.msg(obj.message,{icon:2,time:1000});
			}else{
				layer.msg(obj.message,{icon:6,time:1000});
			}
		}	
	});
}
////发送短信
//$('#get_verify').click(function() { 
//	    var phone = $("#mobile").val();
//	    var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
//		if(!reg.test(phone)) {
//			layer.msg("请输入正确格式的手机号", {icon: 3, time: 1000});
//			return;
//		}
//		var obj = $("#get_verify");
//		settime(obj);
//		$.ajax({
//			url: "../user/hqt_photoyzm.do",
//			data:"phone=" + phone,
//			type:"POST",
//			dataType:"json",
//			success:function(obj){
//				if(obj.state == 0){
//					layer.msg(obj.message,{icon:2,time:1000});
//				}else{
//					layer.msg(obj.message,{icon:6,time:1000});
//				}
//			}	
//		});
//})
////发送短信1
//$('#get_verify1').click(function() { 
//		console.log('11111111')
//	    var phone = $("#mobile1").val();
//	    var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
//		if(!reg.test(phone)) {
//			layer.msg("请输入正确格式的手机号", {icon: 3, time: 1000});
//			return;
//		}
//		var obj = $("#get_verify1");
//		settime(obj);
//		$.ajax({
//			url: "../user/hqt_photoyzm.do",
//			data:"phone=" + phone,
//			type:"POST",
//			dataType:"json",
//			success:function(obj){
//				if(obj.state == 0){
//					layer.msg(obj.message,{icon:2,time:1000});
//				}else{
//					layer.msg(obj.message,{icon:6,time:1000});
//				}
//			}	
//		});
//})

function settime(obj) { //发送验证码倒计时
    if (countdown == 0) { 
    	obj.attr('disabled',false); 
    	obj.removeAttr("style","pointer-events");
	    obj.html("获取手机验证码");
	    countdown = 60; 
	    return;
	} else { 
	    obj.attr('disabled',true);
	    obj.css("pointer-events","none"); 
	    obj.html("重新获取验证码(" + countdown + ")");
	    countdown--; 
	} 
	setTimeout(function() { 
	    settime(obj) }
	    ,1000) 
	}

function check_captcha(obj){
	if(obj.val()==''){
		layer.msg("验证码不能为空，请重新输入",{icon:2,time:1000});
		obj.focus();
		return false;
	}
	return true;
}

function checkName(obj) {
	reg = /^(([\u4e00-\u9fa5+\·?\u4e00-\u9fa5+]{2,4}$))/;
	if(obj.val() == '') {
		errorport(obj, ' 真实姓名不能为空');
		obj.focus();
		return false;
	} else if(!reg.test(obj.val())) {
		errorport(obj, ' 姓名输入有误，请重新输入');
		obj.focus();
		return false;
	} else {
		success_input(obj, '');
		return true;
	}
}

function check_mobile(obj) {
	//mobile=$('#mobile');
	mobile = obj;
	reg_mobile = /^1(3|4|5|6|7|8|9)\d{9}$/;
	if(mobile.val() == '') {
		errorport(mobile, ' 手机号不能为空，请重新输入');
		mobile.focus();
		return false;
	} else {
		if(!reg_mobile.test(mobile.val())) {
			errorport(mobile, ' 手机号输入有误，请重新输入');
			mobile.focus();
			return false;
		} else {
			success_input(mobile, '');
			return true;
		}
	}
}

function checkpwd(obj) {
	//密码包含 数字,英文,字符中的两种以上，长度6-20
	reg_pwd = /^(?![0-9]+$)(?![a-z]+$)(?![A-Z]+$)(?!([^(0-9a-zA-Z)])+$).{6,16}$/;
	if(obj.val() == '') {
		errorport(obj, ' 密码不能为空，请重新输入');
		obj.focus();
		return false;
	} else {
		var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
		var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
		var enoughRegex = new RegExp("(?=.{6,}).*", "g");
		if(false == enoughRegex.test(obj.val())) {
			errorport(obj, ' 密码强度不符合安全要求，请重新输入');
			obj.focus();
			return false;;
			//密码小于六位的时候，密码强度图片都为灰色 
		} else if(strongRegex.test(obj.val())) {
			success_input(obj, ' <span class="text-success">密码强度：强</span>');
			return true;
			//密码为八位及以上并且字母(大小写)、数字、特殊字符三项都包括,强度强 
		} else if(mediumRegex.test(obj.val())) {
			success_input(obj, ' <span class="text-primary">密码强度：中等</span>');
			return true;
			//密码为七位及以上并且字母、数字、特殊字符三项中有两项，强度是中等 
		} else {
			//pwd.parent().children().last().html(' 真实姓名不能为空');
			success_input(obj, ' <span class="text-danger">密码强度：弱</span>');
			return true;
			//如果密码为6位及以下，就算字母、数字、特殊字符三项都包括，强度也是弱的 
		}
		//							success_input(pwd);
	}
}

function confirm_pwd(obj, pre) {
//	confirm=$('#confirm'),
//	pwd=$('#password');
	confirm = obj,
		pwd = pre;
	if(confirm.val() == '') {
		errorport(confirm, ' 请再次输入密码');
		confirm.focus();
		return false;
	} else if(confirm.val() == pwd.val()) {
		success_input(confirm, '');
		return true;
	} else {
		errorport(confirm, ' 两次密码输入不一致');
		confirm.focus();
		return false;
	}
}

//选择高考年度
function check_year() {
	var el = $('.filter-title');
	if(el.val() == '请选择高考年度') {
		errorport($('.filter-box'), ' 请选择高考年度');
		return false;
	}
	return true;
}

//是否同意协议
function agree(check, sub) {
	var check = document.getElementById(check);
	var sub = document.getElementById(sub);
	sub.disabled = !check.checked;
}


//成功样式
function success_input(obj, con) {
	obj.parent().children().last().removeClass('glyphicon-remove-sign text-danger');
	obj.parent().children().last().addClass('glyphicon-ok-sign text-success');
	obj.parent().children().last().html(con);
}

//不成功样式
function errorport(obj, con) {
	obj.parent().children().last().removeClass('glyphicon-ok-sign text-success');
	obj.parent().children().last().addClass('glyphicon-remove-sign text-danger');
	obj.parent().children().last().html(con);
}

/**
 * 下一步控制
 * @param {Object} obj
 */
function next_step(obj) {
	var step = $('.reg_process ul li');
	step.removeClass('current');
	var index = $(obj).parents('.page_step').index();
	step.eq(index + 1).addClass('current');
	$(obj).parents('.page_step').addClass('hide');
	var status = $(obj).attr("id");
	if(status == 'class1') {
		$(obj).parents('.page_step').next().find("form").eq(0).removeClass("hide");  
		$(obj).parents('.page_step').next().find("form").eq(0).siblings().addClass("hide");
	} else if(status == 'class2') {
		$(obj).parents('.page_step').next().find("form").eq(1).removeClass("hide");
		$(obj).parents('.page_step').next().find("form").eq(1).siblings().addClass("hide");
	} 
	$(obj).parents('.page_step').next().removeClass('hide');
}

/**
 * 注册
 * @returns {Boolean}
 */
function register(e) {
	if ($("#checkbox").is(':checked') || $("#checkbox1").is(':checked')){
		var url = "../user/hqt_registeradd.do";
		var data
		if(e == 0){
			if(!checkName($('#username')) || !check_mobile($('#mobile')) || !check_captcha($('#captcha')) 
					                      || !confirm_pwd($('#confirm'), $('#password')) || !check_year()){
				return;
			}
			data = "username=" + $("#username").val() + 
				   "&phone=" + $("#mobile").val() + 
				   "&verifyCode=" + $("#captcha").val() + 
				   "&password=" + $("#password").val() + 
				   "&belongTo=" + $("#belong_to").val() + 
				   "&school=" + $("#school").val()  + 
				   "&schoolAddress=" + $("#school_address").val() + 
				   "&families=" + $("#object").val() + 
				   "&fraction=" + $("#score").val() + 
				   "&ceeYear=" + $("#cee_year option:selected").val() + 
				   "&vocation=" + $("#vocation").val() + 
				   "&province=" + $("#province").val();
			console.log('data : ' + data);
		} else {
			if(!checkName($('#username1')) || !check_mobile($('#mobile1')) || !check_captcha($('#captcha1')) || !confirm_pwd($('#confirm1'), $('#password1'))){
				console.log('111')
				return;
			}
			data = "username=" + $("#username1").val() + 
				   "&phone=" + $("#mobile1").val() + 
				   "&verifyCode=" + $("#captcha1").val() + 
				   "&password=" + $("#password1").val() + 
				   "&belongTo=" + $("#belong_to1").val() + 
				   "&school=" + $("#school1").val() + 
				   "&schoolAddress=" + $("#school_address1").val() + 
				   "&families=" + $("#object1").val() + 
				   "&fraction=" + $("#score1").val() + 
				   "&ceeYear=" + $("#cee_year1 option:selected").val() + 
				   "&vocation=" + $("#vocation1").val() + 
				   "&province=" + $("#province1").val();
		}
		
		$.ajax({
			type:"POST",
			url:url,
			async:true,
			data:data,
			datatype:'json',
			success:function(obj){
				if (obj.state == 0) {
					layer.msg(obj.message,{icon:2,time:1000});
				}else{
					layer.msg(obj.message,{icon:1,time:1000});
//					location.href = "/cp/xgk_index.do";
					next_step($(".reg_submit input"));
				}
			}
		});
		
	} else {
		layer.msg("请阅读《用户服务协议》和《隐私政策》",{icon:2,time:1000});
	}

}

//完善注册信息
function completeRegister() {
	if ($("#checkbox").is(':checked')){
		if(!checkName($('#username')) || !check_mobile($('#mobile')) || !check_captcha($('#verify_code')) || !confirm_pwd($('#confirm'), $('#password')) || !check_year()){
			return;
		}
		var url = "../user/hqt_registeradd.do";
		var data = "username=" + $("#username").val() + "&phone=" + $("#mobile").val() + "&verifyCode=" + $("#verify_code").val()
		+ "&password=" + $("#password").val() + "&belongTo=" + $("#belong_to").val() + "&school=" + $("#school").val() 
		+ "&schoolAddress=" + $("#school_address").val() + "&families=" + $("#object").val() + "&fraction=" + $("#score").val()
		+ "&ceeYear=" + $("#year").val() + "&vocation=" + $("#vocation").val() + "&province=" + $("#province").val();
		$.ajax({
			type:"POST",
			url:url,
			async:true,
			data:data,
			datatype:'json',
			success:function(obj){
				if (obj.state == 0) {
					layer.msg(obj.message,{icon:2,time:1000});
			
				}else{
					layer.msg(obj.message,{icon:1,time:1000});
					location.href = "/cp/xgk_index.do";
					
				}
			}
		});
	} else {
		layer.msg("请阅读《用户服务协议》和《隐私政策》",{icon:2,time:1000});
	}

}

//完善注册信息发送短信
var isSend = false;
function sendMessages(e) {
	var url = "";
	var phone = "";
	if (e == 1){//绑定手机 短信
		url = "/user/send_message.do";
		phone = $("#phone").val();
	} else {//完善信息 短信
		url = "/user/hqt_photoyzm.do";
		phone = $("#mobile").val();
	}
	var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
	if(!reg.test(phone)) {
		layer.msg("请输入正确格式的手机号", {icon: 3, time: 1000});
		return;
	}
	settime($(".get_verify"));
	$.ajax({
		url: "/user/user_is_exist.do",
		data:"phone=" + phone,
		type:"POST",
		dataType:"json",
		success:function(obj){
			if(obj.state == 0){
				if (e == 1){
					//用户未注册过 弹出选项提示
					layer.confirm('该手机号未注册账户，请完善账户信息！', {icon : 3, time : 2000});
				} else {
					$.ajax({
						url: url,
						type: "POST",
						data: "phone=" + phone,
						dataType: "JSON",
						success: function(obj) {
							if(obj.state == 0){
								layer.msg(obj.message,{icon:3,time:2000});
							} else {
								isSend = true;
								layer.msg(obj.message,{icon:6,time:2000});
							}
						}
					});
				}
			} else {
				if (e == 2){
					layer.confirm('该手机号已注册账户，请更换手机号！', {icon : 3, time : 2000});
				} else {
					$.ajax({
						url: url,
						type: "POST",
						data: "phone=" + phone,
						dataType: "JSON",
						success: function(obj) {
							if(obj.state == 0){
								layer.msg(obj.message,{icon:3,time:2000});
							} else {
								isSend = true;
								layer.msg(obj.message,{icon:6,time:2000});
							}
						}
					});
				}
			}
		}
	});
	
}

//绑定账号
function bindAccount() {
	if (isSend == false){
		layer.msg("请先获取手机验证码",{icon:2,time:1000});
	}
	var phone = $("#phone").val();
	var verifyCode = $("#verifyCode").val();
	if (verifyCode == null || verifyCode == ""){
		layer.msg("请输入手机验证码",{icon:2,time:1000});
	}else {
		$.ajax({
			url: "/user/hqt_bind_account.do",
			type: "POST",
			data: "phone=" + phone + "&verifyCode=" + verifyCode,
			dataType: "JSON",
			success: function(obj) {
				if(obj.state == 0){
					layer.msg(obj.message,{icon:3,time:2000});
				} else {
					location.href = "../cp/xgk_index.do";
				}
			}
		});
	}
}