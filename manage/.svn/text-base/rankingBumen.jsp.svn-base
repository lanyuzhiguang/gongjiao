<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/modulepc/resources/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>基层e党建</title>
    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/bootstrap.css"/>
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/font-awesome.css"/>
    <link href="${ctxPath}/modulepc/css/iconfont.css" rel="stylesheet"/>
    <!-- page specific plugin styles -->
    <!-- text fonts -->
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace-fonts.css"/>
    <!-- ace styles -->
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style"/>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace-part2.css" class="ace-main-stylesheet"/>
    <![endif]-->
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace-ie.css"/>
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
    <link rel="stylesheet" href="${ctxPath}/modulepc/layui/css/layui.css"  media="all">
    <link href="${ctxPath}/modulepc/css/home_party.css" rel="stylesheet">
    <style type="text/css">
    .sorr{
    	overflow-x:scroll;
    }
    .cloa{
			color: #E1E1E1;
		}
    </style>
</head>

<body class="no-skin">
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12 wrapB">
                    <div class="row">
                        <div class="col-xs-12 wrapB">
                            <div class="tabbable">
                                <ul id="inbox-tabs" class="nav nav-tabs padding-18 tab-size-bigger">
                                 
                                    <li class="searchB">
                                        <div class="searchBTN" id="nav-search">
                                            <form class="form-search">
								<!-- <span class="input-icon">
									<input type="text" placeholder="输入信息发送人或内容" class="nav-search-input" id="nav-search-input" autocomplete="off">
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span> -->
                                            </form>
                                        </div>
                                    </li>
                                    <li class="active">
                                        <a data-toggle="tab" href="#faq-tab-1">
                                            <span>部门排名</span>
                                        </a>
                                    </li>
                                   
                                </ul>

                                <div class="tab-content message-navbar no-border no-padding">
                                    <div class="row tab-pane fade in active listNotice" id="faq-tab-1">
                                        <div class="col-sm-12 tableB">
                                            <table border="0">
                                                <thead>
	                                                <tr>
	                                                    <th style="width: 5%">排名</th>
	                                                    <th style="width: 25%">支部名称</th>
	                                                    <th style="width: 10%">总人数</th>
	                                                    <th style="width: 10%">总学习积分</th>
	                                                    <th style="width: 10%">总活跃积分</th>
	                                                    <th style="width: 10%">总积分</th>
	                                                    <th style="width: 10%">人均总积分</th>
	                                                </tr>
                                                </thead>
                                                <tbody id="tbs1">
	                                                <tr id="itms1" style="display: none;">
	                                                	<td id="numb"></td>
	                                                    <td style="text-align: left;" id="noticeTitle1">标题标题标题标题标题标题标题标题</td>
	                                                    <td id="updateTime1">xxxx-yy-zz hh:mm</td>
	                                                    <td id="meetName1">通知公告</td>
	                                                    <td id="sendCount1">3</td>
	                                                    <td id="state1">未阅</td>
	                                                    <td id="state2">未阅</td>
	                                                </tr>
                                                </tbody>
                                            </table>
                                          
									        <div class="row divpage">
									            <div class="col-xs-12">
									               <ul id="demo2" class="pagination"></ul>
									            </div>
									        </div>
                                        </div>
                                        
                                    </div>
                                    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div>
