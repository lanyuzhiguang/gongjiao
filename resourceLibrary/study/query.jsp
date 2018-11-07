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
								<div class="col-sm-1">
											<label class="fg-label">标题</label>
								</div>
								<div class="col-sm-6">
											<input id="regex:title" name="regex:title" type="text"
												class="form-control"> 
								</div>
								<div class="col-sm-2">
											<button id="search" class="btn btn-primary" type="submit">查询</button>
											<button id="add" class="btn btn-success" type="button">添加</button>
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
							$("#add").click(
										function() {
											document.location.href = _ctxPath
													+ "/pc/studyresourcePc/todetail.action";
										}); 

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
														+ "/pc/studyresourcePc/list.action",
												postData : $("#searchForm")
														.formobj(),
												rownumbers:true,
														shrinkToFit : false,
												autowidth:true,
														colNames : [  "分类名称", "类型",
														 "操作" ],
												colModel : [
														
														{
															name : "categoryName",
															index : "categoryName",
															width : 595
														},
														{
															name : "type",
															index : "type",
															width : 150,
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
															{name : "_id",
															index : "_id",
															align : "center",
															width : 200,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='${ctxPath}/pc/studyresourcePc/todetail.action?id="
																		+ cellvalue
																		+ "' class='m-r-10'>详情</a>";
																v += "<a href='javascript:void(0);' onclick='remove(\""
																		+ cellvalue
																		+ "\")' class='m-r-10'>删除</a>";

																return v;
															}
														}
														/* ,
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
 */														]
											});

						});

		/* function enable(studyId) {
			doGet(_ctxPath + "/study/enable/" + studyId + ".do");
		}
		function disable(studyId) {
			doGet(_ctxPath + "/study/disable/" + studyId + ".do");
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
		} */
		function remove(studyId) {
			layer.confirm('确定要删除?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/pc/studyresourcePc/delete.action?id=" + studyId;
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
