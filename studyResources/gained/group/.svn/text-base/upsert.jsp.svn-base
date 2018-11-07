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
					<a href="${ctxPath}/pc/study/gained/groupPc/toQuery.action" class="btn-link">
						<i class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffgainedGroup._id == null}">
						新建心得分类
					</c:if>
					<c:if test="${ffgainedGroup._id != null}">
						修改心得分类
					</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="gainedGroup" method="post"
					action="${ctxPath}/pc/study/gained/groupPc/upsert.action"
					class="form-horizontal">
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="createTime" name="createTime">

					<div class="form-group">
						<label class="col-sm-2 control-label">心得分类名称</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="name" name="name" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">心得分类描述</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="content" name="content" type="text"
									class="form-control" minlength="2" maxlength="400" required>
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">logo图片</label>
						<div class="col-sm-10">
							<div style="width: 150px; height: 150px;" class="f-left">
								<img id="logoimg" style="width: 100%; height: 100%;" />
							</div>
							<div class="f-left" style="width: 120px; padding-top: 10px">
								<button type="button" class="btn bgm-teal btn-block comp"
									comp="type:'fileupload',previewImgId:'logoimg',valueId:'logo'">选择上传图片</button>
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
		$().ready(
				function() {
					$("#gainedGroup").validate({
						submitHandler : function(form) {
							$.shade.show();
							$("#gainedGroup").enable();
							form.submit();
						}
					});
					$("#cancelBtn").click(
							function() {
								document.location.href = _ctxPath
										+ "/pc/study/gained/groupPc/toQuery.action";
							});
				});
	</script>
</body>
</html>
