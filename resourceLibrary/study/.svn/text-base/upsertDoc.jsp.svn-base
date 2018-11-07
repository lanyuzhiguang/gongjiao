<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a href="${ctxPath}/pc/sturesourcePc/tolist.action" class="btn-link"> <i
						class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffstudy._id == null}">
								新建文档信息
							</c:if>
					<c:if test="${ffstudy._id != null}">修改文档信息
							</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="study" method="post" action="${ctxPath}/pc/sturesourcePc/upsert.action"
					class="form-horizontal">
					<input type="hidden" id="classification" name="classification" value="2">
					<input type="hidden" id="_id" name="_id"> 
					<input type="hidden" id="categoryId" name="categoryId"> 
					 <input
						type="hidden" id="type" name="type" value="3">
					<div class="form-group">
						<label class="col-sm-2 control-label">文档标题</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="title" name="title" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">文档文件</label>
						<div class="col-sm-10">
							<div id="attachesDiv" class="f-left"></div>
							<div class="f-left" style="width: 120px; padding-top: 10px">
								<input type="hidden" id="fileid" name="fileid">
								<button type="button" class="btn bgm-teal btn-block comp"
									comp="type:'fileupload',attachesDiv:'attachesDiv',showAttach:true,showAttachCallback:doCallback,isPrivate:true">选择上传文档</button>
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">封面图片</label>
						<div class="col-sm-10">
							<div style="width: 150px; height: 150px;" class="f-left">
								<img id="coverimg" style="width: 100%; height: 100%;" />
							</div>
							<div class="f-left" style="width: 120px; padding-top: 10px">
								<button type="button" class="btn bgm-teal btn-block comp"
									comp="type:'fileupload',previewImgId:'coverimg',valueId:'cover',isPrivate:true">选择上传图片</button>
							</div>
							<span class="help-block m-b-none">列表界面中的logo图片。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">是否置顶</label>
						<div class="col-sm-3">
							<input id="isTop" name="isTop" type="checkbox" class="switcher"
								value="1" />
						</div>
						<label class="col-sm-2 control-label">是否有效</label>
						<div class="col-sm-3">
							<input id="state" name="state" type="checkbox" class="switcher"
								value="1" />
						</div>
					</div>
					<!-- <div class="form-group">
						<label class="col-sm-2 control-label">是否推送消息</label>
						<div class="col-sm-3">
							<input id="push" name="push" type="checkbox" class="switcher"
								value="1" /> <span class="help-block m-b-none">发布时是否同时推送App消息。</span>
						</div>
					</div> -->
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
							<span class="help-block m-b-none">文档置顶时显示的banner图片。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">文档描述</label>
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
			var cateId = getUrlParam("categoryId");
			var caId = $("#categoryId").val();
			if(caId == null || caId == ""){
				$("#categoryId").val(cateId);
			}
			if (fillmaps && fillmaps.study) {
				var study = fillmaps.study;
				if (study.fileidUrl) {
					setMedia(study.fileidUrl, study.fileid);
				}
			}

			$("#study").formSubmit({
				submitHandler : function(form) {
					$.shade.show();
					$("#study").enable();
					form.submit();
				}
			});

			$("#cancelBtn").click(function() {
				document.location.href = _ctxPath + "/sturesource/tolist.do";
			});

		});
		function doCallback(fs, cfg, comp) {
			var s = (fs[fs.length - 1]).split('|');
			var url = s[2];
			$("#fileid").val(s[0]);

			setMedia(url, s[0]);
		}

		function setMedia(url, fileid) {
			var cid = "doc";
			$(".attach_" + cid).remove();
			var a = $("<div class=\"attach_" + cid
					+ " m-r-10\"><a target=\"_blank\" href=\"" + url
					+ "\" class=\"m-r-5\">"
					+ fileid + "</a></div>");
			$("#attachesDiv").append(a);
		}
	</script>
</body>
</html>
