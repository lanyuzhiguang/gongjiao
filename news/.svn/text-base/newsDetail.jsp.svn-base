<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/modulepc/resources/common.jsp"%>
<%@ include file="/modulepc/common/report.jsp"%><!-- 举报功能引入 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>
    
    </title>
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
    <link href="${ctxPath}/modulepc/css/newsDetail.css" rel="stylesheet"/>
</head>

<body class="no-skin" onunload="score()">
<div id="navbar" class="navbar navbar-default">
    <div class="navbar-header pull-left">
        <a href="#" class="navbar-brand">
            <small>
               <c:if test="${ncuser.tenantName == null||ncuser.tenantName==''}">
                                                                   基层e党建
                 </c:if>   
                 <c:if test="${ncuser.tenantName != null&&ncuser.tenantName!=''}">
                   ${ncuser.tenantName}
                 </c:if>
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
                        <p class="title" id="title"></p>
                        <div class="imgW">
                            <div class="floatR"><span id="createTime">2017-03-21</span></div>
                            <div class="floatR activeN"><span id="name"></span></div>
                        </div>
                        <div class="content" id="content" style="padding-left: 15px;">
                        </div>
                        <div class="hr hr32 hr-dotted"></div>
                               <div class="clearfix">
                                    <div class="grid3 huoyJ" style="width:100px">
                                        <i id="comment" class="ace-icon fa icon-pinglun iconfont fa-2x" ><span>评论(0)</span></i>
                                    </div>
                                    <div class="grid3 huoyJ" style="width:100px">
                                        <i id="zan" class="ace-icon fa iconfont fa-2x" ><span>点赞(0)</span></i>
                                    </div>
                                    <div class="grid3 huoyJ"  style="width:100px">
                                        <i id="favor" class="ace-icon fa iconfont fa-2x"><span>收藏(0)</span></i>
                                    </div>
                                    <div class="grid3 stuJ">
                                        <i id="report" class="ace-icon fa icon-jubao1  iconfont  fa-2x purple"><span>举报</span></i>
                                    </div>
                                    <div class="grid3 myJ" style="width:10%">
                                        <i class="ace-icon fa icon-chakan  iconfont  fa-2x blue"><span id="vtimes">XXX</span></i>
                                    </div>
                                </div>
                    </div>

                </div>
                <div class="col-xs-12 botB" style="display: none;" id="comment1">
                    <div class="commentB">
                           <div class="innerB">
                                <div class="topB inputB">
                                    <input type="text" id="form-field-1"  class="col-xs-10 col-sm-5">
                                </div>
                                <div class="reply shadow" style="margin-right: 15px;" id="addcomment">评论</div>
                            </div>
                            <!--分割线-->
                            <div class="hr line hr32 hr-dotted"></div>
                            
                        <div class="wrapBox" id="comcontent">
                        
                        </div>
                        
                    </div>
            <div class="row divpage">
                <div class="col-xs-12">
                    <div class="dataTables_paginate paging_simple_numbers" id="sample-table-2_paginate">
                        
                    </div>
                </div>
            </div>
           <div class="row divpage" style="display:none;">
                <div class="col-xs-12">
                    <div class="dataTables_paginate paging_simple_numbers" id="hfcomlist">
                        
                    </div>
                </div>
            </div>
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
var ctime = new Date().getTime();
$(document).ready(function(){
	if(loginbj == 'huateng'){
		document.title="华腾党建云"; 
	}else {
		document.title="基层e党建";
	}
    //ajax请求后台数据
    getNewsById();
    getComments();
    toPage();
});
function score() {
	var tc = parseInt((new Date().getTime() - ctime) / 1000);
	if(tc > 0) {
		$.ajax({
		      type:"post",
		      async:false,
		      url:"../score/studyTimeScore.action",
		      data:{'type': '99','typeId': '${newsId}','time': tc,'libSore': 0},
		      success:function(data){
					
		      }
		  });
	}
}
function hflist(id,type,typeId){
	if(document.getElementById("hfdiv"+id).style.display=="none"){
		document.getElementById("hfdiv"+id).style.display="";//显示
	}
	else document.getElementById("hfdiv"+id).style.display="none";
}
function removecom(id) {
	if(id != '' && id!=null) {
		  $.ajax({
		      type:"post",
		      async:false,
		      url:"../comment/remove.action",
		      data:{'id': id},
		      success:function(data){
					getComments();
				    toPage();
					alert("删除成功！");
					getNewsById();
		      }
		  }); 
		}
	
}
function getNewsById(){
	  $.ajax({
	      type:"post",
	      async:false,
	      url:"findNewsById.action",
	      data:{'newsId':'${newsId}'},
	      success:function(data){
	    	  newdata=data;
	    	    $('#title').text(data.title);
				$('#createTime').text(data.createTime);
				$('#content').html(data.content);
				$('#vtimes').text(data.times);
				$('#comment').find("span").text("评论("+data.commentTimes+")");
				$('#zan').find("span").text("点赞("+data.zanTimes+")");
				$('#favor').find("span").text("收藏("+data.favorTimes+")");
				$('#report').attr("onclick","openMoniFrom(1,'"+data._id+"')");
				if(newdata.favored){
					$("#favor").attr("zend","true");
					$("#favor").addClass("icon-shoucang1");
				}else{
					$("#favor").attr("zend","false");
					$("#favor").addClass("icon-shoucang");
				}
			    if(newdata.zaned){
			    	$("#zan").attr("zend","true");
			    	$("#zan").addClass("icon-dianzan1");
			    	//$("#zan").style.color="red";
			    }else{
			    	$("#zan").attr("zend","false");
			    	$("#zan").addClass("icon-dianzan");
			    }
	      }
	  });
	}

