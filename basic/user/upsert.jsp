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
				<c:if test="${account.entityID != ffuser._id }">
					<div class="my-titlebar">
						<a
							href="${ctxPath}/basic/user/toQuery.action?bumenId=${param.bumenId}"
							class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
						</a>
						<c:if test="${ffuser._id == null}">
							新建用户
						</c:if>
						<c:if test="${ffuser._id != null}">
							修改用户
						</c:if>
					</div>
				</c:if>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="user" method="post"
					action="${ctxPath}/basic/user/upsert.action" class="form-horizontal">
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="createTime" name="createTime"><input
						type="hidden" id="valid" name="valid">
					<div class="form-group">
						<label class="col-sm-2 control-label">名称</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="name" name="name" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">手机号</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="phone" name="phone" type="text" class="form-control"
									mobile="true" required>
							</div>
							<span class="help-block m-b-none">此手机号将用于用户安全验证，请确保正确无误。</span>
						</div>
						<!-- 
						<label class="col-sm-2 control-label verifycoder">验证码</label>
						<div class="col-sm-3 verifycoder">
							<div class="input-group">
								<div class="fg-line">
									<input id="verifycode" name="verifycode" type="number" min="0"
										max="9999" minlength="4" maxlength="4" class="form-control">
								</div>
								<span class="input-group-btn">
									<button id="verifycodeBtn" type="button" class="btn bgm-teal">发送验证码</button>
								</span>
							</div>
						</div>
						 -->
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">头像</label>
						<div class="col-sm-10">
							<div style="width: 150px; height: 150px;" class="f-left">
								<img id="avatarimg" style="width: 100%; height: 100%;" />
							</div>
							<div class="f-left" style="width: 120px; padding-top: 10px">
								<button type="button" class="btn bgm-teal btn-block comp"
									comp="type:'fileupload',previewImgId:'avatarimg',valueId:'avatar'">选择上传图片</button>
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">部门</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" data-live-search="true"
								id="bumenId" name="bumenId">
								<option value="">请选择</option>
								<c:forEach items="${bumens}" var="bumen">
									<option value="${bumen._id}">${bumen.name}</option>
								</c:forEach>
							</select>
						</div>
						<label class="col-sm-2 control-label">人员类别</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" id="type"
								name="type" data-live-search="true">
								<option value="0">群众</option>
								<option value="1">积极分子</option>
								<option value="2">发展对象</option>
								<option value="3">预备党员</option>
								<option value="4">正式党员</option>
							</select>
						</div>
					</div>
						
					<div class="form-group">
						<label class="col-sm-2 control-label">座机号码</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="tel" name="tel" type="text" class="form-control"
									maxlength="20">
							</div>
						</div>
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
						<label class="col-sm-2 control-label">工作岗位</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" id="oneJob"
								name="oneJob" data-live-search="true">
								<option value="">请选择</option>
								<option value="公务员">公务员</option>
								<option value="参照公务员法管理的工作人员">参照公务员法管理的工作人员</option>
								<option value="事业单位管理岗位">事业单位管理岗位</option>
								<option value="事业单位专业技术岗位">事业单位专业技术岗位</option>
								<option value="公有经济控制企业管理岗位">公有经济控制企业管理岗位</option>
								<option value="公有经济控制企业专业技术岗位">公有经济控制企业专业技术岗位</option>
								<option value="非公有经济控制企业管理岗位">非公有经济控制企业管理岗位</option>
								<option value="非公有经济控制企业专业技术岗位">非公有经济控制企业专业技术岗位</option>
								<option value="民办非企业管理岗位">民办非企业管理岗位</option>
								<option value="民办非企业专业技术岗位">民办非企业专业技术岗位</option>
								<option value="公有经济控制单位工勤岗位">公有经济控制单位工勤岗位</option>
								<option value="非公有企业工勤岗位">非公有企业工勤岗位</option>
								<option value="民办非企业工勤岗位">民办非企业工勤岗位</option>
								<option value="机关单位工勤岗位">机关单位工勤岗位</option>
								<option value="事业单位工勤岗位">事业单位工勤岗位</option>
								<option value="农牧渔业生产人员">农牧渔业生产人员</option>
								<option value="乡村医生">乡村医生</option>
								<option value="外出务工经商人员">外出务工经商人员</option>
								<option value="其他农牧渔民">其他农牧渔民</option>
								<option value="解放军、武警">解放军、武警</option>
								<option value="研究生毕业年级学生">研究生毕业年级学生</option>
								<option value="研究生一年级学生">研究生一年级学生</option>
								<option value="研究生其他年级学生">研究生其他年级学生</option>
								<option value="大学本科毕业年级学生">大学本科毕业年级学生</option>
								<option value="大学本科一年级学生">大学本科一年级学生</option>
								<option value="大学本科其他年级学生">大学本科其他年级学生</option>
								<option value="大学专科毕业年级学生">大学专科毕业年级学生</option>
								<option value="大学专科一年级学生">大学专科一年级学生</option>
								<option value="大学专科其他年级学生">大学专科其他年级学生</option>
								<option value="中等专业学校学生">中等专业学校学生</option>
								<option value="高中学生">高中学生</option>
								<option value="技工学校学生">技工学校学生</option>
								<option value="离休干部">离休干部</option>
								<option value="退休人员">退休人员</option>
								<option value="退职人员">退职人员</option>
								<option value="内部退养职工">内部退养职工</option>
								<option value="大学生村官">大学生村官</option>
								<option value="社区工作人员">社区工作人员</option>
								<option value="停薪留职人员">停薪留职人员</option>
								<option value="个体工商户中的从业人员">个体工商户中的从业人员</option>
								<option value="自由职业人员">自由职业人员</option>
								<option value="（转业）待安置、学生毕业未就业的人员">（转业）待安置、学生毕业未就业的人员</option>
								<option value="公派或因私出国、出境逾期未归的人员">公派或因私出国、出境逾期未归的人员</option>
								<option value="改革后不再保留原机关干部身份，党组织关系仍保留在原单位的人员">改革后不再保留原机关干部身份，党组织关系仍保留在原单位的人员</option>
								<option value="企业破产后，领取保险金或被辞退的职工中未重新就业的人员">企业破产后，领取保险金或被辞退的职工中未重新就业的人员</option>
								<option value="由于各种原因，已经离开本人的生产、工作岗位，并已不在本单位从事其他工作，但仍与单位保留劳动关系的职工（不包括内部退养职工）">
								由于各种原因，已经离开本人的生产、工作岗位，并已不在本单位从事其他工作，但仍与单位保留劳动关系的职工（不包括内部退养职工）
								</option>
								<option value="党组织关系在人才（劳动）服务中心，不明职业的人员">党组织关系在人才（劳动）服务中心，不明职业的人员</option>
								<option value="其他从业人员">其他从业人员</option>
								<option value="其他无业人员">其他无业人员</option>
							</select>
						</div>
						<label class="col-sm-2 control-label">学历</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" id="education"
								name="education" data-live-search="true">
								<option value="">请选择</option>
								<option value="博士研究生">博士研究生</option>
								<option value="硕士研究生">硕士研究生</option>
								<option value="硕士生班">硕士生班</option>
								<option value="中央党校研究生">中央党校研究生</option>
								<option value="省（区、市）委党校研究生">省（区、市）委党校研究生</option>
								<option value="大学">大学</option>
								<option value="大专">大专</option>
								<option value="大学普通班">大学普通班</option>
								<option value="第二学士学位班">第二学士学位班</option>
								<option value="中央党校大学">中央党校大学</option>
								<option value="省（区、市）委党校大学">省（区、市）委党校大学 </option>
								<option value="中央党校大专">中央党校大专</option>
								<option value="省（区、市）委党校大专">省（区、市）委党校大专</option>
								<option value="中等专科">中等专科</option>
								<option value="职业高中">职业高中</option>
								<option value="技工学校">技工学校 </option>
								<option value="普通高中">普通高中</option>
								<option value="初中">初中</option>
								<option value="小学">小学</option>
								<option value="其他">其他</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">地址</label>
						<div class="col-sm-3">
							<div class="input-group">
								<div class="fg-line">
									<input id="address" name="address" class="form-control"
										placeholder="" maxlength="100">
								</div>
								<span class="input-group-btn">
									<button type="button" class="btn bgm-teal comp"
										comp="type:'map',provinceField:'province'">地图定位</button>
								</span>
							</div>
						</div>
						<label class="col-sm-2 control-label">邮政编码</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="zip" name="zip" type="text" class="form-control"
									maxlength="20">
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
						<label class="col-sm-2 control-label">生日</label>
						<div class="col-sm-3">
							<input id="birthday" name="birthday" class="laydate-icon form-control"  >
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">转为正式党员日期</label>
						<div class="col-sm-3">
							<input id="regParty" name="regParty" class="laydate-icon form-control" value="">
						</div>
					</div>
					<c:if test="${ffuser._id == null}">
					<div class="hr-line-dashed"></div>
						<div class="form-group">
							<label class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input id="oldPasswd" name="oldPasswd" type="password"
									class="form-control" minlength="6" maxlength="30">
							</div>
						</div>
					
						<div id="passwordDiv" class="form-group">
							<label class="col-sm-2 control-label">确认密码</label>
							<div class="col-sm-10">
								<input id="passwd" name="passwd" type="password"
									class="form-control" minlength="6" maxlength="30" required>
								<c:if test="${ffuser._id != null}">
									<span class="help-block m-b-none">如果不需要修改口令，请保持为空。</span>
								</c:if>
							</div>
						</div>
					</c:if>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<button class="btn btn-primary" type="submit">提交</button>
							<c:if test="${account.entityID != ffuser._id }">
								<button id="cancelBtn" class="btn bgm-gray m-l-20" type="button">取消</button>
							</c:if>
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
                        
							//$("#phone")
									//.change(
											//function() {
												//if (fillmaps && fillmaps.user
												//		&& user._id) {
												//	var op = fillmaps.user.oldPhone;
												//	var np = $("#phone").val();
													//if (op != np
														//	&& np.length == 11) {
														//$("#verifycode")
														//		.val("");
														//$(".verifycoder")
														//		.show();
														//$("#verifycode").attr(
																//"required",
															//	"required");
													//} else {
													//	$(".verifycoder")
													//			.hide();
													//	$("#verifycode").attr(
																//"required",
													//			null);
													//}
												//}
											//});

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
								$.post('${ctxPath}/i/regi/sendSMS.action', {
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
									if($("#oldPasswd").val() == $("#passwd").val()){
										$.shade.show();
										$("#user").enable();
										form.submit();
									}else{
										layer.alert("密码与确认密码不同，请重新填写！");
									}
								}
							});

							$("#cancelBtn")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/basic/user/toQuery.action?bumenId=${param.bumenId}";
											});






	});
	</script>
</body>
</html>
