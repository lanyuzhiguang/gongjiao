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
					<div class="col-sm-12">
						<form id="searchForm" method="get" class="form-horizontal">
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
									<button id="newMarquee" class="btn btn-danger m-l-20"
										type="button">新增走马灯</button>
								</div>
							</div>
						</form>
						<div class="jqGrid_wrapper">
							<table id="marqueeTable"></table>
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
							$("#newMarquee").click(
									function() {
										document.location.href = _ctxPath
												+ "/pc/news/marqueePc/toUpsert.action";
									});

							$("#searchForm").submit(function() {
								$("#marqueeTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								return false;
							});
							$("#marqueeTable")
									.grid(
											{
												url : _ctxPath
														+ "/pc/news/marqueePc/query.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作", "标题",
														"发布日期", "是否有效", "点击次数" ],
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
																var v = "<a href='${ctxPath}/pc/news/marqueePc/toUpsert.action?marqueeId="
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
														}, {
															name : "times",
															index : "times",
															width : 100
														} ]
											});

						});
		function enable(marqueeId) {
			doGet(_ctxPath + "/pc/news/marqueePc/enable/" + marqueeId + ".action");
		}
		function disable(marqueeId) {
			doGet(_ctxPath + "/pc/news/marqueePc/disable/" + marqueeId + ".action");
		}
		function doGet(url) {
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#marqueeTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		}
		function remove(marqueeId) {
			layer.confirm('确定要删除?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/pc/news/marqueePc/remove/" + marqueeId
						+ ".action";
				$.get(url, {}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#marqueeTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
				});
			});
		}
	</script>
</body>
</html>
