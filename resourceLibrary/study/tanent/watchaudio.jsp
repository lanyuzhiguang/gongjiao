<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/moduleweb/resources/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<style type="text/css">

	#div1 {
		display: inline-block;
		background: #999999;
		width: 64%;
		height: 10px;
		margin: 10px auto;
		padding: 2px;
		border-radius: 20px;
		-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.1);
		box-shadow: inset 0 1px 2px rgba(0,0,0,.1);
		overflow: hidden;
		/* margin-top: 2px; */
		/* vertical-align: super; */
		vertical-align: middle;
	}
	#div1 .box {
	/*	background:-webkit-repeating-linear-gradient(-45deg, red 0, red 15px, green 15px, green 30px); */
		-webkit-box-shadow: inset 0 -1px 0 rgba(0,0,0,.15);
		 box-shadow: inset 0 -1px 0 rgba(0,0,0,.15); 
		background-color: #5bc0de;
		border-radius:20px;
		-webkit-box-shadow: inset 0 -1px 0 rgba(0,0,0,.15);
		float: left;
		height:100%;
		background-image: linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);
		-webkit-background-size: 40px 40px;
		background-size: 40px 40px;
		-webkit-transition: width .6s ease;
		-o-transition: width .6s ease;
		transition: width .6s ease;
	}
	.box.active{
	  	animation: reverse progress-bar-stripes 0.4s linear infinite,animate-positive 0s;
	}
	@-webkit-keyframes animate-positive{
	  	0% { width: 0; }
	}
	@keyframes animate-positive{
		0% { width: 0; }
	}
	@keyframes progress-bar-stripes{
		0% {
		    background-position: 40px 0;
		}
		100% {
		    background-position: 0 0;
		}
	}
	.audioBox{
		    width: 96%;
    height: 20px;
    line-height: 20px;
    margin: auto;
    margin-top: 57px;
        }
	.audioBox img{
		width: 7%;
		/* float: left; */
		display: inline-block;
		vertical-align: middle;
	}
	.time {
		display: inline-block;
		width: 20%;
		    font-size: 16px;
		        vertical-align: middle;
	}
	.time span{
		    font-size: 16px;
	}
	.wrap{
		width:100%;
	}
	.bgimg{
		display:block;
		    width: 54%;
		margin:auto;
		      padding-top: 63px;
	}
	</style>

</head>
<body class="no-skin" oncontextmenu=self.event.returnValue=false onselectstart="return false">
<div class="wrap" >
    <img src="http://qiniu.thdangjian.com/${cover }" class="bgimg" >
	<%-- <img src="${cover }" ></img> --%>
	<div>
				<audio id="video1" style="width: 200px;"></audio>    
	<div class="audioBox">
		<img src="/dangjian/moduleweb/resources/img/stop.png" id="btn">
		<div  id="div1" >
			<div class="box  active" id="innerBox"></div>
		</div>
		<div class="time"><span id="m">00</span>:<span id="s">00</span>/<span id="m1"></span>:<span id="s1"></span></div>
	</div>
</div>
</div>

</body>
<script>
	var url ='${url}';
	
	window.onload=function(){
	var startAudio = 0;
	initAudio();
	// 定时器
    
    var t;
    // 当前时间
    var time=0;
    // 总时间(秒)
    var totalTime=120;
     $("#btn").click(function () {
		var _src=$(this).attr("src");
		if(_src.slice(-8,-4)=="stop"){
				if(time==totalTime){
					return;
				}
	            playMedia(startAudio,totalTime);
				start();
			}else{
				stop();
				
			}
     });
    // 开始
    function start() {
    	 $("#btn").attr("src","/dangjian/moduleweb/resources/img/on.png");
        t=setInterval(function(){
        	time+=1;
        	progress(time);
        	formatTime(time);
        	if(time==totalTime){
        	    stop();
                //设置暂停
                reset();
                progress(time);
                $(".box").css({"transition":"none"});
        	}
        }, 1000);
    }

	function reset(){
		time=0;
		startAudio=0;
	}
    // 停止
    function stop(){
    	 $("#btn").attr("src","/dangjian/moduleweb/resources/img/stop.png");
    	clearInterval(t);
    	myVid.pause();
    }

    // 进度条前进
    function progress(time){
    	$("#innerBox").css({"width":parseInt(time*100/totalTime)+'%'});
    }

    // 初始化时间
    formatTime(time);
    formatTime1(totalTime);
    // 格式化时间
    function formatTime(time){
        var m=parseInt((time%3600)/60);
        var s=time%60;
        if(m<10){
            $("#m").text('0'+m);
        }else{
            $("#m").text(m);
        }
        if(s<10){
            $("#s").text("0"+s);
        }else{
            $("#s").text(s);
        }
    }
    function formatTime1(a){
        var m=parseInt((a%3600)/60);
        var s=a%60;
        if(m<10){
            $("#m1").text('0'+m);
        }else{
            $("#m1").text(m);
        }
        if(s<10){
            $("#s1").text("0"+s);
        }else{
            $("#s1").text(s);
        }
    }
}
	var _endTime;
	var myVid;
	
var initAudio = function(){
	myVid = document.getElementById('video1');
	myVid.addEventListener("timeupdate",timeupdate);
}
	
	function playMedia(startTime,endTime){
		//设置结束时间
		_endTime = endTime;
	   myVid.src = url;
	   //myVid.controls = true;
	   setCurrentTime(startTime);
	}

	//设置视频开始播放事件
	function setCurrentTime(startTime){
  		myVid.currentTime=startTime;
  		if(myVid.paused){
  			myVid.play();
  		}
	}

	function timeupdate(){
		//因为当前的格式是带毫秒的float类型的如：12.231233，所以把他转成String了便于后面分割取秒
		var time = myVid.currentTime+"";
		startAudio = myVid.currentTime;
		var ts = time.substring(0,time.indexOf("."));
		if(ts==_endTime){
			myVid.pause();
		}
	}	

</script>

</html>