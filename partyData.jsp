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
    <link rel="stylesheet" href="${ctxPath}/modulepc/css/partyData_pc.css">
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
    font-size: 20px;
    color: #3E3E3E;
    font-weight: 600;
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
        		<div class="branch " style="width: 45%">
					<input type="hidden" id="branchId" value="">
			         <input type="text" id="branch" value="${tenantName}" readonly="readonly"  class="branch chosen-select form-control"/>
			         <span class="partyNum">党员人数<span style="color: #E7313D;">${tenpartysum}</span>  人</span>
			         <div id="menuContent2" class="menuContent" style="position: absolute; z-index: 1000; left: 22px; top: 126px; display: none;">
			            <ul id="treeDemo2" class="ztree" style="margin-top:0; width:206px;"></ul>
			        </div>
		 </div>
    </div>
    <div class="partyData_Chart">
        <ul>
            <li>
                <div>
                    <div>性别</div>
                    <div>
                    <div id="sex" style="width: 100%;height:306px;"></div>
                    </div>
                </div>
            </li>
            <li>
                <div>
                    <div>年龄</div>
                    <div>
                    <div id="age" style="width: 100%;height:306px;"></div></div>
                </div>
            </li>
            <li>
                <div>
                    <div>民族</div>
                    <div>
                    <div id="nation" style="width: 100%;height:306px;"></div></div>
                </div>
            </li>
            <li>
                <div>
                    <div>人员类别</div>
                    <div>
                    <div id="peopleK" style="width: 100%;height:299px;"></div></div>
                </div>
            </li>
            <li>
                <div>
                    <div>学历</div>
                    <div>
                    <div id="educational" style="width: 100%;height:306px;"></div></div>
                </div>
            </li>
            <li>
                <div>
                    <div>职业</div>
                    <div>
                    <div id="occupation" style="width: 100%;height:306px;"></div></div>
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
//性别
// 基于准备好的dom，初始化echarts实例
var mySex = echarts.init(document.getElementById('sex'));
setChartSex();
function setChartSex(){
	  $.ajax({
        type:"post",
        url:"${ctxPath}/count/getMapList.action",
        data: {'bumId': bumId.toString()},
        dataType:"json",
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
        	var option = {
        		    tooltip : {
        		        trigger: 'item',
        		        formatter: "{a} <br/>{b} : {c} ({d}%)"
        		    },
        		    legend: {
        		        left: 'center',
        		        bottom: 0,
        		        data: ['男','女'],
        		        textStyle:{    //图例文字的样式
        		            color:'#3e3e3e',
        		            fontSize:12
        		        }
        		    },
        		    series : [
        		        {
        		            name: '占比',
        		            type: 'pie',
        		            radius : '55%',
        		            center: ['50%', '40%'],
        		            data:[
        		                {value:20456, name:'男'},
        		                {value:4959, name:'女'}
        		            ],
        		            itemStyle: {
        		                emphasis: {
        		                    shadowBlur: 10,
        		                    shadowOffsetX: 0,
        		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
        		                },
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
        		                        formatter:'{b}:{d}%'
        		                    }
        		                }

        		            }
        		        }
        		    ]
        		};
        	var dataName=[];
        	var dataValue=[];
          	for(var i=0;i<data.length;i++){
          		if(data[i].name==0){
          			dataName.push('男');
	          		dataValue.push({
	  	          		value:data[i].count, 
	  	          		name:'男'
	          		})
          		}else{
	          		dataName.push('女');
	          		dataValue.push({
	  	          		value:data[i].count, 
	  	          		name:'女'
	          		})
          		}
          	}
          	option.legend.data=dataName;
        	option.series[0].data=dataValue;
      	
      	// 使用刚指定的配置项和数据显示图表。
          	mySex.setOption(option);
   		}})
}



