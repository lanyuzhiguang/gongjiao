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
    <link href="${ctxPath}/modulepc/css/noticeDetail.css" rel="stylesheet"/>
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
                        <div class="floatR"><span>${NoticeDetailBean.notice.updateTimeFormat }</span></div>
                        <div class="floatR activeN"><span>${NoticeDetailBean.notice.bumenName }</span></div>
                    </div>
                    <div class="content">
                        ${NoticeDetailBean.notice.content }
                    </div>
                    <c:forEach items="${NoticeDetailBean.notice.imagePreviewUrls }"  var="ImageUrl">
					   <img class="listI" src="${ImageUrl }">
					</c:forEach>
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

if(loginbj == 'huateng'){
	document.title="华腾党建云"; 
}else {
	document.title="基层e党建";
}
    jQuery(function($) {
    	//self.opener.location.reload();   
    	//window.location.parant.aler();
    	//window.opener.location="javascript:flasPgs();";
        //window.close();
    	/* try{
    		self.opener.getNoktD1(1);//弹出的是普通窗口
	   }catch(e1){
	       try{
	              var parentObj = window.dialogArguments;//弹出的是模态窗口
	               parentObj.getNoktD1(1);
	        }catch(e2){//有可能父窗口没有这个方法！
	    }} */
    })
</script>

</body>
</html>
