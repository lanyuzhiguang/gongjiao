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
										class="form-control"> <label class="fg-label">心得分类名称</label>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<button id="search" class="btn btn-primary" type="submit">查询</button>
							<button id="newGroup" class="btn btn-danger m-l-20" type="button">新增心得分类</button>
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
		$()
				.ready(
						function() {
							$("#newGroup")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/pc/study/gained/groupPc/toUpsert.action";
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
														+ "/pc/study/gained/groupPc/query.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作", "名称", "描述",
														"创建时间" ],
												colModel : [
														{
															name : "_id",
															index : "_id",
															align : "center",
															width : 100,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='${ctxPath}/pc/study/gained/groupPc/toUpsert.action?id="
																		+ cellvalue
																		+ "' class='m-r-10'>详情</a>";
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
															width : 400
														},
														{
															name : "createTime",
															index : "createTime",
															width : 200
														} ]
											});

						});
	</script>
</body>
</html>
