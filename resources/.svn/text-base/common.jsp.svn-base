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

<%
	request.setAttribute("qiniuImageHost", Constants.QINIU_DOWNLOAD_HOST + "/");
%>
<c:set var="ctxPath" value="${pageContext.request.contextPath}" />
<script type="text/javascript">
	var _ctxPath = "${ctxPath}";
	var _qiniuImageHost = "${qiniuImageHost}";
	var loginbj = "${sessionScope.loginbj}";
	
	var url="";
	 if(loginbj=='huateng'){
     url="${ctxPath}"+"/modulepc/img/logo.png";  
   }
	 else{ url="${ctxPath}"+"/modulepc/img/logo.ico";}
    var doc=document;  
    var link=doc.createElement("link");  
    link.setAttribute("rel", "shortcut icon");  
    link.setAttribute("type", "image/x-icon");  
    link.setAttribute("href", url);  
    var heads = doc.getElementsByTagName("head");  
    if(heads.length)  
        heads[0].appendChild(link);  
    else  
        doc.documentElement.appendChild(link);  
</script>


<link href="${ctxPath}/modulepc/resources/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="${ctxPath}/modulepc/resources/plugins/laydate/need/laydate.css" >
<link href="${ctxPath}/modulepc/resources/plugins/ztree/ztree.min.css" rel="stylesheet">
<link rel="stylesheet" href="${ctxPath}/modulepc/resources/plugins/layer/skin/layer.css"
	id="layui_layer_skinlayercss">
<link rel="stylesheet" href="${ctxPath}/modulepc/layui/css/layui.css" media="all">
<script src="${ctxPath}/modulepc/layui/layui.js"></script>
<script src="${ctxPath}/moduleweb/resources/all.min.js?v=1.0.0"></script>
<script src="${ctxPath}/modulepc/fancyzoom/jquery.fancyzoom.js"></script>
<script src="${ctxPath}/modulepc/js/jquery-migrate-1.2.1.js"></script>  
<script type="text/javascript">
 
 
	$.ctx = {};
	var fillmaps = <c:out value="${_FILL_MAP}" default="null" escapeXml="false"/>;
	deleteEmptyProperty(fillmaps);
	//console.log(fillmaps);
	$.ctx.fillmaps = fillmaps;
	$().ready(function() {
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
	function newTab(url, id, name) {
		if (parent)
			parent._openTab(url, id, name);
	}
	var qiniuRoot = 'http://qiniu.thdangjian.com/';
	
	function getUrlParam(paramName)
	{
	     var reg = new RegExp("(^|&)"+ paramName +"=([^&]*)(&|$)");
	     var r = window.location.search.substr(1).match(reg);
	     if(r!=null)return  unescape(r[2]); return null;
	}
	function isEmpty(object) {
		  for (var name in object) {
		    return false;
		  }
		  return true;
		}
	function deleteEmptyProperty(object){
		  for (var i in object) {
		    var value = object[i];
		    if (typeof value === 'object') {
		      if (Array.isArray(value)) {
		        if (value.length == 0) {
		          delete object[i];
		          continue;
		        }
		      }
		      this.deleteEmptyProperty(value);
		      if (this.isEmpty(value)) {
		        delete object[i];
		      }
		    } else {
		      if (value == '' || value === null || value == undefined||value=='undefined') {
		        delete object[i];
		      } else {
		      }
		    }
		  }
		}
	
</script>

<script src="${ctxPath}/moduleweb/resources/common.min.js"></script>
	<script src="${ctxPath}/modulepc/resources/plugins/laydate/laydate.min.js"></script>

<style type="text/css">
.ui-jqgrid .ui-jqgrid-bdiv {
	overflow: auto;
}
video::-internal-media-controls-download-button {
    display:none;
}

video::-webkit-media-controls-enclosure {
    overflow:hidden;
}

video::-webkit-media-controls-panel {
    width: calc(100% + 30px); 
}

audio::-internal-media-controls-download-button {
   display:none;
}
audio::-webkit-media-controls-enclosure {
   overflow: hidden;
}
audio::-webkit-media-controls-panel{
   width: calc(100% + 30px);
}
</style>
<!-- Page Loader -->
<div class="page-loader">
	<div class="preloader pls-blue">
		<svg class="pl-circular" viewBox="25 25 50 50">
                    <circle class="plc-path" cx="50" cy="50" r="20" />
                </svg>

		<p>Please wait...</p>
	</div>
</div>