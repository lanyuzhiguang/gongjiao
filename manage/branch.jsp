<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/modulepc/resources/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>基层e党建</title>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/bootstrap.css" />
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/font-awesome.css" />
    <link href="${ctxPath}/modulepc/css/iconfont.css" rel="stylesheet"/>
    <!-- page specific plugin styles -->
    <!-- text fonts -->
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace-fonts.css" />
    <!-- ace styles -->
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace-part2.css" class="ace-main-stylesheet" />
    <![endif]-->
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace-ie.css" />
    <![endif]-->
    <!-- inline styles related to this page -->
    <!-- ace settings handler -->
    <script src="${ctxPath}/modulepc/assets/js/ace-extra.js"></script>
    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
    <!--[if lte IE 8]>
    <script src="${ctxPath}/modulepc/assets/js/html5shiv.js"></script>
    <script src="${ctxPath}/modulepc/assets/js/respond.js"></script>
    <![endif]-->
    <link href="${ctxPath}/modulepc/css/index.css" rel="stylesheet"/>
    <link href="${ctxPath}/modulepc/css/branch.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="${ctxPath}/modulepc/css/demo.css">
    <link rel="stylesheet" type="text/css" href="${ctxPath}/modulepc/css/zTreeStyle.css">
	 <style type="text/css">
	.node_name{
		color: black;
	}
	a:hover {
	    background-color: white;
	    color: white;
	}
    </style>
</head>

