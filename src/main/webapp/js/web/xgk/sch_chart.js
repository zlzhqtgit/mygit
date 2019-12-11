$(window).load(function() {
	$(".loading").fadeOut()
})

$(function() {
	waterball('water1',0.26,'#ffad05');
	waterball('water2',0.76,'#47cf66');
	waterball('water3',0.52,'#3b8bec');
	waterball('water4',0.68,'#fe5656');
	
	function waterball(id,data,color) {
		var myChart = echarts.init(document.getElementById(id));
		var option = {
			series: [{
				type: "liquidFill",
				data: [data],
				direction: "right", //波浪方向或者静止
				radius: "80%",
				// 水球颜色
				color: [color],
				center: ["50%", "50%"], //水球位置
				// outline  外边
				outline: {
					borderDistance: 3, //内环padding值
					itemStyle: {
						borderWidth: 8, //圆边线宽度
						borderColor: color,
						shadowBlur: 10,
						shadowColor: 'rgba(63, 218, 255, 0.5)'
					}
				},
				backgroundStyle: {
					// borderWidth: 5,xx
					// borderColor: 'rgb(255,0,255,0.9)',
					color: 'rgb(255,0,255,0.01)'
				},
				label: {
					normal: {
		                textStyle: {
		                	color:'#ddd',
		                    fontSize: 16,
		                    insideColor: 'yellow',
		                }
		            }
				}
			}
        ]};
		myChart.setOption(option);
		window.addEventListener("resize", function() {
			myChart.resize();
		});
	}
	
	//	function echarts1(){
	//      var myChart = echarts.init(document.getElementById('chart1'));
	//		var option = {
	//		    
	//		};
	//      myChart.setOption(option);
	//      window.addEventListener("resize",function(){
	//          myChart.resize();
	//      });
	//	}
})