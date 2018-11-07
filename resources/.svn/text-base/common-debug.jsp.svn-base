<%@ page import="com.osg.framework.Constants"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp">
<meta name="keywords" content="Keyi,Keyi Soft">
<meta name="description" content="">
<!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
<link rel="shortcut icon" href="favicon.ico">
<c:set var="ctxPath" value="${pageContext.request.contextPath}" />
<script type="text/javascript">
	var _ctxPath = "${ctxPath}";
</script>
<link href="${ctxPath}/moduleweb/resources/css/animate.min.css"
	rel="stylesheet">
<link
	href="${ctxPath}/moduleweb/resources/css/material-design-iconic-font.min.css"
	rel="stylesheet">
<link
	href="${ctxPath}/moduleweb/resources/css/font-awesome.min.css?v=4.4.0"
	rel="stylesheet">
<link
	href="${ctxPath}/moduleweb/resources/css/awesome-bootstrap-checkbox.css"
	rel="stylesheet">
<link
	href="${ctxPath}/moduleweb/resources/plugins/sweetalert2/sweetalert2.min.css"
	rel="stylesheet">
<link
	href="${ctxPath}/moduleweb/resources/plugins/bootstrap-select/bootstrap-select.min.css"
	rel="stylesheet">
<link
	href="${ctxPath}/moduleweb/resources/plugins/mCustomScrollbar/jquery.mCustomScrollbar.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="${ctxPath}/moduleweb/resources/plugins/layer/skin/layer.css"
	id="layui_layer_skinlayercss">

<link
	href="${ctxPath}/moduleweb/resources/plugins/jqgrid/ui.jqgrid.css?v=5.0.0"
	rel="stylesheet">
<link
	href="${ctxPath}/moduleweb/resources/plugins/switchery/switchery.css"
	rel="stylesheet">
<link
	href="${ctxPath}/moduleweb/resources/plugins/jasny/jasny-bootstrap.min.css"
	rel="stylesheet">
<link
	href="${ctxPath}/moduleweb/resources/plugins/toastr/toastr.min.css"
	rel="stylesheet">
<link href="${ctxPath}/moduleweb/resources/plugins/ztree/ztree.css"
	rel="stylesheet">
<link
	href="${ctxPath}/moduleweb/resources/plugins/fullcalendar/fullcalendar.css"
	rel="stylesheet">
<link
	href="${ctxPath}/moduleweb/resources/plugins/fullcalendar/fullcalendar.print.css"
	rel="stylesheet">

<link href="${ctxPath}/moduleweb/resources/css/app_1.min.css"
	rel="stylesheet">
<link href="${ctxPath}/moduleweb/resources/css/app_2.min.css"
	rel="stylesheet">

<link href="${ctxPath}/moduleweb/resources/css/app_my.css"
	rel="stylesheet">

<script src="${ctxPath}/moduleweb/resources/js/jquery.min.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/bootstrap.min.js"></script>

<script
	src="${ctxPath}/moduleweb/resources/plugins/sweetalert2/sweetalert2.min.js?v=6.3.2"></script>
<script
	src="${ctxPath}/moduleweb/resources/plugins/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

<script src="${ctxPath}/moduleweb/resources/plugins/waves.min.js"></script>
<script src="${ctxPath}/moduleweb/resources/plugins/autosize.min.js"></script>

<script src="${ctxPath}/moduleweb/resources/plugins/layer/layer.min.js"></script>
<script
	src="${ctxPath}/moduleweb/resources/plugins/validate/jquery.validate.min.js?v=1.13.1"></script>
<script
	src="${ctxPath}/moduleweb/resources/plugins/validate/messages_zh.min.js?v=1.13.1"></script>
<script
	src="${ctxPath}/moduleweb/resources/plugins/laydate/laydate.min.js"></script>
<script
	src="${ctxPath}/moduleweb/resources/plugins/toastr/toastr.min.js"></script>
<script
	src="${ctxPath}/moduleweb/resources/plugins/jqgrid/i18n/grid.locale-cn.js?v=5.0.0"></script>
<script
	src="${ctxPath}/moduleweb/resources/plugins/jqgrid/jquery.jqGrid.min.js?v=5.0.1"></script>
<script
	src="${ctxPath}/moduleweb/resources/plugins/switchery/switchery.js"></script>
<script
	src="${ctxPath}/moduleweb/resources/plugins/jasny/jasny-bootstrap.min.js"></script>
<script
	src="${ctxPath}/moduleweb/resources/plugins/bootstrap-select/bootstrap-select.min.js"></script>
<script
	src="${ctxPath}/moduleweb/resources/plugins/suggest/bootstrap-suggest.min.js"></script>
<script
	src="${ctxPath}/moduleweb/resources/plugins/fullcalendar/fullcalendar.min.js"></script>
<script src="${ctxPath}/moduleweb/resources/plugins/ztree/my.ui.tree.js"></script>
<script
	src="${ctxPath}/moduleweb/resources/plugins/ztree/jquery.tree.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/ext/eh.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/ext/base64.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/ext/lang.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/ext/ajax.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/ext/object.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/ext/cookie.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/ext/token.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/ext/shade.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/ext/GpsConversion.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/jquery.json.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/jquery.form.min.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/jquery.fillform.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/jquery.jsonsubmit.js"></script>
<script src="${ctxPath}/moduleweb/resources/js/jquery.comp.js"></script>

<script type="text/javascript">
	var fillmaps = <c:out value="${_FILL_MAP}" default="null" escapeXml="false"/>;
	$().ready(
			function() {
				$.autofillform({
					fillmaps : fillmaps
				});
			});
	$(window).load(
			function() {
				$("html").hasClass("ismobile") || $(".page-loader")[0]
						&& setTimeout(function() {
							$(".page-loader").fadeOut()
						}, 500)
			});
</script>
<script src="${ctxPath}/moduleweb/resources/common.js"></script>
<!-- Page Loader -->
<div class="page-loader">
	<div class="preloader pls-blue">
		<svg class="pl-circular" viewBox="25 25 50 50">
                    <circle class="plc-path" cx="50" cy="50" r="20" />
                </svg>

		<p>Please wait...</p>
	</div>
</div>