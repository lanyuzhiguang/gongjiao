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
					<a href="${ctxPath}/pc/news/categoryPc/toQueryzt.action" class="btn-link">
						<i class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffcategory._id == null}">
								新建专题信息
							</c:if>
					<c:if test="${ffcategory._id != null}">修改专题信息
							</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="newsCategory" method="post"
					action="${ctxPath}/pc/news/categoryPc/upsert.action" class="form-horizontal">
					<input type="hidden" id="_id" name="_id"><input
						type="hidden" id="tenantId" name="tenantId"><input
						type="hidden" id="createTime" name="createTime">
						<input type="hidden" id="isspe" name="isspe">
					<div class="form-group">
						<label class="col-sm-2 control-label">专题名称</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="name" name="name" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">排序编码</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="order" name="order" type="text" class="form-control"
									min="0" max="10000000" value="0" required>
							</div>
							<span class="help-block m-b-none">分类显示排序编码，将从小到大排列。</span>
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
					$("#category").validate({
						submitHandler : function(form) {
							$.shade.show();
							$("#category").enable();
							form.submit();
						}
					});

					$("#cancelBtn").click(
							function() {
								document.location.href = _ctxPath
										+ "/pc/news/categoryPc/toQueryzt.action";
							});

				});
	</script>
</body>
</html>
