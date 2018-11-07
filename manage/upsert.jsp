<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title></title>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a href="javascript:" onclick="self.location=document.referrer;"
						class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
					</a> 给书记写信
				</div>
				
				<form:form id="mailbox" modelAttribute="ffmailbox" method="post"
					action="${ctxPath}/manage/mailbox/upsert.action"
					class="form-horizontal">
						<div class="form-group organr">
						<label class="col-sm-2 control-label">书记</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" id="masterId"
								name="masterId" data-live-search="true">
								<option value="">请选择</option>
								<c:forEach items="${ffusersec}" var="user">
									<option value="${user._id}">${user.rolebumenName}${user.rolepostName}${user.name}</option>
								</c:forEach>
							</select>
						</div>
						
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">标题</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input type="hidden" id="isrec" value="${ sessionScope.user.isrec}">
								<form:hidden path="_id" id="id" />
								<form:input path="title" id="title" cssClass="form-control" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">内容</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<form:textarea path="realContent" id="realContent"
									cssClass="form-control" cols="10" rows="10" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">图片</label>
						<div class="col-sm-10">
							<div id="imagesDiv" class="col-sm-12">
								<c:if test="${not empty ffmailbox.images }">
									<c:forEach items="${ffmailbox.images }" var="image">
										<img alt="" src="http://qiniu.thdangjian.com/${image }"
											style="height: 80px; width: 100px;">
									</c:forEach>
								</c:if>
							</div>
							<div class="col-sm-12 m-t-10" style="width: 120px;">
								<button id="images" type="button"
									class="btn bgm-teal btn-block comp"
									comp="type:'fileupload',imagesDiv:'imagesDiv',showImage:true,imgWidth:'100px',imgHeight:'80px'">选择上传图片</button>
							</div>
						</div>
					</div>
					<c:if test="${not empty sessionScope.user.isrec }">
						<c:if test="${sessionScope.user.isrec == 1 }">
							<div class="form-group">
								<label class="col-sm-2 control-label">回复</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<form:textarea path="replyContent" id="replyContent"
											cssClass="form-control" cols="10" rows="10" />
									</div>
								</div>
							</div>
						</c:if>
							<c:if test="${sessionScope.user.isrec == 0 }">
								<c:if test="${ffmailbox.state == 1 }">
								<div class="form-group">
								<label class="col-sm-2 control-label">回复</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<form:textarea path="replyContent" id="replyContent"
											cssClass="form-control" disabled="true" cols="10" rows="10" />
									</div>
								</div>
							</div>
							</c:if>
							</c:if>
					</c:if>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<button class="btn btn-primary" type="submit" id="btn_save">提交</button>
							<button id="cancelBtn" class="btn bgm-gray m-l-20" type="button">取消</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$().ready(function() {
			var data = $(".attach_images").attr("src");
			if (data == undefined) {
				$(".attach_images").hide();
			}
			var id = $("#id").val();
			if (id != null && id != "") {
				$("#title").attr("disabled", "true");
				$("#content").attr("disabled", "true");
				$("#images").attr("disabled", "true");
				$("#btn_save").attr("disabled", "true");
			}
			if($("#isrec").val()==1){
				$("#id").attr("name","mailboxId");
				$("#mailbox").attr("action","reply.action");
				$("#btn_save").removeAttr("disabled","false");
			}
			$("#mailbox").validate({
				submitHandler : function(form) {
					
					$.shade.show();
					$("#mailbox").enable();
					form.submit();
				}
			});

			$("#cancelBtn").click(function() {
				history.go(-1);
				location.reload();
			});
		});
	</script>
</body>
</html>
