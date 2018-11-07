/**
 * 积极分子管理  数据获取处理操作js方法<br>
 * 分页与相关处理
 */
//分页参数设置 这些全局变量关系到分页的功能
var pageb = 0; //开始页数
var sizeb = 20;  //每页最多显示条数
var nowpageb = 1;  //当前页数
var pagesb = 0;  //数据总条数

function getJoinParyList1(){
	$.ajax({
		   type:"post",
		   url:_ctxPath+"/recruit/queryAdmin.action",
		   data:{'page': nowpageb,'size':sizeb,'type|integer':1},
		   dataType:"json",
		   contentType: "application/x-www-form-urlencoded; charset=utf-8",
		   success:function(data){
			   pageb = data.page;//当前页数(后台返回)
			   pagesb = data.total;//总页数(后台返回)
			   setJoinParyList1(data.data);
			   toPage1();
		   }
	});
}

function setJoinParyList1(data){
	var party0=$("#party1");
	party0.html("");
	for (var i = 0; i < data.length; i++) {
		var recruit = data[i];
		var userName=recruit.applyUserName;
		var bumenName=recruit.bumenName;
		if(typeof bumenName === "undefined"||bumenName==null){
			bumenName="";
		}
		var gender="";
		if(recruit.gender==0){
			gender="男";
		}else if(recruit.gender==1){
			gender="女";
		}
		var crtTime=recruit.formtRustDate;
		var rusUserNames=recruit.rusUserNames;
		if(typeof rusUserNames  === "undefined" || rusUserNames == null){
			rusUserNames = "";
		}
		party0.append(" <tr> <td>"+userName+"</td> <td>"+gender+"</td> <td><span>"+bumenName
				+"</span></td> <td>"+crtTime+"</td><td>"+rusUserNames+" </td> <td>"+
				"<a class=\"look\" href='activeFInfo.html?recId="+recruit._id+"'>查看</a>"
				+"</td> </tr>");
	}
	if(data.length<1){
		party0.append(" <tr  style='border-bottom:1px solid transparent'> <td colspan='6'>暂无数据</td> </tr>");
	}
}

function toPage1(){
	//调用分页
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        laypage.render({
            elem: 'page1'
            ,count: pagesb
            ,limit: sizeb  //每页显示的数据的条数,layui会根据count，limit进行分页的计算
            ,curr: nowpageb
            ,jump: function (obj,first) {
                // var currPage=obj.curr;
                // var perPage_num=obj.limit;
                nowpageb = obj.curr;
                pageb = (obj.curr-1)*sizeb;
                if(!first){//一定要加此判断，否则初始时会无限刷新
                	getJoinParyList1();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                    location.href = '#top';
                    //<a href="#top">返回顶部</a>
			    }			
			}
        });
    });
};