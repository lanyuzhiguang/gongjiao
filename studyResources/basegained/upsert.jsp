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
					<a href="${ctxPath}/pc/basegained/groupPc/toQueryweb.action" class="btn-link">
						<i class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffgained._id == null}">
						新建心得
					</c:if>
					<c:if test="${ffgained._id != null}">
						心得详情
					</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="gained" method="post"
					action="${ctxPath}/pc/basegained/groupPc/upsert.action"
					class="form-horizontal">
					<input type="hidden" id="_id" name="_id"> 
					<input type="hidden" id="createTime" name="createTime">
					<div class="form-group">
						<label class="col-sm-2 control-label">心得内容</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="content" name="content" disabled="disabled"  type="text" class="form-control">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">发布人</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="userName" name="userName" type="text" disabled="disabled" 
									class="form-control" minlength="2" maxlength="400" required>
							</div>
						</div>
						<label class="col-sm-2 control-label">发布时间</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input  value="${ffbasegained.createTimeFormat}" name="createTime" disabled="disabled"  type="text" class="create_Time form-control">
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">附带图片</label>
						<div class="col-sm-10">
							<c:forEach items="${ffbasegained.imageUrls}" var="image">
								<div style="width: 150px; height: 150px;float: left;" >
										<img id="" style="width: 100%; height: 100%;" src="${image}" />
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">分类</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input type="text" class="form-control "
									   id="groupName" name="groupName" disabled="disabled" value="0"/>
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
					<div class="form-group">
						<label class="col-sm-2 control-label">评论次数</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input type="number" class="form-control "
									   id="commentTimes" name="commentTimes" disabled="disabled" value="0"/>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<!-- <button class="btn btn-primary" type="submit">提交</button>
							<button id="cancelBtn" class="btn bgm-gray m-l-20" type="button">取消</button> -->
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$().ready(
				function() {
					laydate.render({
						elem: '.create_Time', //指定元素
						type:'dateTime'
					});
					$("#gained").validate({
						submitHandler : function(form) {
							$.shade.show();
							$("#gained").enable();
							form.submit();
						}
					});
					$("#cancelBtn").click(
							function() {
								document.location.href = _ctxPath
										+ "/pc/basegainedPc/toQuery.action";
							});
				});
	</script>
</body>
</html>
