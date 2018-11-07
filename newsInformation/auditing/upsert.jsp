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
					<a
						href="${ctxPath}/pc/news/toAudQuery.action?categoryId=${ffnews.categoryId}"
						class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffnews._id == null}">
								新建新闻信息
							</c:if>
					<c:if test="${ffnews._id != null}">修改新闻信息
							</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="news" method="post" action="${ctxPath}/pc/news/upsert.action"
					class="form-horizontal">
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="tenantId" name="tenantId">
					<div class="form-group">
						<label class="col-sm-2 control-label">新闻标题</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="title" name="title" type="text" class="form-control"
									minlength="2" maxlength="50" required disabled="disabled">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">新闻分类</label>
						<div class="col-sm-2">
							<select class="form-control" id="categoryId" name="categoryId"
								required disabled="disabled">
								<option value="">请选择</option>
								<c:forEach items="${categorys}" var="category">
									<c:if test="${category.islib != 1}">
										<option value="${category._id}">${category.name}</option>
									</c:if>
								</c:forEach>
							</select>
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
									comp="type:'fileupload',previewImgId:'logoimg',valueId:'logo'" disabled="disabled">选择上传图片</button>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">是否置顶</label>
						<div class="col-sm-3">
							<input id="isTop" name="isTop" type="checkbox" class="switcher" value="1" disabled="disabled"/>
						</div>
						<label class="col-sm-2 control-label">是否有效</label>
						<div class="col-sm-3">
							<input id="state" name="state" type="checkbox" class="switcher"
								value="1" disabled="disabled"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">是否推送消息</label>
						<div class="col-sm-3">
							<input id="push" name="push" type="checkbox" class="switcher"
								value="1" disabled="disabled"/> <span class="help-block m-b-none">发布时是否同时推送App消息。</span>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">banner图片</label>
						<div class="col-sm-10">
							<div style="width: 200px; height: 100px;" class="f-left">
								<img id="bannerimg" style="width: 100%; height: 100%;" />
							</div>
							<div class="f-left" style="width: 120px; padding-top: 10px">
								<button type="button" class="btn bgm-teal btn-block comp"
									comp="type:'fileupload',previewImgId:'bannerimg',valueId:'banner'" disabled="disabled">选择上传图片</button>
							</div>
							<span class="help-block m-b-none">新闻置顶时显示的banner图片。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">新闻内容</label>
						<div class="col-sm-10">
							<div id="realContent" class="comp"  disabled="disabled"></div><!-- comp="type:'htmlEditor'" -->
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<!-- <button class="btn btn-primary" type="submit">提交</button> -->因为是租户所以没有编辑功能！
							<button id="cancelBtn" class="btn bgm-gray m-l-20" type="button">取消</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$()
				.ready(
						function() {
							$("#news").formSubmit({
								submitHandler : function(form) {
									var f=document.getElementById("isTop").checked;
									var uf=$("#banner").val();
								    if(uf==""&&f){
								    	alert("置顶新闻请选择banner图片！！");
								    	return;
								    }
									$.shade.show();
									$("#news").enable();
									form.submit();
								}
							});

							$("#cancelBtn")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/pc/news/toAudQuery.action?categoryId=${ffnews.categoryId}";
											});

						});
	</script>
</body>
</html>
