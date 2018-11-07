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
				<form id="searchForm" method="get" class="form-horizontal">
					<div class="form-group">
						<div class="col-sm-3 col-sm-offset-1">
							<div class="input-group fg-float">
								<div class="fg-line">
									<input id="regex:name" name="regex:name" type="text"
										class="form-control"> <label class="fg-label">专题名称</label>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<button id="search" class="btn btn-primary" type="submit">查询</button>
							<button id="newCategory"
								class="btn btn-outline btn-danger m-l-20" type="button">新增</button>
						</div>
					</div>
				</form>
				<div class="jqGrid_wrapper">
					<table id="categoryTable"></table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var manageType;
		$()
				.ready(
						function() {
							$("#newCategory").click(
									function() {
										document.location.href = _ctxPath
												+ "/pc/news/categoryPc/toUpsertzt.action";
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
														+ "/pc/news/categoryPc/queryzt.action",
												postData : $("#searchForm")
														.formobj(),
												colNames : [ "专题名称", "排序", "操作" ],
												colModel : [
														{
															name : "name",
															index : "name"
														},
														{
															name : "order",
															index : "order"
														},
														{
															name : "_id",
															index : "_id",
															align : "center",
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='${ctxPath}/pc/news/categoryPc/toUpsertzt.action?categoryId="
																		+ cellvalue
																		+ "' class='m-r-10'>详情</a>";
																v += "<a href='javascript:void(0);' onclick='removeCategory(\""
																		+ cellvalue
																		+ "\")'>删除</a>";

																return v;
															}
														} ]
											});

						});
		function removeCategory(categoryId) {
			layer.confirm('确定要删除专题分类信息?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/pc/news/categoryPc/remove/" + categoryId
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
	</script>
</body>
</html>
