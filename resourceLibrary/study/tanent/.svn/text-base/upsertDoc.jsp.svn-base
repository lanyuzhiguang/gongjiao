<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
</style>
</head>
<body class="gray-bg" oncontextmenu=self.event.returnValue=false onselectstart="return false">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a href="${ctxPath}/pc/studyresourcePc/tanentlist.action" class="btn-link"> <i
						class="fa fa-angle-double-left"></i>返回
					</a>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="study" method="post" class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-2 control-label">文档标题</label>
						<div class="col-sm-10">
								<p><c:out value="${ffstudy.title }"></c:out></p>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">文档文件</label>
						<div class="col-sm-10">
							<a href="javascript:void(0);" onclick="openview('${ffstudy._id}')">${ffstudy.fileid }</a>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">封面图片</label>
						<div class="col-sm-10">
							<div style="width: 150px; height: 150px;" class="f-left">
								<img id="coverimg" style="width: 100%; height: 100%;" src="${ffstudy.coverUrl }"/>
							</div>
							<span class="help-block m-b-none">列表界面中的logo图片。</span>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">banner图片</label>
						<div class="col-sm-10">
							<div style="width: 200px; height: 100px;" class="f-left">
								<img id="bannerimg" style="width: 100%; height: 100%;" src="http://qiniu.thdangjian.com/${ffstudy.banner }"/>
							</div>
							<span class="help-block m-b-none">文档置顶时显示的banner图片。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">文档描述</label>
						<div class="col-sm-10">
							${ffstudy.content }
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
				document.location.href = _ctxPath + "/pc/studyresourcePc/tanentlist.action";
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
		function openview(id){
			window.parent.layer.open({
				type : 2,
				title : false,
				closeBtn : true, //不显示关闭按钮
				area : ['1000px','600px'],
				//time: 2000, //2秒后自动关闭
				anim : 2,
				content : '/dangjian/pc/studyresourcePc/towatch.action?id=' + id+'&type=3' //iframe的url，no代表不显示滚动条
			});
		}
	</script>
</body>
</html>
