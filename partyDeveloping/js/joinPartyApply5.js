/**
 * 发展对象审批  数据获取处理操作js方法<br>
 * 分页与相关处理
 */
//分页参数设置 这些全局变量关系到分页的功能
var pagef = 0; //开始页数
var sizef = 20;  //每页最多显示条数
var nowpagef = 1;  //当前页数
var pagesf = 0;  //数据总条数

function getJoinParyList5(){
	$.ajax({
		   type:"post",
		   url:_ctxPath+"/recruit/queryAudit.action",
		   data:{'page': nowpagef,'size':sizef,"in:isDevPm|array-integer":"1,2"},
		   dataType:"json",
		   contentType: "application/x-www-form-urlencoded; charset=utf-8",
		   success:function(data){
			   pagef = data.page;//当前页数(后台返回)
			   pagesf = data.total;//总页数(后台返回)
			   setJoinParyList5(data.data);
			   toPage5();
		   }
	});
}

function setJoinParyList5(data){
	var party0=$("#party5");
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
		var sp="";
		if(recruit.isDevPm==1){
			sp="待审批";
		}else{
			sp="已审批";
		}
		party0.append(" <tr> <td>"+userName+"</td> <td>"+gender+"</td> <td><span>"+bumenName
				+"</span></td> <td>"+crtTime+"</td> <td>"+rustDate+" </td> <td>"+sp+" </td> <td>"+
				"<a class=\"look\" href='developObjSp.html?recId="+recruit._id+"'>查看</a>"
				+"</td> </tr>");
	}
	if(data.length<1){
		party0.append(" <tr  style='border-bottom:1px solid transparent'> <td colspan='7'>暂无数据</td> </tr>");
	}
}

function toPage5(){
	//调用分页
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        laypage.render({
            elem: 'page5'
            ,count: pagesf
            ,limit: sizef  //每页显示的数据的条数,layui会根据count，limit进行分页的计算
            ,curr: nowpagef
            ,jump: function (obj,first) {
                // var currPage=obj.curr;
                // var perPage_num=obj.limit;
                nowpagef = obj.curr;
                pagef = (obj.curr-1)*sizef;
                if(!first){//一定要加此判断，否则初始时会无限刷新
                	getJoinParyList5();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                    location.href = '#top';
                    //<a href="#top">返回顶部</a>
			    }			
			}
        });
    })
};
