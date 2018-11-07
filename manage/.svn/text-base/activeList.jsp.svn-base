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
    <link href="${ctxPath}/modulepc/css/activeList.css" rel="stylesheet"/>
       <script src="${ctxPath}/modulepc/resources/js/zeroModal.min.js"></script>
    <link href="${ctxPath}/modulepc/css/zeroModal.css" rel="stylesheet"/>
</head>

<body class="no-skin">
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12 outW">
                    <div class="col-sm-9 rightB">
                        <div class="tabbable">
                            <ul class="nav nav-tabs padding-18 tab-size-bigger" id="myTab">
                                <li class="active">
                                    <a data-toggle="tab" href="#faq-tab-1">
                                        活动列表
                                    </a>
                                </li>
                                  <c:if test="${user.userrole.addActive == 'addActive'}">
                                    <li>
                                    <a data-toggle="tab" href="#faq-tab-2">
                                        我发布的
                                    </a>
                                </li>
                                </c:if> 
                                <li>

                                </li>
                            </ul>
                            <div class="tab-content no-border padding-24">
                                <div id="faq-tab-1" class="tab-pane fade in active">
                                        <%-- <form id="seaForm">
                                    <div class="topWraper">
                                        <div class="topW">
                                            <label>
                                                活动名称<input type="text" value="" class="activeN" id="" name="title">
                                            </label>
                                            <label class="second">
                                                报名状态<select  class="appy" style="font-size:14px" name="enrolled" id="appyed"><option value="" >全部</option><option value="false" >未报名</option><option value="true" >已报名</option></select>
                                            </label>
                                        </div>
                                        <div class="bottomW">
                                            <label>
                                                活动分类<select  class="classify" style="font-size:14px" name="categoryId"><option value="">全部</option>
                                                <c:if test="${not empty categories }">
                                                	<c:forEach var="category" items="${categories }">
						                                  <option value="${category._id }">${category.name }</option>              	
                                                	</c:forEach>
                                                </c:if>
                                                </select>
                                            </label>
                                            <label class="four">
                                                时&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;间<select  class="time" name="tcond" style="font-size:14px"><option value="">全部</option><option value="1">最近一周</option><option value="2">最近一月</option></select>
                                            </label>
                                        </div>
                                        <input type="button" value="搜索" id="btn_search" class="searchB" >
                                    </div>
                                        </form> --%>
                                    <div class="activeList">
                                        <ul id="tabs1">
                                            <li id="Itma2" style="display: none;">
                                                <a href="javascript:;" class="aB">
                                                    <img class="listH"   src="${ctxPath}/modulepc/img/test.jpg">
                                                    <div class="word">
                                                        <a class="tit" target="_blank"></a>
                                                        <div class="fL"><img src="${ctxPath}/modulepc/img/box.png"></div>
                                                        <div class="tR"><img src="${ctxPath}/modulepc/img/time.png"></div>
                                                        <div class="pN" ><img src="${ctxPath}/modulepc/img/position.png"></div>
                                                    </div>
                                                    <div class="rightF">
                                                        <div class="showState">
                                                            <i class="icon iconfont icon-chakan"></i><span id="times">123</span>
                                                            <i class="icon iconfont icon-wode-fuben_fuzhi"></i><span id="enrollTimes">234</span>
                                                        </div>
                                                        <input class="applyB shadow" type="button" value="我要报名"  id="enroll" name=''/>
                                                    </div>

                                                </a>
                                            </li>
                                           
                                        </ul>
                                        <!--分页-->
										 <div class="row divpage">
											  <div class="col-xs-12">
											      <div class="dataTables_paginate" id="demko1">
											                       
											      </div>
											 </div>
										</div>
                                    </div>
                                </div>
								<div id="faq-tab-2" class="tab-pane fade">
	     							<iframe frameborder="0"  src="toQuery.action" height="550px" width="100%" style="min-width: 833px!important;"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3 hotTopice">
                        <div class="hotT">
                           <div class=hotN>热门活动</div>
                            <div class="hotNList">
                                <ul>
                                <c:if test="${not empty activities }">
                                	<c:forEach items="${activities }" var="activity">
	                                    <li>
	                                  	 <a href="todetail.action?_id=${activity._id }" target="_blank">${activity.title }</a> 
	                                    </li>
                                	</c:forEach>
                                </c:if>
                                      
                                </ul>
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
<script src="${ctxPath}/modulepc/layui/layui.all.js"></script>
<!-- inline scripts related to this page -->
<script type="text/javascript">
function doEnroll(id){
		var fn = function(){
			$.ajax({
				url:"denroll.action?activityId="+id,
				dataType :"json",
				type:"get",
				success:function(data){
					if(data.success){
						window.location.reload();
					}else{
						openError(data.message);
					}
				}
			});
		};
		openConfirm("确定取消报名?",fn);
}

