<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/modulepc/resources/common.jsp"%>
<html>
<head>
<title></title>
<script
	src="${ctxPath}/moduleweb/resources/plugins/qrcode/jquery-qrcode-0.14.0.min.js"></script>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a
						href="${ctxPath}/manage/activity/toQuery.action?categoryId=${ffactivity.categoryId}"
						class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffactivity._id == null}">
								新建活动信息
							</c:if>
					<c:if test="${ffactivity._id != null}">修改活动信息
							</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="activity" method="post"
					action="${ctxPath}/manage/activity/upsert.action"
					class="form-horizontal">
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="tenantId" name="tenantId"> <input
						type="hidden" id="alerted" name="alerted">
					<div class="form-group">
						<label class="col-sm-2 control-label">活动标题</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="title" name="title" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">活动分类</label>
						<div class="col-sm-2">
							<select class="form-control" id="categoryId" name="categoryId"
								required>
								<option value="">请选择</option>
								<c:forEach items="${categorys}" var="category">
									<option value="${category._id}">${category.name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div id="qrRegion" class="form-group" style="display: none">
						<label class="col-sm-2 control-label">活动二维码</label>
						<div class="col-sm-4">
							<div id="qrcode"></div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">logo图片</label>
						<div class="col-sm-4">
							<div style="width: 150px; height: 150px;" class="f-left">
								<img id="logoimg" style="width: 100%; height: 100%;" />
							</div>
							<div class="f-left" style="width: 120px; padding-top: 10px">
								<button type="button" class="btn bgm-teal btn-block comp"
									comp="type:'fileupload',previewImgId:'logoimg',valueId:'logo'">选择上传图片</button>
							</div>
						</div>
						<label class="col-sm-2 control-label">banner图片</label>
						<div class="col-sm-4">
							<div style="width: 200px; height: 100px;" class="f-left">
								<img id="bannerimg" style="width: 100%; height: 100%;" />
							</div>
							<div class="f-left" style="width: 120px; padding-top: 10px">
								<button type="button" class="btn bgm-teal btn-block comp"
									comp="type:'fileupload',previewImgId:'bannerimg',valueId:'banner'">选择上传图片</button>
							</div>
							<span class="help-block m-b-none">活动详情界面头部的banner图片。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">活动地点</label>
						<div class="col-sm-10">
							<div class="input-group">
								<input id="address" name="address" class="form-control"
									placeholder="" maxlength="100" required> <span
									class="input-group-btn">
									<button type="button" class="btn bgm-teal comp"
										comp="type:'map'">地图定位</button>
								</span>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">签到距离范围(米)</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="signDistance" name="signDistance" type="number"
									class="form-control" min="0" value="300" required />
							</div>
							<span class="help-block m-b-none">距离活动地点方圆多少米以内才能签到（需要考虑gps定位误差，一般室外30米、室内60米左右误差）。</span>
						</div>

						<label class="col-sm-2 control-label">是否有效</label>
						<div class="col-sm-4">
							<input id="state" name="state" type="checkbox" class="switcher"
								value="1" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">提前提醒时间(小时)</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="preAlertHour" name="preAlertHour" type="number"
									class="form-control" min="0" value="0" required />
							</div>
							<span class="help-block m-b-none">活动开始之前提前提醒已报名人员的消息发起时间，单位:小时，0为不提醒。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">开始时间</label>
						<div class="col-sm-4">
							<input id="startTime" name="startTime"
								class="laydate-icon form-control" placeholder=""  required>
						</div>
						<label class="col-sm-2 control-label">结束时间</label>
						<div class="col-sm-4">
							<input id="endTime" name="endTime"
								class="laydate-icon form-control" placeholder="" required>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">活动内容</label>
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
	<script src="${ctxPath}/modulepc/resources/plugins/laydate/layui.js" type="text/javascript" ></script>
	<script src="${ctxPath}/modulepc/resources/plugins/laydate/laydate.min.js"></script>
	<script type="text/javascript">
		$()
				.ready(
						function() {
							/*laydate.render({
							elem: '#startTime', //指定元素
							type:"datetime"
							});
							laydate.render({
							elem: '#endTime', //指定元素
							type:"datetime"
							});*/
	//时间插件方法
	var startDate = layui.laydate.render({
		elem: '#startTime',
		type:"datetime",
		change:function(value,date){
			if( value !== '' ){
			endDate.config.min.year = date.year;
			endDate.config.min.month = date.month - 1;
			endDate.config.min.date = date.date;
		}else{
			endDate.config.min.year = '';
			endDate.config.min.month = '';
			endDate.config.min.date = '';
		}
	}
	});


	var endDate = layui.laydate.render({
		elem: '#endTime',
		type:"datetime",
		change:function(value,date){
			if( value !== '' ){
			startDate.config.max.year = date.year;
			startDate.config.max.month = date.month - 1;
			startDate.config.max.date = date.date;
			console.log(date.date);
		}else{
			startDate.config.max.year = '';
			startDate.config.max.month = '';
			startDate.config.max.date = '';
		}
	}
	});
	if (fillmaps.activity) {
								var a = fillmaps.activity;
								if (a._id) {
									$("#qrRegion").show();
									delete a.content;
									delete a.createTimeFormat;
									delete a.updateTimeFormat;
									$("#qrcode").qrcode({
										text : $.toJSON(a),
										size : 260
									});
								}
							}
							$("#activity").formSubmit({
								submitHandler : function(form) {
									$.shade.show();
									$("#activity").enable();
									form.submit();
								}
							});

							$("#cancelBtn")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/manage/activity/toQuery.action?categoryId=${ffactivity.categoryId}";
											});

						});
	</script>
</body>
</html>
