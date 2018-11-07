<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<%String ref = request.getHeader("REFERER");%>
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
						href="javascript:window.location='<%=ref%>'"
						class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${fflibrary._id == null}">
								新建新闻信息
							</c:if>
					<c:if test="${fflibrary._id != null}">修改资源库新闻信息
							</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="library" method="post" action="${ctxPath}/pc/newsSpiderPc/toLibraryUpsert.action"
					class="form-horizontal">
					<input type="hidden" id="_id" name="_id">
					<div class="form-group">
						<label class="col-sm-2 control-label">新闻标题</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="title" name="title" type="text" class="form-control"
									minlength="2" maxlength="100" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">资源来源</label>
						<div class="col-sm-2">
							${fflibrary.libSource }
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
					<div class="form-group">
						<label class="col-sm-2 control-label">是否置顶</label>
						<div class="col-sm-3">
							<input id="isTop" name="isTop" type="checkbox" class="switcher" value="1" />
						</div>
						<label class="col-sm-2 control-label">是否有效</label>
						<div class="col-sm-3">
							<input id="state" name="state" type="checkbox" class="switcher"
								value="1" />
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
									comp="type:'fileupload',previewImgId:'bannerimg',valueId:'banner'">选择上传图片</button>
							</div>
							<span class="help-block m-b-none">新闻置顶时显示的banner图片。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">新闻内容</label>
						<div class="col-sm-10">
							<div id="content" class="comp" comp="type:'htmlEditor'"></div>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<button class="btn btn-primary" type="submit">提交</button>
							<button onclick="javascript:window.location='<%=ref%>'" class="btn bgm-gray m-l-20" type="button">取消</button>
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
														+ "/pc/newsSpiderPc/toLibraryQuery.action";
											});

						});
	</script>
</body>
</html>
