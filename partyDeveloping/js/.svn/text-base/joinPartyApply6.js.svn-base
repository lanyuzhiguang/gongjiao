/**
 * 预备党员审批  数据获取处理操作js方法<br>
 * 分页与相关处理
 */
//分页参数设置 这些全局变量关系到分页的功能
var pageh = 0; //开始页数
var sizeh = 20;  //每页最多显示条数
var nowpageh = 1;  //当前页数
var pagesh = 0;  //数据总条数

function getJoinParyList6(){
	$.ajax({
		   type:"post",
		   url:_ctxPath+"/recruit/queryAudit.action",
		   data:{'page': nowpageh,'size':sizeh,"in:isPerpl|array-integer":"1,2,3,4,5"},
		   dataType:"json",
		   contentType: "application/x-www-form-urlencoded; charset=utf-8",
		   success:function(data){
			   pageh = data.page;//当前页数(后台返回)
			   pagesh = data.total;//数据总条数(后台返回)
			   setJoinParyList6(data.data);
			   toPage6();
		   }
	});
}

function setJoinParyList6(data){
	var party0=$("#party6");
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
		var crtTime=recruit.entialDate;
		var rustDate=recruit.formtRustDate;
		var ruDate=recruit.formtRuDate;
		var sp="";
		if(recruit.isPerpl==1){// 1：已提交预审 2：预省通过 3：提交审批 4：审批通过待备案   5：审批通过备案
			sp="待预审";
		}else if(recruit.isPerpl==2){
			sp="预审通过";
		}else if(recruit.isPerpl==3){
			sp="待审批"
		}else if(recruit.isPerpl==4){
			sp="审批通过，待备案";
		}else if(recruit.isPerpl==5){
			sp="已备案";
		}
		party0.append(" <tr> <td>"+userName+"</td> <td>"+gender+"</td> <td><span>"+bumenName
				+"</span></td> <td>"+crtTime+"</td><td> "+rustDate+" </td> <td> "+ruDate+" </td> <td> "+sp+" </td> <td>"+
				"<a class=\"look\" href='preparePartySping.html?recId="+recruit._id+"'>查看</a>"
				+"</td> </tr>");
	}
	if(data.length<1){
		party0.append("<tr style='border-bottom:1px solid transparent'> <td colspan='8'>暂无数据</td> </tr>");
	}
}

function toPage6(){
	//调用分页
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        laypage.render({
            elem: 'page6'
            ,count: pagesh
            ,limit: sizeh  //每页显示的数据的条数,layui会根据count，limit进行分页的计算
            ,curr: nowpageh
            ,jump: function (obj,first) {
                // var currPage=obj.curr;
                // var perPage_num=obj.limit;
                nowpageh = obj.curr;
                pageh = (obj.curr-1)*sizeh;
                if(!first){//一定要加此判断，否则初始时会无限刷新
                	getJoinParyList6();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                    location.href = '#top';
                    //<a href="#top">返回顶部</a>
			    }			
			}
        });
    })
};