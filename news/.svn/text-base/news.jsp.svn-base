<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/modulepc/resources/common.jsp"%>
<%@ include file="/modulepc/common/report.jsp"%><!-- 举报功能引入 -->
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
<style>

input[type="text"]{
padding: 1px 4px 1px!important;
}

</style>
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
                        <c:if test="${ffuser.userrole.addnews == 'addnews'}">
                                <li id="crt1">
                                    <a data-toggle="tab" href="#faq-tab-2">
                                        我发布的
                                    </a>
                                </li>
                             <c:if test="${tenant.hasAuditing == 1}">   
                                 <li id="crt2">
                                    <a data-toggle="tab" href="#faq-tab-3">
                                        审核中
                                    </a>
                                </li>
                                <li id="crt3">
                                    <a data-toggle="tab" href="#faq-tab-4">
                                        未通过
                                    </a>
                                </li>
                                </c:if>
                                <li id="crt4">
                                    <a data-toggle="tab" href="#faq-tab-5">
                                        草稿箱
                                    </a>
                                </li>
                         </c:if>  
                               
                                <c:if test="${ffuser.userrole.addnews == 'addnews'}">
                                       <li class="addN" id="crt5">
                                       <a href="../news/toUpsert.action?categoryId=${newsCategory._id}" style="color: red;">
                                            <i class="icon-xinzeng iconfont"></i><span>新增</span>
                                       </a>
                                       </li> 
                                 
							           
						         </c:if>
                                
                                <li class="searchB">
                                    <div class="searchBTN" id="nav-search">
                                        <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="请输入关键词" class="nav-search-input" id="nav-search-input" autocomplete="off">
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
    <form id="funcDiv" style="display: none;" class="form-horizontal">
		<div class="form-group">
			<div class="col-sm-12">
				<textarea  id="newsTile" name="newsTile" class="form-control" rows="2" disabled="disabled"></textarea >
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label">审核员:</label>
			<div class="col-sm-7">
				<input disabled="disabled" type="text" name="auditingname" id="auditingname" value="1"> 
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label">修改意见</label>
			<div class="col-sm-7">
				<textarea disabled="disabled"  id="auditingCont" name="auditingCont" class="form-control" rows="6"></textarea >
			</div>
		</div>
		<div class="hr-line-dashed"></div>
	</form>
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

