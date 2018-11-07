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
    <link href="${ctxPath}/modulepc/css/iMessage.css" rel="stylesheet"/>
	<link href="${ctxPath}/modulepc/css/index.css" rel="stylesheet"/>
	


<style> 
  .black_overlay{  display: none;  position: absolute;vertical-align: middle;  top: 0%;  left: 0%;  width: 100%;  height: 100%;  background-color: black;  z-index:1001;  -moz-opacity: 0.8;  opacity:.80;  filter: alpha(opacity=80);  }  
  .white_content {  display: none;  position: fixed; top:15%; left: 15%;  width: 71%;  height: 50%;  padding: 16px;  border: 1px solid white;  background-color: white;  z-index:1002;  overflow: auto;  }  
  @media(max-width:1279px) and(min-width:768px){
	  #content {
		 padding-left:0!important; 
		 padding-right:0px!important; 
	}
	}
 </style> 
</head> 
<body class="no-skin" > 
<a name="top" id="top"></a>
<div id="light" class="white_content" > 
                     <div class="row wrapper">
                <div class="col-xs-12" style="width:100%">
                    <div class="conB">
                        <div class="wrapB" style="width:100%;"/>
									<div class="ListC leftL"><img src="${ctxPath}/modulepc/img/head.jpg"></div>
									<div class="ListC rightL" >
										<div class="sp" style="" /><span class="nameW" id="userName">张三</span><span class="zuW shadow" id="groupName">无分类</span></div>
										<div class="timeB" style="" id="createTime">2017-01-23</div>
										<p id="contentL">内容心得容得内容容心得内容内容心得容得内容容心得内容内容心得容得内容容心得内容</p>
									</div>
								</div>
                        </div>
                        <div class="hr hr32 hr-dotted"></div>
                               <div class="clearfix">
                                    <div class="grid3 huoyJ" style="padding-left:10px;">
                                        <i class="ace-icon fa icon-pinglun iconfont fa-2x" ><span id="comment">评论(0)</span></i>
                                    </div>
                                    <div class="grid3 huoyJ" style="padding-left:10px;padding-right:10px;">
                                        <i class="ace-icon fa icon-dianzan iconfont fa-2x" ><span id="zan" style="color: ">点赞(0)</span></i>
                                    </div>
                                </div>
                    </div>

                </div>
                <div class="col-xs-12 botB" style="display: none;" id="comment1">
                    <div class="commentB">
                           <div class="innerB">
                                <div class="topB inputB" style="width:74%">
                                    <input type="text" id="form-field-1"  class="col-xs-10 col-sm-5">
                                </div>
                                <div class="reply shadow" style="margin-right: 35px;" id="addcomment">评论</div>
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
<div id="fade" class="black_overlay" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"> 
</div>  
<div class="row">
    <!--富文本编辑器-->
    <div class="col-xs-12 leftW" >
		<div  class="col-sm-12 rightW" >
			<div class="imageUp fistS">
				<span class="header  clearfix">
					有什么想分享给大家？
				</span>

				<div  id="edi">
				  <form id="gained" name="gained" method="post" action="#" class="form-horizontal">
				  <input type="reset" name="reset" style="display: none;" />
					<div class="form-group">
						  
						<div class="wraperB">
					
							<div class="fg-line">
								<textarea rows="5" cols="100" class="form-control" id="realContent" name="realContent" required="required"></textarea>
							</div>
						</div>
					</div>

					<div class="form-group seleImg" >
					<div >
						<div id="imagesDiv" ></div>
							<div >
								<button id="images" type="button" class="btn bgm-teal btn-block comp" comp="type:'fileupload',previewImgId:'imagesDiv',isPrivate:true,showImage:true,imgWidth:'100px',imgHeight:'80px'">上传图片</button>
							</div>
						</div>
					</div>
					<div style="padding-left: 60%;">
						<div class="sL">
							<select class="form-control" style=" -webkit-appearance:normal!important;appearance:normal!important;"  data-live-search="true" id="groupId" name="groupId" required>
								<c:forEach items="${gainedgroups}" var="gainedgroup">
									<option value="${gainedgroup._id}">${gainedgroup.name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
	                <div class="form-group submit">
	                    <button class="btn btn-primary" type="submit" id="su">提交</button>
	                </div>
                </form>
            </div>
			<div class="tabbable">
				<ul class="nav nav-tabs padding-18 tab-size-bigger" id="myTab">
					<li class="active">
						<a data-toggle="tab" href="#faq-tab-1">
							全部
						</a>
					</li>

				</ul>
				<div class="tab-content no-border padding-24">
					<div id="faq-tab-1" class="tab-pane fade in active">
						<ul id="allnews">
							
							<li>
								<div class="wrapB" >
									<div class="ListC leftL " ><img src="${ctxPath}/modulepc/img/head.jpg"></div>
									<div class="ListC rightL" style="width:94%">
										<div class="sp"><span class="nameW">张三</span><span class="zuW shadow">无分类</span></div>
										<div class="timeB">2017-01-23<span  class="time_">09:35</span></div>
										<p>内容心得容得内容容心得内容</p>
										<div class="imgB">
											<img src="${ctxPath}/modulepc/img/list.jpg">
											<img src="${ctxPath}/modulepc/img/list.jpg">
											<img src="${ctxPath}/modulepc/img/list.jpg">
											<img src="${ctxPath}/modulepc/img/list.jpg">
											<img src="${ctxPath}/modulepc/img/list.jpg">
										</div>
									</div>
								</div>
								<!--分割线-->
								<div class="hr hr32 hr-dotted"></div>
								<div class="clearfix">
									<div class="grid3 huoyJ" style="padding-left:10px;padding-right:40px;">
										<i class="ace-icon fa icon-pinglun iconfont fa-2x red" ><span>评论(100)</span></i>
									</div>
									<div class="grid3 huoyJ" style="padding-left:10px;padding-right:10px;">
										<i class="ace-icon fa icon-dianzan iconfont fa-2x red" ><span>点赞(100)</span></i>
									</div>
									<div class="grid3 huoyJ"  style="padding-left:10px;padding-right:10px;">
										<i class="ace-icon fa icon-shoucang iconfont fa-2x red"><span>收藏(100)</span></i>
									</div>
									<div class="grid3 stuJ" style="padding-left:10px;padding-right:10px;">
										<i class="ace-icon fa icon-bianji iconfont  fa-2x purple"><span>编辑</span></i>
									</div>
									<div class="grid3 myJ" style="padding-left:10px;padding-right:10px;">
										<i class="ace-icon fa icon-105  iconfont  fa-2x blue"><span>删除</span></i>
									</div>
								</div>
								<!--评论的盒子-->
								<div class="commentB">
									<div class="wrapBox">
										<div class="innerB">

											<div class="topB inputB">
												<input type="text" id="form-field-1" placeholder="回复：XXXX" class="col-xs-10 col-sm-5">
											</div>
											<div class="reply shadow">回复</div>
										</div>
										<!--分割线-->
										<div class="hr line hr32 hr-dotted"></div>
										
										<div class="wrapC">
											<div class="topB topHead"><img src="${ctxPath}/modulepc/img/list.jpg"></div>
											<div class="replyBox">
												<div class="same replyN"><span class="sb">李四:</span>
													<span class="same forN"><span class="replySb">回复<span class="forName_">王二:</span></span><span>互动交流互动交流互动交流互动交互动交流互动交流互动交流互动交流互动交流互动交流互动交流互动交流</span></span>
												</div>
												<div class="timeB_"><span>2017-01-23<span class="time_">09:21</span></span>
													<span class="deReply">
														<span class="yi dele">删除</span><span class=" yi rep">回复</span>
													</span>
												</div>
											</div>
										</div>
										
									</div>
								</div>
							</li>
							
							
						</ul>
					</div>

				</div>
			</div>
		</div>
		
		
    </div>
</div>



<div class="row divpage">
	<div class="col-xs-12">
		<div class="dataTables_paginate paging_simple_numbers" id="sample-table-2_paginatex">
			<ul class="pagination">
			
			</ul>
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
<script src="${ctxPath}/modulepc/assets/js/ace/elements.fileinput.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.wysiwyg.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.js"></script>

<!-- page specific plugin scripts -->

<script src="${ctxPath}/modulepc/assets/js/markdown/markdown.js"></script>
<script src="${ctxPath}/modulepc/assets/js/markdown/bootstrap-markdown.js"></script>
<script src="${ctxPath}/modulepc/assets/js/bootstrap-wysiwyg.js"></script>
<script type="text/javascript">
$().ready(
		function() {
					$("#gained").formSubmit({
						submitHandler : function(form) {
						   //alert(6666);
						   // if(huf==""&&hf){
						   // 	alert("控制范围的新闻请选择范围！！");
						   //var ss=
							   showtime(30);
						   //alert(ss);
						  // return;
						   // }
							$.ajax({
					  	        type:"post",
					  	         //${ctxPath}/study/gained/sendMessage.action
					  	        url:_ctxPath+"/study/gained/sendMessage.action",
					  	      	data:$('#gained').serialize(),
					  	        dataType:"json",
					  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
					  	        success:function(data){
								if (data) {
									if (data.success) {
										window.parent.toastr.success("发布成功");
										$("input[type=reset]").trigger("click");
										getNewsx();
										toPagex();
										
									} else {
										toastr.error(data.message);
									}
								} else {
									toastr.error("发布失败");
								}
							}});
						}
					});

				});
				
function showtime(t){
	$("#su").attr('disabled',true); 
	for(i=1;i<=t;i++) {
		window.setTimeout("update_p(" + i + ","+t+")", i * 1000);
	}
}

function update_p(num,t) {
	if(num == t) {
		 $("#su").text("提交 ");
		 $("#su").attr('disabled',false);
	}
	else {
		printnr = t-num;
		$("#su").text(" (" + printnr +")秒后再次提交");
	}
}
</script>
<script>
$(document).ready(function(){
    //ajax请求后台数据
    getNewsx();
    toPagex();
});

//分页参数设置 这些全局变量关系到分页的功能
var startAllAppointx = 0;
var limitAllAppointx = 5;
var currentPageAllAppointx = 1;
var totalPageAllAppointx = 0;
var dataLengthx = 0;
//ajax请求后台数据
function getNewsx(){
	
  $.ajax({
      type:"post",
      async:false,
      url:"gainedList.action",
      data:{'page': currentPageAllAppointx,'size':limitAllAppointx},
      success:function(data){
          getShopCustomesInfox(data.data);
          startAllAppointx = data.page;//当前页数(后台返回)
          totalPageAllAppointx = data.pages;//总页数(后台返回)

      }
  });
}

function getShopCustomesInfox(data){
  var s = "";

  $.each(data,function(v,o){
	  var imgurl="";
	  var dels="";
	  var simg= "";
	  var fl="";
	  if(o.avatar==null||o.avatar==""){
		  if(o.tenantId == '5416928080940976859')
			  simg="<img src=\"${ctxPath}/modulepc/img/rehead1.png\">";
			  else simg="<img src=\"${ctxPath}/modulepc/img/rehead.png\">"; 
      }else{ 
    	  simg='<img src="${qiniuImageHost}'+o.avatar+'">';
      }
	  if(o.imageUrls) {
			for(var j = 0; j < o.imageUrls.length; j++) {
				//imgurl='<a href="${ctxPath}/modulepc/fancyzoom/img/2.jpg" ><img class="fancyzoom" src="${ctxPath}/modulepc/fancyzoom/img/1.jpg"  width="100" /></a>';
                  
				imgurl+='<a href="'+o.imageUrls[j]+'" ><img class="fancyzoom" src="'+o.imagePreviewUrls[j]+'" /></a>';
				
				}
			}
      if('${xduser._id}'==o.userId){
		  dels="<i class='ace-icon fa icon-105  iconfont  fa-2x'><span><a href='javascript:void(0);' onclick='delMessage(\""
			+ o._id
			+ "\")' >删除</a></span></i>";
	  }else{
		  dels="<i class='ace-icon fa icon-jubao1  iconfont  fa-2x purple'><span><a href='javascript:void(0);' onclick='parent.openMoniFrom(3,\""+o._id+"\")' >举报</a></span></span></i>";
	  }
	    if(o.groupName==null)fl="无分类";
	     else fl=o.groupName;
	  hf="<i class='ace-icon fa icon-pinglun iconfont fa-2x' ><span><a href='javascript:void(0);' onclick=\"oncom('"+o._id+"')\">评论("+o.commentTimes+")</a></span></i>";
	  s+='<li><div class="wrapB"><div class="ListC leftL" style="width:6%">'
	      +simg+
	  '</div><div class="ListC rightL" style="width:94%"><div class="sp"><span class="nameW">'
	     +o.userName+ '</span><span class="zuW">'
         +fl+
      '</span></div><div class="timeB" >'+o.createTime+'</div><p>'
         +o.content+
      '</p><div class="imgB">'
         +imgurl+
       '</div></div></div><div class="hr hr32 hr-dotted"></div><div class="clearfix">'+
       '<div class="grid3 huoyJ" style="padding-left:10px;padding-right:40px;">'+
        hf+ 
       '</div><div class="grid3 huoyJ" style="padding-left:10px;padding-right:10px;">'+
       '<i class="ace-icon fa ';
      if(o.zaned){
      		s+=" icon-dianzan1 ";
      }else{
   	   s+=" icon-dianzan ";
      }
      s+='iconfont fa-2x zanx_"  zend="'+o.zaned+'" id="'+o._id+'"><span>点赞('+o.zanTimes+')</span></i>'+
      '</div><div class="grid3 huoyJ"  style="padding-left:10px;padding-right:10px;">'+
      '<i class="ace-icon fa ';
	   if(o.favored){
	      s+=" icon-shoucang1 ";
	   }else{
	   	  s+=" icon-shoucang ";
	   }
      s+='iconfont fa-2x favorx_" favored="'+o.favored+'" id="'+o._id+'"><span>收藏</span></i>'+
       '</div><div class="grid3 stuJ" style="padding-left:10px;padding-right:10px;"></div><div class="grid3 myJ" style="padding-left:10px;padding-right:10px;">'+
       dels+
       '</div></div></li>';
      
                         });

  if(data.length>0){
      $("#allnews").html(s);
  }else{
      $("#allnews").html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
  }
   

		$('img.fancyzoom').fancyzoom({Speed:400,showoverlay:false});
		jt();
}

function toPagex(){
  layui.use(['laypage', 'layer'], function() {
      var layer = layui.layer,
          laypage = layui.laypage;
      var nums = 5;
      //调用分页
        laypage({
           cont: 'sample-table-2_paginatex'
          ,prev: '<' //若不显示，设置false即可
          ,next: '>' //若不显示，设置false即可
          ,first:false
          ,last: false
          ,pages: totalPageAllAppointx //得到总页数
          ,curr: currentPageAllAppointx
          ,skip: false
          ,jump: function(obj, first){
              currentPageAllAppointx = obj.curr;
              startAllAppointx = (obj.curr-1)*10;
            //document.getElementById('biuuu_city_list').innerHTML = render(obj, obj.curr);
            if(!first){//一定要加此判断，否则初始时会无限刷新
             getNewsx();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                //location.href = '?page='+obj.curr;
             location.href = '#top';
              }
           
          }
        });
     

  });
};

</script>
<script>
var vid="";
	 function oncom(id){
		   vid=id;
		   document.getElementById('light').style.display='block';
		   document.getElementById('fade').style.display='block';
		   getNewsById(id);
		    getComments(id);
		    toPage();
		   
	 }

function hflist(id,type,typeId){
	
	if(document.getElementById("hfdiv"+id).style.display=="none"){
		document.getElementById("hfdiv"+id).style.display="";//显示
	}
	else document.getElementById("hfdiv"+id).style.display="none";
		
}
//删除心得消息
function delMessage(id) {
		if(id != '' && id!=null) {
			  $.ajax({
			      type:"post",
			      async:false,
			      url:"delMessage.action",
			      data:{'gainedId': id},
			      success:function(data){
			    	    getNewsx();
			    	    toPagex();
						alert("删除成功！");
			      }
			  }); 
			}
		
	}
function removecom(id) {
	if(id != '' && id!=null) {
		  $.ajax({
		      type:"post",
		      async:false,
		      url:"../comment/remove.action",
		      data:{'id': id},
		      success:function(data){
					getComments(vid);
				    toPage();
					alert("删除成功！");
					getNewsById(vid);
		      }
		  }); 
		}
	
}
function getNewsById(id){
	var sfl="";
	  $.ajax({
	      type:"post",
	      async:false,
	      url:"gainedDetail.action",
	      data:{'gainedId':id},
	      success:function(data){
	    	  newdata=data;
	    	  if(data.groupName==null)sfl="无分类";
	 	     else sfl=data.groupName;
				$('#createTime').text(data.createTime);
				$('#contentL').html(data.content);
				$('#userName').html(data.userName);
				$('#groupName').html(sfl);
				$('#comment').text("评论("+data.commentTimes+")");
				$('#zan').text("点赞("+data.zanTimes+")");
			    if(newdata.zaned) document.getElementById("zan").style.color="red";
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
      async:false,
      url:"../../comment/query.action",
      data:{'page': currentPageAllAppoint,'size':limitAllAppoint,
    	  'parentId': "0",'type|integer': 90,'typeId': vid},
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
  var dels="";
  var hf="";
  var hflist="";
  $.each(data,function(v,o){
	  var titlename=o.userName+"回复"+o.rootuserName;
	  if(o.avatar==null||o.avatar==""){
		  if(o.tenantId == '5416928080940976859')
		  simg="<img src=\"${ctxPath}/modulepc/img/rehead1.png\">";
		  else simg="<img src=\"${ctxPath}/modulepc/img/rehead.png\">"; 
      }else{ 
    	  simg="<img src=\"${qiniuImageHost}"+o.userAvatar+">";
      }
	  if('${ncuser._id}'==o.userId){
		  
		  dels="<a href='javascript:void(0);' onclick='removecom(\""
			+ o._id
			+ "\")' >删除</a></span>";
	  }else{
		  dels="<a href='javascript:void(0);' onclick='parent.openMoniFrom(2,\""+o._id+"\")' >举报</a></span>";
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
	      url:"../../comment/reply.action",
	      data:{'type': type,'parentId': id,'typeId':typeId,'content': cre},
	      success:function(data){
				$("#formhf"+id).val('');
				getComments();
			    toPage();
				alert("评论成功！");
				
				 document.getElementById("hfdiv"+id).style.display="none";
				
				getNewsById(vid);
			   
	      }
	  });
	}
}

   function jt() {
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
						      url:"../../comment/add.action",
						      data:{'type': 90,'typeId':vid,'content': c},
						      success:function(data){
									$("#form-field-1").val('');
									getComments();
								    toPage();
									alert("评论成功！");
									getNewsById(vid);
						      }
						  }); 
						}
					
				});
    	
    	$("#favor")
		.click(
				function() {
					if(newdata.favored) {
						 $.ajax({
						      type:"post",
						      async:false,
						      url:"../../favor/deleFavor.action",
						      data:{'type': 90,'typeId':vid},
						      success:function(data){
						    	    newdata.favored = false;
									document.getElementById("favor").style.color="";
									 toPage();
									 getNewsById(vid);
						      }
						  })
					} else {
						$.ajax({
						      type:"post",
						      async:false,
						      url:"../../favor/addFavor.action",
						      data:{'type': 90,'typeId':vid},
						      success:function(data){
						    	    newdata.favored = true;
									document.getElementById("favor").style.color="red";
								    toPage();
									getNewsById(vid);
						      }
						  })
					}
					
				});
    	$("#zan")
		.click(
				function() {
					if(newdata.zaned) {
						 $.ajax({
						      type:"post",
						      async:false,
						      url:"../../zan/deleZan.action",
						      data:{'type': 90,'typeId':vid},
						      success:function(data){
						    	    newdata.zaned = false;
									document.getElementById("zan").style.color="";
									$('#zan').text("点赞("+data+")");
						      }
						  })
					} else {
						$.ajax({
						      type:"post",
						      async:false,
						      url:"../../zan/addZan.action",
						      data:{'type': 90,'typeId':vid},
						      success:function(data){
						    	    newdata.zaned = true;
									document.getElementById("zan").style.color="red";
									$('#zan').text("点赞("+data+")");
						      }
						  })
					}
					
				});
    	
      	
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
    	
    }
</script>

</body>
</html>
