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
    <link href="${ctxPath}/modulepc/css/news.css"  rel="stylesheet">
</head>

<body class="no-skin">
<a name="top" id="top"></a>
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12 wrapperL">
                    <div class="col-sm-8 leftW">
                        <div class="tabbable">
                            <ul class="nav nav-tabs padding-18 tab-size-bigger" id="myTab">
                                <li class="active">
                                    <a data-toggle="tab" href="#faq-tab-1">
                                        ${categoryName}
                                    </a>
                                </li>
                        
                               
                                <li class="searchB">
                                    <div class="searchBTN" id="nav-search">
                                        <form class="">
								<span class="input-icon">
									<input type="text" placeholder="请输入关键词" onchange="Seachnews()" class="nav-search-input" id="nav-search-input"><!-- autocomplete="off" -->
									<i class="ace-icon fa fa-search nav-search-icon" onclick="Seachnews()"></i>
								</span>
                                        </form>
                                    </div>
                                </li> 
                            </ul>
                            
                            <div class="tab-content no-border padding-24">
                                <div id="faq-tab-1" class="tab-pane fade in active">
                                    <div class="newslist">
                                        <ul id="allnews">
                                        
                                         
                                        </ul>
                                    </div>
                                   
                                   <div class="row divpage" >
                                     <div class="col-xs-12">
                                      <div class="dataTables_paginate paging_simple_numbers" id="sample-table-2_paginate">
                       
                                      </div>
                                    </div>
                                  </div>
                                   
                                </div>

                                <div id="faq-tab-2" class="tab-pane fade">
                                    <div class="newslist">
                                        <ul id="newslist">
                                           
                                         
                                        </ul>
                                    </div>
                                    
                                    <div class="row divpage" >
                                     <div class="col-xs-12">
                                      <div class="dataTables_paginate paging_simple_numbers" id="mynewstab">
                       
                                      </div>
                                    </div>
                                  </div>
                                    
                                </div>
                                
                                <div id="faq-tab-3" class="tab-pane fade">
                                    <div class="newslist">
                                        <ul id="inaudit">
                                           
                                         
                                        </ul>
                                    </div>
                                    
                                    <div class="row divpage" >
                                     <div class="col-xs-12">
                                      <div class="dataTables_paginate paging_simple_numbers" id="auditing">
                       
                                      </div>
                                    </div>
                                  </div>
                                    
                                </div>
                                
                                <div id="faq-tab-4" class="tab-pane fade">
                                    <div class="newslist">
                                        <ul id="noaudit">
                                           
                                         
                                        </ul>
                                    </div>
                                    
                                    <div class="row divpage" >
                                     <div class="col-xs-12">
                                      <div class="dataTables_paginate paging_simple_numbers" id="noAuditing">
                       
                                      </div>
                                    </div>
                                  </div>
                                    
                                </div>
                                
                                <div id="faq-tab-5" class="tab-pane fade">
                                    <div class="newslist">
                                        <ul id="temporary">
                                           
                                         
                                        </ul>
                                    </div>
                                    
                                    <div class="row divpage" >
                                     <div class="col-xs-12">
                                      <div class="dataTables_paginate paging_simple_numbers" id="myTemporary">
                       
                                      </div>
                                    </div>
                                  </div>
                                    
                                </div>
                            </div>
                            
                        </div>
                    </div>

                    <div class="col-sm-4 hotTopice">
                        <div class="hotT">
                            <div class=hotN>热门新闻</div>
                            <div class="hotNList">
                                <ul id="hotNList">
                                
                                    <li>
                                        标题标题标题标题标题标题标题题标题标题题标题标题标题题${ctxPath}/modulepc${ctxPath}/modulepc.
                                    </li>
                                   
                                </ul>
                            </div>
                               <div class="row divpage" style="display: none;">
                                     <div class="col-xs-12">
                                      <div class="dataTables_paginate paging_simple_numbers" id="hotnewstab">
                       
                                      </div>
                                    </div>
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
<script src="${ctxPath}/modulepc/js/index.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function($) {

    });
