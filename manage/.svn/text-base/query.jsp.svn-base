<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding" style="padding: 5px;">
				<div class="row">
					<!-- <div class="col-sm-3 maxHeight" style="padding-left: 18px;padding-top: 9px;">
							<table id="categoryTable"></table>
					</div> -->
					<div class="col-sm-12 maxHeight" style="padding-left: 28px;padding-top: 4px;">
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
									<button id="newActivity" class="btn btn-danger m-l-20"
										type="button">新增活动</button>
								</div>
							</div>
						</form>
							<table id="activityTable"></table>
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
							/* $("#categoryTable")
									.grid(
											{
												url : _ctxPath
														+ "/manage/activity/category/query.action",
												postData : {},
												autowidth:false,
												width:200,
												colNames : [ "分类名称", "排序" ],
												onSelectRow : function(id) {
													var cid = $("#" + id,
															$("#categoryTable"))
															.data("rawData")._id;
													if (!categoryId
															|| categoryId != cid) {
														categoryId = cid;
														loadActivity();
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
							}); */
							$("#newActivity")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/manage/activity/toUpsert.action?categoryId="
														+ categoryId;
											});

							$("#searchForm").submit(function() {
								$("#activityTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								return false;
							});
							$("#activityTable")
									.grid(
											{
												url : _ctxPath
														+ "/manage/activity/querya.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作", "标题","活动分类",
														"发布日期", "是否有效", "开始时间",
														"结束时间", "点击次数", "报名次数" ],
												colModel : [
														{
															name : "_id",
															index : "_id",
															align : "center",
															width:250,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='${ctxPath}/manage/activity/toUpsert.action?activityId="
																		+ cellvalue
																		+ "' class='m-r-10'>详情</a>";
																		v += "<a href='${ctxPath}/manage/activityEnroll/toExclAcEnr.action?activityId="
																			+ cellvalue
																			+ "' class='m-r-10'>下载报名</a>";
																		v += "<a href='${ctxPath}/manage/activityEnroll/toExclAcSign.action?activityId="
																			+ cellvalue
																			+ "' class='m-r-10'>下载签到</a>";
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
															width : 200
														},
														{
															name : "categoryName",
															index : "categoryName",
															width : 100
														},
														{
															name : "createTime",
															index : "createTime",
															width : 140
														},
														{
															name : "state",
															index : "state",
															width : 70,
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
															name : "startTime",
															index : "startTime",
															width : 140
														},
														{
															name : "endTime",
															index : "endTime",
															width : 140
														},
														{
															name : "times",
															index : "times",
															width : 70
														},
														{
															name : "enrollTimes",
															index : "enrollTimes",
															width : 100
														} ]
											});
							//$('#activityTable').setGridWidth('550');

						});
		function loadActivity() {
			if (!categoryId)
				return;
			$("#categoryId").val(categoryId);
			$("#activityTable").reloadGrid({
				postData : $("#searchForm").formobj()
			});
		}
		function enable(activityId) {
			doGet(_ctxPath + "/manage/activity/enable/" + activityId + ".action");
		}
		function disable(activityId) {
			doGet(_ctxPath + "/manage/activity/disable/" + activityId + ".action");
		}
		function doGet(url) {
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#activityTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		}
		function remove(activityId) {
			layer.confirm('确定要删除?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/manage/activity/remove/" + activityId
						+ ".action";
				$.get(url, {}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#activityTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
				});
			});
		}
	</script>
</body>
</html>
