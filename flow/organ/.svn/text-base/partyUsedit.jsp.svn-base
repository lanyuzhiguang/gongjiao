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
						转入信息填报
					</div>
				<form id="user" method="post"
					action="${ctxPath}/basic/user/upsert.do" class="form-horizontal">
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="createTime" name="createTime"><input
						type="hidden" id="valid" name="valid">
					<div class="form-group">
						<label class="col-sm-2 control-label">姓名</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="name" name="name" type="text" class="form-control" minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					 <div class="form-group">
						<label class="col-sm-2 control-label">性别</label>
						<div class="col-sm-3">
							<div class="fg-line" style="margin-top: 8px;">
								<label class="radio radio-inline m-r-20"> <input
									type="radio" checked="checked" name="gender" value="0"
									class="gender"> <i class="input-helper"></i> 男
								</label> <label class="radio radio-inline m-r-20"> <input
									type="radio" name="gender" value="1" class="gender"> <i
									class="input-helper"></i> 女
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">身份证号</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="userID" name="userID" type="text" class="form-control" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">民族</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" id="volk"
								name="volk" data-live-search="true">
								<option value="">请选择</option>
								<option value="汉族">汉族</option>
								<option value="蒙古族">蒙古族</option>
								<option value="回族">回族</option>
								<option value="藏族">藏族</option>
								<option value="维吾尔族">维吾尔族</option>
								<option value="苗族">苗族</option>
								<option value="彝族">彝族</option>
								<option value="壮族">壮族</option>
								<option value="布依族">布依族</option>
								<option value="朝鲜族">朝鲜族</option>
								<option value="满族">满族</option>
								<option value="侗族">侗族</option>
								<option value="瑶族">瑶族</option>
								<option value="白族">白族</option>
								<option value="土家族">土家族</option>
								<option value="哈尼族">哈尼族</option>
								<option value="哈萨克族">哈萨克族</option>
								<option value="傣族">傣族</option>
								<option value="黎族">黎族</option>
								<option value="傈僳族">傈僳族</option>
								<option value="佤族">佤族</option>
								<option value="畲族">畲族</option>
								<option value="高山族">高山族</option>
								<option value="拉祜族">拉祜族</option>
								<option value="水族">水族</option>
								<option value="东乡族">东乡族</option>
								<option value="纳西族">纳西族</option>
								<option value="景颇族">景颇族</option>
								<option value="柯尔克孜族">柯尔克孜族</option>
								<option value="土族">土族</option>
								<option value="达斡尔族">达斡尔族</option>
								<option value="仫佬族">仫佬族</option>
								<option value="羌族">羌族</option>
								<option value="布朗族">布朗族</option>
								<option value="撒拉族">撒拉族</option>
								<option value="毛南族">毛南族</option>
								<option value="仡佬族">仡佬族</option>
								<option value="锡伯族">锡伯族</option>
								<option value="阿昌族">阿昌族</option>
								<option value="普米族">普米族</option>
								<option value="塔吉克族">塔吉克族</option>
								<option value="怒族">怒族</option>
								<option value="乌孜别克族">乌孜别克族</option>
								<option value="俄罗斯族">俄罗斯族</option>
								<option value="鄂温克族">鄂温克族</option>
								<option value="德昂族">德昂族</option>
								<option value="保安族">保安族</option>
								<option value="裕固族">裕固族</option>
								<option value="京族">京族</option>
								<option value="塔塔尔族">塔塔尔族</option>
								<option value="独龙族">独龙族</option>
								<option value="鄂伦春族">鄂伦春族</option>
								<option value="赫哲族">赫哲族</option>
								<option value="门巴族">门巴族</option>
								<option value="珞巴族">珞巴族</option>
								<option value="基诺族">基诺族</option>
								<option value="其他族">其他族</option>
								<option value="外国血统">外国血统</option>
								<option value="外国民族">外国民族</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">生日</label>
						<div class="col-sm-3">
							<input id="birthday" name="birthday" class="laydate-icon form-control"  >
						</div>
					</div>
					<div class="form-group organr">
					  <label class="col-sm-2 control-label">人员类别</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" id="type"
								name="type" data-live-search="true">
								<option value="3">预备党员</option>
								<option value="4">正式党员</option>
							</select>
						</div>
					</div>
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
							//执行一个laydate实例
							laydate.render({
								elem: '#regParty' //指定元素
							});
							laydate.render({
								elem: '#birthday' //指定元素
							});




							if (fillmaps && fillmaps.user) {
								var user = fillmaps.user;
								if (user._id) {
									$("#adminId").disable();
									$("#passwd").attr("required", null);
								}
							}

							$("#passwd").change(
									function() {
										var pwd = $("#passwd").val();
										if (pwd && pwd != '') {
											$("#oldPasswd").attr("required",
													"required");
										} else {
											$("#oldPasswd").attr("required",
													null);
										}
									});
                        
							if (fillmaps && fillmaps.user && user._id) {
								var op = fillmaps.user.oldPhone;
								var np = fillmaps.user.phone;
								if (op != np && np.length == 11) {
									$(".verifycoder").show();
									$("#verifycode").attr("required",
											"required");
								} else
									$(".verifycoder").hide();
							} else
								$(".verifycoder").hide();

							$("#verifycodeBtn").click(function() {
								$.post('${ctxPath}/i/regi/sendSMS.do', {
									phone : $("#phone").val()
								}, function(data, status) {
									if (data.success) {
										layer.alert("验证码已发送，请注意查看！");
									} else {
										layer.alert("验证码发送失败，请重新发送！");
									}
								});
							});

							$("#user").validate({
								submitHandler : function(form) {
									$.shade.show();
									$.ajax({
									   	url:"${ctxPath}/user/changParty.action",
									    type:"post",
									    data:{'userId': $("#_id").val(),
												'name': $("#name").val(),
												'gender': $('input:radio[name="gender"]:checked').val(),
												'volk': $("#volk").val(),
												'userID': $("#userID").val(),
												'birthday': $("#birthday").val(),
												'type': $("#type").val()
											},
									    dataType:"json",
									    contentType: "application/x-www-form-urlencoded; charset=utf-8",
									    success:function(data) {
									        parent.layer.alert("党员基本信息修改成功！");
									        document.location.href = _ctxPath + "/organParty/partyUpsert.action";
									    }
									});
								}
							});

							$("#cancelBtn")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/organParty/partyUpsert.action";
											});






	});
	</script>
</body>
</html>
