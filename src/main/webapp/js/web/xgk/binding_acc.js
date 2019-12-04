
function checkName(obj) {
	//true_name=$('#username')
	true_name = obj;
	reg = /^(([\u4e00-\u9fa5+\·?\u4e00-\u9fa5+]{2,4}$))/;
	if(true_name.val() == '') {
		errorport(true_name, ' 真实姓名不能为空');
		//						true_name.parent().children().last().text(' 真实姓名不能为空');
		true_name.focus();
		return false;
	} else if(!reg.test(true_name.val())) {
		errorport(true_name, ' 姓名输入有误，请重新输入');
		true_name.focus();
		return false;
	} else {
		success_input(true_name, '');
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

function check_captcha(obj){
	if(obj.val()==''){
//		errorport(obj, ' 验证码不能为空，请重新输入');
		obj.focus();
		return false;
	}else{
		success_input(mobile, '');
		return true;
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
			return false;
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
			//							pwd.parent().children().last().html(' 真实姓名不能为空');
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
	} else {
		//						console.log($('.filter-title').val());
		return true;
	}
}

//是否同意协议
function agree(check, sub) {
	var check = document.getElementById(check);
	var sub = document.getElementById(sub);
	sub.disabled = !check.checked;
}

function register() {
	var flag = check_mobile($('#tel')) &&check_captcha($('#captcha0'));
	if(flag == false) {
		return false;
	} else {
		$.ajax({
			type:"get",
			url:"",
			async:true,
			data:"",
			datatype:'json',
			success:function(res){
				
			}
		});
		return false;
	}

}

function register1() {
	var flag = checkName($('#username')) && check_mobile($('#mobile')) &&check_captcha($('#captcha')) && checkpwd($('#password')) && confirm_pwd($('#confirm'), $('#password')) && check_year()  && agree('checkbox', 'submit1');
	//return flag;
	if(flag == false) {
		return false;
	} else {
		$.ajax({
			type:"get",
			url:"",
			async:true,
			data:"",
			datatype:'json',
			success:function(res){
				
			}
		});
//		next_step($('.reg_submit input'));
		return false; //组织表单提交
	}
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