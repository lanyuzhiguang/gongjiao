<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<!DOCTYPE html>
<html>
	<head>
	</head>
	<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<c:if test="${skip == 1 }">
					<div class="my-titlebar">
						<a href="${ctxPath}/basic/user/toPartyUpsert.action?bumenId=${param.bumenId}&userId=${ffadministrativeDuties.userId }"
						class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
					</a>
						行政职务信息编辑
					</div>
				</c:if>
				<c:if test="${skip == 2 }">
					<div class="my-titlebar">
						<a href="${ctxPath}/basic/adminUser/toUpsert.action?bumenId=${param.bumenId}&userId=${ffadministrativeDuties.userId }"
						class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
					</a>
						行政职务信息编辑
					</div>
				</c:if>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>

	<form id="administrativeDuties" action="#" method="post" class="form-horizontal">
		<input type="hidden" id="_id" name="_id" value="">
		<input type="hidden" id="userId" name="userId" value="">
		<input type="hidden" id="createTime" name="createTime" value="">
		<input type="hidden" id="tenantId" name="tenantId" value="">
		<input type="hidden" id="state" name="state" value="">
		<input type="hidden" id="type" name="type" value="">
		<div class="form-group">
		<div class="col-sm-12 col-sm-offset-1">
			<label class="col-sm-1 control-label">任职单位：</label>
			<div class="col-sm-3">
				<div class="fg-line">
					<input type="text" value="" id="companyName" name="companyName" class="form-control" required>
				</div>
			</div>
			<label class="col-sm-1 control-label">任职部门：</label>
			<div class="col-sm-3">
				<div class="fg-line">
					<input type="text" value="" id="bumenName" name="bumenName" class="form-control" required>
				</div>
			</div>
		</div>
		</div>
		
		<div class="form-group">
		<div class="col-sm-12 col-sm-offset-1">
			<label class="col-sm-1 control-label">职务名称：</label>
			<div class="col-sm-3">
				<div class="fg-line">
					<input type="text" value="" id="jobTitle" name="jobTitle" class="form-control" required>
				</div>
			</div>
			<label class="col-sm-1 control-label">职级：</label>
			<div class="col-sm-3">
				<select class="form-control selectpicker" id="rank" name="rank" required>
						<option value="1">省部级正职</option>
						<option value="2">省部级副职</option>
						<option value="3">地厅级正职</option>
						<option value="4">地厅级副职</option>
						<option value="5">县处级正职</option>
						<option value="6">县处级副职</option>
						<option value="7">乡科级正职</option>
						<option value="8">乡科级副职</option>
						<option value="9">所股级正职</option>
				</select>
			</div>
		</div>
		</div>
		
		<div class="form-group">
		<div class="col-sm-12 col-sm-offset-1">
			<label class="col-sm-1 control-label">任职方式：</label>
			<div class="col-sm-3">
				<select class="form-control selectpicker" id="bywayId" name="bywayId" required>
						<option value="1">聘任</option>
						<option value="2">任命</option>
				</select>
			</div>
			<label class="col-sm-1 control-label">任职状态：</label>
			<div class="col-sm-3">
				<select class="form-control selectpicker" id="status" name="status" required>
						<option value="1">在任</option>
						<option value="2">离任</option>
				</select>
			</div>
		</div>
		</div>
		<div class="form-group">
		<div class="col-sm-12 col-sm-offset-1">
			<label class="col-sm-1 control-label">任职日期：</label>
			<div class="col-sm-3">
				<div class="fg-line">
						<input id="fromatStartTime" name="startTime" type="text" class="form-control laydate-icon" required>
				</div>
			</div>
			<label class="col-sm-1 control-label">离职日期：</label>
			<div class="col-sm-3">
				<div class="fg-line">
					<input id="fromatEndTime" name="endTime" type="text" class="form-control laydate-icon">
				</div>
			</div>
		</div>
		</div>
		<div class="form-group">
			<div class="col-sm-4">
			</div>
			<div class="col-sm-4">
				<button class="btn btn-primary" type="submit">保存</button>
				<button id="cancelBtn" class="btn btn-primary" type="button">取消</button>
			</div>
			<div class="col-sm-4">
			</div>
		</div>
		
	</form>
			
	</div>
</div>
</div>	

	
	</body>
	<script type="text/javascript">
	$()
	.ready(
			function() {

				laydate.render({
					elem: '#fromatStartTime' //指定元素
				});
				laydate.render({
					elem: '#fromatEndTime' //指定元素
				});
				$("#cancelBtn").click(function() {
					layer.confirm('以上编辑的信息将不会保存与修改，是否取消？',{title:"提示"}, function(index) {
						<c:if test="${skip == 1 }">
						document.location.href = _ctxPath+ "/basic/user/toPartyUpsert.action?bumenId=${param.bumenId}&userId=${ffadministrativeDuties.userId }";
						</c:if>
						<c:if test="${skip == 2 }">
							document.location.href = _ctxPath+ "/basic/adminUser/toUpsert.action?bumenId=${param.bumenId}&userId=${ffadministrativeDuties.userId }";
						</c:if>
					});
				});

				$("#administrativeDuties").validate({
					submitHandler : function(form) {
						$("#administrativeDuties").enable();
							layer.confirm('是否确认提交当前用户的行政职务信息？',{title:"提示"}, function(index) {
								layer.close(index);
								$.shade.show();
								$.ajax({
						  	        type:"post",
						  	        url:_ctxPath+"/administrativeDuties/upsert.action",
						  	      	data:$('#administrativeDuties').serialize(),
						  	        dataType:"json",
						  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
						  	        success:function(data){
									if (data) {
										if (data.success) {
											window.parent.toastr.success("操作成功");
											<c:if test="${skip == 1 }">
												document.location.href = _ctxPath+ "/basic/user/toPartyUpsert.action?bumenId=${param.bumenId}&userId=${ffadministrativeDuties.userId }";
											</c:if>
											<c:if test="${skip == 2 }">
												document.location.href = _ctxPath+ "/basic/adminUser/toUpsert.action?bumenId=${param.bumenId}&userId=${ffadministrativeDuties.userId }";
											</c:if>
										} else {
											toastr.error(data.message);
										}
									} else {
										toastr.error("操作失败");
									}
								}});
							});
					}
				});

});

	</script>
</html>