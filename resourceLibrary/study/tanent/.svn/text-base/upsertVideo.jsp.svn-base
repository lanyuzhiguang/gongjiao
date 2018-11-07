<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
<script
	src="${ctxPath}/moduleweb/resources/plugins/jplayer/jquery.jplayer.js"></script>
<link
	href="${ctxPath}/moduleweb/resources/plugins/jplayer/skin/blue.monday/css/jplayer.blue.monday.min.css"
	rel="stylesheet" type="text/css" />
 <style type="text/css">
        #div1 {
        display: inline-block;
        background: #999999;
        width: 81%;
        height: 10px;
        margin: 10px auto;
        padding: 2px;
        border-radius: 20px;
        -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
        box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
        overflow: hidden;
        /* margin-top: 2px; */
        /* vertical-align: super; */
        vertical-align: middle;
        }

        #div1 .box {
        /* background:-webkit-repeating-linear-gradient(-45deg, red 0, red 15px, green 15px, green 30px); */
        -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
        box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
        background-color: #5bc0de;
        border-radius: 20px;
        -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
        float: left;
        height: 100%;
        background-image: linear-gradient(45deg, rgba(255, 255, 255, .15) 25%,
        transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%,
        rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
        -webkit-background-size: 40px 40px;
        background-size: 40px 40px;
        -webkit-transition: width .6s ease;
        -o-transition: width .6s ease;
        transition: width .6s ease;
        }

        .box.active {
        animation: reverse progress-bar-stripes 0.4s linear infinite,
        animate-positive 0s;
        }

        @
        -webkit-keyframes animate-positive { 0% {
        width: 0;
        }

        }
        @
        keyframes animate-positive { 0% {
        width: 0;
        }

        }
        @
        keyframes progress-bar-stripes { 0% {
        background-position: 40px 0;
        }

        100%
        {
        background-position
        :

        0
        0;
        }
        }
        .audioBox {
        width: 100%;
        height: 20px;
        line-height: 20px;
        margin: auto;
        margin-bottom: 31px;
        }

        .audioBox img {
        width: 4%;
        /* float: left; */
        display: inline-block;
        vertical-align: middle;
        }

        .time {
        display: inline-block;
        /*     width: 14%; */
        font-size: 16px;
        vertical-align: middle;
        }

        .time span {
        font-size: 16px;
        }

        .wrap {
        width: 100%;
        }

        .bgimg {
        display: block;
        width: 54%;
        margin: auto;
        padding-top: 63px;
        }
        .innerW{
           width: 711px;

        }
        </style>
</head>
<body class="gray-bg" oncontextmenu=self.event.returnValue=false onselectstart="return false">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a href="${ctxPath}/pc/studyresourcePc/tanentlist.action" class="btn-link"> <i
						class="fa fa-angle-double-left"></i>返回
					</a>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="study" method="post" action="${ctxPath}/pc/sturesourcePc/upsert.action"
					class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-2 control-label">视频标题</label>
						<div class="col-sm-10">
							<div class="fg-line">
								${ffstudy.title }
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">视频文件</label>
						<div class="col-sm-10">
						 <div>
        <video id="video1" style="width:700px;height:400px;"></video>
        <div class="audioBox">
        <div class="innerW">
        	<img src="/dangjian/moduleweb/resources/img/stop.png" id="btn">
	        <div id="div1">
	        <div class="box active" id="innerBox"></div>
	        </div>
	        <div class="time"><span id="curTime">00:00</span>/<span id="totalTime">00:00</span></div>
        </div>
        
        </div>
        </div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">封面图片</label>
						<div class="col-sm-10">
							<div style="width: 250px; height: auto; min-height: 180px;"
								class="f-left">
								<img id="coverimg" style="width: 100%; height: 100%;" src="${ffstudy.coverUrl }" />
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">banner图片</label>
						<div class="col-sm-10">
							<div style="width: 200px; height: 100px;" class="f-left">
								<img id="bannerimg" style="width: 100%; height: 100%;" src="http://qiniu.thdangjian.com/${ffstudy.banner }"/>
							</div>
							<span class="help-block m-b-none">视频置顶时显示的banner图片。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">视频描述</label>
						<div class="col-sm-10">
							${ffstudy.content }
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<button id="cancelBtn" class="btn bgm-gray m-l-20" type="button">取消</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	 var url = '${ffstudy.fileidUrl}';
     // 音频控件
     var myVid;
  
     var totalTime = 120;

     // 开始
     function start() {
     myVid.play();
     $("#btn").attr("src","/dangjian/moduleweb/resources/img/on.png");
     }

     // 停止
     function stop(){
     myVid.pause();
     $("#btn").attr("src","/dangjian/moduleweb/resources/img/stop.png");
     }

     // 重置
     function reset(){
     myVid.currentTime = 0;
     $(".box").css({
     "transition" : "none"
     });
     progress();
     updateCurTime();
     }

     // 进度条前进
     function progress(){
     $("#innerBox").css({"width":parseInt(myVid.currentTime*100/totalTime)+'%'});
     }

     // 初始化显示
     function initShowTime(){
     updateCurTime();
     updateTotalTime();
     }

     // 更新当前时间
     function updateCurTime(){
     $("#curTime").text(formatTime(parseInt(myVid.currentTime)));
     }

     // 更新总时间
     function updateTotalTime(){
     $("#totalTime").text(formatTime(parseInt(totalTime)));
     }

     // 格式化时间
     function formatTime(time){
     var m=parseInt((time%3600)/60);
     var s=time%60;
     var result="";
     if(m<10){
     result+='0'+m;
     }else{
     result+=m;
     }
     result+=":";
     if(s<10){
     result+='0'+s;
     }else{
     result+=s;
     }
     return result;
     }

     var initAudio = function() {
     // 获取音频控件
     myVid = document.getElementById('video1');
     // 加载完成监听
     myVid.addEventListener("loadeddata",onLoaded);
     // 时间变化监听
     myVid.addEventListener("timeupdate", onTimeUpdate);
     // 音频源
     myVid.src = url;
     };

     // 音频加载完成
     function onLoaded(){
     	 var isopen = '${isOpen}';
     	console.log(isopen)
     	if(isopen == "1"){
	        totalTime = myVid.duration;// 使用真实时间
     }
     
     // 初始化显示时间
     initShowTime();
     }

     // 时间变化
     function onTimeUpdate() {
     progress();
     updateCurTime();
     if(parseInt(myVid.currentTime)==totalTime){
     stop();
     reset();
     }
     }

     // 初始化开关按钮
     function initSwitchBtn(){
     $("#btn").click(function () {
     if(myVid.paused){
     start();
     }else{
     stop();
     }
     });
     }

     $(function(){
     // 初始化音频控件
     initAudio();
     // 初始化开关按钮
     initSwitchBtn();
     
     $("#cancelBtn").click(function() {
			document.location.href = _ctxPath + "/pc/studyresourcePc/tanentlist.action";
		});

     });
	</script>
</body>
</html>
