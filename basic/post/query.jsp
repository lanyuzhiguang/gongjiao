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
										class="form-control"> <label class="fg-label">名称</label>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<button id="search" class="btn btn-primary" type="submit">查询</button>
							<button id="newPost" class="btn btn-danger m-l-20" type="button">新增</button>
						</div>
					</div>
				</form>
				<div class="jqGrid_wrapper">
					<table id="postTable"></table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var manageType;
		$()
				.ready(
						function() {
							$("#newPost").click(
									function() {
										document.location.href = _ctxPath
												+ "/post/toUpsert.action";
									});

							$("#searchForm").submit(function() {
								$("#postTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								return false;
							});
							$("#postTable")
									.grid(
											{
												url : _ctxPath
														+ "/post/query.action",
												postData : $("#searchForm")
														.formobj(),
												colNames : [ "名称", "操作" ],
												colModel : [
														{
															name : "name",
															index : "name"
														},
														{
															name : "_id",
															index : "_id",
															align : "center",
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='${ctxPath}/post/toUpsert.action?postId="
																		+ cellvalue
																		+ "'>详情</a>";
																v += "<a href='javascript:void(0);' onclick='remove(\""
																		+ cellvalue
																		+ "\")' class='m-l-10'>删除</a>";
																return v;
															}
														} ]
											});

						});
		function remove(id) {
			doGet(_ctxPath + "/post/remove/" + id + ".action");
		}

		function doGet(url) {
			layer.confirm('确定要删除岗位信息?', function(index) {
				layer.close(index);
				$.get(url, {}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#postTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
				});
			});

		}
	</script>
</body>
</html>
