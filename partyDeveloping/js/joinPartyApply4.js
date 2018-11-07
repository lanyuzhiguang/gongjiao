/**
 * 预备党员转正  数据获取处理操作js方法<br>
 * 分页与相关处理
 */
//分页参数设置 这些全局变量关系到分页的功能
var pagee = 0; //开始页数
var sizee = 20;  //每页最多显示条数
var nowpagee = 1;  //当前页数
var pagese = 0;  //数据总条数

function getJoinParyList4(){
	$.ajax({
		   type:"post",
		   url:_ctxPath+"/recruit/queryAdmin.action",
		   data:{'page': nowpagee,'size':sizee,'type|integer':4},
		   dataType:"json",
		   contentType: "application/x-www-form-urlencoded; charset=utf-8",
		   success:function(data){
			   pagee = data.page;//当前页数(后台返回)
			   pagese = data.total;//总页数(后台返回)
			   setJoinParyList4(data.data);
			   toPage4();
		   }
	});
}

function setJoinParyList4(data){
	var party0=$("#party4");
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
		var toPartyDate=recruit.formtToPartyDate;
		party0.append(" <tr> <td>"+userName+"</td> <td>"+gender+"</td> <td><span>"+bumenName
				+"</span></td> <td>"+toPartyDate+"</td> <td>"+
				"<a class=\"look\" href='preparePartyTransferZ.html?recId="+recruit._id+"'>查看</a>"
				+"</td> </tr>");
	}
	if(data.length<1){
		party0.append(" <tr  style='border-bottom:1px solid transparent'> <td colspan='5'>暂无数据</td> </tr>");
	}
}

function toPage4(){
	//调用分页
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        laypage.render({
            elem: 'page4'
            ,count: pagese
            ,limit: sizee  //每页显示的数据的条数,layui会根据count，limit进行分页的计算
            ,curr: nowpagee
            ,jump: function (obj,first) {
                // var currPage=obj.curr;
                // var perPage_num=obj.limit;
                nowpagee = obj.curr;
                pagee = (obj.curr-1)*sizee;
                if(!first){//一定要加此判断，否则初始时会无限刷新
                	getJoinParyList4();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                    location.href = '#top';
                    //<a href="#top">返回顶部</a>
			    }			
			}
        });
    });
};