// 年龄柱状图
// 基于准备好的dom，初始化echarts实例
    var myAge = echarts.init(document.getElementById('age'));
    setChartBirthday();
    function setChartBirthday(){
  	  $.ajax({
	        type:"post",
	        url:"${ctxPath}/count/getMapBirthdayList.action",
	        dataType:"json",
	        data: {'bumId': bumId.toString()},
	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
	        success:function(data){
	        	var option = {
	        	        tooltip: {
	        	            trigger: 'axis',
	        	            axisPointer: {
	        	                type: 'shadow'
	        	            }
	        	        },
	        	        grid: {
	        	            top:'10%',
	        	            left: '5%',
	        	            right: '4%',
	        	            bottom: '0%',
	        	            containLabel: true
	        	        },
	        	        xAxis: {
	        	            type: 'value',
	        	            boundaryGap: [0, 0.01],
	        	            name:'数量',
	        	            axisLine: {
	        	                onZero: false,
	        	                lineStyle: {
	        	                    color:' #3e3e3e'
	        	                }
	        	            },
	        	            
	        	            //最小是多少，最大是多少，默认一次增加多少
//	        	            min: 0,
//	        	            max: 30,
//	        	            interval: 6,
	        	            //下面是显示格式化，一般来说还是用的上的
//	        	            axisLabel: {
//	        	                formatter: '{value} 岁'
//	        	            }
	        	        },
	        	        yAxis: {
	        	            name:'年龄',
	        	            axisLine: {
	        	                onZero: false,
	        	                lineStyle: {
	        	                    color:' #3e3e3e'
	        	                }
	        	            },
	        	            type: 'category',
	        	            //显不显示y轴，默认是true的
	        	            show: true,
	        	            //就是每个柱的name了，根据实际情况下就好了
	        	            data : ['≤30岁', '31-35岁', '36-40岁', '41-45岁'],
	        	            axisLabel: {
	        	                //这个是倾斜角度，也是考虑到文字过多的时候，方式覆盖采用倾斜
//	        	                     rotate: 30,
	        	                //这里是考虑到x轴文件过多的时候设置的，如果文字太多，默认是间隔显示，设置为0，标示全部显示，当然，如果x轴都不显示，那也就没有意义了
	        	                interval :0
	        	            }
	        	        },
	        	        series: [
	        	            {
	        	                type: 'bar',
//	        	                数据
	        	                data:[10, 3, 2, 3],
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
//	        	                            formatter: '{b}\n{c}'
	        	                        }
	        	                    }
	        	                },
	        	                //柱子宽度
	        	                barWidth:10
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
	          	option.yAxis.data=dataName;
	        	option.series[0].data=dataValue;

	          	// 使用刚指定的配置项和数据显示图表。
	        	myAge.setOption(option);
	   }})
    }
    