function dEnroll(id){
	
		var fn = function(){
			$.ajax({
				url:"enroll.action?activityId="+id,
				dataType :"json",
				type:"get",
				success:function(data){
					if(data.success){
					window.location.reload();
					}else{
						openError(data.message);
					}
				}
			});
		};
		openConfirm("确定报名?",fn);
}
    jQuery(function($) {

    })
    
    layui.use(['laypage', 'layer'], function(){   
	 var laypage = layui.laypage
	  	,layer = layui.layer;
    
      //分页参数设置 这些全局变量关系到分页的功能
        var limitAllAppoint = 5;
        
        var firs=true;
        //ajax请求后台数据
        function getNoktD1(obj,isSerach){
          	var data = "";
        	if(isSerach){
        	data = new FormData($("#seaForm")[0]);
          	data.append("page",obj);
          	data.append("size",limitAllAppoint);
          	}else{
          		data = {"page":obj,"size":limitAllAppoint}
          	}
        	$.ajax({
              type:"post",
              url:"findActivitys.action",
              data:data,
              processData: false,
				contentType: false,
              dataType:"json",
              success:function(data){
            	  //data=eval("("+data+")");
            	 // alert(data.data.length);
                  getNoticeItm1(data.data);
                  totalPageAllAppoint = data.pages;//总页数(后台返回)
                  if(firs){
	                  toPage(data.total);
	                  firs=false;
                  }
              }
          });
        }
       
        var listItm1=$("#Itma2");//通知公告
        listItm1.remove();
        var tab1=$("#tabs1");
        function getNoticeItm1(data){
        	$("#tabs1").html("");
        	for(var i=0;i<data.length;i++){
        		var notd=data[i];
        		var listItem = listItm1.clone();
        		listItem.css('display', '');//清楚隐藏
        		listItem.find(".listH").attr('src', _qiniuImageHost + notd.logo);
        		listItem.find(".tit").html(notd.title).attr("href","todetail.action?_id="+notd._id);
	        	listItem.find(".fL").append(notd.categoryName);
	        	listItem.find(".tR").append(notd.timeStr);
        		listItem.find(".pN").append(notd.address);
        		listItem.find("#times").html(notd.times);
        		listItem.find("#enrollTimes").html(notd.enrollTimes);
        		if(notd.state==0){
        			listItem.find("#state1").html('<span style="color:red;">未阅</span>');
        		}else if (notd.state==1) {
        			listItem.find("#state1").html('已阅');
        		}
        		if(notd.enrolled){
	        		listItem.find("#enroll").val("取消报名").attr("onclick","doEnroll(\"" + notd._id +"\");");
        		}else{
	        		listItem.find("#enroll").attr("onclick","dEnroll(\"" + notd._id +"\");");
        		}
        		tab1.append(listItem);
        	}
        	
        	if(data.length==0){
        	  	tab1.html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
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
	    	             getNoktD1(obj.curr,false);//一定要把翻页的ajax请求放到这里，不然会请求两次。
	    	                //location.href = '?page='+obj.curr;
	    	             }
	    	          	}
        	      });
        	      
        	};
        	//ajax请求后台数据
            getNoktD1(1,false);
        	$("#btn_search").click(function(){
        		getNoktD1(1,true);
        	})
            	
 });