//分页参数设置 这些全局变量关系到分页的功能
var startAllAppoint = 0;
var limitAllAppoint = 5;
var currentPageAllAppoint = 1;
var totalPageAllAppoint = 0;
var dataLength = 0;
//ajax请求后台数据
function getComments(){
	
  $.ajax({
      type:"post",
     // async:false,
      url:"../comment/query.action",
      data:{'page': currentPageAllAppoint,'size':limitAllAppoint,
    	    'parentId': "0",'type|integer': 99,'typeId': '${newsId}'},
      success:function(data){
          getShopCustomesInfo(data.data);
          startAllAppoint = data.page;//当前页数(后台返回)
          totalPageAllAppoint = data.pages;//总页数(后台返回)

      }
  });
}

function getShopCustomesInfo(data){
  var s = "";
  $.each(data,function(v,o){
	  var simg= "";
	  var dels="";
	  var hf="";
	  var hflist="";
	  var titlename=o.userName+"回复"+o.rootuserName;
	  if(o.avatar==null||o.avatar==""){
		  simg="<img src=\"${ctxPath}/modulepc/img/rehead.png\">";
      }else{ 
    	  simg="<img src=\"${qiniuImageHost}"+o.userAvatar+">";
      }
	  if('${ncuser._id}'==o.userId){
		  
		  dels="<a href='javascript:void(0);' onclick='removecom(\""
			+ o._id
			+ "\")' >删除</a></span>";
	  }else{
		  dels="<a href='javascript:void(0);' onclick='openMoniFrom(2,\""+o._id+"\")' >举报</a></span>";
	  }
	  if(o.tparentId==0||o.tparentId==null){
		  titlename=o.userName;
	  }
	 
	  hf="<a href='javascript:void(0);' style='color:#ffffff;' onclick=\"hfcom('"+o._id+"','"+o.type+"','"+o.typeId+"')\">回复</a></span>";
	  hflist="<a href='javascript:void(0);' onclick=\"hflist('"+o._id+"','"+o.type+"','"+o.typeId+"')\">回复</a></span>";
	  s+="<div class=\"wrapC\" ><div class=\"topB topHead\">"+
	         simg+
         "</div><div class=\"replyBox\"><div class=\"same replyN\"><span class=\"sb\">"+
            titlename+
         "：</span><span class=\"same forN\"><span>"+
             o.content+
         "</span></span></div><div class=\"timeB_\"><span>"+
             o.createTimeStr+
         "</span><span class=\"deReply\">"+
		 "<span class=\"yi dele\">"+
		     dels+
		 "<span class=\"yi rep\" id=\"hfc\">"+hflist+"</span>"+
		 "</span>"+
		 "<div class=\"innerB\" id=\"hfdiv"+o._id+"\" style=\"display:none;margin-top:10px;\"><div class=\"topB inputB\" style=\"width:85 %;margin-left: 10px;\">"+
         "<input type=\"text\" id=\"formhf"+o._id+"\"  class=\"col-xs-10 col-sm-5\" style=\"padding-left: 15px;\" placeholder=\"回复"+o.userName+"\">"+
         "</div><div class=\"reply shadow\" style=\"margin-right: 15px;\">"+hf+"</div></div>"+
		 "</div></div></div>"
    
                         });
  
  if(data.length>0){
      $("#comcontent").html(s);
  }else{
      $("#comcontent").html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
  }

}