//民族
      // 基于准备好的dom，初始化echarts实例
    var myNation = echarts.init(document.getElementById('nation'));
      
      setChartVolk();
      function setChartVolk(){
    	  $.ajax({
  	        type:"post",
  	        url:"${ctxPath}/count/getMapVolkList.action",
  	        dataType:"json",
  	        data: {'bumId': bumId.toString()},
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
  	        success:function(data){
  	        	var option = {
  	        		    tooltip : {
  	        		        trigger: 'item',
  	        		        formatter: "{a} <br/>{b} : {c} ({d}%)"
  	        		    },
  	        		    legend: {
  	        		        x : 'center',
  	        		        y : 'bottom',
  	        		        data:['达斡尔族','朝鲜族','回族','满族','其他','汉族','鄂温克族','俄罗斯族','蒙古族','锡伯族','未录入'],
  	        		        textStyle:{    //图例文字的样式5========鄂伦春族
  	        		            color:'#3e3e3e',
  	        		            fontSize:12
  	        		        }
  	        		    },
  	        		    calculable : true,
  	        		    series : [
  	        		        {
  	        		            name:'占比',
  	        		            type:'pie',
  	        		            radius : [30, 80],
  	        		            center : ['55%', '44%'],
  	        		            roseType : 'area',
  	        		            data:[
  	        		                {value:20753, name:'汉'},
  	        		                {value:184, name:'达斡尔族'},
  	        		                {value:36, name:'朝鲜族'},
  	        		                {value:180, name:'回族'},
  	        		                {value:545, name:'满族'},
  	        		                {value:16, name:'其他'},
  	        		                {value:30, name:'鄂温克族'},
  	        		                {value:11, name:'俄罗斯族'},
  	        		                {value:1535, name:'蒙古族'},
  	        		                {value:10, name:'锡伯族'},
  	        		                {value:476, name:'未录入'},
  	        		             
  	        		            ],
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
  	        		                        formatter: '{b}:{d}%'
  	        		                    }
  	        		                }
  	        		            }
  	        		        }
  	        		    ]
  	        		};
  	        	
  	        	var dataName=[];
  	        	var dataValue=[];
  	        	var dataNull=0;
  	          	for(var i=0;i<data.length;i++){
  	          		var dname=data[i].name;
  	          		if(dname==null||$.trim(dname)==""){
  	          			dataNull+=data[i].count;
  	          		}else{
	  	          		dataName.push(dname);
	  	          		dataValue.push({
		  	          		value:data[i].count, 
		  	          		name:dname
	  	          		})
  	          		}
  	          	}
  	          	if(dataNull!=0){
  	          		dname="无该信息";
	  	          	dataName.push(dname);
		          	dataValue.push({
	  	          		value:dataNull, 
	  	          		name:dname
		          	})
  	          	}
  	          	option.legend.data=dataName;
  	        	option.series[0].data=dataValue;
  	        	
  	       		// 使用刚指定的配置项和数据显示图表。
  	          	myNation.setOption(option);
  	   }})
      }
      
    //人员类别
    var peopleK = echarts.init(document.getElementById('peopleK')); 
      setpeopleK();
      function setpeopleK(){
    	  $.ajax({
  	        type:"post",
  	        url:"${ctxPath}/count/wepartySoures.action",
  	        dataType:"json",
  	        data: {'bumId': bumId.toString()},
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
  	        success:function(data){
  	        	var option = {
  	        		    tooltip: {
  	        		        trigger: 'item',
  	        		        formatter: "{a} <br/>{b}: {c} ({d}%)"
  	        		    },
  	        		    legend: {
  	        		        x: 'center',
  	        		        y:'bottom',
  	        		        data:['党员','预备党员'],
  	        		        textStyle:{    //图例文字的样式
  	        		            color:'#3e3e3e',
  	        		            fontSize:12
  	        		        }
  	        		    },
  	        		    series: [
  	        		        {
  	        		            name:'',
  	        		            type:'pie',
  	        		            radius: ['20%', '40%'],
  	        		            center: ['55%', '40%'],
  	        		            label: {
  	        		                normal: {
  	        		                    formatter: '{b}：{per|{d}%}  ',
  	        		                    borderWidth: 1,
  	        		                    borderRadius: 4,
  	        		                    color:"#3e3e3e",//显示数值颜色
  	        		                    rich: {
  	        		                        a: {
  	        		                            fontSize: 14,
  	        		                            lineHeight: 22,
  	        		                            align: 'center'
  	        		                        },
  	        		                        hr: {
  	        		                            fontSize: 14,
  	        		                            width: '100%',
  	        		                            borderWidth: 0.5,
  	        		                            height: 0
  	        		                        },
  	        		                        b: {
  	        		                            fontSize: 14,
  	        		                            lineHeight: 33
  	        		                        },
  	        		                        per: {
  	        		                            fontSize: 14,
  	        		                            padding: [2, 4],
  	        		                            borderRadius: 2,
  	        		                            color:"#3e3e3e"
  	        		                        },
  	        		                        d:{
  	        		                        	color:"#3e3e3e"
  	        		                        }
  	        		                    }
  	        		                }
  	        		            },
  	        		            data:[
  	        		                {value:25173, name:'党员'},
  	        		                {value:242, name:'预备党员'},
  	        		            ]
  	        		        }
  	        		    ]
  	        		};
  	        	
  	        	var dataName=[];
  	        	var dataValue=[];
  	        	var dataNull=0;
  	          	for(var i=0;i<data.length;i++){
  	          		var dname=data[i].name;
  	          		if(dname==null||$.trim(dname)==""){
  	          			dataNull+=data[i].count;
  	          		}else{
	  	          		dataName.push(dname);
	  	          		dataValue.push({
		  	          		value:data[i].count, 
		  	          		name:dname
	  	          		})
  	          		}
  	          	}
  	          	if(dataNull!=0){
  	          		dname="无该信息";
	  	          	dataName.push(dname);
		          	dataValue.push({
	  	          		value:dataNull, 
	  	          		name:dname
		          	})
  	          	}
  	          	option.legend.data=dataName;
  	        	option.series[0].data=dataValue;
  	        	
  	       		// 使用刚指定的配置项和数据显示图表。
  	          	peopleK.setOption(option);
  	   }})
      }