<body class="no-skin">
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12 outW">
                    <div class="col-sm-9 rightB">
                        <div class="menuList">
    <ul>
    <li class="dropdown">
    <a data-toggle="" class="dropdown-toggle" href="#">
    <i class="pink ace-icon fa ic iconfont icon-zuzhi"></i>
    <div class="col-sm-3 selectB" style="width: 20%">
	    <input type="hidden" id="branchId" value="">
		<input type="text" id="branch" placeholder="${user.bumenName }" readonly="readonly"  class="chosen-select form-control"/>
		<div id="menuContent2" class="menuContent" style="display:none; position: absolute; z-index: 1000;left:0;top: 31px;">
			 <ul id="treeDemo2" class="ztree" style="margin-top:0; width:206px;"></ul>
		</div>
    </div>
    </a>
    </li>
    </ul>
    </div>
                        <div class="profile-user-info profile-user-info-striped">
                            <!-- <div class="profile-info-row">
                                <div class="profile-info-name">支部书记 </div>

                                <div class="profile-info-value">
                                    <span class="editable" id="username"></span>
                                </div>
                            </div> 

                            <div class="profile-info-row">
                                <div class="profile-info-name"> 党员人数 </div>
                                <div class="profile-info-value">
                                    <span class="editable" id="num"></span>
                                </div>
                            </div>-->

                           <!--  <div class="profile-info-row">
                                <div class="profile-info-name"> 支部地址 </div>

                                <div class="profile-info-value">
                                    <span class="editable" id="age">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</span>
                                </div>
                            </div>

                            <div class="profile-info-row">
                                <div class="profile-info-name"> 支部简介 </div>

                                <div class="profile-info-value">
                                    <span class="editable" id="signup">支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介支部简介</span>
                                </div>
                            </div> -->
                        </div>
                        <div class="tabbable">
    <ul class="nav nav-tabs padding-18 tab-size-bigger" id="myTab">
    <li class="active">
    <a data-toggle="tab" class="sex" href="#faq-tab-1">
    <i class="ace-icon fa iconfont icon-weibiaoti- bigger-120"></i>
    党员性别
    </a>
    </li>

    <li>
    <a data-toggle="tab" href="#faq-tab-2">
    <i class=" ace-icon fa iconfont icon-minzu  bigger-120"></i>
    党员民族
    </a>
    </li>

    <li>
    <a data-toggle="tab" href="#faq-tab-3">
    <i class=" ace-icon  iconfont fa icon-xuexi1 bigger-120"></i>
    党员学历
    </a>
    </li>
    <li>
    <a data-toggle="tab" href="#faq-tab-4">
    <i class=" ace-icon fa iconfont icon-nianlingduangonglingduan bigger-120"></i>
    年龄阶段
    </a>
    </li>
    <li>
    <a data-toggle="tab" href="#faq-tab-5">
    <i class=" ace-icon fa  iconfont icon-zhiye bigger-120"></i>
    职业类型
    </a>
    </li>
    <!--<li>-->
    <!--<a data-toggle="tab" href="#faq-tab-6">-->
    <!--<i class=" ace-icon fa iconfont icon-4gerenzhongxinxuexishichang bigger-120"></i>-->
    <!--学习时长-->
    <!--</a>-->
    <!--</li>-->
    </ul>
    <div class="tab-content no-border padding-24">
    <div id="faq-tab-1" class="tab-pane fade in active">
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="sexM" class="pieChart" style="width: 600px;height:400px;"></div>
    </div>

    <div id="faq-tab-2" class="tab-pane fade">
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="nationM" class="pieChart" style="width: 600px;height:400px;"></div>
    </div>

    <div id="faq-tab-3" class="tab-pane fade">
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="educationM" class="pieChart" style="width: 600px;height:400px;"></div>
    </div>

    <div id="faq-tab-4" class="tab-pane fade">
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="ageM" class="pieChart" style="width: 600px;height:400px;"></div>
    </div>
    <div id="faq-tab-5" class="tab-pane fade">
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="occupationM" class="pieChart" style="width: 600px;height:400px;"></div>
    </div>
    <div id="faq-tab-6" class="tab-pane fade">
    <div class="col-sm-12 studyTime">
    <div class="widget-box transparent">
    <div class="widget-body">
    <div class="widget-main padding-4">
    <div id="sales-charts"></div>
    </div><!-- /.widget-main -->
    </div><!-- /.widget-body -->
    </div><!-- /.widget-box -->
    </div>
    </div>
    </div>
    </div>
    <c:if test="${user.tenantId != '5416928080940976859'}">
                        <div class="widget-box transparent lifeW" id="recent-box">
                            <div class="widget-header">
                                <h4 class="widget-title lighter smaller tissue">
                                    <i class=" ace-icon fa iconfont icon-xing "></i>支部组织生活
                                </h4>

                                <div class="widget-toolbar no-border ">
                                    <ul class="nav nav-tabs" id="recent-tab">
                                        <li class="active" id="notssItem">
		                                    <a data-toggle="tab" href="#task-tab">支部党员大会</a>
		                                </li>
                                    </ul>
                                </div>
                            </div>

		                  	<div class="widget-body">
		                        <div class="widget-main padding-4">
		                            <div class="tab-content padding-8" id="bgTable">
		                                <!--支部党员大会-->
		                                                
		                            </div>
		                        </div>
		                    </div>
                        </div>
            </c:if>            
                    </div>
                    <div class="col-sm-3 hotTopice">
                        <div class="hotT">
                            <div class="rank " style="margin-top: 3px;">
                                <div class="branchTitl"  style="border: 1px solid #cccccc"><i class="icon iconfont icon-paiming"></i>支部排名
                                    <div class="rightF"><span class="redC"> </span>/<span class="blackC"></span></div>
                                </div>
                                <ul class="rankingList">
                                    <li id="rankItme" style="display: none;">
                                        <div class="ranking"></div>
                                        <div class="user headT">
                                            <div class="item">
                                                <div class="listName">
                                                    <span>XXXX支部</span>
                                                </div>
                                                <div class="listIntegral">
                                                    <span>积分：<span id="ranNum">100</span></span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    
                                    <!-- <a class="lookMore">查看更多</a> 
                                </ul>

                            </div>
                        </div>
                    </div>-->
                </div>
            </div>
        </div>
    </div>
</div>

