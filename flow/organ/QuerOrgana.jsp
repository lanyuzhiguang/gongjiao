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
				<form id="searchForm" method="post" class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-1 control-label">姓名</label>
						<div class="col-sm-1">
							<div class="fg-line">
								<input id="regex:userName" name="regex:userName" type="text" class="form-control">
							</div>
						</div>
						<label class="col-sm-1 control-label">原支部</label>
						<div class="col-sm-1">
							<div class="fg-line">
								<input id="regex:bumenName" name="regex:bumenName" type="text" class="form-control">
							</div>
						</div>
						<label class="col-sm-1 control-label">目标支部</label>
						<div class="col-sm-1">
							<div class="fg-line">
								<input id="regex:toBumenName" name="regex:toBumenName" type="text" class="form-control">
							</div>
						</div>
						<label class="col-sm-1 control-label">申请日期:</label>
						<div class="col-sm-2">
							<div class="fg-line">
								<input type="text" id="gte:reatDate|date" name='gte:reatDate|date' class="form-control laydate-icon starTime"/> 
							</div>
						</div>
						<label class="col-sm-1 control-label">到</label>
						<div class="col-sm-2">
							<div class="fg-line">
								<input type="text" id="lte:reatDate|date" name='lte:reatDate|date' class="form-control laydate-icon endTime"/> 
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-1 control-label">类型</label>
						<div class="col-sm-1">
							<div class="fg-line">
								<select class="form-control" id="orgType|integer" name="orgType|integer">
										<option value="">请选择</option>
										<option value="1">系统内转接</option>
										<option value="2">转出系统外</option>
										<option value="3">系统外转入</option>
								</select>
							</div>
						</div>
						<label class="col-sm-1 control-label">状态</label>
						<div class="col-sm-1">
							<div class="fg-line">
								<select class="form-control" id="state|integer" name="state|integer">
										<option value="">请选择</option>
										<option value="0">未通过</option>
										<option value="1">处理中</option>
										<option value="2">已通过</option>
								</select>
							</div>
						</div>
						<div class="col-sm-6">
							<button id="search" class="btn btn-primary" type="submit">查询</button>
						</div>
					</div>
				</form>
				<div class="jqGrid_wrapper">
					<table id="categoryTable"></table>
				</div>
			</div>
		</div>
	</div>
	
	<script src="${ctxPath}/modulepc/resources/plugins/laydate/layui.js" type="text/javascript" ></script>
	<script src="${ctxPath}/modulepc/resources/plugins/laydate/laydate.min.js"></script>
	<script src="${ctxPath}/modulepc/resources/plugins/layer/layui/layui.all.js"></script>
	<script type="text/javascript">
		var manageType;
		$()
				.ready(
						function() {
							$("#newsSpider").click(
									function() {
										document.location.href = _ctxPath
												+ "/spiderSource/toUpsert.action";
									});
							$("#newsTent").click(
								function() {
									$("#_id").val("");
									$("#name").val("");
									$(":radio[name='state'][value='1']").prop("checked", "checked");
									openFrom();
								});
							$("#searchForm").submit(function() {
								$("#categoryTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								return false;
							});
							$("#categoryTable")
									.grid(
											{
												url : _ctxPath
														+ "/organParty/findOrgan.action",
												postData : $("#searchForm")
														.formobj(),
												colNames : [ "姓名", "原支部", "目标支部", "类型" , "当前处理单位" ,"申请日期","处理状态","操作" ],
												colModel : [
														{
															name : "applyUserName",
															index : "applyUserName",
															width : 80
														},
														{
															name : "oldBumenName",
															index : "oldBumenName",
															width : 120
														},
														{
															name : "oldToBumenName",
															index : "oldToBumenName",
															width : 120
														},
														{
															name : "orgType",
															index : "orgType",
															width : 80,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v="";
																if(cellvalue==1){
																	v="系统内转接";
																}else if(cellvalue==2){
																	v="转出系统外";
																}else if(cellvalue==3){
																	v="系统外转入";
																}else{
																	v="未知类型";
																}
																return v;
															}
														},
														{
															name : "bumenName",
															index : "bumenName",
															width : 120
														},
														{
															name : "createTimeFormatData",
															index : "createTimeFormatData",
															width : 90
														},
														{
															name : "state",
															index : "state",
															width : 40,
															formatter : function(//0：待处理,-1：已删除,1：已恢复
																	cellvalue,
																	options,
																	rowObject) {
																var v = "";
																if(cellvalue == 0){
																	v += "未通过";
																}else if(cellvalue == 1){
																	v += "处理中";
																}else if(cellvalue == 2){
																	v += "已通过";
																}else{
																	v += "未知";
																}
																return v;
															}
														},
														{
															name : "flowUUid",
															index : "flowUUid",
															align : "center",
															width : 60,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "";
																	v += "<a href='${ctxPath}/organParty/partyLookEdit.action?flowUUid="+cellvalue+"' class='m-r-10'>查看</a>";
																return v;
															}
														} ]
											});

						});
		
		//时间插件方法
		var startDate = layui.laydate.render({
					elem: ".starTime",
					//type:"datetime",
					change:function(value,date){
					if( value !== '' ){
						endDate.config.min.year = date.year;
						endDate.config.min.month = date.month - 1;
						endDate.config.min.date = date.date;
					}else{
						endDate.config.min.year = '';
						endDate.config.min.month = '';
						endDate.config.min.date = '';
					}
				}
			});


		var endDate = layui.laydate.render({
					elem: ".endTime",
					//type:"datetime",
					change:function(value,date){
					if( value !== '' ){
						startDate.config.max.year = date.year;
						startDate.config.max.month = date.month - 1;
						startDate.config.max.date = date.date;
					}else{
						startDate.config.max.year = '';
						startDate.config.max.month = '';
						startDate.config.max.date = '';
					}
				}
			});
		
	</script>
</body>
</html>
