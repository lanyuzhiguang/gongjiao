<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
<script
	src="${ctxPath}/moduleweb/resources/plugins/jplayer/jquery.jplayer.js"></script>
<link
	href="${ctxPath}/moduleweb/resources/plugins/jplayer/skin/blue.monday/css/jplayer.blue.monday.min.css"
	rel="stylesheet" type="text/css" />
<style type="text/css">
.jp-video-360p {
	width: 642px;
}
</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a href="${ctxPath}/pc/studyPc/toQuery.action" class="btn-link"> <i
						class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffstudy._id == null}">
								新建音频信息
							</c:if>
					<c:if test="${ffstudy._id != null}">修改音频信息
							</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="study" method="post" action="${ctxPath}/pc/studyPc/upsert.action"
					class="form-horizontal">
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="tenantId" name="tenantId"> <input
						type="hidden" id="type" name="type">
					<div class="form-group">
						<label class="col-sm-2 control-label">音频标题</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="title" name="title" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">音频文件</label>
						<div class="col-sm-10">
							<div id="jquery_jplayer_1" class="jp-jplayer"></div>
							<div id="jp_container_1" class="jp-audio" role="application"
								aria-label="media player">
								<div class="jp-type-single">
									<div class="jp-gui jp-interface">
										<div class="jp-controls">
											<button class="jp-play" role="button" tabindex="0">play</button>
											<button class="jp-stop" role="button" tabindex="0">stop</button>
										</div>
										<div class="jp-progress">
											<div class="jp-seek-bar">
												<div class="jp-play-bar"></div>
											</div>
										</div>
										<div class="jp-volume-controls">
											<button class="jp-mute" role="button" tabindex="0">mute</button>
											<button class="jp-volume-max" role="button" tabindex="0">max
												volume</button>
											<div class="jp-volume-bar">
												<div class="jp-volume-bar-value"></div>
											</div>
										</div>
										<div class="jp-time-holder">
											<div class="jp-current-time" role="timer" aria-label="time">&nbsp;</div>
											<div class="jp-duration" role="timer" aria-label="duration">&nbsp;</div>
											<div class="jp-toggles">
												<button class="jp-repeat" role="button" tabindex="0">repeat</button>
											</div>
										</div>
									</div>
									<div class="jp-details">
										<div class="jp-title" aria-label="title">&nbsp;</div>
									</div>
									<div class="jp-no-solution">
										<span>Update Required</span> To play the media you will need
										to either update your browser to a recent version or update
										your <a href="http://get.adobe.com/flashplayer/"
											target="_blank">Flash plugin</a>.
									</div>
								</div>
							</div>
							<div class="f-left" style="width: 120px; padding-top: 10px">
								<input type="hidden" id="fileid" name="fileid">
								<button type="button" class="btn bgm-teal btn-block comp"
									comp="type:'fileupload',attachesDiv:'attachesDiv',showAttach:true,showAttachCallback:doCallback,isPrivate:true,qiniuUpload:true">选择上传音频</button>
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
					<div class="form-group">
						<label class="col-sm-2 control-label">是否推送消息</label>
						<div class="col-sm-3">
							<input id="push" name="push" type="checkbox" class="switcher"
								value="1" /> <span class="help-block m-b-none">发布时是否同时推送App消息。</span>
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
							<span class="help-block m-b-none">音频置顶时显示的banner图片。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">音频描述</label>
						<div class="col-sm-10">
							<div id="realContent" class="comp" comp="type:'htmlEditor'"></div>
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
			if (fillmaps && fillmaps.study) {
				var study = fillmaps.study;
			}
			$("#jquery_jplayer_1").jPlayer({
				ready : function(event) {
					if (fillmaps && fillmaps.study) {
						var study = fillmaps.study;
						if (study.fileidUrl) {
							setMedia(study.fileidUrl);
						}
					}
				},
				swfPath : "${ctxPath}/moduleweb/resources/plugins/jplayer",
				//supplied : "m4a, oga",
				//wmode : "window",
				useStateClassSkin : true,
				autoBlur : false,
				smoothPlayBar : true,
				keyEnabled : true,
				remainingDuration : true,
				toggleDuration : true
			});

			$("#study").formSubmit({
				submitHandler : function(form) {
					var f = $("#fileid").val();
					if (!f) {
						layer.alert("请上传音频文件！");
						return;
					}
					$.shade.show();
					$("#study").enable();
					form.submit();
				}
			});

			$("#cancelBtn").click(function() {
				document.location.href = _ctxPath + "/pc/studyPc/toQuery.action";
			});

		});
		function doCallback(fs, cfg, comp) {
			var s = (fs[fs.length - 1]).split('|');
			var url = s[2];
			$("#fileid").val(s[0]);
			setMedia(url);
		}
		function setMedia(url) {
			$("#jquery_jplayer_1").jPlayer("setMedia", {
				//title: "Bubble",
				mp3 : url
			});
		}
	</script>
</body>
</html>
