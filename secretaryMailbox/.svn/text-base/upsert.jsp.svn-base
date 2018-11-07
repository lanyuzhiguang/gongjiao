<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
<style type="text/css">
.form-group div {
	padding-top: 7px;
}
</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a href="${ctxPath}/pc/mailboxPc/toQuery.action" class="btn-link">
						<i class="fa fa-angle-double-left"></i>返回
					</a> 书记信箱详情
				</div>
				<form id="mailbox" method="post" class="form-horizontal">
				<!-- 
					<div class="form-group">
						<label class="col-sm-2 control-label">发送人</label>
						<div id="userName" class="col-sm-4"></div>
						<label class="col-sm-2 control-label">部门</label>
						<div id="bumenName" class="col-sm-4"></div>
					</div>
				 -->	
					<div class="form-group">
						<label class="col-sm-2 control-label">部门</label>
						<div id="bumenName" class="col-sm-10"></div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">书记</label>
						<div id="masterName" class="col-sm-10"></div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">标题</label>
						<div id="title" class="col-sm-10"></div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">内容</label>
						<div id="content" class="col-sm-10"></div>
					</div>
					<c:if test="${fn:length(ffmailbox.images) > 0 }">
						<div class="form-group organr">
							<label class="col-sm-2 control-label">图片</label>
							<div class="col-sm-4">
								<c:forEach items="${ffmailbox.images }" var="img">
									<div style="width: 150px; height: 150px;" class="f-left">
										<img style="width: 100%; height: 100%;"
											src="${qiniuImageHost}${img}" />
									</div>
								</c:forEach>
							</div>
						</div>
					</c:if>
					<c:if test="${ffmailbox.state == 1 }">
						<div class="form-group organr">
							<label class="col-sm-2 control-label">回复内容</label>
							<div id="replyContent" class="col-sm-4">
							</div>
						</div>
						<div class="form-group organr">
							<label class="col-sm-2 control-label">回复时间</label>
							<div id="replyTime" class="col-sm-4">
							</div>
						</div>
					</c:if>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
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
					$("#cancelBtn").click(
							function() {
								document.location.href = _ctxPath
										+ "/pc/mailboxPc/toQuery.action";
							});

				});
	</script>
</body>
</html>
