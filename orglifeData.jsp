<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/modulepc/resources/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title></title>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link href="${ctxPath}/modulepc/css/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="${ctxPath}/modulepc/css/orglifeData_pc.css">
<style type="text/css">

.ztree li a {
    padding: 1px 3px 0 0;
    height: 17px;
    cursor: pointer;
    display: inline-block;
    color: #fff;
}
.form-control {
    width: 66%;
    height: 35px;
    padding: 6px 12px;
    color: #fff;
    background-color: transparent!important;
    border: 0px solid #f0f0f0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
.branch {
    display: inline-block;
    font-size: 16px;
    color: #ffffff;
    font-weight: 500;
    margin-right: 10px;
}
</style>
</head>

<body>
<div class="djDataBox">
    <div class="djDataBox_nav">
        <div class="djDataBox_left">
            <div class="djDataBox_word">“互联网+党建”大数据平台</div>
        </div>
        <div class="djDataBox_right">
            <ul>
                <li><a href="../count/todJData.action"><div>总体概览</div></a></li>
                <li><a href="../count/topartyData.action"><div>党员数据</div></a></li>
                <li><a href="../count/toplatformData.action"><div>平台数据</div></a></li>
                <li><a href="../count/toorglifeData.action"><div>组织生活</div></a></li>
            </ul>
        </div>
    </div>
    <div class="partyData">
        		<div class="branch " style="width: 40%">
					<input type="hidden" id="branchId" value="">
			         <input type="text" id="branch" value="${tenantName}" readonly="readonly"  class="branch chosen-select form-control"/>
			         <div id="menuContent2" class="menuContent" style="position: absolute; z-index: 1000; left: 22px; top: 146px; display: none;">
			            <ul id="treeDemo2" class="ztree" style="margin-top:0; width:206px;"></ul>
			        </div>
		 </div>
    </div>
    <div class="partyData_Chart">
        <ul>
            <li>
                <div>
                    <div>三会一课累计数据</div>
                    <div class="basicFacts" style="height: 668px;width: 70%;">
                        <div class="dangDh">
                            <div>支部党员大会</div><span id="studysum" class="positOins"></span><span> </span>
                        </div>
                        <div class="dangDh">
                            <div>党支部委员会</div><span id="gainedsum" class="positOins"></span><span> </span>
                        </div>
                        <div class="dangDh">
                            <div>党小组会</div><span id="interaction" class="positOins"></span><span> </span>
                        </div>
                        <div class="dangDh">
                            <div>党课</div><span id="commentsum" class="positOins"></span><span> </span>
                        </div>
                    </div>
                </div>
            </li>
              <li style="width: 66%;">
                <div>
                    <div>三会一课发布数据</div>
                    <div style="height:296px;">
                    <div id="xindeN" style="width: 100%;height:286px;"></div>
                    </div>
                </div>
            </li>
         
             <li style="width: 66%;">
                <div>
                    <div>出勤率统计数据</div>                                                       
                     <div style="height:290px;width: 97%;">
                    <div id="InterNumber" style="width: 100%;height:286px;"></div>
                    </div>
                </div>
            </li>
        
        </ul>
    </div>
</div>
</body>
<script src="${ctxPath}/modulepc/js/jquery-1.10.2.js"></script>
<script src="${ctxPath}/modulepc/js/echarts.min.js"></script>
<script src="${ctxPath}/modulepc/planwork/js/jquery.ztree.core.min.js"></script>
<script src="${ctxPath}/modulepc/planwork/js/jquery.ztree.excheck.min.js"></script>
<script>
slidTree();
ss(0);
function slidTree() {
    $("#branch").click(function () {
        showMenu();
    });
    var setting = {
        view: {
            dblClickExpand: false
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "pId"
            },
            key: {
                name: "name"
            }
        },
        callback: {
            beforeClick: beforeClick,
            onClick: onClick
        }
    };

    $.ajax({
        type: "GET",
        url: "${ctxPath}/zTreeData/queryTreeByCode.action",
        data: {},
        dataType: "json",
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success: function (data) {
            if (data) {
                zNodes = data;
                var zTree = $.fn.zTree.init($("#treeDemo2"), setting, zNodes);
                var node = zTree.getNodeByParam("id", 0);
                //alert(JSON.stringify(node));
                zTree.selectNode(node);
                zTree.expandAll(true); 
                zTree.expandNode(node, true, false, false);
            }
        }
    });
    var zNodes = [];

    function beforeClick(treeId, treeNode) {
        /* var check = (treeNode && !treeNode.isParent);
        if (!check) {
            parent.layer.alert('请选择党支部！');
        }
        return check; */
    }

    function onClick(e, treeId, treeNode) {
        var zTree = $.fn.zTree.getZTreeObj("treeDemo2"),
            nodes = zTree.getSelectedNodes(),
            v = "";
        nodes.sort(function compare(a, b) {
            return a.id - b.id;
        });
        for (var i = 0, l = nodes.length; i < l; i++) {
            v += nodes[i].name + ",";
        }
        if (v.length > 0) v = v.substring(0, v.length - 1);
        var cityObj = $("#branch");
        cityObj.attr("value", v);
        bumId = new Array();
        bumId.push(treeNode.id);
        var bumenNames=new Array();
		  getBumenIds(treeNode,bumId,bumenNames);
	  	  ss(bumId);
    }
    
    function getBumenIds(node,bumenIds,bumenNames) {
        if(!node.children) {
            return;
        }
        for(var i=0;i<node.children.length;i++) {
            bumenIds.push(node.children[i].id);
            bumenNames.push(node.children[i].name);
            getBumenIds(node.children[i],bumenIds,bumenNames);
        }
    }

    function showMenu() {
        var cityObj = $("#branch");
        var cityOffset = $("#branch").offset();
        $("#menuContent2").slideDown("fast");

        $("body").bind("mousedown", onBodyDown);
    }

    function hideMenu() {
        $("#menuContent2").fadeOut("fast");
        $("body").unbind("mousedown", onBodyDown);
    }

    function onBodyDown(event) {
        if (!(event.target.id == "menuBtn" || event.target.id == "menuContent2" || $(event.target).parents("#menuContent2").length > 0)) {
            hideMenu();
        }
    }
}
function ss(bumId) {
	//alert(bumId);
$(function(){
	//基本参数
    $.ajax({
        type:"post",
        url:"../count/branches.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
       	 $("#studysum").text(data.branches);
       }
    }); 
    $.ajax({
        type:"post",
        url:"../count/branchcommittees.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
       	 $("#gainedsum").text(data.branchcommittees);
       	
       }
    }); 
    $.ajax({
        type:"post",
        url:"../count/groupmeetings.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
       	 $("#interaction").text(data.groupmeetings);
       }
    }); 
    $.ajax({
        type:"post",
        url:"../count/partylecture.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
       	 $("#commentsum").text(data.partylecture);
       }
    }); 
})
$(function(){
	//心得发布统计
    $.ajax({
        type:"post",
        url:"../count/shyksum.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
 
            //心得发布数量
            var xindeN = echarts.init(document.getElementById('xindeN'));
            option = {

            	    tooltip : {
            	        trigger: 'axis'
            	    },
            	    legend: {
            	    	textStyle: {color: '#3e3e3e'},
            	        data:['支部党员大会','党支部委员会','党小组会','党课']
            	    },
            	    toolbox: {
            	        show : false,
            	        feature : {
            	            dataView : {show: true, readOnly: false},
            	            magicType : {show: true, type: ['line', 'bar']},
            	            restore : {show: true},
            	            saveAsImage : {show: true}
            	        }
            	    },
            	    calculable : true,
            	    xAxis : [
            	        {
            	            type : 'category',
            	            data: ['05-17', '05-18', '05-19', '05-20', '05-21', '05-22', '05-23'],
            	            axisLine: {
            	                onZero: false,
            	                lineStyle: {
            	                    color:' #3e3e3e'
            	                }
            	            }
            	        }
            	    ],
            	    yAxis : [
            	        {
            	            type : 'value',
            	            axisLine: {
            	                onZero: false,
            	                lineStyle: {
            	                    color:'#3e3e3e'
            	                }
            	            }
            	        }
            	    ],
            	    series: [
            	             {
            	                 name: '支部党员大会',
            	                 type: 'bar',
            	                 data: []
            	             },
            	             {
            	                 name: '党支部委员会',
            	                 type: 'bar',
            	                 data: []
            	             },
            	             {
            	                 name: '党小组会',
            	                 type: 'bar',
            	                 data: []
            	             },
            	             {
            	                 name: '党课',
            	                 type: 'bar',
            	                 data: []
            	             }
            	         ]
            	};

            
            // 使用刚指定的配置项和数据显示图表。
            
            	var dataName=[];
            	var dataValue0=[];
            	var dataValue1=[];
            	var dataValue2=[];
             	var dataValue3=[];

              	for(var i=0;i<data.length;i++){
      	          	var dat = data[i];
	      	          	for (var key in dat) { // 遍历Map
							if(i==0){
								dataName.push(key);
		      	          	// console.log("属性：" + key + ",值：" + dat[key]+"==="+JSON.stringify(dat));
		      	          		option.series[i].data.push(dat[key]);
	      	          		}else{
	      	          			option.series[i].data.push(dat[key]);
	      	          		}
							//console.log(i+JSON.stringify(option.series[i].data));
	      	          	}
	      	   option.xAxis[0].data=dataName;
          	// 使用刚指定的配置项和数据显示图表。
        	xindeN.setOption(option);
         }
        }
    }); 
	
	
    //三会一课签到率统计
      $.ajax({
          type:"post",
          url:"../count/shyksginsum.action",
          dataType:"json",
          data: {'bumId': bumId.toString()},
      	  contentType: "application/x-www-form-urlencoded; charset=utf-8",
          success:function(data){
   
          	// 互动柱状图
              // 基于准备好的dom，初始化echarts实例
     var InterNumber = echarts.init(document.getElementById('InterNumber'));
     option = {

     	    tooltip : {
     	        trigger: 'axis'
     	    },
     	    legend: {
     	    	textStyle: {color: '#3e3e3e'},
     	        data:['支部党员大会','党支部委员会','党小组会','党课']
     	    },
     	    toolbox: {
     	        show : false,
     	        feature : {
     	            dataView : {show: true, readOnly: false},
     	            magicType : {show: true, type: ['line', 'bar']},
     	            restore : {show: true},
     	            saveAsImage : {show: true}
     	        }
     	    },
     	    calculable : true,
     	    xAxis : [
     	        {
     	            type : 'category',
     	            data: ['05-17', '05-18', '05-19', '05-20', '05-21', '05-22', '05-23'],
     	            axisLine: {
     	                onZero: false,
     	                lineStyle: {
     	                    color:' #3e3e3e'
     	                }
     	            }
     	        }
     	    ],
     	    yAxis : [
     	        {
     	            type : 'value',
     	            axisLine: {
     	                onZero: false,
     	                lineStyle: {
     	                    color:' #3e3e3e'
     	                }
     	            }
     	        }
     	    ],
     	    series: [
     	             {
     	                 name: '支部党员大会',
     	                 type: 'bar',
     	                 data: []
     	             },
     	             {
     	                 name: '党支部委员会',
     	                 type: 'bar',
     	                 data: []
     	             },
     	             {
     	                 name: '党小组会',
     	                 type: 'bar',
     	                 data: []
     	             },
     	             {
     	                 name: '党课',
     	                 type: 'bar',
     	                 data: []
     	             }
     	         ]
     	};

     
     // 使用刚指定的配置项和数据显示图表。
     
     	var dataName=[];
     	var dataValue0=[];
     	var dataValue1=[];
     	var dataValue2=[];
      	var dataValue3=[];

       	for(var i=0;i<data.length;i++){
  	          	var dat = data[i];
   	          	for (var key in dat) { // 遍历Map
  					if(i==0){
  						dataName.push(key);
       	        //  	 console.log("属性：" + key + ",值：" + dat[key]+"==="+JSON.stringify(dat));
       	          		option.series[i].data.push(dat[key]);
   	          		}else{
   	          			option.series[i].data.push(dat[key]);
   	          		}
  				//	console.log(i+JSON.stringify(option.series[i].data));
   	          	}
   	           option.xAxis[0].data=dataName;
            	// 使用刚指定的配置项和数据显示图表。
              InterNumber.setOption(option);
           }
          }
      });

})
}
</script>
</html>
