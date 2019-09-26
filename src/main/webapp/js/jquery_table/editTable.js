//需要首先通过Jq来解决内容部分奇偶行的背景色不同

	//找到表格的内容区域中所有的奇数行
	//使用even是为了把通过tbody tr返回的所有tr元素中，
	//在数组里面下标是偶数的元素返回，因为这些元素，
	//实际上才是我们期望的tbody里面的奇数行
	

/*下面兩段开始添加删除行**/
$(document).ready(function() { 
	var now=new Date();
	var mytime=now.toLocaleString();     //获取当前时间
    $("#addBtn").bind("click", function(){
    	var rs = document.querySelectorAll("input[type='checkbox']:checked"); 
    	if(rs.length > 1){
    		for(var i=0;i<rs.length;i++){
    			alert(rs[i].value);
    		}    		
    	}
    	//alert($("tbody tr").length);
    	/*if($("tbody tr").length==1){
    		if($("tbody tr td").length==1){
    			$("tbody tr").remove();
    		}    		
    		 $("tbody").append("<tr class='text-c va-m'>"+
			"<td><input type='checkbox'></td>"+			
		"</tr>");            
    		 delTr();    	
    		$("tbody tr:odd").css("background-color","#EEEEEE");
    	}else{
    		 $("<tr class='text-c va-m'><td><input type='checkbox'></td>"+			
    				"</tr>").insertAfter($("tbody tr:last"));                       
    		 delTr();		 
    		$("tbody tr:odd").css("background-color","#EEEEEE");
    	}       */ 
    });    
	delTr();	
   }); 
 
 //删除
 function delTr(){
	$(".delBtn").click(function(){
		$(this).parent().parent().remove();
	});
 }

 /*
 function even(){
 	$("tbody tr:even").css("background-color","#ECE9D8");
 }*/