</script>
<script type="text/javascript">
		var categoryId;
		$()
				.ready(
						function() {
							$("#categoryTable")
									.grid(
											{
												url : _ctxPath
														+ "/manage/activity/category/query.action",
												postData : {},
												width:180,
												colNames : [ "分类名称", "排序" ],
												onSelectRow : function(id) {
													var cid = $("#" + id,
															$("#categoryTable"))
															.data("rawData")._id;
													if (!categoryId
															|| categoryId != cid) {
														categoryId = cid;
														loadActivity();
													}
												},
												colModel : [ {
													name : "name",
													index : "name"
												}, {
													name : "order",
													index : "order"
												} ]
											});
							$("#categoryTable").reloadGrid({
								postData : {}
							});
							$("#newActivity")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/manage/activity/toUpsert.action?categoryId="
														+ categoryId;
											});

							$("#searchForm").submit(function() {
								$("#activityTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								return false;
							});
							$("#activityTable")
									.grid(
											{
												url : _ctxPath
														+ "/manage/activity/query.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作", "标题",
														"发布日期", "是否有效", "开始时间",
														"结束时间", "点击次数", "报名次数" ],
												colModel : [
														{
															name : "_id",
															index : "_id",
															align : "center",
															width : 580,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='${ctxPath}/manage/activity/toUpsert.action?activityId="
																		+ cellvalue
																		+ "' class='m-r-10'>详情</a>";
																		v += "<a href='${ctxPath}/manage/activityEnroll/toExclAcEnr.action?activityId="
																			+ cellvalue
																			+ "' class='m-r-10'>下载报名</a>";
																		v += "<a href='${ctxPath}/manage/activityEnroll/toExclAcSign.action?activityId="
																			+ cellvalue
																			+ "' class='m-r-10'>下载签到</a>";
																if (rowObject.state == 0) {
																	v += "<a href='javascript:void(0);' onclick='enable(\""
																			+ cellvalue
																			+ "\")' class='m-r-10'>启用</a>";
																} else {
																	v += "<a href='javascript:void(0);' onclick='disable(\""
																			+ cellvalue
																			+ "\")' class='m-r-10'>禁用</a>";
																}
																v += "<a href='javascript:void(0);' onclick='remove(\""
																		+ cellvalue
																		+ "\")' class='m-r-10'>删除</a>";

																return v;
															}
														},
														{
															name : "title",
															index : "title",
															width : 50		
														},
														{
															name : "createTime",
															index : "createTime",
															width : 30
														},
														{
															name : "state",
															index : "state",
															width : 20,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == 0) {
																	return "<font color='red'>无效</font>";
																} else if (cellvalue == 1) {
																	return "有效";
																} else
																	return "未知";
															}
														},
														{
															name : "startTime",
															index : "startTime",
															width : 25
														},
														{
															name : "endTime",
															index : "endTime",
															width : 25
														},
														{
															name : "times",
															index : "times",
															width : 25
														},
														{
															name : "enrollTimes",
															index : "enrollTimes",
															width : 25
														} ]
											});

						});
		function loadActivity() {
			if (!categoryId)
				return;
			$("#categoryId").val(categoryId);
			$("#activityTable").reloadGrid({
				postData : $("#searchForm").formobj()
			});
		}
		function enable(activityId) {
			doGet(_ctxPath + "/manage/activity/enable/" + activityId + ".action");
		}
		function disable(activityId) {
			doGet(_ctxPath + "/manage/activity/disable/" + activityId + ".action");
		}
		function doGet(url) {
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#activityTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		}
		function remove(activityId) {
			layer.confirm('确定要删除?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/manage/activity/remove/" + activityId
						+ ".action";
				$.get(url, {}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#activityTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
				});
			});
		}
		
		function openConfirm(msg,fn){
			zeroModal.confirm(msg, function() {
		        fn();
		    });
		}
		function openError(msg){
			zeroModal.error(msg);
		}
	</script>                           
</body>
</html>