</script>

<script>

function isStr(obj){
	if(obj==null||obj==undefined){
		return "";
	}
	return obj;
}


$(document).ready(function(){
    //ajax请求后台数据
    getNews();
    toPage();
});


//分页参数设置 这些全局变量关系到分页的功能
var startAllAppoint = 0;
var limitAllAppoint = 20;
var currentPageAllAppoint = 1;
var totalPageAllAppoint = 0;
var dataLength = 0;

//ajax请求后台数据
function getNews(){
	
  $.ajax({
      type:"post",
      async:false,
      url:"${ctxPath}/libraryNews/findNewsByCategoryId.action",
      data:{'page': currentPageAllAppoint,'size':limitAllAppoint,
	        'categoryId':'${categoryId}','title':$("#nav-search-input").val()},
      success:function(data){
          getShopCustomesInfo(data.data);
          startAllAppoint = data.page;//当前页数(后台返回)
          totalPageAllAppoint = data.pages;//总页数(后台返回)

      }
  });
}
var categoryName = "${categoryName}";
function getShopCustomesInfo(data){
  var s = "";
  var simg= "";
  $.each(data,function(v,o){
	  if(o.logo==null||o.logo==""){
		  simg='<div class="imgB" style="display:none;"><img src=""></div>'+
		  '<div class="contentW" style="width:100%;">';
      }else{ 
    	  simg='<div class="imgB"><img src="${qiniuImageHost}'+o.logo+'"></div><div class="contentW" >';
      }
	  //hf="<a href='javascript:void(0);' onclick=\"oncom('"+o._id+"')\"><i class='ace-icon fa icon-pinglun iconfont fa-2x' ><span>评论("+o.commentTimes+")</span></i></a>";
        s+='<li><div class="bottomW">'
          +simg+
        '<div class="topW">'+
        '<a href="${ctxPath}/libraryNews/toLibrNewsDat.action?id='+o._id+'" target="_blank" style="color:#393939;"><p class="tit">'+o.title+'</p></a>'+
        '<div class="LM shadow" >' 
        + categoryName +
        '</div></div><div class="smallT"><div class="clearfix">'+
        '<div class="grid3 huoyJ" style="padding-left:10px;">'+
        //hf+ 
       '</div><div class="grid3 huoyJ" style="padding-left:10px;padding-right:10px;">'+
       '</div><div class="grid3 huoyJ"  style="padding-left:10px;padding-right:10px;">'+
        '</div><div class="grid3 stuJ hid" style="padding-right: 10px;padding-left: 10px;" >'+
        '</div><div class="rig"><span class="name_">'+isStr(o.userName)+
        '</span><span class="time_">'
        +o.speTimeFormat+
        '</span><span class="see"><i class="ace-icon fa icon-chakan iconfont fa-2x"><span>'
        +o.times+
        '</span></i></span></div> </div></div> </div></div></li>'
         
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
      var nums = 20;
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
                location.href = '#top';
             //<a href="#top">返回顶部</a>
             
              }
           
          }
        });
     

  });
};

function Seachnews(){
	
	var searchtitle=document.getElementById('nav-search-input').value;
	//alert(searchtitle);
	//return;
	startAllAppoint = 0;
	limitAllAppoint = 20;
	currentPageAllAppoint = 1;
	totalPageAllAppoint = 0;
	dataLength = 0;
    getNews();
    toPage();
    /* $("#allnews").html("");

	  $.ajax({
	      type:"post",
	      async:false,
	      url:"${ctxPath}/news/findNewsBySearch.action",
	      data:{'page': currentPageAllAppoint,'size':limitAllAppoint,
		        'title':searchtitle},
	      success:function(data){
	          getShopCustomesInfo(data.data);
	          startAllAppoint = data.page;//当前页数(后台返回)
	          totalPageAllAppoint = data.pages;//总页数(后台返回)

	      }
	  }); */
	
	  toPage();
}

