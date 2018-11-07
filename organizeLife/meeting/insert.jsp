<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
<style>
	.maxHeight {
		height: 480px;
		border: 1px solid #ddd;
		overflow: auto;
	}
	.card {
		overflow: hidden;
	}
	.my-titlebar {
		margin-bottom: 10px;
	}
</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a href="${ctxPath}/pc/meetingTypePc/toQuery.action" class="btn-link"> <i
						class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffmeetingType._id == null}">
								添加组织生活分类
							</c:if>
					<c:if test="${ffmeetingType._id != null}">修改组织生活分类
							</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<div class="col-sm-12">
					<div class="col-sm-6">
						<form id="meetingType" method="post"
							  action="${ctxPath}/pc/meetingTypePc/insert.action" class="form-horizontal">
						<input type="hidden" id="_id" name="_id"><input
						type="hidden" id="tenantId" name="tenantId"><input
						type="hidden" id="createTime" name="createTime">
							<div class="form-group">
								<label class="col-sm-2 control-label">分类名称</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input type="text" 
											   id="name" name="name" class="form-control " required/>
									</div>
								</div>
							</div>
							<input type="hidden" id="type" name="type" value="1">
							<div class="form-group" style="display: none;">
								<label class="col-sm-2 control-label">会议通知类型</label>
								<div class="col-sm-10">
									<select class="form-control selectpicker" id=""
										name="" data-live-search="true">
										<option value="">请选择</option>
										<option value="1">三会一课</option>
										<option value="2">其他</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">说明</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input type="text" 
											   id="about" name="about" class="form-control " required/>
									</div>
								</div>
							</div>
							<div class="form-group" style="display: none;">
								<label class="col-sm-10 control-label">会议通知类型，三会一课不可以删除，其他可以删除。</label>
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
		</div>
	</div>
	<script type="text/javascript">
		$().ready(function() {
			$("#cancelBtn").click(function() {
				document.location.href = _ctxPath + "/pc/meetingTypePc/toQuery.action";
			});
		});
	</script>
</body>
</html>
