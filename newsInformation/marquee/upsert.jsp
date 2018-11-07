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
					<a href="${ctxPath}/pc/news/marqueePc/toQuery.action" class="btn-link">
						<i class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffmarquee._id == null}">
								新建走马灯信息
							</c:if>
					<c:if test="${ffmarquee._id != null}">修改走马灯信息
							</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="marquee" method="post"
					action="${ctxPath}/pc/news/marqueePc/upsert.action" class="form-horizontal">
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="tenantId" name="tenantId">
					<div class="form-group">
						<label class="col-sm-2 control-label">走马灯标题</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="title" name="title" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">是否有效</label>
						<div class="col-sm-3">
							<input id="state" name="state" type="checkbox" class="switcher"
								value="1" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">走马灯内容</label>
						<div class="col-sm-10">
							<div id="content" class="comp" comp="type:'htmlEditor'"></div>
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
			$("#marquee").formSubmit({
				submitHandler : function(form) {
					$.shade.show();
					$("#marquee").enable();
					form.submit();
				}
			});

			$("#cancelBtn").click(function() {
				document.location.href = _ctxPath + "/pc/news/marqueePc/toQuery.action";
			});

		});
	</script>
</body>
</html>
