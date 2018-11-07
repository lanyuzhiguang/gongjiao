<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<%String ref = request.getHeader("REFERER");%>
<html>
<head>
<title></title>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a href="javascript:backPag();" class="btn-link">
						<i class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffspiderSource._id == null}">
								新建新闻来源目录抓取规则
					</c:if>
					<c:if test="${ffspiderSource._id != null}">
								修改新闻来源目录抓取规则
					</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<div class="row">
					<div class="col-sm-9">
						<form id="spiderSource" method="post"
							action="${ctxPath}/pc/spiderSourcePc/upsert.action" class="form-horizontal">
							<!-- 隐藏域状态，id -->
							<input type="hidden" id="_id" name="_id"><!-- id -->
							<input type="hidden" id="state" name="state" value="1"><!-- 状态启用禁用 -->
							<input type="hidden" id="type" name="type" value="1"><!-- 当前规则类型 -->
							<input type="hidden" id="spiderType" name="spiderType" value="1"><!-- 爬取网页类型 -->
							<c:if test="${ffspiderSource.type==1 && ffspiderSource.type==2}">
								<input type="hidden" id="isTempt" name="isTempt" value="0"><!-- 是否为模板 -->
							</c:if>
							<input type="hidden" id="createTime" name="createTime"><!-- 创建时间 -->
							<input type="hidden" id="spiderParentId" name="spiderParentId"><!-- 上一级id -->
							<div class="form-group">
								<label class="col-sm-2 control-label">来源名称</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input id="name" name="name" type="text" class="form-control"
											minlength="0" maxlength="100" required>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">抓取目标路径</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input id="url" name="url" type="text" minlength="0" class="form-control" required>
									</div>
									<span class="help-block m-b-none">也就是当前规则爬取的页面地址。</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">抓取时间（每天）</label>
								<div class="col-sm-3">
									<input id="fromtHMS" name="statTime" class="layui-input form-control" placeholder="HH:mm:ss" type="text" minlength="8" required>
									<span class="help-block m-b-none">也就是每天什么时候开始执行抓取。</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">过滤网页地址正则</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input id="ruleRegexInto" name="ruleRegexInto" type="text" class="form-control">
									</div>
									<span class="help-block m-b-none">通过当前的正则过滤掉不能使用当前抓取规则的网页地址。</span>
								</div>
							</div>
							<h4 class="">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-right"></i>检索范围块的选定规则</h4>
							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-2 control-label">Xsoup规则</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input id="ruleXsoupBlock" name="ruleXsoupBlock" type="text" class="form-control"
											 minlength="0" maxlength="100">
									</div>
									<span class="help-block m-b-none">Xsoup规则请参考操作文档。</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">正则表达式</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input id="ruleRegexBlock" name="ruleRegexBlock" type="text" class="form-control"
											 minlength="0" maxlength="100">
									</div>
									<span class="help-block m-b-none">正则表达式，请自行百度了解相关检索比较规则。</span>
								</div>
							</div>
							<h4 class="">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-right"></i>抓取新闻logo图片或者封面图</h4>
							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-2 control-label">Xsoup规则</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input id="ruleXsoupImage" name="ruleXsoupImage" type="text" class="form-control"
											 minlength="0" maxlength="100">
									</div>
									<span class="help-block m-b-none">Xsoup规则请参考操作文档。</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">正则表达式</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input id="ruleRegexImage" name="ruleRegexImage" type="text" class="form-control"
											 minlength="0" maxlength="100">
									</div>
									<span class="help-block m-b-none">正则表达式，请自行百度了解相关检索比较规则。</span>
								</div>
							</div>
							<h4 class="">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-right"></i>接下来页面的地址抓取规则</h4>
							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-2 control-label">Xsoup规则</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input id="ruleXsoupUrl" name="ruleXsoupUrl" type="text" class="form-control"
											 minlength="0" maxlength="100">
									</div>
									<span class="help-block m-b-none">Xsoup规则请参考操作文档。</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">正则表达式</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input id="ruleRegexUrl" name="ruleRegexUrl" type="text" class="form-control"
											 minlength="0" maxlength="100">
									</div>
									<span class="help-block m-b-none">正则表达式，请自行百度了解相关检索比较规则。</span>
								</div>
							</div>
							<h4 class="">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-right"></i>抓取地址对应连接的名称</h4>
							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-2 control-label">Xsoup规则</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input id="ruleXsoupName" name="ruleXsoupName" type="text" class="form-control"
											 minlength="0" maxlength="100">
									</div>
									<span class="help-block m-b-none">Xsoup规则请参考操作文档。</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">正则表达式</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input id="ruleRegexName" name="ruleRegexName" type="text" class="form-control"
											 minlength="0" maxlength="100">
									</div>
									<span class="help-block m-b-none">正则表达式，请自行百度了解相关检索比较规则。</span>
								</div>
							</div>
							<c:if test="${ffspiderSource.type!=1 && ffspiderSource.type!=2}">
							<c:if test="${ffspiderSource.isTempt!=1}">
							<div class="form-group">
								<label class="col-sm-2 control-label">是否添加为模板</label>
								<div class="col-sm-10">
									<div class="col-sm-4">
									  <label>
									    <input type="radio" name="isTempt" id="isTempt" value="0" checked>
									    否
									  </label>
									</div>
									<div class="col-sm-4">
									  <label>
									    <input type="radio" name="isTempt" id="isTempt" value="1">
									    是
									  </label>
									</div>
									<span class="help-block m-b-none col-sm-12">模板为可重复使用的规则，同时一旦添加为模板即不可修改提交！</span>
								</div>
							</div>
							</c:if>
							</c:if>
							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<div class="col-sm-4 col-sm-offset-2">
									<button class="btn btn-primary" type="submit" onclick="testTrm();">测试</button>
									<c:if test="${ffspiderSource.isTempt!=1}">
										<button class="btn btn-primary" type="submit" onclick="submintSpider();">提交</button>
									</c:if>
									<button onclick="backPag();" class="btn bgm-gray m-l-20" type="button">返回</button>
								</div>
							</div>
						</form>
					</div>
					<div class="col-sm-3 maxHeight">
						<div class="form-group">
							<div class="col-sm-6">
								<button class="btn btn-primary" type="button" onclick="toUpsert(3)">子级新闻列表</button>
							</div>
							<div class="col-sm-6">
								<button class="btn btn-primary" type="button" onclick="toUpsert(5)">父级子新闻列表</button>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-6">
								<button class="btn btn-primary" type="button" onclick="toUpsert(4)">子级新闻内容</button>
							</div>
							<div class="col-sm-6">
								<button class="btn btn-primary" type="button" onclick="toUpsert(6)">父级子新闻内容</button>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-6">
								<button class="btn btn-outline btn-danger" type="button" onclick="openChad()">选择模板</button>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<h4 class="">&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-paste"></i>&nbsp;&nbsp;当前规则的子规则列表</h4>
								<table class="table" id="chaTable">
									
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="chalId" style="display: none;">
	<form id="searchForm" method="post" class="form-horizontal">
					<div class="form-group">
						<div class="col-sm-3 col-sm-offset-1">
							<div class="input-group fg-float">
								<div class="fg-line">
									<input id="regex:name" name="regex:name" type="text"
										class="form-control"> <label class="fg-label">栏目名称</label>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<button id="search" class="btn btn-primary" type="submit">查询</button>
						</div>
					</div>
				</form>
		<div class="jqGrid_wrapper">
			<table id="categoryTable"></table>
		</div>
	</div>
	<div id="functionDiv" style="display: none;">
		<table class="table">
			
		</table>
	</div>
	<script type="text/javascript" src="${ctxPath}/moduleweb/resources/plugins/laydate/layDatev5.0.7/laydate/laydate.js"></script>
	<script type="text/javascript">
