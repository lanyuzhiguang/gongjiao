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
    <link rel="stylesheet" href="${ctxPath}/modulepc/css/platformData_pc.css">
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
    color: #3e3e3e;
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
        <div class="branch">${tenantName}</div>
        <div class="branch " style="width: 40%;display: none;">
					<input type="hidden" id="branchId" value="">
			         <input type="text" id="branch" value="${tenantName}" readonly="readonly"  class="branch chosen-select form-control"/>
			         <div id="menuContent2" class="menuContent" style="position: absolute; z-index: 1000; left: 22px; top: 126px; display: none;">
			            <ul id="treeDemo2" class="ztree" style="margin-top:0; width:206px;"></ul>
			     </div>
		 </div>
    </div>
    <div class="partyData_Chart">
        <ul>
            <li>
                <div>
                    <div>概况</div>
                    <div class="basicFacts">
                        <div style="padding-top: 55px;">
                            <div>累计学习时长：</div><span id="studysum"></span><span>小时</span>
                        </div>
                        <div>
                            <div>累计心得发布数量：</div><span id="gainedsum"></span><span>篇</span>
                        </div>
                        <div>
                            <div>累计互动发布数量：</div><span id="interaction"></span><span>篇</span>
                        </div>
                        <div>
                            <div>累计评论发布数量：</div><span id="commentsum"></span><span>篇</span>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div>
                    <div>学习时长</div>
                    <div>
                    <div id="time" style="width: 100%;height:306px;"></div></div>
                </div>
            </li>
            <li>
                <div>
                    <div>心得发布数量</div>
                    <div>
                    <div id="xindeN" style="width: 100%;height:306px;"></div></div>
                </div>
            </li>
            <li>
                <div>
                    <div>登录情况</div>
                    <div>
                    <div id="login" style="width: 100%;height:341px;"></div></div>
                </div>
            </li>
            <li>
                <div>
                    <div>互动发布数量</div>
                    <div>
                    <div id="InterNumber" style="width: 100%;height:300px;"></div></div>
                </div>
            </li>
            <li>
                <div>
                    <div>评论数量</div>
                    <div>
                    <div id="criticism" style="width: 100%;height:306px;"></div></div>
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
        url:"../count/basicsumstudy.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
       	 $("#studysum").text(data.studysum);
       }
    }); 
    $.ajax({
        type:"post",
        url:"../count/basicsumgained.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
       	 $("#gainedsum").text(data.gainedsum);
       	
       }
    }); 
    $.ajax({
        type:"post",
        url:"../count/basicsumgroup.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
       	 $("#interaction").text(data.interaction);
       }
    }); 
    $.ajax({
        type:"post",
        url:"../count/basicsumcomment.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
       	 $("#commentsum").text(data.commentsum);
       }
    }); 
})
$(function(){
	//学习时长
    $.ajax({
        type:"post",
        url:"../count/studytime.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
 
        	// 学习时长折线图
            // 基于准备好的dom，初始化echarts实例
            var time = echarts.init(document.getElementById('time'));
            var colors = ['#3e3e3e', '#d14a61', '#675bba'];
            option = {
                color: colors,
                legend: {
                    data:[],
                    textStyle:{    //图例文字的样式
                        color:'#3e3e3e',
                        fontSize:12
                    }
                },
                grid: {
                    top: 70,
                    bottom: 50,
                    left:50,
                    right:65
                    
                },
                xAxis: [
                    {
                        type: 'category',
                        axisTick: {
                            alignWithLabel: true
                        },
                        axisLine: {
                            onZero: false,
                            lineStyle: {
                                color: colors[0]
                            }
                        },
                        axisPointer: {
                            label: {
                                formatter: function (params) {
                                    return '学习时长  ' + params.value
                                            + (params.seriesData.length ? '：' + params.seriesData[0].data : '');
                                }
                            }
                        },
                        data : ['02-23','02-24','02-25','02-26','02-27','02-28','03-01'],            }
                ],
                yAxis: [
                    {
                        type: 'value',
                        axisLine: {
                            onZero: false,
                            lineStyle: {
                                color: colors[0]
                            }
                        }
                    }
                ],
                series: [
                    {
                        name:'学习时长',
                        type:'line',
                        smooth: true,
                        data: [7082, 6822, 6696, 6565, 6248, 5932, 6015],
                        itemStyle: {
                            normal: {
                                //定义一个list，然后根据所以取得不同的值，这样就实现了，
                                color: function(params) {
                                    // build a color map as your need.
                                    var colorList = [
                                        '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',
                                        '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                                        '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                                    ];
                                    return colorList[params.dataIndex]
                                },
                                //以下为是否显示，显示位置和显示格式的设置了
                                label: {
                                    show: true,
                                    position: 'right',
                                    color:"#3e3e3e",//显示数值颜色
                                    formatter: '{c}'
                                }
                            }
                        }
                    }


                ]
            };
            
        	var dataName=[];
        	var dataValue=[];
          	for(var i=0;i<data.length;i++){
  	          	for(var dat in data[i]){
  	          		dataName.push(dat);
          			dataValue.push(data[i][dat]);
  	          	}
          	}
          	option.xAxis[0].data=dataName;
        	option.series[0].data=dataValue;

          	// 使用刚指定的配置项和数据显示图表。
        	time.setOption(option);
       }
    }); 
	//心得发布统计
    $.ajax({
        type:"post",
        url:"../count/gainedsum.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
 
            //心得发布数量
            var xindeN = echarts.init(document.getElementById('xindeN'));
            option = {
                    color: ['#3398DB'],
                    tooltip : {
                        trigger: 'axis',
                        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                        }
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    xAxis : [
                        {
                            type : 'category',
                            data : ['02-23','02-24','02-25','02-26','02-27','02-28','03-01'],
                            axisTick: {
                                alignWithLabel: true
                            },
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
                    series : [
                        {
                            name:'数量',
                            type:'bar',
                            barWidth: '30%',
                            data:[5586, 3645,2804, 3018, 3061, 2669, 2976],
                            itemStyle: {
                                normal: {
                                    //定义一个list，然后根据所以取得不同的值，这样就实现了，
                                    color: function(params) {
                                        // build a color map as your need.
                                        var colorList = [
                                            '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',
                                            '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                                            '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                                        ];
                                        return colorList[params.dataIndex]
                                    },
                                    //以下为是否显示，显示位置和显示格式的设置了
                                    label: {
                                        show: true,
                                        position: 'top',
                                        color:"#3e3e3e",//显示数值颜色
                                        formatter: '{c}'
                                    }
                                }
                            }
                        }
                    ]
                };
            
        	var dataName=[];
        	var dataValue=[];
          	for(var i=0;i<data.length;i++){
  	          	for(var dat in data[i]){
  	          		dataName.push(dat);
          			dataValue.push(data[i][dat]);
  	          	}
          	}
          	option.xAxis[0].data=dataName;
        	option.series[0].data=dataValue;

          	// 使用刚指定的配置项和数据显示图表。
        	xindeN.setOption(option);
       }
    }); 
	
	//登录统计
    $.ajax({
        type:"post",
        url:"../count/loginsum.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
 
        	//登录情况
            var login = echarts.init(document.getElementById('login'));
            option = {
                tooltip : {
                    trigger: 'axis'
                },
                legend: {
                    data:[],
                    textStyle:{    //图例文字的样式
                        color:'#3e3e3e',
                        fontSize:12
                    }
                },
                calculable : true,
                xAxis : [
                    {
                        type : 'category',
                        data : ['02-23','02-24','02-25','02-26','02-27','02-28','03-01'],
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
                series : [
                    {
                        name:'登录次数',
                        //柱子宽度
                        barWidth:'40%',
                        type:'bar',
                        data:[1236, 1170, 1164, 1066, 806, 725, 878],
                        markPoint : {
                            data : [
                                {type : 'max', name: '最大值'},
                                {type : 'min', name: '最小值'}
                            ]
                        },
                        itemStyle: {
                            normal: {
                                //以下为是否显示，显示位置和显示格式的设置了
                                label: {
                                    show: true,
                                    position: 'top',
                                    color:"#3e3e3e",//显示数值颜色
                                    formatter: '{c}'
                                }
                            }
                        }
                    }
                ]
            };
            
        	var dataName=[];
        	var dataValue=[];
          	for(var i=0;i<data.length;i++){
  	          	for(var dat in data[i]){
  	          		dataName.push(dat);
          			dataValue.push(data[i][dat]);
  	          	}
          	}
          	
          	option.xAxis[0].data=dataName;
        	option.series[0].data=dataValue;

          	// 使用刚指定的配置项和数据显示图表。
        	login.setOption(option);
       }
    });
	
  //互动统计
    $.ajax({
        type:"post",
        url:"../count/groupMessagesum.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
 
        	// 互动柱状图
            // 基于准备好的dom，初始化echarts实例
            var InterNumber = echarts.init(document.getElementById('InterNumber'));
            option = {
                    color: ['#3398DB'],
                    tooltip : {
                        trigger: 'axis',
                        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                        }
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    xAxis : [
                        {
                            type : 'category',
                            data : ['02-23','02-24','02-25','02-26','02-27','02-28','03-01'],
                            axisTick: {
                                alignWithLabel: true
                            },
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
                    series : [
                        {
                            name:'数量',
                            type:'bar',
                            barWidth: '30%',
                            data:[929, 604, 582, 533, 498, 425, 499],
                            itemStyle: {
                                normal: {
                                    //定义一个list，然后根据所以取得不同的值，这样就实现了，
                                    color: function(params) {
                                        // build a color map as your need.
                                        var colorList = [
                                            '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',
                                            '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                                            '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                                        ];
                                        return colorList[params.dataIndex]
                                    },
                                    //以下为是否显示，显示位置和显示格式的设置了
                                    label: {
                                        show: true,
                                        position: 'top',
                                        color:"#3e3e3e",//显示数值颜色
                                        formatter: '{c}'
                                    }
                                }
                            }
                        }
                    ]
                };
            // 使用刚指定的配置项和数据显示图表。
            
        	var dataName=[];
        	var dataValue=[];
          	for(var i=0;i<data.length;i++){
  	          	for(var dat in data[i]){
  	          		dataName.push(dat);
          			dataValue.push(data[i][dat]);
  	          	}
          	}
          	option.xAxis[0].data=dataName;
        	option.series[0].data=dataValue;

          	// 使用刚指定的配置项和数据显示图表。
            InterNumber.setOption(option);
       }
    });
  
    //互动统计
    $.ajax({
        type:"post",
        url:"../count/commentsum.action",
        dataType:"json",
        data: {'bumId': bumId.toString()},
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
 
        	//评论数量
            var criticism = echarts.init(document.getElementById('criticism'));
            option = {
                color: ['#3398DB'],
                tooltip : {
                    trigger: 'axis',
                    axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                        type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                    }
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis : [
                    {
                        type : 'category',
                        data : ['02-23','02-24','02-25','02-26','02-27','02-28','03-01'],
                        axisTick: {
                            alignWithLabel: true
                        },
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
                series : [
                    {
                        name:'数量',
                        type:'bar',
                        barWidth: '30%',
                        data:[8240, 7142, 7098, 6686, 4042, 3962, 5566],
                        itemStyle: {
                            normal: {
                                //定义一个list，然后根据所以取得不同的值，这样就实现了，
                                color: function(params) {
                                    // build a color map as your need.
                                    var colorList = [
                                        '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',
                                        '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                                        '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                                    ];
                                    return colorList[params.dataIndex]
                                },
                                //以下为是否显示，显示位置和显示格式的设置了
                                label: {
                                    show: true,
                                    position: 'top',
                                    color:"#3e3e3e",//显示数值颜色
                                    formatter: '{c}'
                                }
                            }
                        }
                    }
                ]
            };
            // 使用刚指定的配置项和数据显示图表。
            
        	var dataName=[];
        	var dataValue=[];
          	for(var i=0;i<data.length;i++){
  	          	for(var dat in data[i]){
  	          		dataName.push(dat);
          			dataValue.push(data[i][dat]);
  	          	}
          	}
          	
          	option.xAxis[0].data=dataName;
        	option.series[0].data=dataValue;

          	// 使用刚指定的配置项和数据显示图表。
        	 criticism.setOption(option);
       }
    });
})
}
</script>
</html>