function toPage(){
  layui.use(['laypage', 'layer'], function() {
      var layer = layui.layer,
          laypage = layui.laypage;
      var nums = 5;
      //调用分页
        laypage({
           cont: 'sample-table-2_paginate'
          ,prev: '<' //若不显示，设置false即可
          ,next: '>' //若不显示，设置false即可
          ,first:false
          ,last: false
          ,pages: totalPageAllAppoint //得到总页数
          ,curr: currentPageAllAppoint
          ,skip: false
          ,jump: function(obj, first){
              currentPageAllAppoint = obj.curr;
              startAllAppoint = (obj.curr-1)*10;
            //document.getElementById('biuuu_city_list').innerHTML = render(obj, obj.curr);
            if(!first){//一定要加此判断，否则初始时会无限刷新
            	getComments();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                //location.href = '?page='+obj.curr;
              }
           
          }
        });
     

  });
};


</script>
<script type="text/javascript">
var newdata="";
function hfcom(id,type,typeId) {
	var cre = $("#formhf"+id).val();
	if(cre != '' && cre.length>0) {
	  $.ajax({
	      type:"post",
	      async:false,
	      url:"../comment/reply.action",
	      data:{'type': type,'parentId': id,'typeId':typeId,'content': cre},
	      success:function(data){
				$("#formhf"+id).val('');
				getComments();
			    toPage();
				alert("评论成功！");
				
				 document.getElementById("hfdiv"+id).style.display="none";
				
				getNewsById();
			   
	      }
	  });
	}
}

    jQuery(function($) {
    	$("#comment")
		.click(
				function() {
					if(document.getElementById("comment1").style.display=="none"){
						document.getElementById("comment1").style.display="";//显示
					}
					else document.getElementById("comment1").style.display="none";
					
				});
    	
    	$("#addcomment")
		.click(
				function() {
					
					var c = $("#form-field-1").val();
					if(c != '' && c.length> 0) {
						  $.ajax({
						      type:"post",
						      async:false,
						      url:"../comment/add.action",
						      data:{'type': 99,'typeId':'${newsId}','realContent': c},
						      success:function(data){
									$("#form-field-1").val('');
									getComments();
								    toPage();
									alert("评论成功！");
									getNewsById();
						      }
						  }); 
						}
					
				});
    	
    	$("#favor")
		.click(
				function() {
					var doc=$(this);
					if(doc.attr("zend")=='true') {
						 $.ajax({
						      type:"post",
						      async:false,
						      url:"../favor/deleFavor.action",
						      data:{'type': 99,'typeId':'${newsId}'},
						      success:function(data){
						    	  doc.attr("zend",'false');
						    	  doc.removeClass("icon-shoucang1");
						    	  doc.addClass("icon-shoucang");
						    	  doc.find("span").text("收藏("+data+")");
						      }
						  })
					} else {
						$.ajax({
						      type:"post",
						      async:false,
						      url:"../favor/addFavor.action",
						      data:{'type': 99,'typeId':'${newsId}'},
						      success:function(data){
						    	  doc.attr("zend",'true');
						    	  	doc.removeClass("icon-shoucang");
						    	  	doc.addClass("icon-shoucang1");
						    	  	doc.find("span").text("收藏("+data+")");
						      }
						  })
					}
					
				});
    	$("#zan")
		.click(
				function() {
					var doc=$(this);
					if(doc.attr("zend")=='true') {
						 $.ajax({
						      type:"post",
						      async:false,
						      url:"../zan/deleZan.action",
						      data:{'type': 99,'typeId':'${newsId}'},
						      success:function(data){
						    	  doc.attr("zend",'false');
						    	  doc.removeClass("icon-dianzan1");
						    	  doc.addClass("icon-dianzan");
						    	  doc.find("span").text("点赞("+data+")");
						      }
						  })
					} else {
						$.ajax({
						      type:"post",
						      async:false,
						      url:"../zan/addZan.action",
						      data:{'type': 99,'typeId':'${newsId}'},
						      success:function(data){
						    	  doc.attr("zend",'true');
						    	  doc.removeClass("icon-dianzan");
						    	  doc.addClass("icon-dianzan1");
						    	  doc.find("span").text("点赞("+data+")");
						      }
						  })
					}
					
				});
    	
    })
</script>
</body>
</html>
