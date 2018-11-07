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
							<input type="hidden" id="categoryId" name="categoryId"
								value="${param.categoryId}">
							<div class="form-group">
								<div class="col-sm-2 col-sm-offset-1">
									<div class="input-group fg-float">
										<div class="fg-line">
											<input id="regex:title" name="regex:title" type="text"
												class="form-control"> <label class="fg-label">标题</label>
										</div>
									</div>
								</div>
								<label class="col-sm-2 control-label">是否有效</label>
								<div class="col-sm-3">
									<select class="form-control selectpicker" id="state|integer"
										name="state|integer">
										<option value="">请选择</option>
										<option value="1">有效</option>
										<option value="0">无效</option>
									</select>
								</div>
								<div class="col-sm-4">
									<button id="search" class="btn btn-primary" type="submit">查询</button>
									<button id="newNews" class="btn btn-danger m-l-20"
										type="button">新增新闻资讯</button>
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
							$("#categoryTable").grid(
									{
										url : _ctxPath
												+ "/pc/news/categoryPc/query.action",
										postData : {},
										colNames : [ "分类名称", "排序" ],
										onSelectRow : function(id) {
											var cid = $("#" + id,
													$("#categoryTable")).data(
													"rawData")._id;
											if (!categoryId
													|| categoryId != cid) {
												categoryId = cid;
												loadNews();
											}
										},
										colModel : [ {
											name : "name",
											index : "name"
										}, {
											name : "order",
											index : "order"
										} ]
									});
							$("#categoryTable").reloadGrid({
								postData : {}
							});
							$("#newNews")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/pc/newsPc/toUpsert.action?categoryId="
														+ categoryId;
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
														+ "/pc/newsPc/query.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作", "标题",
														"发布日期", "是否有效", "是否置顶",
														"点击次数", "收藏次数", "赞次数" ],
												colModel : [
														{
															name : "_id",
															index : "_id",
															align : "center",
															width : 160,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='${ctxPath}/pc/newsPc/toUpsert.action?newsId="
																		+ cellvalue
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
														},
														{
															name : "title",
															index : "title",
															width : 460
														},
														{
															name : "createTime",
															index : "createTime",
															width : 160
														},
														{
															name : "state",
															index : "state",
															width : 80,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == 0) {
																	return "<font color='red'>无效</font>";
																} else if (cellvalue == 1) {
																	return "有效";
																} else
																	return "未知";
															}
														},
														{
															name : "isTop",
															index : "isTop",
															width : 80,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == 0) {
																	return "否";
																} else if (cellvalue == 1) {
																	return "置顶";
																} else
																	return "未知";
															}
														},
														{
															name : "times",
															index : "times",
															width : 100
														},
														{
															name : "favorTimes",
															index : "favorTimes",
															width : 100
														}, {
															name : "zanTimes",
															index : "zanTimes",
															width : 100
														} ]
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
			doGet(_ctxPath + "/pc/newsPc/enable/" + newsId + ".action");
		}
		function disable(newsId) {
			doGet(_ctxPath + "/pc/newsPc/disable/" + newsId + ".action");
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
				var url = _ctxPath + "/pc/newsPc/remove/" + newsId + ".action";
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
