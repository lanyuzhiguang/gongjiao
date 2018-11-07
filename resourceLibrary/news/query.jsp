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
				<div class="row">
					<div class="col-sm-3 maxHeight">
						<div class="jqGrid_wrapper">
							<table id="categoryTable"></table>
						</div>
					</div>
					<div class="col-sm-9">
						<form id="searchForm" method="get" class="form-horizontal">
						<input id="libraryCategorys.cetId" name="libraryCategorys.cetId" class="cetId" type="hidden">
						<input id="classification|integer" name="classification|integer" value="1" type="hidden">
						<input id="ne:state|integer" name="ne:state|integer" value="-1" type="hidden">
							<div class="form-group">
								<div class="col-sm-2 col-sm-offset-1">
									<div class="input-group fg-float">
										<div class="fg-line">
											<input id="regex:title" name="regex:title" type="text"
												class="form-control"> <label class="fg-label">标题</label>
										</div>
									</div>
								</div>
								<label class="col-sm-2 control-label">是否启用</label>
								<div class="col-sm-3">
									<select class="form-control selectpicker" id="state|integer"
										name="state|integer">
										<option value="">请选择</option>
										<option value="1">启用</option>
										<option value="0">禁用</option>
									</select>
								</div>
								<div class="col-sm-4">
									<button id="search" class="btn btn-primary" type="submit">查询</button>
								</div>
							</div>
						</form>
						<div class="jqGrid_wrapper">
							<table id="newsTable"></table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var categoryId;
		$()
				.ready(
						function() {
						$("#newNews").hide();	
							$("#categoryTable").grid(
									{
										url : _ctxPath
												+ "/pc/spiderSourcePc/query.action",
										postData : {},
										onSelectRow : function(id) {
											var cid = $("#" + id, $("#categoryTable")).data("rawData")._id;
											$(".cetId").val(cid);
											$("#newsTable").reloadGrid({
												postData : $("#searchForm").formobj()
											});
										},
										colNames : [ "新闻来源", "数量","开通租户数量" ],
										colModel : [ {
											name : "name",
											index : "name",
											width : 300
										}, {
											name : "librarys",
											index : "librarys",
										},{
											name:"tenants",
											index:"tenants",
											width : 200
										} ]
									});
							$("#categoryTable").reloadGrid({
								postData : {}
							});

							$("#searchForm").submit(function() {
								$("#newsTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								return false;
							});
							$("#newsTable")
									.grid(
											{
												url : _ctxPath
														+ "/pc/newsSpiderPc/query.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "标题",
														"发布日期", "新闻来源",
														"操作" ],
												colModel : [
														
														{
															name : "title",
															index : "title",
															width : 400,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																return "<a target='_blank' href='${ctxPath}/pc/newsSpiderPc/toLibrNewsDat.action?id="+rowObject._id+"' >"+cellvalue+"</a>"
															}
														},
														{
															name : "speTimeFormat",
															index : "speTimeFormat",
															width : 100
														},
														{
															name : "libSource",
															index : "libSource",
															width : 200
														},{
															name : "_id",
															index : "_id",
															align : "center",
															width : 160,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v="";
															 	v += "<a href='${ctxPath}/pc/newsSpiderPc/toUpsert.action?id="
																		+ cellvalue+"&type="+rowObject.type
																		+ "' class='m-r-10'>详情</a>";
																if (rowObject.state == 0) {
																	v += "<a href='javascript:void(0);' onclick='enable(\""
																		+ cellvalue
																		+ "\")' class='m-r-10'>启用</a>";
																} else {
																	v += "<a href='javascript:void(0);' onclick='disable(\""
																		+ cellvalue
																		+ "\")' class='m-r-10'>禁用</a>";
																}
																v += "<a href='javascript:void(0);' onclick='remove(\""
																		+ cellvalue
																		+ "\")' class='m-r-10'>删除</a>";

																return v;
															}
														}
														]
											});

						});
		function loadNews() {
			if (!categoryId)
				return;
			$("#categoryId").val(categoryId);
			$("#newsTable").reloadGrid({
				postData : $("#searchForm").formobj()
			});
		}
		function enable(newsId) {
			doGet(_ctxPath + "/pc/sturesourcePc/enable.action?id="+newsId);
		}
		function disable(newsId) {
			doGet(_ctxPath + "/pc/sturesourcePc/disable.action?id="+newsId);
		}
		function sertVideo(id){
			document.location.href = _ctxPath
			+ "/pc/sturesourcePc/toupsert.action?categoryId="
			+ categoryId+"&type=1";
		}
		function sertAudio(){
			document.location.href = _ctxPath
			+ "/pc/sturesourcePc/toupsert.action?categoryId="
			+ categoryId+"&type=2";
		}
		function sertDoc(){
			document.location.href = _ctxPath
			+ "/pc/sturesourcePc/toupsert.action?categoryId="
			+ categoryId+"&type=3";
		}
		function doGet(url) {
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#newsTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		}
		function remove(newsId) {
			layer.confirm('确定要删除?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/pc/sturesourcePc/delete.action?id=" + newsId;
				$.get(url, {}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#newsTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
				});
			});
		}
	</script>
</body>
</html>
