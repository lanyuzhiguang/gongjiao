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
					<a href="${ctxPath}/pc/group/favorMemberPc/toQueryteam.action?groupId=${param.groupId}" class="btn-link"> <i
						class="fa fa-angle-double-left"></i>返回
					</a>
						新增团队人员
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>

				<form id="favorMember" method="post"
					action="${ctxPath}/pc/group/favorMemberPc/upsertteam.action" class="form-horizontal">
					<input  type="hidden" id="_id" name="_id" >
					<input  type="hidden" id="createTime" name="createTime" >
					<input  type="hidden" id="userId" name="userId">
					<input  type="hidden" id="groupId" name="groupId" value="${param.groupId}">
					<div class="form-group">
						<label class="col-sm-2 control-label">选择用户</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input type="text" class="form-control "
									   id="userName" name="userName" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">分配角色</label>
						<div class="col-sm-10">
							<div class="fg-line" style="margin-top: 8px;">
								<label class="radio radio-inline m-r-20">
									<input type="radio"  name="role"value="0" class="role">
									<i class="input-helper"></i>
									群主
								</label>
								<label class="radio radio-inline m-r-20">
									<input type="radio" name="role" value="1" class="role">
									<i class="input-helper"></i>
									管理员
								</label>
								<label class="radio radio-inline m-r-20">
									<input type="radio"  name="role" class="role" checked="checked" value="2">
									<i class="input-helper"></i>
									用户
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">审核状态</label>
						<div class="col-sm-10">
							<div class="fg-line" style="margin-top: 8px;">
								<label class="radio radio-inline m-r-20">
									<input type="radio"  name="state" class="state" value="0" >
									<i class="input-helper"></i>
									申请中
								</label>
								<label class="radio radio-inline m-r-20">
									<input type="radio"  name="state" class="state"  checked="checked"  value="1">
									<i class="input-helper"></i>
									已审核
								</label>
							</div>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
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
		$().ready(function() {
			$("#favorMember").validate({
				submitHandler : function(form) {
					$.shade.show();
					$("#favorMember").enable();
					form.submit();
				}
			});

			$("#cancelBtn").click(function() {
				document.location.href = _ctxPath + "/pc/group/favorMemberPc/toQueryteam.action?groupId=${param.groupId}";
			});
		});
	</script>
</body>
</html>
