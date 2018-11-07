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
    <link href="${ctxPath}/modulepc/css/video.css" rel="stylesheet"/>
</head>

<body class="no-skin">
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12 examB">
                    <div class="col-sm-12 innnerB">
                    <div class="my-titlebar">
        <a href="${ctxPath}/study/tocatelist.action" class="btn-link">
        <i class="fa fa-angle-double-left"></i>返回
        </a>
        </div>
                        <div class="col-xs-12 headB">
                            <div class="tit">${cate.categoryName }</div>
                            <div class="searchB">
                                <div class="searchBTN" id="nav-search">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 videoListW">
                            <div class="videoList">
                                <ul id="allnews">
                                   <li>
                                        <div class="videoImg">
                                            <img src="${ctxPath}/modulepc/img/test.jpg">
                                            <p>专题专题专题专题专题专题专题专题专题专题专题专题专题专题专题专题专题专题专题专题专题专题专题专题</p>
                                        </div>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!--分页-->
            <div class="row divpage">
                <div class="col-xs-12">
                    <div class="dataTables_paginate paging_simple_numbers" id="sample-table-2_paginate">
                       
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
$(document).ready(function(){
    //ajax请求后台数据
    getNews();
    toPage();
});

//分页参数设置 这些全局变量关系到分页的功能
var startAllAppoint = 0;
var limitAllAppoint = 10;
var currentPageAllAppoint = 1;
var totalPageAllAppoint = 0;
var dataLength = 0;
//ajax请求后台数据
function getNews(){
	var categoryId = getUrlParam("categoryId");
  $.ajax({
      type:"post",
      async:false,
      url:"tanentshowlist.action",
      data:{'page': currentPageAllAppoint,'size':limitAllAppoint,
    	  'categoryId':categoryId},
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
	  s+='<li><div class="videoImg"><img src="'+o.coverUrl+'">'+
         '<a href=\"../study/tostudydetail.action?id='+o._id+'&type='+o.type+'\" target=\"_blank\" style=\"color:#393939;\"><p>'+o.title+'</p></a>'+
         '</div></li>'

       });

  if(data.length>0){
      $("#allnews").html(s);
  }else{
      $("#allnews").html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
  }

}

function toPage(){
  layui.use(['laypage', 'layer'], function() {
      var layer = layui.layer,
          laypage = layui.laypage;
      var nums = 10;
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

    jQuery(function($) {
    	   $(".audioList ul li:odd").css({"background":"#f5f5f5"})

    })
</script>

</body>
</html>