jQuery(function() {
    $(".clearfix").mouseover(function(){
        $(this).find(".stuJ").removeClass("hid");
    });
    $(".clearfix").mouseout(function(){
        $(this).find(".stuJ").addClass("hid");
    });
    $(".rig").mouseover(function(e){
        $(this).prev().find(".stuJ").removeClass("hid");
        e.stopPropagation();
    });
    $(".rig").mouseout(function(e){
        $(this).prev().find(".stuJ").removeClass("hid");
        e.stopPropagation();
    });
    var iconShou=$(".icon-shoucang");
    for(var i=0;i<iconShou.length;i++){
        $(iconShou[i]).click(function () {
            console.log(transferColor($(this).css("color"))[0]);
            if(transferColor($(this).css("color"))[0]=="e"){
                $(this).removeClass("icon-shoucang");
                $(this).addClass("icon-shoucang1");
            }else {
                $(this).removeClass("icon-shoucang1");
                $(this).addClass("icon-shoucang");

            }
        })
    }
    /**rgb转换成16进制**/
    function  transferColor(val) {
        var parts = val.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
        delete (parts[0]);
        for (var i = 1; i <= 3; ++i) {
            parts[i] = parseInt(parts[i]).toString(16);
            if (parts[i].length == 1) parts[i] = '0' + parts[i];
        }
       return parts.join('');
    }


});
function oncom(id){
	    window.open("${ctxPath}/news/toNewsById.action?newsId="+id);
	   
}

</script>


<script>
$(document).ready(function(){
    //ajax请求后台数据
    gethotNews();
    tohotPage();
});

//分页参数设置 这些全局变量关系到分页的功能
var hotstartAllAppoint = 0;
var hotlimitAllAppoint = 12;
var hotcurrentPageAllAppoint = 1;
var hottotalPageAllAppoint = 0;
var hotdataLength = 0;

//ajax请求后台数据
function gethotNews(){
	
  $.ajax({
      type:"post",
      async:false,
      url:"${ctxPath}/news/findhotNewsByCategoryId.action",
      data:{'page': hotcurrentPageAllAppoint,'size':hotlimitAllAppoint,
	        'categoryId':'All'},
      success:function(data){
          gethotShopCustomesInfo(data.data);
          hotstartAllAppoint = data.page;//当前页数(后台返回)
          hottotalPageAllAppoint = data.pages;//总页数(后台返回)

      }
  });
}

function gethotShopCustomesInfo(data){
  var s = "";
  var simg= "";
  $.each(data,function(v,o){
	  s+='<li style="height:30px;">'+
	   '<a href="../news/toNewsById.action?newsId='+o._id+'" target="_blank" style="color:#393939;"><p class="tit">'+o.title+'</p></a>'+
        '</li>'
         
                         });

  if(data.length>0){
      $("#hotNList").html(s);
  }else{
      $("#hotNList").html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
  }

}

function tohotPage(){
  layui.use(['laypage', 'layer'], function() {
      var layer = layui.layer,
          laypage = layui.laypage;
      var nums = 12;
      //调用分页
        laypage({
           cont: 'hotnewstab'
          ,prev: '<' //若不显示，设置false即可
          ,next: '>' //若不显示，设置false即可
          ,first:false
          ,last: false
          ,pages: hottotalPageAllAppoint //得到总页数
          ,curr: hotcurrentPageAllAppoint
          ,skip: false
          ,jump: function(obj, first){
        	  hotcurrentPageAllAppoint = obj.curr;
        	  hotstartAllAppoint = (obj.curr-1)*10;
            //document.getElementById('biuuu_city_list').innerHTML = render(obj, obj.curr);
            if(!first){//一定要加此判断，否则初始时会无限刷新
             gethotNews();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                //location.href = '?page='+obj.curr;
              }
           
          }
        });
     
  });
};

</script>

</body>
</html>
