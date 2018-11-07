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
                                <c:if test="${ffuser.userrole.Orglife == 'Orglife'}">
                                    <li class="addN">
                                        <i class="icon-xinzeng iconfont"></i><span id="newNotice">发布</span>
                                    </li>
                                </c:if>  
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
                                            <span>组织生活</span>
                                        </a>
                                    </li>
                               <c:if test="${ffuser.userrole.Orglife == 'Orglife'}">
                                    <li>
                                        <a data-toggle="tab" href="#faq-tab-2">
                                            <span>我发布的</span>
                                        </a>
                                    </li>
                               </c:if>     
                                </ul>

                                <div class="tab-content message-navbar no-border no-padding">
                                    <div class="row tab-pane fade in active listNotice" id="faq-tab-1">
                                        <div class="col-sm-12 tableB">
                                            <table border="0">
                                                <thead>
                                                <tr>
                                                    <th>标题</th>
                                                    <th style="width: 15%">发送时间</th>
                                                    <th style="width: 15%">分类</th>
                                                    <th style="width: 15%">通知次数</th>
                                                    <th style="width: 10%">状态</th>
                                                </tr>
                                                </thead>
                                                <tbody id="tbs1">
                                                <tr id="itms1" style="display: none;">
                                                    <td style="text-align: left;"><a target="_blank"  id="noticeTitle1"></a></td>
                                                    <td id="updateTime1"></td>
                                                    <td id="meetName1"></td>
                                                    <td id="sendCount1"></td>
                                                    <td id="state1"></td>
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
                                         <!--<div class="col-sm-12 tableB">
                                            <table border="0">
                                                <thead>
                                                <tr>
                                                    <th>通知类型</th>
                                                    <th>标题</th>
                                                    <th>单位</th>
                                                    <th>时间</th>
                                                    <th>地点</th>
                                                    <th>发布时间</th>
                                                    <th>阅读数</th>
                                                    <th>出勤率</th>
                                                    <th>操作</th>
                                                </tr>
                                                </thead>
                                                <tbody id="tb2">
                                                <tr id="itm2" style="display: none;">
                                                    <td id="notType2">通知</td>
                                                    <td id="title2">标题标题标题标题</td>
                                                    <td id="forbumname2">XXXXXX</td>
                                                    <td id="attendtimeFormat2">XXXX-YY-ZZ</td>
                                                    <td id="address2">北京</td>
                                                    <td id="updateTimeFormat2">XXXX-YY-ZZ HH:MM</td>
                                                    <td>XX/total</td>
                                                    <td>XX/total</td>
                                                    <td><span class="cancel">取消会议</span></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                             分页
									        <div class="row divpage">
									            <div class="col-xs-12">
									               <div class="dataTables_paginate" id="demko2">
									                       
									               </div>
									            </div>
									        </div> -->
									        	<div class="sorr">
													<table id="groupTable"></table>
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

				<form id="searchForm" method="get" class="form-horizontal" style="display: none;">
					<div class="form-group">
						<div class="col-sm-3 col-sm-offset-1">
							<div class="input-group fg-float">
								<div class="fg-line">
									<input id="in:mtype|integer" name="in:mtype|integer" value="1"><!-- 组织生活状态为1 -->
									
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
        
        $("#newNotice").click(function() {
			document.location.href = "${ctxPath}/notice/toOrgaInsert.action";
		});
        
        $("#groupTable")
		.grid(
				{
					url :"${ctxPath}/notice/query.action",
					postData : $("#searchForm")
							.formobj(),
					shrinkToFit : false,
					colNames : [ "操作", "标题","分类", "单位","开始时间","地点","阅读数" ,"出勤率",
					             "发布时间"],
					colModel : [
							{
								name : "_id",
								index : "_id",
								width : 200,
								formatter : function(
										cellvalue,
										options,
										rowObject) {//toInstTo
										var v="";
										if(rowObject.delMeet!=-1){
											if(rowObject.notType==0){
												v += "<a style='width:100px;display:inline;padding-left: 0px;' href='Javascript:;' onclick='remove(\""+cellvalue+"\");'>撤销通知</a>&nbsp;&nbsp;"; 
											}
											if((new Date().getTime()-rowObject.attendtime)<0){
												v += "<a style='width:102px;display:inline;padding-left: 0px;' href='Javascript:;' onclick='remove(\""+cellvalue+"\");'>撤销通知</a>&nbsp;&nbsp;"; 
											}
											if((new Date().getTime()-rowObject.attendtime)>0){
												if(rowObject.minType==0){
													v += "<a style='width:122px;display:inline;padding-left: 0px;' href='${ctxPath}/noticeDetail/toInstTo.action?noticeId="
														+cellvalue+"' >上传会议资料</a>&nbsp;&nbsp;";
												}
											}
										}else{
											v="<a style='width:102px;display:inline;padding-left: 0px;' class='cloa'>通知已撤销</a>&nbsp;&nbsp;";
										}
										v += "<a style='width:50px;display:inline;padding-left: 0px;' href='Javascript:;' onclick='removeNotice(\""+cellvalue+"\");'>删除</a>"; 
									return v;
								}
							},
							{
								name : "title",
								index : "title",
								width : 200,
								formatter : function(
										cellvalue,
										options,
										rowObject) {
									if(cellvalue==undefined){
										var v = "";
									}else{
										if(rowObject.notType==0){
									        v = "<a href='${ctxPath}/noticeDetail/toDetail.action?noticeId="+rowObject._id
												+"' class='m-r-10' target=\"_blank\" >"+cellvalue+"</a>";
						        		}else if(rowObject.notType==1){
						        			v = "<a href='${ctxPath}/noticeDetail/toMeeting.action?noticeId="
												+rowObject._id+"' class='m-r-10' target=\"_blank\" >"+cellvalue+"</a>";
						        		}
									}
									return v;
								}
							},
							{
								name : "meettyName",
								index : "meettyName",
								width : 100
							},
							{
								name : "forbumname",
								index : "forbumname",
								width : 200,
								formatter : function(
										cellvalue,
										options,
										rowObject) {
									if(rowObject.notType==0){
										if(cellvalue==undefined){
											return "";
										}else{
											return cellvalue;
										}
									}else if(rowObject.notType==1){
										if(cellvalue==undefined){
											return "";
										}else{
											return rowObject.forbumname;
										}
									}
									return "";
								}
							},
							{
								name : "attendtimeFormat",
								index : "attendtimeFormat",
                                width : 100
							},
							{
								name : "address",
								index : "address",
								width : 200
							},
							{
								name : "tolRedaer",
								index : "tolRedaer",
								width : 80,
								formatter : function(
										cellvalue,
										options,
										rowObject) {
									var v = "<a href='${ctxPath}/noticeDetail/toQuery.action?noticeId="
										+rowObject._id+"' class='m-r-10'>"+cellvalue+"</a>";
									return v;
								}
							},
							{
								name : "tolReach",
								index : "tolReach",
								width : 80,
								formatter : function(
										cellvalue,
										options,
										rowObject) {
										var v = "";
										if(rowObject.delMeet!=-1){
											if(cellvalue==undefined){
											}else{
												v += "<a href='${ctxPath}/noticeDetail/toReachQuery.action?noticeId="
													+rowObject._id+"' class='m-r-10'>"+cellvalue+"</a>";
											}
										}
										return v;
								}
							},
							{
								name : "updateTime",
								index : "updateTime",
								width : 200
							}
							]
				});
        
    })
    
    function remove(obj) {
			layer.confirm('确定要撤销通知?', function(index) {
				layer.close(index);
				var url = "${ctxPath}/notice/delNotice.action";
				$.get(url, {'noticeId':obj}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#groupTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
				});
			});
		}
    
    function removeNotice(obj){
    	layer.confirm('删除该通知，收到该通知的用户将收不到删除提醒，且删除之后将不再有任何形式的显示，确定要删除该通知？', function(index) {
			layer.close(index);
			var url = "${ctxPath}/notice/delAllNoticeAndDetail.action";
			$.get(url, {'noticeId':obj}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#groupTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		});
    }

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
              url:"${ctxPath}/noticeDetail/myNoticeDetailList.action",
              data:{'page': obj,
            	  'size':limitAllAppoint,
            	  'in:mtype|integer':"1"}, //组织生活（状态1）
              dataType:"json",
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
        		listItem.find("#noticeTitle1").html(notd.noticeTitle);
        		if(notd.notType==0){//=\"\"
	        		listItem.find("#noticeTitle1").attr('href', "${ctxPath}/noticeDetail/toDetail.action?noticeId="+notd.noticeId);
        		}else if(notd.notType==1){
        			listItem.find("#noticeTitle1").attr('href', "${ctxPath}/noticeDetail/toMeeting.action?noticeId="+notd.noticeId);
        		}
	        	listItem.find("#noticeTitle1").attr('target', "_blank");
	        	listItem.find("#noticeTitle1")[0].addEventListener('click', function(e) {
	        		$(this).parent().parent().find("#state1").html('已阅');
	        	});
        		listItem.find("#updateTime1").html(notd.updateTime);
        		listItem.find("#meetName1").html(notd.meetName);
        		listItem.find("#sendCount1").html(notd.sendCount);
        		if(notd.state==0){
        			listItem.find("#state1").html('<span style="color:red;">未阅</span>');
        		}else if (notd.state==1) {
        			listItem.find("#state1").html('已阅');
        		}
        		tab1.append(listItem);
        	}
        	
        	if(data.length==0){
        	  	tab1.html("<br/><span style='width:100%;display:block;margin:0 auto;align-content: center;'>暂无数据</span>");
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
        	
   function flasPgs(){
	   window.location.href="${ctxPath}/noticeDetail/toOrgaList.action";
   }     	
        	
/*             var firss=true;
            //ajax请求后台数据
            function getNoktD2(obj){
              $.ajax({
                  type:"post",
                  url:"myUpuList.action",
                  data:{'page': obj,
                	  'size':limitAllAppoint},
                  dataType:"json",
                  success:function(data){
                	  //data=eval("("+data+")");
                	 // alert(data.data.length);
                      getNoticeItm2(data.data);
                      totalPageAllAppoint = data.pages;//总页数(后台返回)
                      if(firss){
    	                  toPage2(data.total);
    	                  firss=false;
                      }
                  }
              });
            }
            
            var listItm2=$("#itm2");//我的发布
            listItm2.remove();
            var tab2=$("#tb2");
            function getNoticeItm2(data){
            	$("#tb2").html("");
            	for(var i=0;i<data.length;i++){
            		var notd=data[i];
            		var listItem = listItm2.clone();
            		listItem.css('display', '');//清楚隐藏
            		listItem.find("#notType2").html("通知公告");
            		listItem.find("#notType2").html(notd.meettyName);
            		listItem.find("#title2").html(notd.title);
            		listItem.find("#forbumname2").html(notd.bumenName);
            		listItem.find("#forbumname2").html(notd.forbumname);
            		listItem.find("#attendtimeFormat2").html(notd.attendtimeFormat);
            		listItem.find("#address2").html(notd.address);
            		listItem.find("#updateTimeFormat2").html(notd.updateTimeFormat);
            		tab2.append(listItem);
            	}
            	
            	if(data.length==0){
            	  	tab2.html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
            	}
            }
            
            //分页 obj分页div块的id
            function toPage2(cont){
            	      
            	      //只显示上一页、下一页
            	      laypage.render({
            	        elem: 'demko2'
            	        ,prev: '<' //若不显示，设置false即可
            	        ,next: '>' //若不显示，设置false即可
            	        ,count: cont
            	        ,limit: limitAllAppoint
            	        ,jump: function(obj, first){
    	    	            if(!first){//一定要加此判断，否则初始时会无限刷新
    	    	             getNoktD2(obj.curr);//一定要把翻页的ajax请求放到这里，不然会请求两次。
    	    	                //location.href = '?page='+obj.curr;
    	    	             }
    	    	          	}
            	        });
            	      
            	};
            	//ajax请求后台数据
                getNoktD2(1); */
            	
</script>
</body>
</html>