$().ready(
	function() {
		$("#spiderSource").validate({
			submitHandler : function(form) {
				//$.shade.show();
				//$("#category").enable();
				//form.submit();
			}
		});
		
		$("#searchForm").submit(function() {
			$("#categoryTable").reloadGrid({
				postData : $("#searchForm").formobj()
			});
			return false;
		});
		$("#categoryTable")
				.grid(
						{
							url : _ctxPath
									+ "/pc/spiderSourcePc/queryByTempt.action",
							postData : $("#searchForm")
									.formobj(),
							colNames : [ "栏目名称", "内容获取起始地址", "规则更新时间" ,"操作" ],
							colModel : [
									{
										name : "name",
										index : "name",
										width : 150
									},
									{
										name : "url",
										index : "url",
										width : 250
									},
									{
										name : "updateTime",
										index : "updateTime",
										width : 120
									},
									{
										name : "_id",
										index : "_id",
										align : "center",
										formatter : function(
												cellvalue,
												options,
												rowObject) {
											var v = "";
											if(rowObject.type != 7){
												v = "<a href='${ctxPath}/pc/spiderSourcePc/toUpsert.action?spiderId="
														+ cellvalue
														+ "' class='m-r-10'>查看</a>";
											}else{
												v = "<a href='javascript:setSpSour(\""
													+ cellvalue
													+ "\",\""+rowObject.name+"\")' class='m-r-10'>查看</a>";
											}
											if(rowObject.type != 7){
												v += "<a href='javascript:void(0);' onclick='ckSpider(\""
													+ cellvalue
													+ "\")' class='m-r-10'>选择</a>";
																													
											}
											
											return v;
										}
									} ]
						});
		
		setChaSours();
});
		
	function toUpsert(obj){
		var id=$("#_id").val();
		id=$.trim(id);
		if(id==""){
			layer.alert("请提交当前来源信息，再进行此操作！");
		}else{
			document.location.href = _ctxPath + "/pc/spiderSourcePc/toUpsert.action?type="+obj+"&spiderPId="+id;
		}
	}
		
		
	var td=$("#functionDiv").find(".table");
	function testTrm(){
		if (!$("#spiderSource").valid()) {
	        return;
	     }
		//loading层
		var index = layer.load(1, {
		  shade: [0.7,'#fff'] //0.1透明度的白色背景
		});
		$.ajax({
  	        type:"post",
  	        url:_ctxPath+"/pc/spiderSourcePc/testSpider.action",
  	      	data:$('#spiderSource').serialize(),
  	        dataType:"json",
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
  	        success:function(data){
  	        	td.html("");
  	        	layer.close(index);
  	        	if(data.success){
  	        		var list = data.data;
  	        		var tr = '';
  	        		for(var i=0;i<list.length;i++){
  	        			var dt=list[i];
  	        			tr += '<tr>';
  	        			tr += '<td>'+dt.url+'</td>';
  	        			tr += '<td><a href="'+dt.url+'" target="_blank">'+dt.fileid+'</a></td>';
  	        			tr += '</tr>';
  	        		}
  	        		td.append(tr);
  	        		testOpen();
  	        	}else{
  	        		td.append("<tr> <td> "+data.message+" </td> </tr>");
  	        	}
  	        }
		});
	}
		function testOpen(){
			layer.open({
				type : 1,
				title : "抓取到的连接名称及地址",
				offset: 't',
				area : [ '400px','500px'],
				shadeClose : true,
				closeBtn : 1,
				content : $("#functionDiv"),
				btn: ['确定'],
				yes: function(index, layero){
				    //按钮【按钮一】的回调
				    layer.close(index);
				  }
			});
		}
		
		function openChad(){
			layer.open({
				type : 1,
				title : "抓取到的连接名称及地址",
				offset: 't',
				area : [ '700px','550px'],
				shadeClose : true,
				closeBtn : 1,
				content : $("#chalId"),
				/* btn: ['确定'],
				yes: function(index, layero){
				    //按钮【按钮一】的回调
				    layer.close(index);
				  } */
			});
		}
		
		//时间选择器
		  laydate.render({
		    elem: '#fromtHMS'
		    ,type: 'time'
		  });
		
		
		function submintSpider(){
			if (!$("#spiderSource").valid()) {
		        return;
		     }
			//loading层
			var index = layer.load(1, {
			  shade: [0.7,'#fff'] //0.1透明度的白色背景
			});
			$.ajax({
	  	        type:"post",
	  	        url:_ctxPath+"/pc/spiderSourcePc/upsert.action",
	  	      	data:$('#spiderSource').serialize(),
	  	        dataType:"json",
	  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
	  	        success:function(data){
	  	        	layer.close(index);
	  	        	if(data){
	  	        		if(data.success){
		  	        		var spSoure = data.data;
		  	        		$("#_id").val(spSoure._id);//设置id值
		  	        		toastr.success("操作成功");
		  	        	}else{
		  	        		layer.alert(data);
		  	        		td.append("<tr> <td> "+data.message+" </td> </tr>");
		  	        		toastr.error("操作失败");toastr.error("操作失败");
		  	        	}
	  	        	}else{
	  	        		toastr.error("操作失败");
	  	        	}
	  	        	
	  	        }
			});
		}
		
		
		function backPag(){
			var parId=$("#spiderParentId").val();
			parId=$.trim(parId);
			var type=$("#type").val();
			if(parId==""||type==1||type==2){
				document.location.href = _ctxPath + "/pc/spiderSourcePc/toQuery.action";
			}else{
				document.location.href = _ctxPath + "/pc/spiderSourcePc/toUpserts.action?spiderPId="+parId;
			}
		}
		
		var chaTable=$("#chaTable");
		function setChaSours(){
			$.ajax({
	  	        type:"post",
	  	        url:_ctxPath+"/pc/spiderSourcePc/querchaIds.action",
	  	      	data:$('#spiderSource').serialize(),
	  	        dataType:"json",
	  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
	  	        success:function(data){
	  	        	chaTable.html("");
	  	        	if(data.success){
	  	        		var list = data.data;
	  	        		var tr = '<tr><th style="width:100%">规则名称</th><th style="width:20%">类型</th><th style="width:20%">操作</th></tr>';
	  	        		for(var i=0;i<list.length;i++){
	  	        			var dt=list[i];
	  	        			tr += '<tr>';
	  	        			tr += '<td class="col-sm-8"><a href="javascript:toUpserts(\''+dt._id+'\');">'+dt.name+'</a></td>';
	  	        			if(dt.type==1||dt.type==3||dt.type==5){
	  	        				tr += '<td class="col-sm-4"><span class="btn btn-primary btn-xs">列表</span></td>';
	  	        			}
							if(dt.type==2||dt.type==4||dt.type==6){
								tr += '<td class="col-sm-4"><span class="btn btn-primary btn-xs">内容</span></td>';
	  	        			}
	  	        			tr += '<td class="col-sm-4"><span class="btn btn-danger btn-xs" onclick="deleBudin(\''+dt._id+'\')">取消绑定</span></td>';
	  	        			tr += '</tr>';
	  	        		}
	  	        		chaTable.append(tr);
	  	        	}else{
	  	        		chaTable.append("<tr> <td> "+data.message+" </td> </tr>");
	  	        	}
	  	        }
			});
		}
		function toUpserts(id){
			document.location.href = _ctxPath + "/pc/spiderSourcePc/toUpsert.action?spiderId="+id;
		}
		
		function deleBudin(obj){
			var spiderId=$("#_id").val();
			//信息框-例2
			layer.msg('你确定要取消绑定吗？', {
			  time: 0 //不自动关闭
			  ,btn: ['确定', '取消']
			  ,yes: function(index){
			    $.ajax({
		  	        type:"post",
		  	        url:_ctxPath+"/pc/spiderSourcePc/changChaIds.action",
		  	      	data:"spiderId="+spiderId+"&chaId="+obj+"&bl="+false,
		  	        dataType:"json",
		  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
		  	        success:function(data){
		  	        	 layer.close(index);
		 			     setChaSours();
		 			    layer.closeAll();
		  	        }
		  	    });
			  }
			});
			
		}
		function ckSpider(obj){
			var spiderId=$("#_id").val();
			//信息框-例2
			layer.msg('你确定要绑定吗？', {
			  time: 0 //不自动关闭
			  ,btn: ['确定', '取消']
			  ,yes: function(index){
			    $.ajax({
		  	        type:"post",
		  	        url:_ctxPath+"/pc/spiderSourcePc/changChaIds.action",
		  	      	data:"spiderId="+spiderId+"&chaId="+obj+"&bl="+true,
		  	        dataType:"json",
		  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
		  	        success:function(data){
		  	        	if(data){
		  	        		if(data.success){
			  	        		toastr.success("操作成功");
			  	        		setChaSours();
			  	        		layer.closeAll(); //疯狂模式，关闭所有层
			  	        	}else{
			  	        		layer.close(index);
			  	        		toastr.error(data.message);
			  	        	}
		  	        	}else{
		  	        		layer.close(index);
		  	        		toastr.error("操作失败");
		  	        	}
		  	        }
		  	    });
			  }
			});
		}
		
	</script>
</body>
</html>
