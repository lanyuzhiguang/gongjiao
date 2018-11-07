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
											<input id="regex:categoryName" name="regex:categoryName" type="text"
												class="form-control"> <label class="fg-label">名称</label>
										</div>
									</div>
								</div>
								<!--  <label class="col-sm-2 control-label">是否有效</label>
								<div class="col-sm-3">
									<select class="form-control selectpicker" id="state|integer"
										name="state|integer">
										<option value="">请选择</option>
										<option value="1">有效</option>
										<option value="0">无效</option>
									</select>
								</div>-->
								<div class="col-sm-4">
									<button id="search" class="btn btn-primary" type="submit">查询</button>
									
								</div>
							</div>
						</form>
						<div class="jqGrid_wrapper">
							<table id="scoreSetDetailTable"></table>
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
												+ "/pc/score/category/query.action",
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

							$("#searchForm").submit(function() {
								$("#scoreSetDetailTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								return false;
							});
							$("#scoreSetDetailTable")
									.grid(
											{
												url : _ctxPath
														+ "/pc/score/scoresetdetail/query.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作","积分编码","积分名称","积分类别","标记字段","分值","是否有效",
															 "发布日期"
														 ],
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
																var v = "<a href='${ctxPath}/pc/score/scoresetdetail/toUpsert.action?setDetailId="
																		+ cellvalue
																		+ "' class='m-r-10'>详情</a>";

																return v;
															}
														},
														 {
															name : "type",
															index : "type",
															width : 100
														}, 
														{
															name : "typeName",
															index : "typeName",
															width : 100
														},
														{
															name : "categoryName",
															index : "categoryName",
															width : 100
														},
														{
															name : "fieldname",
															index : "fieldname",
															width : 100
														},{
															name : "fieldscore",
															index : "fielscore",
															width : 100
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
															name : "createTime",
															index : "createTime",
															width : 160
														}
														]
											});

						});

		function disable(setDetailId) {
			doGet(_ctxPath + "/pc/score/scoresetdetail/disable/" + setDetailId + ".action");
		}
		function doGet(url) {
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#scoreSetDetailTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		}
		function remove(setDetailId) {
			layer.confirm('确定要删除?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/pc/score/scoresetdetail/remove/" + setDetailId + ".action";
				$.get(url, {}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#scoreSetDetailTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
				});
			});
		}
	</script>
</body>
</html>
