
$('#get_verify1').click(function() {
	var data="phone="+$("#mobile1").val();
	var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
	if(!reg.test($("#mobile1").val())){	
		layer.msg("请输入正确格式的手机号",{icon:2,time:1000});
	}else{
		$.ajax({
			url: "../user/hqt_photoyzm.do",
	        type: "POST", 
	        data:data,
	        dataType: "JSON", 
	        success: function(obj) {
	             if (obj.state == 0) {	            	 	            	
	            	 layer.msg(obj.message,{icon:2,time:2000});	
	            	 return;
	             }
	         }
	    });
		time(this);
	}    
})

function check_captcha(obj){
	if(obj.val()==''){
		layer.msg("验证码不能为空，请重新输入",{icon:2,time:1000});
		obj.focus();
		return false;
	}else{
		return true;
	}
}

var waitTime = 60;
function time(ele) {
    if (waitTime == 0) {
        ele.disabled=false;
        ele.value = "重新发送";
        waitTime = 60;// 恢复计时
    } else {
        ele.disabled=true;
        ele.value = waitTime + "秒后重新发送";
        waitTime--;
        setTimeout(function() {
            time(ele)// 关键处-定时循环调用
        }, 1000)
    }
}
	/*function next_step(e){
		var step=$('.reg_process ul li');
		step.removeClass('current');//移除当前元素类 current类属性
		var index=$(e).parents('.page_step').index();//返回指定元素相对于其他指定元素的 index 位置。
		step.eq(index+1).addClass('current');//设置下一个同级元素 current类属性
		$(e).parents('.page_step').addClass('hide');
		var status=$(e).attr("id");//设置或返回被选元素的属性值。
		if (status=='class1') {
			$(e).parents('.page_step').next().find("form").eq(0).removeClass("hide");
			$(e).parents('.page_step').next().find("form").eq(0).siblings().addClass("hide");
		} else if(status=='class2'){
			$(e).parents('.page_step').next().find("form").eq(1).removeClass("hide");
			$(e).parents('.page_step').next().find("form").eq(1).siblings().addClass("hide");
		}
		$(e).parents('.page_step').next().removeClass('hide');
	}*/
	function register(){
		var read = $("#read").is(':checked');
		if(read){
			var photeyzm="${code}";
			var phone="${phone}";
			alert(photeyzm + " " + phone + " === " + $("#verify_code").val() + " " + $("#phone").val());
			if(photeyzm==$("#verify_code").val() && phone==$("#phone").val()){
				var url = "../user/hqt_registeradd.do";
				var data = $("#reg_form").serialize();
				$.ajax({
					"url" : url,
					"data" : data,
					"type" : "POST",
					"dataType" : "json",
					"success" : function(obj) {
						if (obj.state == 0) {
							layer.msg(obj.message,{icon:2,time:1000});
							return;
						}else{
							layer.msg(obj.message,{icon:1,time:1000},function(){ next_step(e);});
						}
					}
				});
			}else if(photeyzm != $("#verify_code").val() && phone==$("#phone").val()){
				layer.msg("验证码输入错误",{icon:2,time:1000});
			}else{
				layer.msg("验证码和手机号不匹配",{icon:2,time:1000});
			}
		} else {
			layer.msg("请阅读《用户服务协议》和《隐私政策》",{icon:5,time:1000});
		}
	}

	
	

function checkName(obj) {
	reg = /^(([\u4e00-\u9fa5+\·?\u4e00-\u9fa5+]{2,4}$))/;
	if(obj.val() == '') {
		errorport(obj, ' 真实姓名不能为空');
		//true_name.parent().children().last().text(' 真实姓名不能为空');
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
	var flag = checkName($('#username')) && check_mobile($('#mobile')) &&check_captcha($('#captcha')) && checkpwd($('#password')) && confirm_pwd($('#confirm'), $('#password')) && check_year() && agree('checkbox', 'submit');
	if(flag == false) {
		return false;
	} else {
		next_step($('.reg_submit input'));
		return false;
	}

}

function register1() {
	var flag = checkName($('#username1')) && check_mobile($('#mobile1')) &&check_captcha($('#captcha1')) && checkpwd($('#password1')) && confirm_pwd($('#confirm1'), $('#password1')) && agree('checkbox1', 'submit1');
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
		next_step($('.reg_submit input'));
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