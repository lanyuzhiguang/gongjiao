/**
 * 预备党员转正审批  数据获取处理操作js方法<br>
 * 分页与相关处理
 */
//分页参数设置 这些全局变量关系到分页的功能
var pagej = 0; //开始页数
var sizej = 20;  //每页最多显示条数
var nowpagej = 1;  //当前页数
var pagesj = 0;  //总条数

function getJoinParyList7(){
	$.ajax({
		   type:"post",
		   url:_ctxPath+"/recruit/queryAudit.action",
		   data:{'page': nowpagej,'size':sizej,"in:isfullMeter|array-integer":"1,2"},
		   dataType:"json",
		   contentType: "application/x-www-form-urlencoded; charset=utf-8",
		   success:function(data){
			   setJoinParyList7(data.data);
			   pagej = data.page;//当前页数(后台返回)
			   pagesj = data.total;//数据总条数(后台返回)
			   toPage7();
		   }
	});
}

function setJoinParyList7(data){
	var party0=$("#party7");
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
		var probPartyDate=recruit.formtProbPartyDate;
		var fullMeter="";
		if(recruit.isfullMeter==1){
			fullMeter="待审核";
		}else if(recruit.isfullMeter==2){
			fullMeter="已通过";
		}
		party0.append(" <tr> <td>"+userName+"</td> <td>"+gender+"</td> <td><span>"+bumenName
				+"</span></td> <td>"+probPartyDate+"</td> <td> "+fullMeter+" </td> <td>"+
				"<a class=\"look\" href='partyTransferSp.html?recId="+recruit._id+"'>查看</a>"
				+"</span></td> </tr>");
	}
	if(data.length<1){
		party0.append(" <tr  style='border-bottom:1px solid transparent'> <td  colspan='6'>暂无数据</td> </tr>");
	}
}

function toPage7(){
	//调用分页
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        laypage.render({
            elem: 'page7'
            ,count: pagesj
            ,limit: sizej  //每页显示的数据的条数,layui会根据count，limit进行分页的计算
            ,curr: nowpagej
            ,jump: function (obj,first) {
                // var currPage=obj.curr;
                // var perPage_num=obj.limit;
                nowpagej = obj.curr;
                pagej = (obj.curr-1)*sizej;
                if(!first){//一定要加此判断，否则初始时会无限刷新
                	getJoinParyList7();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                    location.href = '#top';
                    //<a href="#top">返回顶部</a>
			    }			
			}
        });
    })
};