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
										class="form-control"> <label class="fg-label">群组名称</label>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<button id="search" class="btn btn-primary" type="submit">查询</button>
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
														+ "/pc/group/favorGroupPc/queryweb.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作", "名称",
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
																var v = "";//<a href='${ctxPath}/group/favorMember/toQueryweb.do?groupId="
                                                               // + cellvalue
                                                               // + "' class='m-r-10'>查看群人员</a>
                                                                v +="&nbsp;&nbsp; <a href='${ctxPath}/pc/group/groupMessagePc/toQueryweb.action?groupId="
																	+ cellvalue
																	+ "' class='m-r-10'>查看群消息</a>";
																return v;
															}
														},
														{
															name : "name",
															index : "name",
															width : 270
														},
														{
															name : "createTime",
															index : "createTime",
															width : 220
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
