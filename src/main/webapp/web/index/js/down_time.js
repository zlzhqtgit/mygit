window.onload = function() {
	rest_time();

}

function rest_time() {
	var t = document.getElementById("time")
	var current_time = new Date();
	//		var loc=current_time.toLocaleString()
	//		console.log(loc)
	var end_time = new Date(year,month-1,days);
	var rest_s = parseInt((end_time.getTime() - current_time.getTime()) / 1000) ;//间隔秒数
	var d = parseInt(rest_s / (60 * 60 * 24));
			console.log(d)
	var h = parseInt(rest_s / (60 * 60) % 24) //取模-一天24小时
	var m = parseInt(rest_s / 60 % 60)
	var s = parseInt(rest_s % 60)
	t.innerHTML = time_style(d) + "天" + time_style(h) + "小时" + time_style(m) + "分钟" + time_style(s) + "秒" //页面显示
	if(rest_s <= 0) {
		t.innerHTML = "已过期"
	} else {
		setTimeout(rest_time, 500);
	}
}

/**
 * 处理时间格式
 * @param {Object} time
 */
function time_style(time) {
	return time < 10 ? "0" + time : time
}