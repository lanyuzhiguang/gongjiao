<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/moduleweb/resources/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script>
	var url ='${url}';
	var _endTime;
	var myVid = $("#video1");
	//document.oncontextmenu = nocontextmenu; // for IE5+
	//document.onmousedown = norightclick; 
	//视频播放
	function playMedia(startTime,endTime){
		//设置结束时间
		_endTime = endTime;
	   $("#video1").attr("src",url);
	   setTimeout("setCurrentTime('"+startTime+"')",1);
	}

	//设置视频开始播放事件
	function setCurrentTime(startTime){
  		myVid.currentTime=startTime;
  		//myVid.play();
	}

	function timeupdate(){
		var ts = time.substring(0,time.indexOf("."));
		if(ts==_endTime){
			myVid.pause();
		}
	}

</script>
</head>
<body oncontextmenu=self.event.returnValue=false onselectstart="return false" onload="playMedia(0,120);">
<div style="margin-left:15px; width: 700px;height: 480px">
<video id="video1" autoplay="autoplay" width="100%"height="100%"></video>
</div>
</body>

</html>