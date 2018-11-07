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
					<a href="${ctxPath}/pc/group/groupMessagePc/toQuery.action?groupId=${param.groupId}" class="btn-link"> <i
						class="fa fa-angle-double-left"></i>返回
					</a>
						发布群组消息
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="groupMessage" method="post"
					action="${ctxPath}/pc/group/groupMessagePc/upsert.action" class="form-horizontal">
					<input  type="hidden" id="_id" name="_id" >
					<input  type="hidden" id="createTime" name="createTime" >
					<input  type="hidden" id="groupId" name="groupId" value="${param.groupId}">
					<input  type="hidden" id="userId" name="userId" >
					<input  type="hidden" id="type" name="type" value="0">
					
					<div class="form-group">
						<label class="col-sm-2 control-label">消息内容</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input type="text" class="form-control "
									   id="content" name="content" />
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">发布人</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input type="text" class="form-control "
									   id="userName" name="userName" readonly="readonly"/>
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">消息图片</label>
						<div class="col-sm-10">
							<c:forEach items="${ffgroupMessage.imageUrls}" var="image">
								<div style="width: 150px; height: 150px;float: left;" >
										<img id="" style="width: 100%; height: 100%;" src="${image}" />
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">消息是否有效</label>
						<div class="col-sm-10">
							<div class="fg-line" style="margin-top: 8px;">
								<label class="radio radio-inline m-r-20">
									<input type="radio"  name="state" value="0" class="state">
									<i class="input-helper"></i>
									无效
								</label>
								<label class="radio radio-inline m-r-20">
									<input type="radio" name="state" value="1" checked="checked" class="state">
									<i class="input-helper"></i>
									有效
								</label>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">点赞次数</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input type="number" class="form-control "
									   id="zanTimes" name="zanTimes" disabled="disabled" value="0"/>
							</div>
						</div>
					</div>

					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<!-- <button class="btn btn-primary" type="submit">提交</button> -->
							<button id="cancelBtn" class="btn bgm-gray m-l-20" type="button">取消</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$().ready(function() {
			$("#groupMessage").validate({
				submitHandler : function(form) {
					$.shade.show();
					$("#groupMessage").enable();
					form.submit();
				}
			});

			$("#cancelBtn").click(function() {
				document.location.href = _ctxPath + "/pc/group/groupMessagePc/toQuery.action?groupId=${param.groupId}";
			});
		});
	</script>
</body>
</html>
