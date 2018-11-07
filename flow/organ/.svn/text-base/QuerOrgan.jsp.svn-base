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
    <link href="${ctxPath}/modulepc/css/PublishInform.css" rel="stylesheet"/>
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
                                
                                    <li class="addN" onclick="isSubmint();">
                                        <i class="icon-xinzeng iconfont"></i><span>申请</span>
                                    </li>
                                
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
                                            <span>党组织关系转接</span>
                                        </a>
                                    </li>
                                </ul>

                                <div class="tab-content message-navbar no-border no-padding">
                                    <div class="row tab-pane fade in active listNotice" id="faq-tab-1">
                                        <div class="col-sm-12 tableB">
                                            <table border="0">
                                                <thead>
                                                <tr>
                                                    <th style="width: 8%">姓名</th>
                                                    <th style="width: 15%">原支部</th>
                                                    <th style="width: 15%">目标支部</th>
                                                    <th style="width: 15%">当前审批单位</th>
                                                    <th style="width: 10%">状态</th>
                                                    <th style="width: 10%">申请日期</th>
                                                    <th style="width: 5%">操作</th>
                                                </tr>
                                                </thead>
                                                <tbody id="tbs1">
                                                <tr id="itms1" style="display: none;">
                                                    <td id="userName"></td>
                                                    <td id="bumenName"></td>
                                                    <td id="toBumenName"></td>
                                                    <td id="nowBumenName"></td>
                                                    <td id="state"></td>
                                                    <td id="createTimeFormatData"></td>
                                                    <td id="set"></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                          
									        <div class="row divpage">
									            <div class="col-xs-12">
									               <div class="dataTables_paginate" id="demko1">
									                       
									               </div>
									            </div>
									        </div>
                                        </div>
                                        
                                    </div>
                                    <div class="row tab-pane fade " id="faq-tab-2">
                                         
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

				<form id="searchForm" method="get" class="form-horizontal" style="display: none;">
					<div class="form-group">
						<div class="col-sm-3 col-sm-offset-1">
							<div class="input-group fg-float">
								<div class="fg-line">
									<input id="ne:mtype|integer" name="in:mtype|integer" value="1"><!-- 组织生活状态为1 -->
									
									<!-- <input id="regex:name" name="regex:name" type="text"
										class="form-control"> <label class="fg-label">分类名称</label> -->
								</div>
							</div>
						</div>
					</div>
				</form>

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
        
    });
    
	 var laypage = layui.laypage
	  	,layer = layui.layer;
    
      //分页参数设置 这些全局变量关系到分页的功能
        var limitAllAppoint = 10;
        
        var firs=true;
        var pgs=null;
        //ajax请求后台数据
        function getNoktD1(obj){
          $.ajax({
              type:"post",
              url:"${ctxPath}/organParty/findUserOrgan.action",
              data:{'page': obj,
            	  'size':limitAllAppoint
            	  },
              dataType:"json",
              contentType: "application/x-www-form-urlencoded; charset=utf-8",
              success:function(data){
            	  //data=eval("("+data+")");
            	 // alert(data.data.length);
                  getNoticeItm1(data.data);
                  totalPageAllAppoint = data.pages;//总页数(后台返回)
                  if(firs){
                	  pgs=data.total;
	                  toPage(data.total);
	                  firs=false;
                  }
              }
          });
        }
        
        var listItm1=$("#itms1");//通知公告
        listItm1.remove();
        var tab1=$("#tbs1");
        function getNoticeItm1(data){
        	$("#tbs1").html("");
        	for(var i=0;i<data.length;i++){
        		var notd=data[i];
        		var listItem = listItm1.clone();
        		listItem.css('display', '');//清楚隐藏
        		listItem.find("#userName").html(notd.applyUserName);
        		listItem.find("#bumenName").html(notd.bumenName);
        		listItem.find("#toBumenName").html(notd.toBumenName);
        		listItem.find("#nowBumenName").html(notd.nowBumenName);
        		if(notd.state==1){//=\"\"
	        		listItem.find("#state").html("办理中");
        		}else if(notd.state==2){
        			listItem.find("#state").html("已完成");
        		}else if(notd.state==0){
        			listItem.find("#state").html("已取消");
                }
	        	listItem.find("#createTimeFormatData").html(notd.createTimeFormatData);
        		listItem.find("#set").html("<a  style='padding-left:0px;width: 161px;' href='${ctxPath}/organParty/partyLook.action?flowUUid="+notd.flowUUid+"'>查看</a>");//partyLook
	        
        		tab1.append(listItem);
        	}
        	
        	if(data.length==0){
        	  	tab1.html('<tr><td colspan="7"><span style="width:100%;display:block;margin:0 auto;align-content: center;">暂无数据</span></td></tr>');
        	}
        }
        //分页 obj分页div块的id
        function toPage(cont){
        			//只显示上一页、下一页
        	     laypage.render({
        	        elem: 'demko1'
        	        ,prev: '<' //若不显示，设置false即可
        	        ,next: '>' //若不显示，设置false即可
        	        ,count: cont
        	        ,limit: limitAllAppoint
        	        ,jump: function(obj, first){
	    	            if(!first){//一定要加此判断，否则初始时会无限刷新
	    	             getNoktD1(obj.curr);//一定要把翻页的ajax请求放到这里，不然会请求两次。
	    	                //location.href = '?page='+obj.curr;
	    	             }
	    	          	}
        	      });
        	     
        	};
        	//ajax请求后台数据
            getNoktD1(1); 
     function toUpsert(){
    	 window.location.href="${ctxPath}/organParty/partyUpsert.action";
     }     
     function isSubmint(){
    		$.ajax({
    	    	url:"${ctxPath}/organParty/judgeOrgan.action",
    	    	type:"post",
    	    	dataType:"json",
    	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
    	        success:function(data) {
    	        	if(data){
    					if (data.success) {
    						toUpsert();
    					} else{
    						parent.layer.alert("还有未完成的流程，请在列表中查看");
    					}
    				}else{
    					parent.layer.alert("数据获取异常！");
    				}
    	        }
    		});
    		
    	}
</script>
</body>
</html>
