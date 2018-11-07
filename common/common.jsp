<%@ page import="com.osg.framework.Constants"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>公共页面</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="renderer" content="webkit">
	<meta http-equiv="Cache-Control" content="no-siteapp">
	<meta name="keywords" content="Keyi,Keyi Soft">
	<meta name="description" content="">
	<!--[if lt IE 9]>
	    <meta http-equiv="refresh" content="0;ie.html" />
	<![endif]-->
</head>
<body>
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
  //判断是否在iframe中
    if(self!=top){
    	window.parent.document.documentElement.appendChild(link);
    	if("${user}"==""){
    		top.layer.alert("用户信息丢失，请重新登录！");
    	}
    }else{
    	if("${user}"==""){
    		layer.alert("用户信息丢失，请重新登录！");
    	}
    }
</script> 
<script src="../js/jquery-1.10.2.js"></script>
<script src="../resources/plugins/layer/layer.min.js"></script>
<script type="text/javascript">
	var fillmaps = <c:out value="${_FILL_MAP}" default="null" escapeXml="false"/>;
	function getUrlParam(paramName)
	{
	     var reg = new RegExp("(^|&)"+ paramName +"=([^&]*)(&|$)");
	     var r = window.location.search.substr(1).match(reg);
	     if(r!=null)return  unescape(r[2]); return null;
	}
	
	function getFunc(setFunc){
		//var fucn=JSON.parse("${user.userrole}".replace(/,/g, "\",").replace(/=/g, ":\"").replace(/}/g, "\"}"));
		/**权限获取**/
		var fucn=eval("("+"${user.userrole}".replace(/,/g, "',").replace(/=/g, ":'").replace(/}/g, "'}")+")");
		if(typeof fucn!="object"){
			$.ajax({
		  	   type:"post",
		  	   //async: false, //使用同步才能够正确的返回用户权限信息
		  	   url:"${ctxPath}/user/myfunction.action",
		  	   data:{},
		  	   dataType:"json",
		  	   contentType: "application/x-www-form-urlencoded; charset=utf-8",
		  	   success:function(data){
			  	  if(data){
					fucn=data.userrole;
		  	        //console.log(data.userrole);
		  	      	setFunc(fucn);
				  }
		  	  }
			});
		}else{
			setFunc(fucn);
		}
	}
	
</script>
</body>
</html>
