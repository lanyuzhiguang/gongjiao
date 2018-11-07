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
    <link href="${ctxPath}/modulepc/css/Secretary.css" rel="stylesheet"/>
       <script src="${ctxPath}/modulepc/resources/js/zeroModal.min.js"></script>
    <link href="${ctxPath}/modulepc/css/zeroModal.css" rel="stylesheet"/>
</head>

<body class="no-skin">
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row wrapBox">
                <div class="col-xs-12 wrapB">
                    <div class="col-xs-12 headB">
                        <div class="tit">书记信箱</div>
                        <input type="hidden" id="isrec" value="${ sessionScope.user.isrec}">
                        <c:if test="${not empty sessionScope.user.isrec }">
                        	<c:if test="${sessionScope.user.isrec == 0 }">
		                        <div class="addN">
		                            <i class="icon-xinzeng iconfont"></i><a href="toupsert.action" style="text-decoration: none"><span>写信</span></a>
		                        </div>
                        	</c:if>
                        </c:if>
                        <%-- <div class="searchB">
                            <div class="searchBTN" id="nav-search">
                                <form class="form-search">
								<span class="input-icon">
									
									<input type="text" placeholder="输入信息发送人或内容" class="nav-search-input" id="nav-search-input" autocomplete="off">
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
                                </form>
                            </div> --%>
                        </div>
                    </div>
                    <div class="col-sm-12 tableB">
                        <table border="0">
                            <thead>
                            <tr>
                                <th>标题</th>
                                <th style="width: 20%">发送时间</th>
                                <th style="width: 20%">状态</th>
                                <th style="width: 10%">操作</th>
                            </tr>
                            </thead>
                            <tbody id="tab1">
                            <tr id="lisItm">
                                <td><a id="title">标题</a></td>
                                <td id="updateTime">2017-02-04 04:21</td>
                                <td id="state">已回复</td>
                                <td><a id="tosuo">查看</a></td>
                            </tr>
                            
                            </tbody>
                        </table>
                        <!--分页-->
						 <div class="row divpage">
							<div class="col-xs-12">
								<div class="dataTables_paginate" id="page1">
									                       
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
    jQuery(function($) {
        <!--控制表格第一个td变点点方法-->
        $("tbody tr:even").css({"background":"#f5f5f5"});
        var oTr=$("tbody tr");
        for(var i=0;i<oTr.length;i++){
            $(oTr[i]).find("td").eq(0).css({textAlign:"left"});
            $(oTr[i]).find("td").eq(3).css({"color":"#f4834b"});
            $(oTr[i]).find("td").eq(0).addClass("changeDot");
            var oTdFirst=$(oTr[i]).find("td").eq(0).text();
            $(oTr[i]).find("td").eq(0).attr("title",oTdFirst);
        }
    })
    //分页参数设置 这些全局变量关系到分页的功能
        var limitAllAppoint = 5;
        
        var firs=true;
        //ajax请求后台数据
        function getNoktD1(obj){
          $.ajax({
              type:"post",
              url:"query.action",
              data:{'page': obj,
            	  'size':limitAllAppoint},
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
        
        var listItm1=$("#lisItm");//通知公告
        listItm1.remove();
        var tab1=$("#tab1");
        function getNoticeItm1(data){ //列表生成功能
        	$("#tab1").html("");
        	for(var i=0;i<data.length;i++){
        		var notd=data[i];
        		var listItem = listItm1.clone();
        		listItem.css('display', '');//清楚隐藏
        		listItem.find("#title").html(notd.title);
        		if(notd.state==0){
        			listItem.find("#state").html("未回复");
        		}
	        	listItem.find("#title").attr('href', "findById.action?mailboxId="+notd._id);
        		listItem.find("#updateTime").html(notd.updateTime);
        		if($("#isrec").val()==0){
        			if(notd.state==1){
        				listItem.find("#tosuo").attr('href', 'findById.action?mailboxId='+notd._id);
            		}else{
	        			listItem.find("#tosuo").html("删除").attr('href','#').attr('onclick','del("'+notd._id+'")');
            		}
        		}else if($("#isrec").val()==1){
	        		listItem.find("#tosuo").attr('href', 'findById.action?mailboxId='+notd._id);
        		}
        		tab1.append(listItem);
        	}
        	
        	if(data.length==0){
        	  	tab1.html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
        	}
        }
 
        function del(id){
        	var fn = function(){
        		$.ajax({
        		url:"delectMail.action?mailboxId="+id,
        		type:"GET",
        		dataType:"json",
        		success:function(data){
        			if(data.success){
        				//getNoktD1(1);
        				//history.go(-1);
        				location.reload();
        			}
        		}
        	})
        	}
        	openConfirm("确定删除该记录么？",fn);
        }
        
        //分页 obj分页div块的id
        function toPage(cont){
        	  layui.use(['laypage', 'layer'], function() {
        	      var layer = layui.layer,
        	          laypage = layui.laypage;
        	      var nums = 12;
        	      //只显示上一页、下一页
        	      laypage.render({
        	        elem: 'page1'
        	        ,prev: '<' //若不显示，设置false即可
        	        ,next: '>' //若不显示，设置false即可
        	        ,first:false
        	        ,last: false
        	        ,count: cont
        	        ,limit: limitAllAppoint
        	        ,jump: function(obj, first){
	    	            if(!first){//一定要加此判断，否则初始时会无限刷新
	    	             	getNoktD1(obj.curr);//一定要把翻页的ajax请求放到这里，不然会请求两次。
	    	             }
	    	          	}
        	        });
        	      
        	  });
        	};
        	
        	//ajax请求后台数据
            getNoktD1(1);
            function openConfirm(msg,fn){
    			zeroModal.confirm(msg, function() {
    		        fn();
    		    });
    		}
</script>

</body>
</html>

