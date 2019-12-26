var countdown=60; //60秒发送一次
function sendMobileMessage(e){
	 var phone = $("#phone").val();
	 var obj = $("#get_verify");
	 if(e == 1){
		 obj = $("#get_verify1");
		 phone = $("#phone1").val();
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

//选择学届验证
function check_year() {
	var el = $('.filter-title');
	if(el.val() == '请选择学届') {
		errorport($('.filter-box'), '请选择学届');
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
	
	//阅读已同意
	if ($("#checkbox").is(':checked') || $("#checkbox1").is(':checked')){
		var url = "../user/hqt_registeradd.do";
		var data = "";
		if(e == 0){
			//学生
			if(!checkName($('#username'))  //用户名验证
			   || !check_mobile($('#phone')) //手机号验证 
			   || !check_captcha($('#captcha')) //验证码输入验证              
			   || !confirm_pwd($('#confirm'), $('#password')) //密码\确认码输入确认 
			   || !check_year()){ //选择学届验证
				return;
			}
			if($("#pc_number").val() != ""){
				if(!idCodeValid($("#pc_number"))){
					return;//身份证号验证失败
				}
			}
			
			data = "username=" + $("#username").val() + //用户名
				   "&phone=" + $("#phone").val() + //手机号
				   "&verifyCode=" + $("#captcha").val() + //验证码
				   "&password=" + $("#password").val() + //密码
				   "&pcNumber=" + $("#pc_number").val() + //身份证号
				   "&studyProvinces=" + $("#study_provinces").val() + //就读省份 
				   "&school=" + $("#school").val()  + //学校
				   "&schoolAddress=" + $("#school_address").val() + //学校地址
				   "&educationalCircles=" + $("#educational_circles option:selected").val() + //学届 
				   "&grade=" + $("#grade").val() + //年级
				   "&className=" + $("#class_name").val() + //班级
				   "&studentId=" + $("#student_id").val(); //学号
		} else {
			//咨询师
			if(!checkName($('#username1'))  //用户名验证
					   || !check_mobile($('#phone1')) //手机号验证 
					   || !check_captcha($('#captcha1')) //验证码输入验证              
					   || !confirm_pwd($('#confirm1'), $('#password1'))){ //密码\确认码输入确认 

						return;
					}
					data = "username=" + $("#username1").val() + //用户名
						   "&phone=" + $("#phone1").val() + //手机号
						   "&verifyCode=" + $("#captcha1").val() + //验证码
						   "&password=" + $("#password1").val(); //密码
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

//身份证号合法性验证
//支持15位和18位身份证号
//支持地址编码、出生日期、校验位验证
function idCodeValid(obj){
var code = obj.val(); 
var city={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江 ",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北 ",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏 ",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外 "};
if(!code || !/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|[xX])$/.test(code)){
	errorport(obj, ' 身份证号格式错误');
	obj.focus();
	return false;    
}else if(!city[code.substr(0,2)]){
	errorport(obj, ' 身份证号地址编码错误');
	obj.focus();
	return false;
}else{
    //18位身份证需要验证最后一位校验位
    if(code.length == 18){
        code = code.split('');
        //∑(ai×Wi)(mod 11)
        //加权因子
        var factor = [ 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2 ];
        //校验位
        var parity = [ 1, 0, 'X', 9, 8, 7, 6, 5, 4, 3, 2 ];
        var sum = 0;
        var ai = 0;
        var wi = 0;
        for (var i=0; i<17; i++){
            ai = code[i];
            wi = factor[i];
            sum += ai * wi;
        }
        if(parity[sum % 11] != code[17].toUpperCase()){
        	errorport(obj, ' 身份证号校验位错误');
        	obj.focus();
        	return false;
        }
    }
}
return true;
}
