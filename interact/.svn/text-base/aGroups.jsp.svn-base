<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/modulepc/resources/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>基层e党建</title>
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
    <link href="${ctxPath}/modulepc/css/aGroups.css" rel="stylesheet"/>
</head>

<body class="no-skin">
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row wrapBox">
                <div class="col-xs-12 wrapB">
                    <div class="col-xs-12 headB">
                        <div class="tit">全部群组</div>
                    </div>
                    <div class="col-xs-12 headBEr">
                        <ul id="allgroups">
                            <li>
                                <div class="left floatB">
                                    <img src="${ctxPath}/modulepc/img/head_03.png"/>
                                </div>
                                <div  class="right floatB">
                                    <div class="na">XXX党委<span class="lock"><img src="${ctxPath}/modulepc/img/lock_03.png"></span></div>
                                    <div class="timeB">创建时间：<span>2017-02-19</span><span class="member">成员：<span>王先生</span></span></div>
                                </div>
                                <div class="lookM">
                                    <a class="mess shadow">查看群消息</a><a class="check shadow">加入审批中</a><a class="askCen shadow">申请加入</a><a class="exit shadow">退出</a>
                                </div>
                            </li>
                         
                       
                        </ul>
                    </div>
                </div>
            </div>
            <!--分页-->
            <div class="row divpage">
                <div class="col-xs-12">
                    <div class="dataTables_paginate paging_simple_numbers" id="sample-table-2_paginate">
                        <ul class="pagination">
                        </ul>
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
    jQuery(function($) {

    })
</script>

<script>
$(document).ready(function(){
    //ajax请求后台数据
    getNews();
    toPage();
});

//分页参数设置 这些全局变量关系到分页的功能
var startAllAppoint = 0;
var limitAllAppoint = 6;
var currentPageAllAppoint = 1;
var totalPageAllAppoint = 0;
var dataLength = 0;

//ajax请求后台数据
function getNews(){
	
  $.ajax({
      type:"post",
      async:false,
      url:"groupList.action",
      data:{'page': currentPageAllAppoint,'size':limitAllAppoint},
      success:function(data){
    	 
          getShopCustomesInfo(data.data);
          startAllAppoint = data.page;//当前页数(后台返回)
          totalPageAllAppoint = data.pages;//总页数(后台返回)

      }
  });
}

function getShopCustomesInfo(data){
  var s = "";
  var simg= "";
  var sta="";
  $.each(data,function(v,o){
	  if(o.status == -1) {
		 
		  sta= "<a href='javascript:void(0);'  class=\"askCen shadow\" onclick='join(\""
				+ o._id
				+ "\")' >申请加入</a>";
		} else if(o.status == 0) {
	      sta="<a class=\"check shadow\">加入审批中</a>";

		} else if(o.status == 1) {
			if(o.type==0){
				//sta="<a href=\"../group/toListTid.action?groupId="+o._id+"\" class=\"mess shadow\">查看群消息</a>";
				sta="<a href=\"../group/toListTid.action?groupId="+o._id+"\" class=\"mess shadow\">查看群消息</a>  <a href='javascript:void(0);'  class=\"exit shadow\" onclick='quit(\""
					+ o._id
					+ "\")' >退出</a>";
				}
			else {sta="<a href=\"../group/toListTid.action?groupId="+o._id+"\" class=\"mess shadow\">查看群消息</a>";}
		}
	  if(o.logo==null||o.logo==""){
		  if(o.tenantId == '5416928080940976859')
			  simg="<img src=\"${ctxPath}/modulepc/img/rehead1.png\">";
			  else simg="<img src=\"${ctxPath}/modulepc/img/rehead.png\">"; 
      }else{ 
    	  simg="<img src=\"${qiniuImageHost}"+o.logo+"\">";
      }
	  s+="<li><div class=\"left floatB\">"+
          simg+
         "</div><div  class=\"right floatB\">"+
         "<div class=\"na\">"+
          o.name+
         "<span class=\"lock\"></span></div>"+
         "<div class=\"timeB\">创建时间：<span>"+
         o.createTime+
         "</span><span class=\"member\"><span>"+
         "</span></span></div></div><div class=\"lookM\">"+
          sta+
         "</div></li>"
	  
                         });

  if(data.length>0){
      $("#allgroups").html(s);
  }else{
      $("#allgroups").html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
  }

}

function toPage(){
  layui.use(['laypage', 'layer'], function() {
      var layer = layui.layer,
          laypage = layui.laypage;
      var nums = 6;
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
             getNews();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                //location.href = '?page='+obj.curr;
              }
           
          }
        });
     

  });
};

function join(id){
	  $.ajax({
	      type:"post",
	      async:false,
	      url:"joinGroup.action",
	      data:{'groupId': id},
	      success:function(data){
	    	  if(data.status == 1) {
	    		  //document.getElementById("id").innerText="加入审批中";
	    			alert("申请成功，请等待审核。");
	    			 getNews();
	    			 toPage();
	    		} else {
	    			alert(data.message);
	    			
	    		}
	      }
	  });
}

function quit(id){
	  $.ajax({
	      type:"post",
	      async:false,
	      url:"quitGroup.action",
	      data:{'groupId': id},
	      success:function(data){
	    	  if(data.status == 1) {
	    			alert("退群成功");
	    			getNews();
	    			 toPage();
	    		} else {
	    			alert("操作失败");
	    			 
	    		}
	      }
	  });
}

</script>
</body>
</html>
