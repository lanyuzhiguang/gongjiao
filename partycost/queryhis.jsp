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
			 <div class="my-titlebar">
						<a
							href="${ctxPath}/pc/feePc/toQuery.action"
							class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
						</a>
							历史信息
					</div>
				<form id="searchForm" method="get" class="form-horizontal">
					<div class="form-group" style="display:none">
						<div class="col-sm-2 col-sm-offset-1">
							<div class="input-group fg-float">
								<div class="fg-line">
									<input id="regex:phone" name="regex:phone" type="text"
										class="form-control"> <label class="fg-label">心得内容</label>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group" style="display:none">
						
						<div class="col-sm-2 col-sm-offset-1">
							<div class="col-sm-2">
								<button id="search" class="btn btn-primary" type="submit">查询</button>
							</div>
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
														+ "/pc/feePc/queryfeehis.action?feeid=${param.userId}",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "姓名", "所属支部",
																"缴纳基数", "缴纳比例", "每月应缴金额", "规则生效开始时间", "修改日期"],
		//,"操作","修改历史记录" 
														colModel : [
																{
																	name : "userName",
																	index : "userName",
																	width : 100
																},
																{
																	name : "bumenName",
																	index : "bumenName",
																	width : 140
																},
																{
																	name : "basefee",
																	index : "basefee"
																},
																{
																	name : "proportionStr",
																	index : "proportionStr"
																},
																{
																	name : "payable",
																	index : "payable"
																},
																{
																	name : "fmtStartTime",
																	index : "fmtStartTime",
																}
																,
																{
																	name : "updateTime",
																	index : "updateTime",
																}]
											});

						});
	</script>
</body>
</html>
