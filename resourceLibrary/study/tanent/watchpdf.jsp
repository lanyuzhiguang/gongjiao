<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/moduleweb/resources/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
  <style type="text/css">
        .lightbox{
            position: fixed;
            top: 0px;
            left: 0px;
            height: 100%;
            width: 100%;
            z-index: 7;
            opacity: 0.3;
            display: block;
            background-color: rgb(0, 0, 0);
        }
        .pop{
            position: absolute;
            left: 50%;
            width: 894px;
               margin-left: -290px;
            z-index: 9;
        }
        .showBtn{
        	    display: block;
    			margin: auto;
    			text-align: center;
    			    font-size: 24px;
    			     margin-top: 20px;
        }
    
        .coverImg img{
        	width: 32%;
    		display: block;
   			margin: auto;
   			    padding-top: 62px;
        }
        .btnWrap{
        	    overflow: hidden;
    width: 66.5%;
        }
        #pre{
          float:left;
        }
        #next{
           float:right;
        }
    </style>
    <script type="text/javascript" src="${ctxPath}/moduleweb/resources/js/pdf.js"></script>
<script>
	var url ='${url}';
    var a = 1;
    function showPdf(a) {
        var container = document.getElementById("container");
        container.style.display = "block";
        PDFJS.workerSrc = '/dangjian/moduleweb/resources/js/pdf.worker.js';
        PDFJS.getDocument(url).then(function getPdfHelloWorld(pdf) {
        	pdf.getPage(a).then(function getPageHelloWorld(page) {
                var scale = 1;
                var viewport = page.getViewport(scale);
                var canvas = document.getElementById('the-canvas');
                var context = canvas.getContext('2d');
                canvas.height = viewport.height;
                canvas.width = viewport.width;
                var renderContext = {
                    canvasContext: context,
                    viewport: viewport
                };
                page.render(renderContext);
            });
        });
    }
    
    function nextPage(){
    	showPdf(++a);
    }
    function prePage(){
    	if(a != 1){
	    	showPdf(--a);
    	}
    }
   /*  $(window).scroll(function() {
if ($(document).scrollTop() >= $(document).height() - $(window).height()) {
    showPdf(++a);
    $(document).scrollTop(0);
}
}); */
</script>
</head>
<body oncontextmenu=self.event.returnValue=false onselectstart="return false">
<div class="coverImg"><img src="${cover }"></div>
 <h1 class="showBtn">
 <c:if test="${type =='pdf' }">
 <a href="javascript:void(0)" target="_blank" onclick="showPdf(1)">查看pdf文档</a></c:if>
 <c:if test="${type !='pdf' }">
 <a href="${url }">下载文件</a></c:if></h1>
    <div id="container" style="display: none;">
    
        <div class="lightbox"></div>
        <div id="pop" class="pop">
        
            <canvas id="the-canvas" height="500px" width="500px"></canvas>
             <div class="btnWrap">
        	     <button id="pre" class="btn btn-success" type="button" onclick="prePage()">上一页</button>
    		     <button  id="next"  class="btn btn-success" type="button" onclick="nextPage()">下一页</button>
            </div>
        </div>
    </div>
</body>
</html>