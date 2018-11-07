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
								<div class="col-sm-2">
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
								<label class="col-sm-2 control-label">学习类型</label>
								<div class="col-sm-3">
									<select class="form-control selectpicker" id="type|integer"
										name="type|integer">
										<option value="">请选择</option>
										<option value="1">视频</option>
										<option value="2">音频</option>
										<option value="3">文档</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-10 col-sm-offset-1">
									<button id="search" class="btn btn-primary" type="submit">查询</button>
									<button id="newVideo" class="btn btn-danger m-l-20"
										type="button">新增视频</button>
									<button id="newAudio" class="btn btn-danger m-l-5"
										type="button">新增音频</button>
									<button id="newDoc" class="btn btn-danger m-l-5" type="button">新增文档</button>
									<!-- <button id="newExam" class="btn btn-danger m-l-5" type="button">新增考试</button> -->
								</div>
							</div>
						</form>
						<div class="jqGrid_wrapper">
							<table id="studyTable"></table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$()
				.ready(
						function() {
							$("#newVideo").click(
									function() {
										document.location.href = _ctxPath
												+ "/pc/studyPc/toUpsert.action?type=1";
									});
							$("#newAudio").click(
									function() {
										document.location.href = _ctxPath
												+ "/pc/studyPc/toUpsert.action?type=2";
									});
							$("#newDoc").click(
									function() {
										document.location.href = _ctxPath
												+ "/pc/studyPc/toUpsert.action?type=3";
									});
						//	$("#newExam").click(
						//			function() {
						//				document.location.href = _ctxPath
						//						+ "/study/toUpsert.do?type=4";
						//			});

							$("#searchForm").submit(function() {
								$("#studyTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								return false;
							});
							$("#studyTable")
									.grid(
											{
												url : _ctxPath
														+ "/pc/studyPc/query.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作", "标题", "类型",
														"发布日期", "是否有效", "是否置顶",
														"点击次数", "收藏次数" ],
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
																var v = "<a href='${ctxPath}/pc/studyPc/toUpsert.action?studyId="
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
															name : "type",
															index : "type",
															width : 80,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == 1) {
																	return "视频";
																} else if (cellvalue == 2) {
																	return "音频";
																} else if (cellvalue == 3) {
																	return "文档";
																} else if (cellvalue == 4) {
																	return "考试";
																} else
																	return "未知";
															}
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
														} ]
											});

						});

		function enable(studyId) {
			doGet(_ctxPath + "/pc/studyPc/enable/" + studyId + ".action");
		}
		function disable(studyId) {
			doGet(_ctxPath + "/pc/studyPc/disable/" + studyId + ".action");
		}
		function doGet(url) {
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#studyTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		}
		function remove(studyId) {
			layer.confirm('确定要删除?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/pc/studyPc/remove/" + studyId + ".action";
				$.get(url, {}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#studyTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
				});
			});
		}
	</script>
</body>
</html>
