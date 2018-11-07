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
						<div class="col-sm-10 col-sm-offset-1">
							<div class="input-group fg-float col-sm-7">
								<div class="fg-line col-sm-4">
									<input id="regex:content" name="regex:content" type="text"
										class="form-control col-sm-4"> <label class="fg-label">心得内容</label>
								</div>
							</div>
						</div>
						<!-- <label class="col-sm-1 control-label">分类</label>
						<div class="col-sm-2">
							<select class="form-control" id="groupId" name="groupId">
								<option value="">请选择</option>
							</select>
						</div> -->
					</div>
					<div class="form-group">
					<div class="col-sm-3 col-sm-offset-1">
						<div class="input-group fg-float">
						<div class="fg-line">
						    <input type="text" id="gte:createTime|date" name='gte:createTime|date' class="startTime form-control laydate-icon"/>
						    <label class="fg-label">开始日期</label>  
						</div>
						</div>
					</div>
						
					<div class="col-sm-3">
						<div class="input-group fg-float">
						<div class="fg-line">
					    	<input type="text" id="lte:createTime|date" name='lte:createTime|date' class="endTime form-control col-sm-2 laydate-icon"/>
					    	<label class="fg-label">结束日期</label>   
					    </div>
					    </div>
					</div>
						
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
	<script src="${ctxPath}/moduleweb/resources/plugins/laydate/layui.js" type="text/javascript" ></script>
	<script src="${ctxPath}/moduleweb/resources/plugins/laydate/laydate.min.js"></script>
	<script type="text/javascript">
		//var manageType;
		$().ready(
						function() {
	//时间插件方法
	var startDate = layui.laydate.render({
	elem: '.startTime',
	type:"datetime",
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
	elem: '.endTime',
	type:"datetime",
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


							$("#newGroup")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/pc/basegainedPc/gainedDetail.action";
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
														+ "/pc/basegainedPc/gainedList.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作", "心得内容", "发布人","课程名称"
												             ,"点赞次数","评论次数","发布时间" ],
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
																var v = "<a href='${ctxPath}/pc/basegainedPc/gainedDetail.action?gainedId="
																		+ cellvalue
																		+ "' class='m-r-10'>详情</a>";
																return v;
															}
														},
														{
															name : "content",
															index : "content",
															width : 400
														},
														{
															name : "userName",
															index : "userName",
															width : 100
														},
														{
															name : "baseName",
															index : "baseName",
															width : 100
														},
														{
															name : "zanTimes",
															index : "zanTimes",
															width : 80
														},
														{
															name : "commentTimes",
															index : "commentTimes",
															width : 80
														},
														{
															name : "createTime",
															index : "createTime",
															width : 200
														}]
											});

						});
		


	</script>
</body>
</html>
