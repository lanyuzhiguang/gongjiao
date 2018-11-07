<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>

<style type="text/css">
.laydate_table { 
	display: none;
}
#laydate_hms{
	display: none !important;
}
</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<c:if test="${account.entityID != fffeeinfo._id }">
					<div class="my-titlebar">
						<a
							href="${ctxPath}/pc/feePc/toQuery.action?bumenId=${param.bumenId}"
							class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
						</a>
						<c:if test="${fffeeinfo._id == null}">
							新建信息
						</c:if>
						<c:if test="${fffeeinfo._id != null}">
							修改信息
						</c:if>
					</div>
				</c:if>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="feeinfo" method="post"
					action="${ctxPath}/pc/feePc/upsert.action" class="form-horizontal">
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="createTime" name="createTime"><input
						type="hidden" id="valid" name="valid">
					<div class="form-group">
						<label class="col-sm-2 control-label">姓名</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="userName" name="userName" type="text" class="form-control"
									minlength="2" maxlength="50"  readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">所属支部</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="bumenName" name="bumenName" type="text" class="form-control"
									minlength="2" maxlength="50"  readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">缴纳基数</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="basefee" name="basefee" type="text" class="form-control"
									minlength="1" maxlength="50" >
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">缴纳比例</label>
						<div class="col-sm-4">
							<div class="fg-line">
							<div style="font-size:15px;color:red;display:inline-block;line-height:35px;">%</div>
								<input style="width: 17%;float: left;" id="proportion" name="proportion" type="text" class="form-control"
									minlength="1" maxlength="50" >
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">缴纳金额</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="payable" name="payable" type="text" class="form-control"
									minlength="1" maxlength="50"  readonly="readonly">
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">生效时间</label>
						<div class="col-sm-3">
							<input id="startTime" name="startTime"   value="">
					<!--<input id="fmtStartTime" name="fmtStartTime" class="laydate-icon form-control" type="text" onclick="laydate({istime: true, format: 'YYYY-MM'})" /> -->
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<button class="btn btn-primary" type="submit">提交</button>
							<c:if test="${account.entityID != ffuser._id }">
								<button id="cancelBtn" class="btn bgm-gray m-l-20" type="button">取消</button>
							</c:if>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$()
				.ready(
						function() {
							

							$("#cancelBtn")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/pc/feePc/toQuery.action?bumenId=${param.bumenId}";
											});

							//执行一个laydate实例
							var d = new Date();
							var str = d.getFullYear()+"-"+(d.getMonth()+2);
							laydate.render({
								elem: '#startTime', //指定元素
								type: 'month',
								value:str,
								min: 3
							});

						});
	</script>
</body>
</html>