<input type="hidden" id="userId" value="${user._id }">
<input type="hidden" id="bumenId" value="${bumenId}">
<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='${ctxPath}/modulepc/assets/js/jquery.js'>"+"<"+"/script>");
</script>
<!-- <![endif]-->
<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='${ctxPath}/modulepc/assets/js/jquery1x.js'>"+"<"+"/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='${ctxPath}/modulepc/assets/js/jquery.mobile.custom.js'>"+"<"+"/script>");
</script>
<script src="${ctxPath}/modulepc/assets/js/bootstrap.js"></script>
<!--[if lte IE 8]>
<script src="${ctxPath}/modulepc/assets/js/excanvas.js"></script>
<![endif]-->
<script src="${ctxPath}/modulepc/assets/js/jquery-ui.custom.js"></script>
<script src="${ctxPath}/modulepc/assets/js/jquery.ui.touch-punch.js"></script>
<script src="${ctxPath}/modulepc/assets/js/jquery.easypiechart.js"></script>
<script src="${ctxPath}/modulepc/assets/js/jquery.sparkline.js"></script>
<script src="${ctxPath}/modulepc/assets/js/flot/jquery.flot.js"></script>
<script src="${ctxPath}/modulepc/assets/js/flot/jquery.flot.pie.js"></script>
<script src="${ctxPath}/modulepc/assets/js/flot/jquery.flot.resize.js"></script>
<!-- ace scripts -->
<script src="${ctxPath}/modulepc/assets/js/ace/elements.scroller.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.colorpicker.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.fileinput.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.typeahead.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.wysiwyg.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.spinner.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.treeview.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.wizard.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.aside.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.ajax-content.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.touch-drag.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.sidebar.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.sidebar-scroll-1.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.submenu-hover.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.widget-box.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.settings.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.settings-rtl.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.settings-skin.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.widget-on-reload.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.searchbox-autocomplete.js"></script>
<script src="${ctxPath}/modulepc/js/echarts.min.js"></script>
<script src="${ctxPath}/modulepc/js/jquery.ztree.core.min.js"></script>
<script src="${ctxPath}/modulepc/js/jquery.ztree.excheck.min.js"></script>
<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<%-- <script src="${ctxPath}/modulepc/assets/js/chosen.jquery.js"></script> --%>
<link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace.onpage-help.css" />
<script type="text/javascript"> ace.vars['base'] = '${ctxPath}/modulepc'; </script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.onpage-help.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.onpage-help.js"></script>
<!-- inline scripts related to this page -->
<script type="text/javascript">
	var bumId=$("#bumenId").val();
    jQuery(function($) {
       
    	
    	
    	//支部排名
	    var listItm1=$("#itmStu"); 
        listItm1.remove();
	    $.ajax({
	        type:"post",
	        url:"${ctxPath}/score/scoreRankingBumen.action",
	        dataType:"json",
	        contentType: "application/x-www-form-urlencoded; charset=utf-8",
	        success:function(data){
	        	var snum=data.length;
	        	var listItm1=$("#rankItme");
	        	listItm1.remove();
	        	$(".blackC").text(snum);
	        	if(snum>10)snum=10;
	        	$(".rankingList").html("");
	        	for(var i = 0; i < snum; i++) {
	        		var d = data[i];
	        		var listItem = listItm1.clone();
	        		listItem.css('display', '');//清除隐藏
	        		if(i==0){
	        		}else if(i==1){
	        			listItem.find(".ranking").attr("class","ranking_T");//设置Id为two的class属性。
	        		}else if(i==2){
	        			listItem.find(".ranking").attr("class","ranking_Th");//设置Id为two的class属性。
	        		}else{
	        			listItem.find(".ranking").html(i+1);
	        			listItem.find(".ranking").attr("class","rank_L");//设置Id为two的class属性。
	        			
	        		}
	        		listItem.find(".listName").find("span").html(d.name);
	        		listItem.find("#ranNum").text(d.avgScore);
	        		$(".rankingList").append(listItem);
	        	}
	        	$(".rankingList").append('<a class="lookMore" href="${ctxPath}/manage/bumen/toRanking.action">查看更多</a>');
	        	$(".rankingList").append('&nbsp;');
	        	for(var j=0;j<data.length;j++){
	        		var d=data[j];
	        		  //alert('${user.bumenId}'+"===="+d._id);
	        		if('${user.bumenId}'==d._id){
		        			$(".redC").text(j+1);
		        			$("#userNum").text(d.scoreTotal);
		        		break;
	        		}
	        	}
	        	/* $(".lookMore").click( function() {
	        		
	        	}); */
	        }});
    	
    	
    	
    //饼状图 姓别
      // 基于准备好的dom，初始化echarts实例
      var myChart_sex = echarts.init(document.getElementById('sexM'));
      setChartSex();
      function setChartSex(){
    	  $.ajax({
  	        type:"post",
  	        url:"${ctxPath}/user/getMapList.action",
  	        data:{bumenId: bumId },
  	        dataType:"json",
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
  	        success:function(data){
  	        	var option ={
  	    		      /* title : {
  	    			      text: '支部党员性别比例',
  	    			      subtext: '男女占比饼图',
  	    			      x:'center'
  	    		      }, */
  	    		      tooltip : {
  	    			      trigger: 'item',
  	    			      formatter: "{a} <br/>{b} : {c} ({d}%)"
  	    		      },
  	    		      color:['#da5430','#2091cf'],
  	    		      legend: {
  	    			      orient: 'vertical',
  	    			      left: 'right',
  	    			      data: ['女','男']
  	    		      },
  	    		      series : [
  	    			      {
  	    				      name: '性别',
  	    				      type: 'pie',
  	    				      radius : '55%',
  	    				      center: ['30%', '60%'],
  	    				      data:[
  	    					      {value:145, name:'男'},
  	    					      {value:2, name:'女'},
  	    			      		],
  	    			      itemStyle: {
  	    				      emphasis: {
  	    					      shadowBlur: 10,
  	    					      shadowOffsetX: 0,
  	    					      shadowColor: 'rgba(0, 0, 0, 0.5)'
  	    				      } ,
  	    			     normal:{
  	    				    label:{
  	    					    show: true,
  	    					    formatter: '{b}:{c} ({d}%)'
  	    					    },
  	    					    labelLine :{show:true}
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
  	          	myChart_sex.setOption(option);
  	   		}})
      }
      
      
      //饼状图  民族
      // 基于准备好的dom，初始化echarts实例
      var myChart_nation = echarts.init(document.getElementById('nationM'));
      
      setChartVolk();
      function setChartVolk(){
    	  $.ajax({
  	        type:"post",
  	        url:"${ctxPath}/user/getMapVolkList.action",
  	        data:{bumenId: bumId },
  	        dataType:"json",
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
  	        success:function(data){
  	        	var option = {
  	    		      title : {
  	    			      text: '',
  	    			      subtext: '',
  	    			      x:'center'
  	    		      },
  	    		      tooltip : {
  	    			      trigger: 'item',
  	    			      formatter: "{a} <br/>{b} : {c} ({d}%)"
  	    		      },
  	    		      legend: {
  	    		    	  type: 'scroll',
  	    			      orient: 'vertical',
  	    			      left: 'right',
  	    			      data: ['汉','满']
  	    		      },
  	    		      series : [
  	    			      {
  	    				      name: '',
  	    				      type: 'pie',
  	    				      radius : '55%',
  	    				      center: ['30%', '60%'],
  	    				      top:["90%"],
  	    				      data:[
  	    					      {value:18, name:'汉'},
  	    					      {value:3, name:'满'}
  	    				      ],
  	    				      itemStyle: {
  	    					      emphasis: {
  	    						      shadowBlur: 10,
  	    						      shadowOffsetX: 0,
  	    						      shadowColor: 'rgba(0, 0, 0, 0.5)'
  	    					      },
  	    					    normal:{
  	    						    label:{
  	    						    show: true,
  	    						    formatter: '{b}:{c} ({d}%)'
  	    						    },
  	    						    labelLine :{show:true}
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
  	          		dname="未填写该信息";
	  	          	dataName.push(dname);
		          	dataValue.push({
	  	          		value:dataNull, 
	  	          		name:dname
		          	})
  	          	}
  	          	option.legend.data=dataName;
  	        	option.series[0].data=dataValue;
  	        	
  	       		// 使用刚指定的配置项和数据显示图表。
  	          	myChart_nation.setOption(option);
  	   }})
      }
      
      //饼状图 学历
      // 基于准备好的dom，初始化echarts实例
      var myChart_education = echarts.init(document.getElementById('educationM'));
      
      // 使用刚指定的配置项和数据显示图表。
      setChartEducation();
      function setChartEducation(){
    	  $.ajax({
  	        type:"post",
  	        url:"${ctxPath}/user/getMapEducationList.action",
  	        data:{bumenId: bumId },
  	        dataType:"json",
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
  	        success:function(data){
  	        	
  	        	var option = {
  	    		      title : {
  	    			      text: '',
  	    			      subtext: '',
  	    			      x:'center'
  	    		      },
  	    		      tooltip : {
  	    			      trigger: 'item',
  	    			      formatter: "{a} <br/>{b} : {c} ({d}%)"
  	    		      },
  	    		      legend: {
  	    		    	  type: 'scroll',
  	    			      orient: 'vertical',
  	    			      left: 'right',
  	    			      data: ['大学']
  	    		      },
  	    		      series : [
  	    		      {
  	    			      name: '',
  	    			      type: 'pie',
  	    			      radius : '55%',
  	    			      center: ['30%', '60%'],
  	    			      top:["90%"],
  	    			      data:[
  	    			      	{value:18, name:'大学'}
  	    			      ],
  	    			      itemStyle: {
  	    				      emphasis: {
  	    					      shadowBlur: 10,
  	    					      shadowOffsetX: 0,
  	    					      shadowColor: 'rgba(0, 0, 0, 0.5)'
  	    					    },
  	    					  normal:{
  	    					    label:{
  	    					    show: true,
  	    					    formatter: '{b}:{c} ({d}%)'
  	    					    },
  	    					    labelLine :{show:true}
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
  	          		dname="未填写该信息";
	  	          	dataName.push(dname);
		          	dataValue.push({
	  	          		value:dataNull, 
	  	          		name:dname
		          	})
  	          	}
  	          	option.legend.data=dataName;
  	        	option.series[0].data=dataValue;
  	        	
  	       		// 使用刚指定的配置项和数据显示图表。
  	        	myChart_education.setOption(option);
  	   }})
      }
      
      //饼状图 职业
      // 基于准备好的dom，初始化echarts实例
      var myChart_occupation = echarts.init(document.getElementById('occupationM'));
      
      setChartOneJob();
      function setChartOneJob(){
    	  
    	  $.ajax({
  	        type:"post",
  	        url:"${ctxPath}/user/getMapOneJobList.action",
  	        data:{bumenId: bumId },
  	        dataType:"json",
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
  	        success:function(data){
  	        	var option = {
  	    		      title : {
  	    		      text: '',
  	    		      subtext: '',
  	    		      x:'center'
  	    		      },
  	    		      tooltip : {
  	    			      trigger: 'item',
  	    			      formatter: "{a} <br/>{b} : {c} ({d}%)"
  	    		      },
  	    		      legend: {
  	    		    	  type: 'scroll',
  	    			      orient: 'vertical',
  	    			      left: 'right',
  	    			      data: ['非公有制经济控制企业专业技术岗位','非公有制经济控制企业管理岗位']
  	    		      },
  	    		      series : [
  	    			      {
  	    				      name: '',
  	    				      type: 'pie',
  	    				      radius : '55%',
  	    				      center: ['45%', '60%'],
  	    				      top:["90%"],
  	    				      data:[
  	    					      {value:14, name:'非公有制经济控制企业专业技术岗位'},
  	    					      {value:4, name:'非公有制经济控制企业管理岗位'}
  	    				      ],
  	    				      itemStyle: {
  	    				      emphasis: {
  	    					      shadowBlur: 10,
  	    					      shadowOffsetX: 0,
  	    					      shadowColor: 'rgba(0, 0, 0, 0.5)'
  	    					     },
  	    					   normal:{
  	    						    label:{
  	    						    show: true,
  	    						    formatter: '{b}:{c} ({d}%)'
  	    						    },
  	    						    labelLine :{show:true}
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
  	          		dname="未填写该信息";
	  	          	dataName.push(dname);
		          	dataValue.push({
	  	          		value:dataNull, 
	  	          		name:dname
		          	})
  	          	}
  	          	option.legend.data=dataName;
  	        	option.series[0].data=dataValue;
  	        	
  	       		// 使用刚指定的配置项和数据显示图表。
  	        	myChart_occupation.setOption(option);
  	   }})
      }
      

      //柱状图   年龄
      // 基于准备好的dom，初始化echarts实例
      var myChart_age = echarts.init(document.getElementById('ageM'));
      setChartBirthday();
      function setChartBirthday(){
    	  $.ajax({
  	        type:"post",
  	        url:"${ctxPath}/user/getMapBirthdayList.action",
  	        data:{bumenId: bumId },
  	        dataType:"json",
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
  	        success:function(data){
  	        	var option = {
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
  	    			      data : ['≤30岁', '31-35岁', '36-40岁', '41-45岁'],
  	    			      axisTick: {
  	    			      	alignWithLabel: true
  	    			      }
  	    			    }
  	    		      ],
  	    		      yAxis : [
  	    			      {
  	    			      type : 'value'
  	    			      }
  	    		      ],
  	    		      series : [
  	    			      {
  	    				      name:'',
  	    				      type:'bar',
  	    				      barWidth: '20%',
  	    				      data:[10, 3, 2, 3],
  	    			    	  itemStyle:{
	  	    				    normal:{
	  	    				    label:{
	  	    				    show: true,
	  	    				    position: 'top'
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
  	        	myChart_age.setOption(option);
  	   }})
      }
      


   




    //获得部门信息  
	  /* $.ajax({
	        type:"post",
	        async:false,
	        url:"${ctxPath}/manage/bumen/findTendBumens.action",
	        dataType:"json",
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
	        success:function(data){
	        	bumId=$("#bumenId").val();
				var bum =dldata(data);
				for(var i = 0; i < bum.length; i++) {
						$("#bumlist").append('<option value="'+bum[i]._id+'">'+bum[i].name+'</option>')
				}
				$("#bumlist").val(bumId);
				$('.chosen-select').trigger("chosen:updated");
				
				$(".chosen-select").chosen().change(function(){
			  		bumId=$(this).val();
			  		setChartSex();
			  		setChartVolk();
			  		setChartEducation();
			  		setChartOneJob();
			  		setChartBirthday();
			  		
			  		setMeetingType();
			  		getminbum();
			  	});
		}}); */



	//支部组织生活
	var listItm1s=$("#notssItem");
	listItm1s.remove();
	function setMeetingType(){
		var bgTable=$("#bgTable");
		bgTable.html("");
		$.ajax({
	        type:"post",
	        async:false,
	        url:"${ctxPath}/notice/meetingTypes.action",
	        contentType: "application/x-www-form-urlencoded; charset=utf-8",
	        success:function(data){
	        	var tab1=$("#recent-tab");
	        	tab1.html("");
	        	var tbl=true;
	            for(var i=0;i<data.length;i++){
	            	var meet=data[i];
	            	if(meet.type==1){
	            		var listItems = listItm1s.clone();
	            		listItems.css('display', '');//清楚隐藏
	            		getlistli(meet._id,tbl);
	            		if(tbl){
	            			tbl=false;
	            		}else{
	            			listItems.removeClass("active");
	            		}
	            		listItems.find("a").html(meet.name);
		            	listItems.find("a").attr('href',"#"+meet._id);
		            	tab1.append(listItems);
	            	}
	            }
	        }
	    });
	}
	   
	  function getlistli(obj,bl){
		  var bgTable=$("#bgTable");
			//支部组织生活
		   $.ajax({
		        type:"post",
		        async:false,
		        url:"${ctxPath}/notice/noticeMeetDetail.action",
		        data:{'page': 1
		        	,'size':10
		        	,'meetId':obj
		        	,'in:forBumenId|array': bumId},
		        success:function(data){
		        	var notices=data.data;
		        	var tabl="";
		        	tabl+="<div id=\""+obj+"\" class=\"tab-pane";
		        	if(bl){
			        	tabl+=" active ";
		        	}
		        	tabl+="\">";
		        	tabl+="<div class=\"widget-body\">";
		        	tabl+="<div class=\"widget-main no-padding\">";
		        	tabl+="<div class=\"dialogs\" id=\"diaid\">";
		        	var bool=true;
		        	for (var it = 0; it < notices.length; it++) {
		        		var notice=notices[it];
		        		var sthtml="";
		        		sthtml+="<div id=\"dialItem\" class=\"itemdiv dialogdiv";
		        		if(bool){
		        			sthtml+=" specH ";
		        			bool=false;
		        		}
		        		sthtml+="\">";
		        		sthtml+="<div class=\"user\">";
		        		sthtml+="<img src=\"${ctxPath}/modulepc/img/redD.png\"/>";
		        		sthtml+="</div>";
		        		sthtml+="<div class=\"body\">";
		        		sthtml+="<div class=\"time\">";
		        		sthtml+="<i class=\"ace-icon fa fa-clock-o\"></i>";
		        		sthtml+="<span class=\"timeS\">"+notice.attendtimeFormat+"</span>";
		        		sthtml+="</div>";
		        		sthtml+="<div class=\"name\">";
		        		sthtml+="<i class=\"ace-icon fa fa-caret-right\"></i>";
		        		sthtml+="<a target=\"_blank\" href=\"../../noticeDetail/toMeeting.action?noticeId="+notice._id+"\">"+notice.title+"</a>";
		        		sthtml+="</div>";
		        		sthtml+="<div style='margin-left: -2px;'><i class=\"ace-icon fa iconfont icon-ddian\"></i><span class='pdzi'>"+notice.address+"</span></div>";
		        		sthtml+="<div class=\"text\">";
		        		sthtml+="<span>实到人数</span>";
		        		var strs= new Array(); //定义一数组 
		        		try {
			        		if (Date.parse(new Date())>notice.attendtime) {
				        		strs=notice.tolReach.split("/"); //字符分割 
				        		sthtml+="<span>实到人数</span><span class=\"onTime\">"+strs[0]+"人</span>";
				        		sthtml+="<span>应到人数</span><span class=\"onTime\">"+strs[1]+"人</span>";
			        		}else{
			        			strs=notice.tolRedaer.split("/"); //字符分割 
			        			sthtml+="<span>已阅</span><span class=\"onTime\">"+strs[0]+"人</span>";
				        		sthtml+="<span>未阅</span><span class=\"onTime\">"+(strs[1]-strs[0])+"人</span>";
							}
						} catch (e) {
							// TODO: handle exception
						}
		        		sthtml+="</div>";
		        		sthtml+="</div>";
		        		sthtml+="</div>";
		        		tabl+=sthtml;
					}
		        	if(notices.length<1){
		        		tabl+="<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>";
		        	}
		        	tabl+="</div>";
		        	tabl+="</div>";
		        	tabl+="</div>";
		        	tabl+="</div>";
		        	bgTable.append(tabl);
		        	
		        	 // 控制滑动 
		            $('.dialogs,.comments').ace_scroll({
		                 size: 300
		            });
		        }
		    });
	  }
	  
	  slidTree();
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
        	  type: "POST",
              url: "${ctxPath}/zTreeData/queryTreeByCode.action",
              data: {"actCode": "dynamicScope"},
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
              var bumIds = new Array();
              bumIds.push(treeNode.id);
              var bumenNames=new Array();
			  getBumenIds(treeNode,bumIds,bumenNames);
			  bumId=bumIds.toString();
			  setChartSex();
		  	  setChartVolk();
		  	  setChartEducation();
		  	  setChartOneJob();
		  	  setChartBirthday();
		  	  setMeetingType();
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
      setMeetingType();

    })
</script>
</body>
</html>
