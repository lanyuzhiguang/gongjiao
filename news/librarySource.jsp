<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>基层e党建</title>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link href="${ctxPath}/modulepc/css/index.css" rel="stylesheet"/>
    <link href="${ctxPath}/modulepc/css/newsDetail.css" rel="stylesheet"/>
    <style type="text/css">
    	.navbar-brand{
    		 color:#ffffff!important;
			 font-size:24px!important;
			 text-shadow:none;
			 padding-top:10px;
			 padding-bottom:10px;
			 height:auto;
    	}
    </style>
</head>

<body class="no-skin" onunload="score()">
<div id="navbar" class="navbar navbar-default">
    <div class="navbar-header pull-left">
        <a href="#" class="navbar-brand">
            <small>
                ${user.tenantName }
            </small>
        </a>
    </div>
</div>
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row wrapper">
                <div class="col-xs-12 wrapB">
                    <div class="conB">
                        <p class="title">${fflibrary.title}</p>
                        <div class="imgW">
                            <div class="floatR"><span>${fflibrary.libSource}</span><span class="ho"><fmt:formatDate value="${fflibrary.speTime}" pattern="yyyy-MM-dd HH:mm" /></span></div>
                        </div>
                        <p class="content">
                        ${fflibrary.content}
                        </p>
                        <!--<div class="hr hr32 hr-dotted"></div>-->
                        <!--<div class="clearfix">-->
                        <!--<div class="grid3 huoyJ" style="width:15%">-->
                        <!--<i class="ace-icon fa icon-pinglun iconfont fa-2x red"><span>评论(100)</span></i>-->
                        <!--</div>-->
                        <!--<div class="grid3 huoyJ" style="width:15%">-->
                        <!--<i class="ace-icon fa icon-dianzan iconfont fa-2x red"><span>点赞(100)</span></i>-->
                        <!--</div>-->
                        <!--<div class="grid3 huoyJ" style="width:15%">-->
                        <!--<i class="ace-icon fa icon-shoucang iconfont fa-2x red"><span>收藏(100)</span></i>-->
                        <!--</div>-->
                        <!--<div class="grid3 myJ">-->
                        <!--<i class="ace-icon fa icon-jubao1  iconfont  fa-2x blue"><span>举报</span></i>-->
                        <!--</div>-->
                        <!--<div class="grid3 look">-->
                        <!--<i class="ace-icon fa icon-chakan  iconfont  fa-2x blue"><span>XXX</span></i>-->
                        <!--</div>-->
                        <!--</div>-->
                    </div>

                </div>
                <!--<div class="col-xs-12 botB">-->
                <!--<div class="commentB">-->
                <!--<div class="wrapBox">-->
                <!--<div class="innerB">-->
                <!--<div class="topB inputB">-->
                <!--<input type="text" id="form-field-1" placeholder="回复：XXXX" class="col-xs-10 col-sm-5">-->
                <!--</div>-->
                <!--<div class="reply shadow">回复</div>-->
                <!--</div>-->
                <!--&lt;!&ndash;分割线&ndash;&gt;-->
                <!--<div class="hr line hr32 hr-dotted"></div>-->

                <!--<div class="wrapC">-->
                <!--<div class="topB topHead"><img src="../img/list.jpg"></div>-->
                <!--<div class="replyBox">-->
                <!--<div class="same replyN"><span class="sb">李四:</span>-->
                <!--<span class="same forN"><span class="replySb">回复<span class="forName_">王二:</span></span><span>互动交流互动交流互动交流互动交互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流</span></span>-->
                <!--</div>-->
                <!--<div class="imgB">-->
                <!--<img src="../img/list.jpg">-->
                <!--<img src="../img/list.jpg">-->
                <!--<img src="../img/list.jpg">-->
                <!--<img src="../img/list.jpg">-->
                <!--<img src="../img/list.jpg">-->
                <!--</div>-->
                <!--<div class="timeB_"><span>2017-01-23<span class="time_">09:21</span></span>-->
                <!--<span class="deReply">-->
                <!--<span class="yi dele">删除</span><span class=" yi rep">回复</span>-->
                <!--</span>-->
                <!--</div>-->
                <!--</div>-->
                <!--</div>-->
                <!--<div class="wrapC">-->
                <!--<div class="topB topHead"><img src="../img/list.jpg"></div>-->
                <!--<div class="replyBox">-->
                <!--<div class="same replyN"><span class="sb">李四:</span>-->
                <!--<span class="same forN"><span class="replySb">回复<span class="forName_">王二:</span></span><span>互动交流互动交流互动交流互动交互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流</span></span>-->
                <!--</div>-->
                <!--<div class="imgB">-->
                <!--<img src="../img/list.jpg">-->
                <!--<img src="../img/list.jpg">-->
                <!--<img src="../img/list.jpg">-->
                <!--<img src="../img/list.jpg">-->
                <!--<img src="../img/list.jpg">-->
                <!--</div>-->
                <!--<div class="timeB_"><span>2017-01-23<span class="time_">09:21</span></span>-->
                <!--<span class="deReply">-->
                <!--<span class="yi dele">删除</span><span class=" yi rep">回复</span>-->
                <!--</span>-->
                <!--</div>-->
                <!--</div>-->
                <!--</div>-->
                <!--</div>-->
                <!--</div>-->

                <!--</div>-->

            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
var ctime = new Date().getTime();
function score() {
	var tc = parseInt((new Date().getTime() - ctime) / 1000);
	if(tc > 0) {
		$.ajax({
		      type:"post",
		      async:false,
		      url:"${ctxPath}/score/studyTimeScore.action",
		      data:{'type': '99','typeId': '${fflibrary._id}','time': tc,'libSore': 1},
		      success:function(data){
					
		      }
		  });
	}
}
</script>
</html>
