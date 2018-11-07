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
					<a href="${ctxPath}/pc/sturesourcePc/tolist.action" class="btn-link"> <i
						class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffstudy._id == null}">
								新建视频信息
							</c:if>
					<c:if test="${ffstudy._id != null}">修改视频信息
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
					<input type="hidden" id="categoryId" name="categoryId"> 
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="type" name="type" value="1"> <input type="hidden"
						id="cover" name="cover">
					<div class="form-group">
						<label class="col-sm-2 control-label">视频标题</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="title" name="title" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">视频文件</label>
						<div class="col-sm-10">
							<div id="jp_container_1" class="jp-video jp-video-360p"
								role="application" aria-label="media player">
								<div class="jp-type-single">
									<div id="jquery_jplayer_1" class="jp-jplayer"></div>
									<div class="jp-gui">
										<div class="jp-video-play">
											<!-- <button class="jp-video-play-icon" role="button" tabindex="0">play</button> -->
										</div>
										<div class="jp-interface">
											<div class="jp-progress">
												<div class="jp-seek-bar">
													<div class="jp-play-bar"></div>
												</div>
											</div>
											<div class="jp-current-time" role="timer" aria-label="time">&nbsp;</div>
											<div class="jp-duration" role="timer" aria-label="duration">&nbsp;</div>
											<div class="jp-controls-holder">
												<div class="jp-controls">
													<button class="jp-play" role="button" tabindex="0">play</button>
													<button class="jp-stop" role="button" tabindex="0">stop</button>
												</div>
												<div class="jp-volume-controls">
													<button class="jp-mute" role="button" tabindex="0">mute</button>
													<button class="jp-volume-max" role="button" tabindex="0">max
														volume</button>
													<div class="jp-volume-bar">
														<div class="jp-volume-bar-value"></div>
													</div>
												</div>
												<div class="jp-toggles">
													<button class="jp-repeat" role="button" tabindex="0">repeat</button>
													<button class="jp-full-screen" role="button" tabindex="0">full
														screen</button>
												</div>
											</div>
											<div class="jp-details">
												<div class="jp-title" aria-label="title">&nbsp;</div>
											</div>
										</div>
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
									comp="type:'fileupload',attachesDiv:'attachesDiv',showAttach:true,showAttachCallback:doCallback,isPrivate:true,qiniuUpload:true">选择上传视频</button>
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">封面图片</label>
						<div class="col-sm-10">
							<div style="width: 250px; height: auto; min-height: 180px;"
								class="f-left">
								<img id="coverimg" style="width: 100%; height: 100%;" />
							</div>
							<div class="f-left" style="width: 100%; padding-top: 10px">
								<label class="col-sm-2 control-label">封面视频</label>
								<div class="col-sm-3">
									<div class="fg-line">
										<input id="offset" name="offset" type="number"
											class="form-control" min="0" required>
									</div>
								</div>
							</div>
							<span class="help-block m-b-none">视频封面选择某秒（精确到毫秒）帧的图片。</span>
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
							<span class="help-block m-b-none">视频置顶时显示的banner图片。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">视频描述</label>
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
				if (study.coverUrl) {
					$("#coverimg").attr("src", study.coverUrl);
				}
			}
			$("#offset").change(function() {
				var f = $("#fileid").val(), os = $("#offset").val();
				if (f) {
					$.post("${ctxPath}/back/super/file/videoCover.do", {
						fileid : f,
						offset : os
					}, function(data) {
						if (data)
							$("#coverimg").attr("src", data);
					});
				}
			});
			$("#jquery_jplayer_1").jPlayer({
				ready : function() {
					if (fillmaps && fillmaps.study) {
						var study = fillmaps.study;
						if (study.fileidUrl) {
							setMedia(study.fileidUrl);
						}
					}
				},
				swfPath : "${ctxPath}/moduleweb/resources/plugins/jplayer",
				supplied : "webmv, ogv, m4v",
				size : {
					width : "640px",
					height : "360px",
					cssClass : "jp-video-360p"
				},
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
						layer.alert("请上传视频文件！");
						return;
					}
					$.shade.show();
					$("#study").enable();
					form.submit();
				}
			});

			$("#cancelBtn").click(function() {
				document.location.href = _ctxPath + "/pc/sturesourcePc/tolist.action";
			});

		});
		function doCallback(fs, cfg, comp) {
			var s = (fs[fs.length - 1]).split('|');
			var url = s[2];
			$("#fileid").val(s[0]);
			setMedia(url);
			$("#offset").trigger("change"); // 根据offset生成封面
		}
		function setMedia(url) {
			var u = fillmaps.study.coverUrl;
			if (!u) {
				u = "http://www.jplayer.org/video/poster/Big_Buck_Bunny_Trailer_480x270.png";
			}
			$("#jquery_jplayer_1").jPlayer("setMedia", {
				//title : "Big Buck Bunny",
				m4v : url,
				poster : u
			});
		}
	</script>
</body>
</html>
