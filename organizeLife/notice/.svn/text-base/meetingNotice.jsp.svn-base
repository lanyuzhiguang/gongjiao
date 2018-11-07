<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/modulepc/resources/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title></title>
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
    <link href="${ctxPath}/modulepc/css/activeNotice.css" rel="stylesheet"/>
</head>

<body class="no-skin">
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row wrapper">
                <div class="col-xs-12 wrapB">
                    <p class="title">${NoticeDetailBean.notice.title }</p>
                    <div class="imgW">
                        <div class="timeN">${NoticeDetailBean.notice.updateTimeFormat }<%-- <span class="officeN">${NoticeDetailBean.notice.forbumname }</span> --%></div>
                        <c:if test="${NoticeDetailBean.notice.meettyName != null && NoticeDetailBean.notice.meettyName !=''}">
                        	<div class="floatL"><span><img src="${ctxPath}/modulepc/img/box.png">${NoticeDetailBean.notice.meettyName }</span></div>
                        </c:if>
                        <c:if test="${NoticeDetailBean.notice.meettyName == null || NoticeDetailBean.notice.meettyName ==''}">
                        	<div class="floatL"><span><img src="${ctxPath}/modulepc/img/box.png">会议</span></div>
                        </c:if>
                    </div>
                    <div class="floatR"><span><img src="${ctxPath}/modulepc/img/time.png">${NoticeDetailBean.notice.attendtimeFormat }</div>
                    <div class="posiB"><img src="${ctxPath}/modulepc/img/position.png">${NoticeDetailBean.notice.address }</div>
                    <p class="innerC">
						${NoticeDetailBean.notice.content}
					</p>
                   	<c:forEach  items="${NoticeDetailBean.notice.imagePreviewUrls }"  var="ImageUrl">
					   <img class="listI" src="${ImageUrl }">
					</c:forEach >

				<c:if test="${NoticeDetailBean.notice.minType == 1}">
                              
                    <div class="mettingR">
                        <div class="mettingTop">会议记录</div>
                        <p class="innerC">
							${NoticeDetailBean.notice.minCont }
                        </p>
                      	<c:forEach items="${NoticeDetailBean.notice.minutisgePreviewUrls }"  var="meetImageUrl">
					   		<img class="listI" src="${meetImageUrl }">
						</c:forEach>
                    </div>
                    <c:if test="${NoticeDetailBean.notice.fileid != null && NoticeDetailBean.notice.fileid != ''}">
                    	<div class="accessory"><a target="_blank" href="${NoticeDetailBean.notice.fileidUrl }">附件查看</a></div>
                    </c:if>
                </c:if>  
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
    jQuery(function($) {
    	//window.opener.location="javascript:flasPgs();";
    })
     
    if(loginbj == 'huateng'){
    	document.title="华腾党建云"; 
    }else {
    	document.title="基层e党建";
    }
</script>


</body>
</html>
