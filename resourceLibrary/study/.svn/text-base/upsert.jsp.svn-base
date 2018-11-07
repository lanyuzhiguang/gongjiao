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
				<form id="studyResourceCategory" method="post"
					action="${ctxPath}/pc/studyresourcePc/upsert.action" class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-2 control-label">名称</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input type="hidden" id="_id" name="_id">
								<input type="text" id="categoryName" name="categoryName" class="form-control" minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">类型</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker"
								id="type" name="type">
								<option value="">请选择</option>
								<option value="1">视频</option>
								<option value="2">音频</option>
								<option value="3">文档</option>
								<option value="4">考试</option>
							</select>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">封面图</label>
						<div class="col-sm-10">
							<div style="width: 150px; height: 150px;" class="f-left">
								<img id="urlimg" style="width: 100%; height: 100%;" />
							</div>
							<div class="f-left" style="width: 120px; padding-top: 10px">
								<button type="button" class="btn bgm-teal btn-block comp"
									comp="type:'fileupload',previewImgId:'urlimg',valueId:'imageUrl'">选择上传图片</button>
							</div>
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
		$()
				.ready(
						function() {
							$("#cancelBtn")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/pc/studyresourcePc/tolist.action";
											});

						});
	</script>
</body>
</html>
