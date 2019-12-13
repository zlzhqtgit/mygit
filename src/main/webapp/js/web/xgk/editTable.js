//自定义选科对比表格
//xgkXk(e)选科组合点击事件
//hideTable()控制table的显示和隐藏
//delTd(e)点击a标签执行方法
//del(id)删除指定的列
//customxk()自定义选科选择科目判断
function customxk(){
	var str="";
	var rss = document.querySelectorAll("input[name='custombox']:checked");		
	if(rss.length != 3){
		layer.msg("选择学科(必须选择3种)",{icon:2,time:1000});
	}else{
		for(var i=0;i<rss.length;i++){
			str+=rss[i].value;
		}
		return location.href="../xk/xgk_customisereport.do?str="+str;
		/*var url = "../xk/xgk_customisereport.do";
		var data = "str="+str;
		$.ajax({
			"url": url,
			"data": data,
			"type": "POST",
			"dataType": "json",
			"success": function(obj) {
				if(obj.state == 0) {
					alert(obj.message);
					return;
				}
				alert(obj.message);
				location.href = "../cp/xgk_report.do";
			}
		});*/
	}
}
function xgkxk(e){	 
	 var rs = document.querySelectorAll("input[name='coursesetbox']:checked");
	 if(rs.length > 4){ 
	    alert("只能对比4个组合"); 
	    e.checked=false;
	 }else{
		 if(e.checked==true){
		    	$("thead tr").append("<th style='width: 218px;'><span class='glyphicon glyphicon-remove'></span>"+e.value+"<span class='glyphicon glyphicon-remove' name='"+e.id+"' onclick='delTd(this)'></span></th>");
		    	$("#major-nub").append("<td>"+e.value+"</td>");
		    	$("#major-max").append("<td>"+e.value+"</td>");
		    	$("#major-min").append("<td>"+e.value+"</td>");
		    	$("#major-no").append("<td>"+e.value+"</td>"); 
		    }else{    		
		    	var rs = document.getElementsByName(e.id);
		    	var id=$(rs).parent().prevAll().length;
		    	alert(id);
		    	del(id);
		    	e.checked=false;
		    } 
		    	hidetable();   	  
	 }    
}; 
 //控制table在checkbox选中少于2个时候隐藏
function hidetable(){
    var rs = document.querySelectorAll("input[type='checkbox']:checked");
    if(rs.length > 1){ 
    	$('#table-div').css('display','block');      		
    }else{
    	$('#table-div').css('display','none');
    }  	     
}
 //a标签删除
 function delTd(e){		
		var id=$(e).parent().prevAll().length;
		var boxid=$(e).attr("name");		
		del(id);	
		var rs = document.getElementById(boxid); 	
		rs.checked = false;	
		hidetable();
 }
 //执行删除操作
function del(id){
	var table = document.getElementById("tableid");//获得要操作的table对象
	table.rows[0].deleteCell(id);//先获取到要操作的第几行（3代表第四行）ID代表列，
	table.rows[1].deleteCell(id);
	table.rows[2].deleteCell(id);
	table.rows[3].deleteCell(id);
	table.rows[4].deleteCell(id);
}