<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='${ctxPath}/modulepc/assets/js/jquery.js'>" + "<" + "/script>");
</script>
<!-- <![endif]-->
<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='${ctxPath}/modulepc/assets/js/jquery1x.js'>" + "<" + "/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='${ctxPath}/modulepc/assets/js/jquery.mobile.custom.js'>" + "<" + "/script>");
</script>
<script src="${ctxPath}/modulepc/assets/js/bootstrap.js"></script>
<!--[if lte IE 8]>
<script src="${ctxPath}/modulepc/assets/js/excanvas.js"></script>
<![endif]-->
<script src="${ctxPath}/modulepc/layui/layui.all.js"></script>
<script src="${ctxPath}/modulepc/js/jqPaginator.js"></script>
<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {
        $("tbody tr:even").css({"background": "#F5F5F5"});
        $("tbody tr:odd").css({"background": "#fafafa"});
        var faq_1Tr=$("#faq-tab-1 div table tbody tr");
        for(var j=0;j<faq_1Tr.length;j++){
            $(faq_1Tr[j]).find("td").eq(0).css({textAlign:"left"})
            $(faq_1Tr[j]).find("td").eq(0).addClass("changeDot");
        }

        <!--控制表格第一个td变点点方法-->
        var oTr = $("#faq-tab-2 div table tbody tr");
        for (var i = 0; i < oTr.length; i++) {
//            if ($(oTr[i]).find("td").eq(8).find(".cancel").text() == "取消会议") {
//                $(oTr[i]).find("td").eq(8).find(".cancel").css({"color": "#f4834b"});
//            }
            var oTdFirst = $(oTr[i]).find("td").eq(0).text();
            $(oTr[i]).find("td").eq(0).attr("title", oTdFirst);
        }
        
       

	 var laypage = layui.laypage
	  	,layer = layui.layer;
    
      //分页参数设置 这些全局变量关系到分页的功能
      var totalCounts = 0; //分页的总条目数
      var pageSize = 10;    //每一页的条目数
      var currentPage = 1; //当前的页码
        
      //部门排名数据
      var bumRanking=null;
      
        var firs=true;
        var pgs=null;
        //ajax请求后台数据
        function getNoktD1(){
          $.ajax({
              type:"post",
              url:"${ctxPath}/score/scoreRankingBumen.action",
              dataType:"json",
              contentType: "application/x-www-form-urlencoded; charset=utf-8",
              success:function(data){
            	  totalCounts = data.length;
            	  bumRanking=data;
	              //toPage(data.total);
	              getNoticeItm1();
	              showPage();
              }
          });
        }
        
        var listItm1=$("#itms1");//通知公告
        listItm1.remove();
        var tab1=$("#tbs1");
        function getNoticeItm1(){
        	$("#tbs1").html("");
        	//totalCounts = 0; //分页的总条目数
            //pageSize = 10;    //每一页的条目数
            //currentPage = 1; //当前的页码
            var maxLeng=currentPage*pageSize;
            if(maxLeng>totalCounts){
            	maxLeng=totalCounts;
            }
            var i=(currentPage-1)*pageSize;
        	data = bumRanking;
        	for(i;i<maxLeng;i++){
        		var notd=data[i];
        		var listItem = listItm1.clone();
        		listItem.css('display', '');//清楚隐藏
        		listItem.find("#noticeTitle1").html(notd.name);
        		listItem.find("#numb").html(i+1);
        		listItem.find("#updateTime1").html(notd.count);
        		listItem.find("#meetName1").html(notd.scoreStudy);
        		listItem.find("#sendCount1").html(notd.scoreActivity);
        		listItem.find("#state1").html(notd.scoreTotal);
        		listItem.find("#state2").html(notd.avgScore);
        		tab1.append(listItem);
        	}
        	
        	if(data.length==0){
        	  	tab1.html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
        	}
        }
       
        	//ajax请求后台数据
            getNoktD1();
        	
        	function showPage(){
        		$("#demo2").jqPaginator({
                	totalCounts: totalCounts,
                	pageSize: pageSize,
                    currentPage: currentPage,
                    first: '<li class="first"><a href="javascript:void(0);">《 <\/a><\/li>',
                    prev: '<li class="prev"><a href="javascript:void(0);"><i class="arrow arrow2"><\/i><<\/a><\/li>',
                    next: '<li class="next"><a href="javascript:void(0);">><i class="arrow arrow3"><\/i><\/a><\/li>',
                    last: '<li class="last"><a href="javascript:void(0);">》<\/a><\/li>',
                    page: '<li class="page"><a href="javascript:void(0);">{{page}}<\/a><\/li>',
                    onPageChange: function (n) {
                    	currentPage=n;
                    	getNoticeItm1();
                    }
                });
        	}
    });
            	
</script>
</body>
</html>
