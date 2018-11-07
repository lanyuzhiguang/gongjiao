<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
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
							<button id="newsSpider"
								class="btn btn-outline btn-danger m-l-20" type="button">增加来源</button>
							<button id="newsTent"
								class="btn btn-outline btn-danger m-l-20" type="button">增加租户来源</button>
						</div>
					</div>
				</form>
				<div class="jqGrid_wrapper">
					<table id="categoryTable"></table>
				</div>
			</div>
		</div>
	</div>
	<form id="functionDiv" method="post" calss="form-horizontal" style="display: none;">
		<input id="_id" name="_id" type="hidden">
		<input id="type" name="type" type="hidden" value="7">
		<input id="state" name="state" type="hidden" value="1">
		<div class="form-group">
				<label class="col-sm-3 control-label">来源名称</label>
				<div class="col-sm-9">
					<div class="fg-line">
					<input id="name" name="name" type="text" class="form-control"
						minlength="0" required>
				</div>
			</div>
		</div>
	</form>
	
	<script type="text/javascript">
		var manageType;
		$()
				.ready(
						function() {
							$("#newsSpider").click(
									function() {
										document.location.href = _ctxPath
												+ "/pc/spiderSourcePc/toUpsert.action";
									});
							$("#newsTent").click(
								function() {
									$("#_id").val("");
									$("#name").val("");
									openFrom();
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
														+ "/pc/spiderSourcePc/query.do",
												postData : $("#searchForm")
														.formobj(),
												colNames : [ "栏目名称", "内容获取起始地址", "获取时间" , "规则更新时间" ,"操作" ],
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
															name : "fromtHMS",
															index : "fromtHMS",
															width : 50
														},
														{
															name : "updateTime",
															index : "updateTime",
															width : 100
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
																			+ "' class='m-r-10'>设置</a>";
																}else{
																	v = "<a href='javascript:setSpSour(\""
																		+ cellvalue
																		+ "\",\""+rowObject.name+"\")' class='m-r-10'>设置</a>";
																}
																if(rowObject.state == 1){
																	v += "<a href='javascript:void(0);' onclick='removeCategory(\""
																		+ cellvalue
																		+ "\")' class='m-r-10'>禁用</a>";
																}else if(rowObject.state == 0){
																	v += "<a href='javascript:void(0);' onclick='runCategory(\""
																		+ cellvalue
																		+ "\")' class='m-r-10'>启用</a>";
																}
																if(rowObject.type != 7){
																	v += "<a href='javascript:void(0);' onclick='runSpider(\""
																		+ cellvalue
																		+ "\")' class='m-r-10'>执行</a>";
																																		
																}
																
																return v;
															}
														} ]
											});

						});
		
		function removeCategory(spiderId) {
			layer.confirm('确定要禁用当前新闻来源吗?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/pc/spiderSourcePc/disable/" + spiderId
						+ ".action";
				$.get(url, {}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#categoryTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
				});
			});
		}
		function runCategory(spiderId) {
			layer.confirm('确定要启用当前新闻来源?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/pc/spiderSourcePc/enable/" + spiderId
						+ ".action";
				$.get(url, {}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#categoryTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
				});
			});
		}
		function runSpider(spiderId) {
			layer.confirm('确定要执行当前新闻来源，获取资料吗?', function(index) {
				layer.close(index);
				//loading层
				var index = layer.load(1, {
				  shade: [0.7,'#fff'] //0.1透明度的白色背景
				});
				var url = _ctxPath + "/pc/spiderSourcePc/runSpider/" + spiderId
						+ ".action";
				$.get(url, {}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#categoryTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
					layer.close(index);
				});
			});
		}
		
		function setSpSour(obj1,obj2){
			$("#_id").val(obj1);
			$("#name").val(obj2);
			openFrom();
		}
		
		function openFrom(){
			layer.open({
				type : 1,
				title : "抓取到的连接名称及地址",
				offset: 't',
				area : [ '300px','150px'],
				shadeClose : true,
				closeBtn : 1,
				content : $("#functionDiv"),
				btn: ['确定','取消'],
				yes: function(index, layero){
				    var name=$("#name").val();
				    if($.trim(name)!=""){
				    	//loading层
						var indx = layer.load(1, {
						  shade: [0.7,'#fff'] //0.1透明度的白色背景
						});
				    	$.ajax({
				  	        type:"post",
				  	        url:_ctxPath+"/pc/spiderSourcePc/upsert.action",
				  	      	data:$('#functionDiv').serialize(),
				  	        dataType:"json",
				  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
				  	        success:function(data){
				  	        	layer.close(indx);
				  	        	if (data.success) {
									toastr.success("操作成功");
								} else {
									toastr.error(data.message);
								}
								$("#categoryTable").trigger("reloadGrid");
				  	        	layer.close(index);
				  	        }
						});
				    }else{
				    	toastr.error("请填写租户来源名称！");
				    }
				  }
			});
		}
	</script>
</body>
</html>
