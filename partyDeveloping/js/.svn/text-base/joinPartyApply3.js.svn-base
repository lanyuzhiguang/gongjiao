/**
 * 预备党员管理  数据获取处理操作js方法<br>
 * 分页与相关处理
 */
//分页参数设置 这些全局变量关系到分页的功能
var paged = 0; //开始页数
var sized = 20;  //每页最多显示条数
var nowpaged = 1;  //当前页数
var pagesd = 0;  //数据总条数

function getJoinParyList3(){
	$.ajax({
		   type:"post",
		   url:_ctxPath+"/recruit/queryAdmin.action",
		   data:{'page': nowpaged,'size':sized,'type|integer':3},
		   dataType:"json",
		   contentType: "application/x-www-form-urlencoded; charset=utf-8",
		   success:function(data){
			   paged = data.page;//当前页数(后台返回)
			   pagesd = data.total;//总页数(后台返回)
			   setJoinParyList3(data.data);
			   toPage3();
		   }
	});
}

function setJoinParyList3(data){
	var party0=$("#party3");
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
		var crtTime=recruit.formtProbPartyDate;
		party0.append(" <tr> <td>"+userName+"</td> <td>"+gender+"</td> <td><span>"+bumenName
				+"</span></td> <td>"+crtTime+"</td>  <td></td> <td>"+
				"<a class=\"look\" href='preparePartySource.html?recId="+recruit._id+"'>查看</a>"
				+"</td> </tr>");
	}
	if(data.length<1){
		party0.append(" <tr  style='border-bottom:1px solid transparent'> <td colspan='6'>暂无数据</td> </tr>");
	}
}

function toPage3(){
	//调用分页
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        laypage.render({
            elem: 'page3'
            ,count: pagesd
            ,limit: sized  //每页显示的数据的条数,layui会根据count，limit进行分页的计算
            ,curr: nowpaged
            ,jump: function (obj,first) {
                // var currPage=obj.curr;
                // var perPage_num=obj.limit;
                nowpaged = obj.curr;
                paged = (obj.curr-1)*sized;
                if(!first){//一定要加此判断，否则初始时会无限刷新
                	getJoinParyList3();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                    location.href = '#top';
                    //<a href="#top">返回顶部</a>
			    }			
			}
        });
    });
};