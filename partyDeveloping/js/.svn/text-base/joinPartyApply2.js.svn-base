/**
 * 发展对象管理  数据获取处理操作js方法<br>
 * 分页与相关处理
 */
//分页参数设置 这些全局变量关系到分页的功能
var pagec = 0; //开始页数
var sizec = 20;  //每页最多显示条数
var nowpagec = 1;  //当前页数
var pagesc = 0;  //数据总条数

function getJoinParyList2(){
	$.ajax({
		   type:"post",
		   url:_ctxPath+"/recruit/queryAdmin.action",
		   data:{'page': nowpagec,'size':sizec,'type|integer':2},
		   dataType:"json",
		   contentType: "application/x-www-form-urlencoded; charset=utf-8",
		   success:function(data){
			   pagec = data.page;//当前页数(后台返回)
			   pagesc = data.total;//总页数(后台返回)
			   setJoinParyList2(data.data);
			   toPage2();
		   }
	});
}

function setJoinParyList2(data){
	var party0=$("#party2");
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
		var crtTime=recruit.formtRuDate;
		var rudUserNames=recruit.rudUserNames;
		if(rudUserNames==undefined||rudUserNames==null){
			rudUserNames="";
		}
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
				+"</span></td> <td>"+crtTime+"</td> <td>"+rudUserNames+"</td> <td> "+sp+" </td> <td>"+
				"<a class=\"look\" href='preparePartySp.html?recId="+recruit._id+"'>查看</a>"
				+"</td> </tr>");
	}
	if(data.length<1){
		party0.append(" <tr  style='border-bottom:1px solid transparent'> <td  colspan='7'>暂无数据</td> </tr>");
	}
}

function toPage2(){
	//调用分页
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        laypage.render({
            elem: 'page2'
            ,count: pagesc
            ,limit: sizec  //每页显示的数据的条数,layui会根据count，limit进行分页的计算
            ,curr: nowpagec
            ,jump: function (obj,first) {
                // var currPage=obj.curr;
                // var perPage_num=obj.limit;
                nowpagec = obj.curr;
                pagec = (obj.curr-1)*sizec;
                if(!first){//一定要加此判断，否则初始时会无限刷新
                	getJoinParyList2();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                    location.href = '#top';
                    //<a href="#top">返回顶部</a>
			    }			
			}
        });
    });
};