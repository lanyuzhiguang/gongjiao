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
										<option value="1">已回复</option>
										<option value="0">未回复</option>
									</select>
								</div>
								<div class="col-sm-2">
									<button id="search" class="btn btn-primary" type="submit">查询</button>
								</div>
								<div class="col-sm-2">
									<button id="setrec" class="btn btn-primary" type="button">接收信息人设置</button>
								</div>
							</div>
						</form>
						<div class="jqGrid_wrapper">
							<table id="mailboxTable"></table>
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
							$("#searchForm").submit(function() {
								$("#mailboxTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								return false;
							});
							
							$("#setrec").click(function(){
								document.location.href=_ctxPath+"/basic/user/toQuery.action?setrec=1";
							}
						);
							
							
							
							$("#mailboxTable")
									.grid(
											{
												url : _ctxPath
														+ "/pc/mailboxPc/query.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作", "标题",
														"发布日期", "状态",
														"书记姓名", "所属部门", "回复时间" ],
												colModel : [
														{
															name : "_id",
															index : "_id",
															align : "center",
															width : 80,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='${ctxPath}/pc/mailboxPc/toUpsert.action?mailboxId="
																		+ cellvalue
																		+ "' class='m-r-10'>详情</a>";
																v += "<a href='javascript:void(0);' onclick='remove(\""
																		+ cellvalue
																		+ "\")' class='m-r-10'>删除</a>";

																return v;
															}
														},
														{
															name : "title",
															index : "title",
															width : 260
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
																	return "未回复";
																} else if (cellvalue == 1) {
																	return "已回复";
																} else
																	return "未知";
															}
														},
														{
															name : "masterName",
															index : "masterName",
															width : 100
														},
														{
															name : "bumenName",
															index : "bumenName",
															width : 100
														},
														{
															name : "replyTime",
															index : "replyTime",
															width : 160
														} ]
											});

						});

		function remove(mailboxId) {
			layer.confirm('确定要删除?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/pc/mailboxPc/remove/" + mailboxId
						+ ".action";
				$.get(url, {}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#mailboxTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
				});
			});
		}
	</script>
</body>
</html>
