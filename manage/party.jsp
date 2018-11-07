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
       <script src="${ctxPath}/modulepc/resources/js/zeroModal.min.js"></script>
    <link href="${ctxPath}/modulepc/css/zeroModal.css" rel="stylesheet"/>
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
    <link href="${ctxPath}/modulepc/css/party.css" rel="stylesheet"/>
</head>

<body class="no-skin">
<div id="navbar" class="navbar navbar-default">
    <div class="navbar-header pull-left">
        <a href="#" class="navbar-brand">
            <small>
               <c:if test="${ncuser.tenantName == null||ncuser.tenantName==''}">
                                                                   基层e党建
                 </c:if>   
                 <c:if test="${ncuser.tenantName != null&&ncuser.tenantName!=''}">
                   ${ncuser.tenantName}
                 </c:if>
            </small>
        </a>
    </div>
</div>
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row wrapper">
                <div class="col-xs-12 wrapB" style="padding: 12px;">
                    <div class="conB" style="margin: auto;width: 72%">
                    <p class="title">${activity.title }</p>
                    <div class="imgW">
                        <div class="timeN"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${activity.createTime }" /></div>
                    </div>
                    <div class="posiB">
                        <div ><span><img src="${ctxPath}/modulepc/img/box.png">${activity.categoryName }</span></div>
                        <div ><span><img src="${ctxPath}/modulepc/img/time.png"></span><span><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${activity.startTime }"/> ~ <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${activity.endTime }"/> </span></div>
                    </div>
                    <div class="posiB">
                    <img src="${ctxPath}/modulepc/img/position.png">${activity.address }
                    </div>
                    <p class="innerC">
                      ${activity.content }
                    </p>
                    <!-- img class="listI" src="${ctxPath}/modulepc/img/list.png"-->
                    <c:if test="${not empty activity.enrolled }">
                    	<c:if test="${activity.enrolled == false }">
		                    <a class="centerB shadow" href="javascript:;" onclick="doEnroll('${activity._id}')">我要报名</a>
                    	</c:if>
                    	<c:if test="${activity.enrolled == true }">
		                    <a class="centerB shadow" href="javascript:;" onclick="dEnroll('${activity._id}')">取消报名</a>
                    	</c:if>
                    </c:if>
                </div>
                <!--分割线-->
                <div class="hr hr32 hr-dotted line_"></div>
                <div class="clearfix" style="width: 72%;margin: auto;">
                    <div class="grid3 myJ" style="border: none;">
                        <i class="ace-icon fa icon-105  iconfont  icon-chakan"><span>浏览<span>(${activity.times })</span></span></i>
                    </div>
                    <!-- <div class="grid3 stuJ">
                        <i class="ace-icon fa icon-bianji iconfont  icon-jubao purple"><span>举报</span></i>
                    </div> -->
                </div>

                <div class="headList">
                    <div class="asked">已报名<span>${activity.enrollTimes }</span>人</div>
                    <ul>
                    <c:if test="${not empty activityEnrolls }">
                    	<c:forEach var="enroll" items="${activityEnrolls }">
                        <li>
                            <div class="headB">
                                <!-- img src="${ctxPath}/modulepc/img/head_03.png"-->
                                <c:if test="${not empty enroll.userAvatar }">
                                	<img src="http://qiniu.thdangjian.com/${enroll.userAvatar }" style="width: 50px;height: 50px;">
                                </c:if>
                                <c:if test="${empty enroll.userAvatar }">
                                   <c:if test="${user.tenantId != '5416928080940976859'}">
                                	<img src="${ctxPath}/modulepc/img/rehead.png" style="width: 50px;height: 50px;">
                                	</c:if>
                                <c:if test="${user.tenantId == '5416928080940976859'}">
                                	<img src="${ctxPath}/modulepc/img/rehead1.png" style="width: 50px;height: 50px;">
                                	</c:if>
                                </c:if>
                                <div class="nameW">${enroll.userName }</div>
                            </div>
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


<!-- inline scripts related to this page -->
<script type="text/javascript">
function dEnroll(id){
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

function doEnroll(id){
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

function openConfirm(msg,fn){
	zeroModal.confirm(msg, function() {
        fn();
    });
}
function openSuccess(msg){
	zeroModal.success(msg);
}
function openError(msg){
	zeroModal.error(msg);
}
</script>


</body>
</html>