function getUrlParam(paramName)
{
     var reg = new RegExp("(^|&)"+ paramName +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}

if(getUrlParam("islib")==1){//如果当前希望页是资源库则隐藏部分功能
	$("#crt1").css("display","none");
	$("#crt2").css("display","none");
	$("#crt3").css("display","none");
	$("#crt4").css("display","none");
	$("#crt5").css("display","none");
}

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
      url:"${ctxPath}/newsInteg/findNewsByCategoryId.action",
      data:{'page': currentPageAllAppoint,'size':limitAllAppoint,
	        'categoryId':'${categoryId}'},
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
  $.each(data,function(v,o){
	  if(o.logo==null||o.logo==""){
		  simg='<div class="imgB" style="display:none;"><img src=""></div>'+
		  '<div class="contentW" style="width:100%;">';
      }else{ 
    	  simg='<div class="imgB"><img src="${qiniuImageHost}'+o.logo+'"></div><div class="contentW" >';
      }
      if(o.type==0){//租户新闻
		  hf="<a href='javascript:void(0);' onclick=\"oncom('"+o.typeId+"')\"><i class='ace-icon fa icon-pinglun iconfont fa-2x' ><span>评论("+o.commentTimes+")</span></i></a>";
	        s+='<li><div class="bottomW">'
	          +simg+
	        '<div class="topW">'+
	        '<a href="../news/toNewsById.action?newsId='+o.typeId+'" target="_blank" style="color:#393939;"><p class="tit">'+o.title+'</p></a>'+
	        '<div class="LM shadow" >' 
	        +o.categoryName+
	        '</div></div><div class="smallT"><div class="clearfix">'+
	        '<div class="grid3 huoyJ" style="padding-left:10px;">'+
	        hf+ 
	       '</div><div class="grid3 huoyJ" style="padding-left:10px;padding-right:10px;">'+
	       '</div><div class="grid3 huoyJ"  style="padding-left:10px;padding-right:10px;">'+
	        '</div><div class="grid3 stuJ hid" style="padding-right: 10px;padding-left: 10px;" >'+
	        '<i onclick=\"parent.openMoniFrom(1,\''+o.typeId+'\')\" class="ace-icon fa icon-jubao1 iconfont  fa-2x"><span>举报</span></i>'+
	        '</div><div class="rig"><span class="name_">'+isStr(o.userName)+
	        '</span><span class="time_">'
	        +o.releaseTime+
	        '</span><span class="see"><i class="ace-icon fa icon-chakan iconfont fa-2x"><span>'
	        +o.times+
	        '</span></i></span></div> </div></div> </div></div></li>'
      }else if(o.type==1){//资源库新闻
	    	//hf="<a href='javascript:void(0);' onclick=\"oncom('"+o._id+"')\"><i class='ace-icon fa icon-pinglun iconfont fa-2x' ><span>评论("+o.commentTimes+")</span></i></a>";
	          s+='<li><div class="bottomW">'
	            +simg+
	          '<div class="topW">'+
	          '<a href="${ctxPath}/libraryNews/toLibrNewsDat.action?id='+o.typeId+'" target="_blank" style="color:#393939;"><p class="tit">'+o.title+'</p></a>'+
	          '<div class="LM shadow" >' 
	          + o.categoryName +
	          '</div></div><div class="smallT"><div class="clearfix">'+
	          '<div class="grid3 huoyJ" style="padding-left:10px;">'+
	          //hf+ 
	         '</div><div class="grid3 huoyJ" style="padding-left:10px;padding-right:10px;">'+
	         '</div><div class="grid3 huoyJ"  style="padding-left:10px;padding-right:10px;">'+
	          '</div><div class="grid3 stuJ hid" style="padding-right: 10px;padding-left: 10px;" >'+
	          '</div><div class="rig"><span class="name_">'+isStr(o.userName)+
	          '</span><span class="time_">'
	          +o.releaseTime+
	          '</span><span class="see"><i class="ace-icon fa icon-chakan iconfont fa-2x"><span>'
	          +o.times+
	          '</span></i></span></div> </div></div> </div></div></li>'
      }
         
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
    $("#allnews").html("");

	  $.ajax({
	      type:"post",
	      async:false,
	      url:"${ctxPath}/newsInteg/findNewsByCategoryId.action",
	      data:{'page': currentPageAllAppoint,'size':limitAllAppoint,
	    	  'categoryId':'${categoryId}','title':searchtitle},
	      success:function(data){
	          getShopCustomesInfo(data.data);
	          startAllAppoint = data.page;//当前页数(后台返回)
	          totalPageAllAppoint = data.pages;//总页数(后台返回)
	      }
	  });
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
	    window.open("../news/toNewsById.action?newsId="+id);
	   
}
$(".favorx_")
.click(
		function() {
		vid=this.id;
		var doc=$(this);
			if(doc.attr("favored")=='true') {
				 $.ajax({
				      type:"post",
				      async:false,
				      url:"../../favor/deleFavor.action",
				      data:{'type': 90,'typeId':vid},
				      success:function(data){
				    	  doc.attr("favored",'false');
				    	  doc.removeClass("icon-shoucang1");
				    	  doc.addClass("icon-shoucang");
				    	  doc.find("span").text("收藏");
				      }
				  })
			} else {
				$.ajax({
				      type:"post",
				      async:false,
				      url:"../../favor/addFavor.action",
				      data:{'type': 90,'typeId':vid},
				      success:function(data){
				    	  doc.attr("favored",'true');
				    	  doc.removeClass("icon-shoucang");
				    	  doc.addClass("icon-shoucang1");
				    	  doc.find("span").text("收藏");
				      }
				  })
			}
			
		});
$(".zanx_")
.click(
		function() {
			vid=this.id;
			var doc=$(this);
			if(doc.attr("zend")=='true') {
				 $.ajax({
				      type:"post",
				      async:false,
				      url:"../../zan/deleZan.action",
				      data:{'type': 90,'typeId':vid},
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
				      url:"../../zan/addZan.action",
				      data:{'type': 90,'typeId':vid},
				      success:function(data){
				    	  doc.attr("zend",'true');
				    	  doc.removeClass("icon-dianzan");
				    	  doc.addClass("icon-dianzan1");
				    	  doc.find("span").text("点赞("+data+")");
				      }
				  })
			}
			
		});
</script>

<script>
$(document).ready(function(){
    //ajax请求后台数据
    getmyNews();
    tomyPage();
    //暂存数据功能调用
    getmyTemporaryNews();
    tomyTemporaryPage();
});

//分页参数设置 这些全局变量关系到分页的功能
var mystartAllAppoint = 0;
var mylimitAllAppoint = 10;
var mycurrentPageAllAppoint = 1;
var mytotalPageAllAppoint = 0;
var mydataLength = 0;

//ajax请求后台数据
function getmyNews(){
	
  $.ajax({
      type:"post",
      async:false,
      url:"findmyNewsByCategoryId.action",
      data:{'page': mycurrentPageAllAppoint,'size':mylimitAllAppoint,
	        'categoryId':'${categoryId}','state|integer':'1'},
      success:function(data){
          getmyShopCustomesInfo(data.data);
          mystartAllAppoint = data.page;//当前页数(后台返回)
          mytotalPageAllAppoint = data.pages;//总页数(后台返回)

      }
  });
}

function getmyShopCustomesInfo(data){
  var s = "";
  var simg= "";
  $.each(data,function(v,o){
	  if(o.logo==null||o.logo==""){
		  simg='<div class="imgB" style="display:none;"><img src=""></div>'+
		  '<div class="contentW" style="width:100%;">';
      }else{ 
    	  simg='<div class="imgB"><img src="${qiniuImageHost}'+o.logo+'"></div><div class="contentW" >';
      }
        s+='<li><div class="bottomW">'
          +simg+
        '<div class="topW">'+
        '<a href="../news/toNewsById.action?newsId='+o._id+'" target="_blank" style="color:#393939;"><p class="tit">'+o.title+'</p></a>'+
        '<div class="LM shadow" >' 
        +o.categoryName+
        '</div></div><div class="smallT"><div class="clearfix">'+
        '<div class="grid3 huoyJ" style="padding-left: 10px; text-align: right">'+
        '<i class="ace-icon fa iconfont fa-2x " ><span onclick="deleNewsById(\''+
        		o._id+'\',tomyTemporaryPage)">删除</span></i>'+
        '</div><div class="grid3 huoyJ" style="padding-left: 10px; text-align: right"><a href=\'javascript:void(0);\' onclick="oncom(\''+o._id+'\')">'+
        '<i class="ace-icon fa iconfont fa-2x " ><span>阅读&nbsp;  </span></i></a></div><div class="rig"><span class="name_">'
        +isStr(o.userName)+
        '</span><span class="time_">'
        +o.createTimeFormat+
        '</span><span class="see"><i class="ace-icon fa icon-chakan iconfont fa-2x"><span>'
        +o.times+
        '</span></i></span></div> </div></div> </div></div></li>'
         
                         });

  if(data.length>0){
      $("#newslist").html(s);
  }else{
      $("#newslist").html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
  }

}

function tomyPage(){
  layui.use(['laypage', 'layer'], function() {
      var layer = layui.layer,
          laypage = layui.laypage;
      var nums = 10;
      //调用分页
        laypage({
           cont: 'hotnewstab'
          ,prev: '<' //若不显示，设置false即可
          ,next: '>' //若不显示，设置false即可
          ,first:false
          ,last: false
          ,pages: mytotalPageAllAppoint //得到总页数
          ,curr: mycurrentPageAllAppoint
          ,skip: false
          ,jump: function(obj, first){
        	  mycurrentPageAllAppoint = obj.curr;
        	  mystartAllAppoint = (obj.curr-1)*10;
            //document.getElementById('biuuu_city_list').innerHTML = render(obj, obj.curr);
            if(!first){//一定要加此判断，否则初始时会无限刷新
             getmyNews();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                //location.href = '?page='+obj.curr;
              }
           
          }
        });
     

  });
};


//暂存数据查询功能区域

//分页参数设置 这些全局变量关系到分页的功能
var myTemporarystartAllAppoint = 0;
var myTemporarylimitAllAppoint = 10;
var myTemporarycurrentPageAllAppoint = 1;
var myTemporarytotalPageAllAppoint = 0;
var myTemporarydataLength = 0;

//ajax请求后台数据
function getmyTemporaryNews(){
	
  $.ajax({
      type:"post",
      async:false,
      url:"findmyNewsByCategoryId.action",
      data:{'page': myTemporarycurrentPageAllAppoint,'size':myTemporarylimitAllAppoint,
	        'categoryId':'${categoryId}','state|integer':'4'},
      success:function(data){
          getmyTemporaryShopCustomesInfo(data.data);
          myTemporarystartAllAppoint = data.page;//当前页数(后台返回)
          myTemporarytotalPageAllAppoint = data.pages;//总页数(后台返回)

      }
  });
}

function getmyTemporaryShopCustomesInfo(data){
  var s = "";
  var simg= "";
  $.each(data,function(v,o){
	  if(o.logo==null||o.logo==""){
		  simg='<div class="imgB" style="display:none;"><img src=""></div>'+
		  '<div class="contentW" style="width:100%;">';
      }else{ 
    	  simg='<div class="imgB"><img src="${qiniuImageHost}'+o.logo+'"></div><div class="contentW" >';
      }
        s+='<li><div class="bottomW">'
          +simg+
        '<div class="topW">'+
        '<a href="${ctxPath}/news/toUpsert.action?newsId='+o._id+'" style="color:#393939;"><p class="tit">'+o.title+'</p></a>'+
        '<div class="LM shadow" >' 
        +o.categoryName+
        '</div></div><div class="smallT"><div class="clearfix">'+
        '<div class="grid3 huoyJ" style="padding-left: 10px; text-align: right">'+
        '<i class="ace-icon fa iconfont fa-2x " ><span onclick="deleNewsById(\''+
        		o._id+'\',tomyTemporaryPage)">删除</span></i>'+
        '</div><div class="grid3 huoyJ" style="padding-right: 10px;padding-left: 10px;">'+
        '<i class="ace-icon fa iconfont fa-2x " ><a href="${ctxPath}/news/toUpsert.action?newsId='
        		+o._id+
        '"><span>编辑</span></a></i>'+
        '</div><div class="rig"><span class="name_">'
        +isStr(o.userName)+
        '</span><span class="time_">'
        +o.createTimeFormat+
        '</span><span class="see"><i class="ace-icon fa icon-chakan iconfont fa-2x"><span>'
        +o.times+
        '</span></i></span></div> </div></div> </div></div></li>'
         
         });

  if(data.length>0){
      $("#temporary").html(s);
  }else{
      $("#temporary").html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
  }

}

function tomyTemporaryPage(){
  layui.use(['laypage', 'layer'], function() {
      var layer = layui.layer,
          laypage = layui.laypage;
      var nums = 10;
      //调用分页
        laypage({
           cont: 'myTemporary'
          ,prev: '<' //若不显示，设置false即可
          ,next: '>' //若不显示，设置false即可
          ,first:false
          ,last: false
          ,pages: myTemporarytotalPageAllAppoint //得到总页数
          ,curr: myTemporarycurrentPageAllAppoint
          ,skip: false
          ,jump: function(obj, first){
        	  myTemporarycurrentPageAllAppoint = obj.curr;
        	  myTemporarystartAllAppoint = (obj.curr-1)*10;
            //document.getElementById('biuuu_city_list').innerHTML = render(obj, obj.curr);
            if(!first){//一定要加此判断，否则初始时会无限刷新
             getmyTemporaryNews();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                //location.href = '?page='+obj.curr;
              }
           
          }
        });
     

  });
};

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
      url:"findhotNewsByCategoryId.action",
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

<!--<c:if test="${tenant.hasAuditing == 1}"></c:if> 开启新闻审核后信息查询功能区域 -->
<script type="text/javascript">
$(document).ready(function(){
    //ajax请求后台数据
    //新闻审核中
    getmyAuditingNews();
    tomyAuditingPage();
    //新闻未通过审核
    getmyNoAuditingNews();
    tomyNoAuditingPage();
});

///新闻审核中列表分页功能区域

//分页参数设置 这些全局变量关系到分页的功能
var myAuditingstartAllAppoint = 0;
var myAuditinglimitAllAppoint = 10;
var myAuditingcurrentPageAllAppoint = 1;
var myAuditingtotalPageAllAppoint = 0;
var myAuditingdataLength = 0;

//ajax请求后台数据
function getmyAuditingNews(){
	
  $.ajax({
      type:"post",
      async:false,
      url:"findmyNewsByCategoryId.action",
      data:{'page': myAuditingcurrentPageAllAppoint,'size':myAuditinglimitAllAppoint,
	        'categoryId':'${categoryId}','state|integer':'2'},
      success:function(data){
          getmyAuditingShopCustomesInfo(data.data);
          myAuditingstartAllAppoint = data.page;//当前页数(后台返回)
          myAuditingtotalPageAllAppoint = data.pages;//总页数(后台返回)
      }
  });
}

function getmyAuditingShopCustomesInfo(data){
  var s = "";
  var simg= "";
  $.each(data,function(v,o){
	  if(o.logo==null||o.logo==""){
		  simg='<div class="imgB" style="display:none;"><img src=""></div>'+
		  '<div class="contentW" style="width:100%;">';
      }else{ 
    	  simg='<div class="imgB"><img src="${qiniuImageHost}'+o.logo+'"></div><div class="contentW" >';
      }
        s+='<li><div class="bottomW">'
          +simg+
        '<div class="topW">'+
        '<a href="${ctxPath}/news/toUpsert.action?newsId='+o._id+'" style="color:#393939;"><p class="tit">'+o.title+'</p></a>'+
        '<div class="LM shadow" >' 
        +o.categoryName+
        '</div></div><div class="smallT"><div class="clearfix">'+
        '<div class="grid3 huoyJ" style="padding-left: 10px; text-align: right">'+
        '<i class="ace-icon fa iconfont fa-2x " ><span onclick="deleNewsById(\''+
		o._id+'\',tomyTemporaryPage)">删除</span></i>'+
		'</div><div class="grid3 huoyJ" style="padding-right: 10px;padding-left: 10px;">'+
		'<i class="ace-icon fa iconfont fa-2x " ><a href="${ctxPath}/news/toUpsert.action?newsId='
				+o._id+
		'"><span>编辑</span></a></i>'+
		'</div><div class="rig"><span class="name_">'+isStr(o.userName)+
        '</span><span class="time_">'
        +o.createTimeFormat+
        '</span><span class="see"><i class="ace-icon fa icon-chakan iconfont fa-2x"><span>'
        +o.times+
        '</span></i></span></div> </div></div> </div></div></li>'
         
                         });

  if(data.length>0){
      $("#inaudit").html(s);
  }else{
      $("#inaudit").html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
  }

}

function tomyAuditingPage(){
  layui.use(['laypage', 'layer'], function() {
      var layer = layui.layer,
          laypage = layui.laypage;
      var nums = 10;
      //调用分页
        laypage({
           cont: 'auditing'
          ,prev: '<' //若不显示，设置false即可
          ,next: '>' //若不显示，设置false即可
          ,first:false
          ,last: false
          ,pages: myAuditingtotalPageAllAppoint //得到总页数
          ,curr: myAuditingcurrentPageAllAppoint
          ,skip: false
          ,jump: function(obj, first){
        	  myAuditingcurrentPageAllAppoint = obj.curr;
        	  myAuditingstartAllAppoint = (obj.curr-1)*10;
            //document.getElementById('biuuu_city_list').innerHTML = render(obj, obj.curr);
            if(!first){//一定要加此判断，否则初始时会无限刷新
             getmyAuditingNews();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                //location.href = '?page='+obj.curr;
              }
           
          }
        });
     

  });
};

///新闻审核未通过分页查询区域

//分页参数设置 这些全局变量关系到分页的功能
var myNoAuditingstartAllAppoint = 0;
var myNoAuditinglimitAllAppoint = 10;
var myNoAuditingcurrentPageAllAppoint = 1;
var myNoAuditingtotalPageAllAppoint = 0;
var myNoAuditingdataLength = 0;

//ajax请求后台数据
function getmyNoAuditingNews(){
	
  $.ajax({
      type:"post",
      async:false,
      url:"findmyNewsByCategoryId.action",
      data:{'page': myNoAuditingcurrentPageAllAppoint,'size':myNoAuditinglimitAllAppoint,
	        'categoryId':'${categoryId}','state|integer':'3'},
      success:function(data){
          getmyNoAuditingShopCustomesInfo(data.data);
          myNoAuditingstartAllAppoint = data.page;//当前页数(后台返回)
          myNoAuditingtotalPageAllAppoint = data.pages;//总页数(后台返回)

      }
  });
}

function getmyNoAuditingShopCustomesInfo(data){
  var s = "";
  var simg= "";
  $.each(data,function(v,o){
	  if(o.logo==null||o.logo==""){
		  simg='<div class="imgB" style="display:none;"><img src=""></div>'+
		  '<div class="contentW" style="width:100%;">';
      }else{ 
    	  simg='<div class="imgB"><img src="${qiniuImageHost}'+o.logo+'"></div><div class="contentW" >';
      }
        s+='<li><div class="bottomW">'
          +simg+
        '<div class="topW">'+
        '<a href="${ctxPath}/news/toUpsert.action?newsId='+o._id+'" style="color:#393939;"><p class="tit">'+o.title+'</p></a>'+
        '<div class="LM shadow" >' 
        +o.categoryName+
        '</div></div><div class="smallT"><div class="clearfix">'+
        '<div class="grid3 huoyJ" style="padding-left: 10px; text-align: right">'+
        '<i class="ace-icon fa iconfont fa-2x " ><span onclick="deleNewsById(\''+
		o._id+'\',tomyTemporaryPage)">删除</span></i>'+
		'</div><div class="grid3 huoyJ" style="padding-right: 10px;padding-left: 10px;">'+
		'<i class="ace-icon fa iconfont fa-2x " ><a href="${ctxPath}/news/toUpsert.action?newsId='
				+o._id+
		'"><span>编辑</span></a></i>'+
		'</div><div class="grid3 huoyJ" style="padding-right: 10px;padding-left: 10px;">'+
		'<i class="ace-icon fa iconfont fa-2x aditing" ><span>查看修改意见<div style="display: none;">'+
		'<div class="ad_id">'+o._id+'</div><div class="adtitle">'+o.title+'</div><div class="adname">'+
		o.auditingName+'</div><div class="adcont">'+o.auditingCont+'</div>'+
		'</div></span></i>'+
		'</div><div class="rig"><span class="name_">'+isStr(o.userName)+
        '</span><span class="time_">'
        +o.createTimeFormat+
        '</span><span class="see"><i class="ace-icon fa icon-chakan iconfont fa-2x"><span>'
        +o.times+
        '</span></i></span></div> </div></div> </div></div></li>'
         
                         });

  if(data.length>0){
      $("#noaudit").html(s);
  }else{
      $("#noaudit").html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
  }
  $(".aditing")
		.click(
				function(){
					
		var doc=$(this);
		$("#newsTile").val(doc.find(".adtitle").html());
		$("#auditingname").val(doc.find(".adname").html());
		$("#auditingCont").val(doc.find(".adcont").html());
		//$("#funcDiv").show();
		layer.open({
			type : 1,
			offset: 't',
			title : "审核处理",
			area : [ '700px','360px'],
			shadeClose : true,
			closeBtn : 1,
			content : $("#funcDiv")
			,btn: ['修改文章', '取消']
		    ,btnAlign: 'c'
		    ,yes: function(index,layero){
		    	//console.log(layero, index);
		    	window.location.href="${ctxPath}/news/toUpsert.action?newsId="+doc.find(".ad_id").html();
		      	layer.close(index);
		   }
		});
		 //$("#funcDiv").hide();
	});
}
$("#funcDiv").hide();
function tomyNoAuditingPage(){
  layui.use(['laypage', 'layer'], function() {
      var layer = layui.layer,
          laypage = layui.laypage;
      var nums = 10;
      //调用分页
        laypage({
           cont: 'noAuditing'
          ,prev: '<' //若不显示，设置false即可
          ,next: '>' //若不显示，设置false即可
          ,first:false
          ,last: false
          ,pages: myNoAuditingtotalPageAllAppoint //得到总页数
          ,curr: myNoAuditingcurrentPageAllAppoint
          ,skip: false
          ,jump: function(obj, first){
        	  myNoAuditingcurrentPageAllAppoint = obj.curr;
        	  myNoAuditingstartAllAppoint = (obj.curr-1)*10;
            //document.getElementById('biuuu_city_list').innerHTML = render(obj, obj.curr);
            if(!first){//一定要加此判断，否则初始时会无限刷新
             getmyNoAuditingNews();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                //location.href = '?page='+obj.curr;
              }
           
          }
        });
     

  });
};

function deleNewsById(obj1,fun){
	layer.confirm('确定要删除该新闻?', function(index) {
		layer.close(index);
		var url = _ctxPath + "/news/remove/" + obj1 + ".do";
		$.get(url, {}, function(data) {
			if (data) {
				if (data.success) {
					toastr.success("操作成功");
					window.location.reload();
				} else {
					toastr.error(data.message);
				}
			} else {
				toastr.error("操作失败");
			}
		});
	});
	
}

</script>

</body>
</html>
