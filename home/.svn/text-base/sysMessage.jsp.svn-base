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
                                            <span>消息中心</span>
                                        </a>
                                    </li>
                                   
                                </ul>

                                <div class="tab-content message-navbar no-border no-padding">
                                    <div class="row tab-pane fade in active listNotice" id="faq-tab-1">
                                        <div class="col-sm-12 tableB">
                                            <table border="0">
                                                <thead>
	                                                <tr>
	                                                    <th>标题</th>
	                                                    <th>消息内容</th>
	                                                    <th>时间</th>
	                                                    <th>阅读状态</th>
	                                                </tr>
                                                </thead>
                                                <tbody id="tbs1">
	                                                <tr id="itms1" style="display: none;">
	                                                	<td id="title"></td>
	                                                    <td id="content" align="left"></td>
	                                                    <td id="createTimeFormat"></td>
	                                                    <td id="compType"></td>
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
        showPage();
    });
       
    
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
          url:"${ctxPath}/systemMessage/query.action",
          dataType:"json",
          data : {"page":currentPage,"size":pageSize},
          contentType: "application/x-www-form-urlencoded; charset=utf-8",
          success:function(data){
              totalCounts = data.total;
              getNoticeItm1(data.data);
              showPage(false);
              //totalCounts = data.pages;//总页数(后台返回)
          }
      });
    }
    
    var listItm1=$("#itms1");//通知公告
    listItm1.remove();
    var tab1=$("#tbs1");
    function getNoticeItm1(data){
    	$("#tbs1").html("");
    	//totalCounts = 0; //分页的总条目数
        //pageSize = 10;    //每一页的条目数
        //currentPage = 1; //当前的页码
    	for(var i=0;i<data.length;i++){
    		var notd=data[i];
    		var listItem = listItm1.clone();
    		listItem.css('display', '');//清楚隐藏
    		listItem.find("#title").html(notd.title);
    		listItem.find("#createTimeFormat").html(notd.createTimeFormat);
    		listItem.data("message", notd);
    		if(notd.compType==0){
    			listItem.find("#compType").html("已阅");
    		}else{
    			listItem.find("#compType").html("未阅");
        	}
			var type = notd.type,
				url = notd.url,
				_id = notd._id,
				id = notd.typeId;
	    		//工作消息：802:书记信箱回复;811:通知公告;812:会议通知;821:在线投票;831:活动报名提醒;841:领导对支部评价时书记收到提醒(尚未实现)
				if(701 == type || 702 == type || 709 == type) { //701:加入群未审核;702:加入群已审核;709:被踢出群
					listItem.find("#content").html(notd.content);
				} else if(802 == type) { //802:书记信箱回复;
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' href='${ctxPath}/manage/mailbox/findById.action?mailboxId="+id+"'>"+notd.content+"</a>");
				} else if(811 == type) { // 通知公告
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' target='_blank' href='${ctxPath}/noticeDetail/toDetail.action?noticeId="+id+"'>"+notd.content+"</a>");
				} else if(812 == type) { // 会议通知
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' target='_blank' href='${ctxPath}/noticeDetail/toMeeting.action?noticeId="+id+"'>"+notd.content+"</a>");
				} else if(831 == type) { // 活动报名提醒
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' target='_blank' href='${ctxPath}/manage/activity/todetail.action?_id="+id+"'>"+notd.content+"</a>");
				}else if(901 == type) { // 活动报名提醒
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' target='_blank' href='${ctxPath}/manage/activity/todetail.action?_id="+id+"'>"+notd.content+"</a>");
				} else if(1 == type) { // 视频
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' target='_blank' href='${ctxPath}/study/toStudyau.action?studyId="+id+"'>"+notd.content+"</a>");
				} else if(2 == type) { // 音频
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' target='_blank' href='${ctxPath}/study/toStudy.action?studyId="+id+"'>"+notd.content+"</a>");
				} else if(3 == type) { // 文档
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' target='_blank' href='${ctxPath}/study/toList.action?studytype=3'>"+notd.content+"</a>");
				} else if(4 == type) { // 考试
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' href='"+url+"'>"+notd.content+"</a>");
				} else if(80 == type) { // 群组消息被评论
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' href='${ctxPath}/group/toList.action'>"+notd.content+"</a>");
				} else if(90 == type) { // 心得被评论
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' href='${ctxPath}/study/gained/toList.action'>"+notd.content+"</a>");
				} else if(401 == type) { // 评论被回复
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' href='${ctxPath}/study/gained/toList.action'>"+notd.content+"</a>");
				} else if(100 == type) { // 评论/回复被赞
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' href='${ctxPath}/study/gained/toList.action'>"+notd.content+"</a>");
				} else if(101 == type) { // 群组消息被赞
					listItem.find("#content").html("<a onclick='ckan(\""+_id+"\")' href='${ctxPath}/group/toList.action'>"+notd.content+"</a>");
				}else{
					listItem.find("#content").html(notd.content);
				}
    		tab1.append(listItem);
    	}
    	
    	if(data.length==0){
    	  	tab1.html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
    	}
    }
   
    	//ajax请求后台数据
        getNoktD1();
        var too=false;
    	function showPage(too){
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
                	if(too){
                		getNoktD1();
                	}else{
                		too=true;
                	}
                }
            });
    	}
    	
    	function ckan(obj){
    	      $.ajax({
    	          type:"post",
    	          url:"${ctxPath}/systemMessage/sysMessagelook.action",
    	          dataType:"json",
    	          data : {"messageId":obj},
    	          contentType: "application/x-www-form-urlencoded; charset=utf-8",
    	          success:function(data){
    	        	  console.log(data.success);
    	        	  getNoktD1();
    	          }
    	      });
    	    }
    	
</script>
</body>
</html>
