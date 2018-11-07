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
				<c:if test="${account.entityID != fffeerecord._id }">
					<div class="my-titlebar">
						<a
							href="${ctxPath}/feerecord/toQuerya.action?bumenId=${param.bumenId}"
							class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
						</a>
						<c:if test="${fffeerecord._id == null}">
							新建信息
						</c:if>
						<c:if test="${fffeerecord._id != null}">
							确认缴费信息
						</c:if>
					</div>
				</c:if>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="feerecord" method="post"
					action="${ctxPath}/feerecord/upsert.action" class="form-horizontal">
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="createTime" name="createTime">
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
						<label class="col-sm-2 control-label">应缴金额</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="payable" name="payable" type="text" class="form-control"
									minlength="2" maxlength="50"  readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">实缴金额</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="paid" name="paid" type="text" class="form-control"
									minlength="2" maxlength="50" >
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<button class="btn btn-primary" type="submit">提交</button>
							<button id="cancelBtn" class="btn bgm-gray m-l-20" type="button">取消</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$().ready(
				  
					function() {
					document.getElementById("paid").value=document.getElementById("payable").value;
                      $("#cancelBtn")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/feerecord/toQuerya.action?bumenId=${param.bumenId}";
											});

						});
		
	</script>
</body>
</html>