//学历
// 基于准备好的dom，初始化echarts实例
var educational = echarts.init(document.getElementById('educational'));
setChartEducation();
function setChartEducation(){
	  $.ajax({
        type:"post",
        url:"${ctxPath}/count/getMapEducationList.action",
        data: {'bumId': bumId.toString()},
        dataType:"json",
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data){
        	
        	var option = {
        		    tooltip : {
        		        trigger: 'item',
        		        formatter: "{a} <br/>{b} : {c} ({d}%)"
        		    },
        		    legend: {
        		        left: 'center',
        		        bottom: 0,
        		        data: ['大专及以上','其他'],
        		        textStyle:{    //图例文字的样式
        		            color:'#3e3e3e',
        		            fontSize:12
        		        }
        		    },
        		    series : [
        		        {
        		            name: '占比',
        		            type: 'pie',
        		            radius : '44%',
        		            center: ['50%', '40%'],
        		            data:[
        		                {value:11414, name:'大专及以上'},
        		                {value:14001, name:'其他'}
        		            ],
        		            itemStyle: {
        		                emphasis: {
        		                    shadowBlur: 10,
        		                    shadowOffsetX: 0,
        		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
        		                },
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
        		                        formatter:'{b}:{d}%'
        		                    }
        		                }

        		            }
        		        }
        		    ]
        		};
        	
        	var dataName=[];
        	var dataValue=[];
        	var dataNull=0;
          	for(var i=0;i<data.length;i++){
          		var dname=data[i].name;
          		if(dname==null || $.trim(dname)==""){
          			dataNull+=data[i].count;
          		}else{
	          		dataName.push(dname);
	          		dataValue.push({
	  	          		value:data[i].count, 
	  	          		name:dname
	          		})
          		}
          	}
          	if(dataNull!=0){
          		dname="无该信息";
	          	dataName.push(dname);
	          	dataValue.push({
	          		value:dataNull, 
	          		name:dname
	          	})
          	}
          	option.legend.data=dataName;
        	option.series[0].data=dataValue;
        	
       		// 使用刚指定的配置项和数据显示图表。
        	educational.setOption(option);
   }})
}

//岗位
// 基于准备好的dom，初始化echarts实例
var occupation = echarts.init(document.getElementById('occupation'));
      
      setChartOneJob();
      function setChartOneJob(){
    	  
    	  $.ajax({
  	        type:"post",
  	        url:"${ctxPath}/count/getMapOneJobList.action",
  	        dataType:"json",
  	        data: {'bumId': bumId.toString()},
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
  	        success:function(data){
  	        	var option = {
  	        		    tooltip : {
  	        		        trigger: 'item',
  	        		        formatter: "{a} <br/>{b} : {c} ({d}%)"
  	        		    },
  	        		    legend: {
  	        		        left: 'center',
  	        		        bottom: 0,
  	        		        data: ['公有企业管理岗位','其他从业人员','公有单位工勤岗位','退职人员','内部退养职工','公有企业专业技术岗位',
  	        		               '公务员','其他无业人员','退休人员','离休干部','未录入数据人员'],
  	        		        textStyle:{    //图例文字的样式
  	        		            color:'#3e3e3e',
  	        		            fontSize:12
  	        		        }
  	        		    },
  	        		    series : [
  	        		        {
  	        		            name: '占比',
  	        		            type: 'pie',
  	        		            radius : '30%',
  	        		            center: ['45%', '40%'],
  	        		            data:[
  	        		                {value:6298, name:'公有企业管理岗位'},{value:291, name:'其他从业人员'},
  	        		                {value:2811, name:'公有单位工勤岗位'},
  	        		                {value:116, name:'退职人员'}, {value:778, name:'内部退养职工'},
  	        		                {value:2393, name:'公有企业专业技术岗位'},{value:428, name:'其他无业人员'},
  	        		                {value:1422, name:'公务员'},
  	        		                {value:8660, name:'退休人员'},
  	        		                {value:99, name:'离休干部'},{value:485, name:'未录入数据人员'}
  	        		            ],
  	        		            itemStyle: {
  	        		                emphasis: {
  	        		                    shadowBlur: 10,
  	        		                    shadowOffsetX: 0,
  	        		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
  	        		                },
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
  	        		                        formatter:'{b}:{d}%'
  	        		                    }
  	        		                }

  	        		            }
  	        		        }
  	        		    ]
  	        		};
  	        	
  	        	var dataName=[];
  	        	var dataValue=[];
  	        	var dataNull=0;
  	          	for(var i=0;i<data.length;i++){
  	          		var dname=data[i].name;
  	          		if(dname==null||$.trim(dname)==""){
  	          			dataNull+=data[i].count;
  	          		}else{
	  	          		dataName.push(dname);
	  	          		dataValue.push({
		  	          		value:data[i].count, 
		  	          		name:dname
	  	          		})
  	          		}
  	          	}
  	          	if(dataNull!=0){
  	          		dname="无该信息";
	  	          	dataName.push(dname);
		          	dataValue.push({
	  	          		value:dataNull, 
	  	          		name:dname
		          	})
  	          	}
  	          	option.legend.data=dataName;
  	        	option.series[0].data=dataValue;
  	        	
  	       		// 使用刚指定的配置项和数据显示图表。
  	        	occupation.setOption(option);
  	   }})
      }

    }
</script>

<script>

</script>
</html>
