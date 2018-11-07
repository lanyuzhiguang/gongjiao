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
										class="form-control"> <label class="fg-label">团队名称</label>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<button id="search" class="btn btn-primary" type="submit">查询</button>
							<button id="newUser" class="btn btn-danger m-l-20" type="button">新增团队</button>
						</div>
					</div>
				</form>
				<div class="jqGrid_wrapper">
					<table id="groupTable"></table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//var manageType;
		$().ready(
						function() {
							$("#newUser").click(function() {
								document.location.href = _ctxPath
										+ "/pc/group/favorGroupPc/toUpsertteam.action";
							});
							$("#searchForm").submit(function() {
								$("#groupTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								return false;
							});
							$("#groupTable")
									.grid(
											{
												url : _ctxPath
														+ "/pc/group/favorGroupPc/queryteam.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作", "名称", "描述","审核状态",
														"创建时间" ],
												colModel : [
														{
															name : "_id",
															index : "_id",
															align : "center",
															width : 270,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='${ctxPath}/pc/group/favorGroupPc/toUpsertteam.action?id="
																		+ cellvalue
																		+ "' class='m-r-10'>修改团队</a>";
                                                                v += "&nbsp;&nbsp; <a href='${ctxPath}/pc/group/favorMemberPc/toQueryteam.action?groupId="
                                                                    + cellvalue
                                                                    + "' class='m-r-10'>查看团队人员</a>";
                                                                v +="&nbsp;&nbsp; <a href='${ctxPath}/pc/group/groupMessagePc/toQueryteam.action?groupId="
																	+ cellvalue
																	+ "' class='m-r-10'>查看团队消息</a>";
																return v;
															}
														},
														{
															name : "name",
															index : "name",
															width : 100
														},
														{
															name : "content",
															index : "content",
                                                            width : 300
														},
														{
															name : "valid",
															index : "valid",
															width : 100,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == 0) {
																	return "<font color='red'>待审核</font>";
																} else if (cellvalue == 1) {
																	return "通过审核";
																} else if (cellvalue == -1) {
																	return "未通过审核";
																} else
																	return "未知";
															}
														},
														{
															name : "createTime",
															index : "createTime",
															width : 200
														}
														]
											});

						});
	/*	function enable(userId) {
			doGet(_ctxPath + "/basic/user/enable/" + userId + ".do");
		}
		function disable(userId) {
			doGet(_ctxPath + "/basic/user/disable/" + userId + ".do");
		}
		function doGet(url) {
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#userTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		}*/
	</script>
</body>
</html>
