/**
 * 入党申请人管理  数据获取处理操作js方法<br>
 * 分页与相关处理
 */
//分页参数设置 这些全局变量关系到分页的功能
var page1 = 0; //开始页数
var size1 = 20;  //每页最多显示条数
var nowpage1 = 1;  //当前页数
var pages1 = 0;  //总页数

function getJoinParyList(){
	$.ajax({
		   type:"post",
		 	async: false, //使用同步才能够正确的返回用户权限信息
		   url:_ctxPath+"/recruit/query.action",
		   data:{'page': nowpage1,'size':size1,'type|integer':5},
		   dataType:"json",
		   contentType: "application/x-www-form-urlencoded; charset=utf-8",
		   success:function(data){
			   setJoinParyList0(data.data);
			   page1 = data.page;//当前页数(后台返回)
			   pages1 = data.pages;//总页数(后台返回)
		   }
	});
}

function setJoinParyList(data){
	var party0=$("#party0");
	party0.html("");
	for (var i = 0; i < data.length; i++) {
		var recruit = data[i];
		var userName=recruit.applyUserName;
		var bumenName=recruit.bumenName;
		var gender="";
		if(recruit.gender==0){
			gender="男";
		}else if(recruit.gender==1){
			gender="女";
		}
		var crtTime=recruit.entialDate;
		party0.append(" <tr> <td>"+userName+"</td> <td>"+gender+"</td> <td><span>"+bumenName
				+"</span></td> <td>"+crtTime+"</td> <td><span class=\"look\">"+
				"<a href=''></a>"
				+"</span></td> </tr>");
	}
}

function toPage(){
	  layui.use(['laypage', 'layer'], function() {
	      var layer = layui.layer,
	          laypage = layui.laypage;
	      var nums = 20;
	      //调用分页
	        laypage({
	           cont: 'page0'
	          ,prev: '<' //若不显示，设置false即可
	          ,next: '>' //若不显示，设置false即可
	          ,first:false
	          ,last: false
	          ,pages: pages1 //得到总页数
	          ,curr: nowpage1
	          ,skip: false
	          ,jump: function(obj, first){
	        	  nowpage1 = obj.curr;
	        	  page1 = (obj.curr-1)*10;
	            //document.getElementById('biuuu_city_list').innerHTML = render(obj, obj.curr);
	            if(!first){//一定要加此判断，否则初始时会无限刷新
	            	getJoinParyList0();//一定要把翻页的ajax请求放到这里，不然会请求两次。
	                location.href = '#top';
	                //<a href="#top">返回顶部</a>
	              }
	          }
	        });
	  });
};