<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<!DOCTYPE html>
<html>
	<head>
	</head>
	<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
			<c:if test="${account.entityID != ffuser._id }">
					<div class="my-titlebar">
						<a
							href="${ctxPath}/basic/user/toPartyQuery.action?bumenId=${param.bumenId}"
							class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
						</a>
						党员信息维护
					</div>
				</c:if>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
		<div class="main-container" id="main-container">
			<div class="main-content">
				<div class="main-content-inner">
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<div class="tabbable">
									<ul class="nav nav-tabs padding-18 tab-size-bigger" id="myTab">
										<li class="active">
											<a data-toggle="tab" href="#faq-tab-1">
												党员基本信息
											</a>
										</li>
										<li>
											<a data-toggle="tab" href="#faq-tab-2">
												党员奖惩
											</a>
										</li>
										<li>
											<a data-toggle="tab" href="#faq-tab-3">
												党内职务信息
											</a>
										</li>

										<li>
											<a data-toggle="tab" href="#faq-tab-4">
												 行政职务信息
											</a>
										</li>

									</ul>
									<div class="tab-content no-border padding-24">
										<div id="faq-tab-1" class="tab-pane fade col-sm-12 in active">
				<form id="user" method="post" action="#" class="form-horizontal">
					<input type="hidden" id="_id" name="_id"> 
					<input type="hidden" id="createTime" name="createTime">
					<input type="hidden" id="valid" name="valid">
					<input type="hidden" id="bumenId" name="bumenId">
					<div class="col-sm-6">
					<div class="form-group">
						<label class="col-sm-2 control-label">名称</label>
						<div class="col-sm-8">
							<div class="fg-line">
								<input id="name" name="name" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group">
					<label class="col-sm-2 control-label">性别</label>
						<div class="col-sm-8">
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
					<label class="col-sm-2 control-label">民族</label>
						<div class="col-sm-8">
							<select class="form-control selectpicker" id="volk"
								name="volk" data-live-search="true" required>
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
						<label class="col-sm-2 control-label">身份证号</label>
						<div class="col-sm-8">
							<div class="fg-line">
								<input id="userID" name="userID" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">生日</label>
						<div class="col-sm-8">
							<input id="birthday" name="birthday" class="laydate-icon form-control"  >
						</div>
					</div>
					<div class="form-group">
					<label class="col-sm-2 control-label">学历</label>
						<div class="col-sm-8">
							<select class="form-control selectpicker" id="education"
								name="education" data-live-search="true" required>
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
					<label class="col-sm-2 control-label">人员类别</label>
						<div class="col-sm-8">
							<select class="form-control selectpicker" id="type"
								name="type" data-live-search="true" required>
								<option value="0">群众</option>
								<option value="1">积极分子</option>
								<option value="2">发展对象</option>
								<option value="3">预备党员</option>
								<option value="4">正式党员</option>
							</select>
						</div>
					</div>
					<div class="form-group">
							<label class="col-sm-2 control-label">家庭住址</label>
							<div class="col-sm-8">
								<input id="address" name="address" class="form-control" placeholder="" maxlength="1000">
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group organr">
							<label class="col-sm-2 control-label">头像</label>
							<div class="col-sm-10">
								<div style="width: 160px; height: 160px;" class="f-left">
									<img id="avatarimg" style="width: 100%; height: 100%;" />
								</div>
								<div class="f-left" style="width: 120px; padding-top: 10px">
									<button type="button" class="btn bgm-teal btn-block comp"
										comp="type:'fileupload',previewImgId:'avatarimg',valueId:'avatar'">选择上传图片</button>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">工作岗位</label>
							<div class="col-sm-8">
								<select class="form-control selectpicker" id="oneJob"
									name="oneJob" data-live-search="true" required>
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
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">手机号</label>
							<div class="col-sm-8">
								<div class="fg-line">
									<input id="phone" name="phone" type="text" class="form-control"
										mobile="true" required>
								</div>
								<span class="help-block m-b-none">此手机号将用于用户安全验证，请确保正确无误。</span>
							</div>
						</div>
						<div class="form-group organr">
							<label class="col-sm-2 control-label">所在党支部</label>
							<div class="col-sm-8">
								<div class="fg-line">
									<input onclick="showMenu()" id="bumenName" name="bumenName" readonly="readonly" type="text" class="form-control"
										value="${bumenName }" required>
								</div>
							</div>
						</div>
					</div>
					<div class="hr-line-dashed col-sm-12"></div>
					<div class="form-group col-sm-12">
						<div class="col-sm-5"></div>
						<div class="col-sm-4">
							<button class="btn btn-primary m-l-20" type="submit">保存</button>
							<button id="cancelBtn" class="btn bgm-gray m-l-20" type="button">取消</button>
						</div>
					</div>
				</form>
										</div>

										<div id="faq-tab-2" class="tab-pane fade col-sm-12"><!-- 党员奖惩 -->
											<form id="serOutcom" action="" style="display: none;">
												<input type="hidden" value="1" id="type|integer" name="type|integer">
												<input type="hidden" value="1" id="valid|integer" name="valid|integer">
												<c:if test="${ffuser._id == null}">
													<input type="hidden" value="用户新建中" id="userId" name="userId">
												</c:if>
												<c:if test="${ffuser._id != null}">
													<input type="hidden" value="${ffuser._id }" id="userId" name="userId">
												</c:if>
											</form>
											<c:if test="${ffuser._id != null}">
												<div class="form-group col-sm-12">
													<div class="col-sm-5"><button id="addOutcome" class="btn btn-primary m-l-20" type="button">添加</button></div>
												</div>
											</c:if>
											<div class="jqGrid_wrapper" id="newslist">
												<table id="newsTable"></table>
											</div>
										</div>

										<div id="faq-tab-3" class="tab-pane fade col-sm-12">
											<form id="bumenLeader" action="#" method="post" style="display: none;" class="form-horizontal">
												<c:if test="${ffuser._id == null}">
													<input type="hidden" value="用户新建中" id="userId" name="userId">
												</c:if>
												<c:if test="${ffuser._id != null}">
													<input type="hidden" value="${ffuser._id }" id="userId" name="userId">
												</c:if>
											</form>
											<div class="jqGrid_wrapper form-group" id="bumenleaderlist">
												<table id="bumenleaderTable"></table>
											</div>
										</div>
										
										<div id="faq-tab-4" class="tab-pane fade col-sm-12">
											<form id="administrativeDuties" action="#" method="post" class="form-horizontal">
												<c:if test="${ffuser._id == null}">
													<input type="hidden" value="用户新建中" id="userId" name="userId">
												</c:if>
												<c:if test="${ffuser._id != null}">
													<input type="hidden" value="${ffuser._id }" id="userId" name="userId">
												</c:if>
											</form>
											<c:if test="${ffuser._id != null}">
												<div class="form-group col-sm-12">
													<div class="col-sm-5"><button id="addAdminDuties" class="btn btn-primary m-l-20" type="button">添加</button></div>
												</div>
											</c:if>
											<div class="jqGrid_wrapper form-group" id="adminDutieslist">
												<table id="adminDutiesTable"></table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
			</div>
		</div>
	</div>
	
	<div id="menuContent" class="menuContent" style="display:none; position: absolute;background-color: #f0f6e4;">
		<div id="bumen"></div>
	</div>
	
	</body>
	<script type="text/javascript">
	$()
	.ready(
			function() {

				$("#user").validate({//${ctxPath}/basic/user/upsert.action
					submitHandler : function(form) {//用户信息提交验证
						$("#user").enable();
						sbmintUser();
					}
				});
				
				//执行一个laydate实例
				laydate.render({
					elem: '#regParty' //指定元素
				});
				laydate.render({
					elem: '#birthday' //指定元素
				});

				$("#bumen").tree({
				    onClick : clk,
				    idKey : "_id",
				    pIdKey : "parentId",
				    nameKey : "name",
				    nodeHandler : function(n) {
				        if (n._id == "0") // 展开根节点
				            n.open = true;
				    }
				});
				var bName = '';
				$('#sendBumen').click(function () {
				    if(bumenIds.length<=0)  {
				        toastr.error("请选择部门");
					}
					var userNames = '';
				    if(!userNames) {
				        userNames +=bumenNames.join(',');
				    }
				    $("#userIds").val('');
				    $("#userNames").val(userNames);
				    $("#nams").val(userNames);
				    var bIds = '';
				    if(!bIds) {
				        bIds +=bumenIds.join(',');
				    }
				    $("#bIds").val(bIds);
				    bName = userNames;
				});
				function getBumenIds(node,bumenIds,bumenNames) {
				    if(!node.children) {
				        return;
				    }
				    for(var i=0;i<node.children.length;i++) {
				        bumenIds.push(node.children[i]._id);
				        bumenNames.push(node.children[i].name);
				        getBumenIds(node.children[i],bumenIds,bumenNames);
				    }
				}
				var bumenIds=[];
				var bumenNames=[];
				// 默认选择parentId指定节点
				var treeObj = $.fn.zTree.getZTreeObj("bumen");
				treeObj.selectNode(treeObj.getNodeByParam("_id",
				    "${ffuser.bumenId}"));
			    
				function clk(e, treeId, node) {
					//console.log(node.children);
				    if(node.children=='undefined'||node.children==null||node.children.length==0){  //判断选择的部门是支部
				    	toBumenId=node._id;
				    	toBumenName=node.name;
				    	$("#bumenId").val(toBumenId);
				    	$("#bumenName").val(toBumenName);
				    	//console.log(toBumenId+"---"+toBumenName);
					}
				}


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
						$("#verifycode").attr("required","required");
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
											+ "/basic/user/toPartyQuery.action?bumenId=${param.bumenId}";
								});

				$("#addOutcome").click(
						function() {
							document.location.href = _ctxPath
									+ "/outcome/toUpsert.action?type=1&userId=${ffuser._id}";
						});

				$("#addAdminDuties").click(
						function() {
							document.location.href = _ctxPath
									+ "/administrativeDuties/toUpsert.action?bumenId=${param.bumenId}&skip=1&type=1&userId=${ffuser._id}";
						});
				
				getNewTable();//查询党员奖惩信息
				getBumenLeaderTable();//查询用户党员党内职务信息
				getadminDutiesTable();//查询用户职务信息
});


	function showMenu() {
		var cityObj = $("#bumenName");
		var cityOffset = $("#bumenName").offset();
		$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");
		$("body").bind("mousedown", onBodyDown);
	}
	function hideMenu() {
		$("#menuContent").fadeOut("fast");
		$("body").unbind("mousedown", onBodyDown);
	}
	function onBodyDown(event) {
		if (!(event.target.id == "menuBtn" || event.target.id == "bumenName" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
			hideMenu();
		}
	}
	
	function getNewTable(){
		$("#newsTable")
		.grid(
				{
					url : _ctxPath
							+ "/outcome/query.action",
					postData : $("#serOutcom").formobj(),
					colNames : ["奖惩名称", "奖惩日期", "批准奖惩的党组织" , "类别" , "操作" ],
					//multiselect: true,//复选框
					colModel : [
					        {
								name : "name",
								index : "name",
								width : 250
							},
							{
								name : "fromtRecordTime",
								index : "fromtRecordTime",
								width : 80
							},
							{
								name : "toname",
								index : "toname",
								width : 250
							},
							{
								name : "status",
								index : "status",
								width : 80,
								formatter : function(
										cellvalue,
										options,
										rowObject) {
									var v=""
									if(cellvalue==1){
										v="奖励";
									}else if(cellvalue==2){
										v="惩罚";
									}else{
										v="类型未知";
									}
									return v;
								}
							},
							{
								name : "_id",
								index : "_id",
								align : "center",
								width : 60,
								formatter : function(
										cellvalue,
										options,
										rowObject) {
									var v = "";
									v += "<a href='javascript:void(0);' onclick='changCategory(\""
										+ cellvalue
										+ "\")' class='m-r-10'>编辑</a>";
										v += "<a href='javascript:void(0);' onclick='removeCategory(\""
											+ cellvalue
											+ "\")' class='m-r-10'>删除</a>";
									return v;
								}
							} ]
				});
	}

	function changCategory(obj){
		document.location.href = _ctxPath + "/outcome/toUpsert.action?outcomeId="+obj;
	}

	function removeCategory(obj) {
		layer.confirm('该条奖惩信息删除后将无法恢复，是否确认删除？',{title:"删除"}, function(index) {
			layer.close(index);
			var url = _ctxPath + "/outcome/del/" + obj + ".action";
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#newsTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		});
	}

	function sbmintUser(){
		layer.confirm('用户信息编辑提交，是否确认提交？',{title:"提示"}, function(index) {
			layer.close(index);
			//loading层
			var index = layer.load(1, {
			  shade: [0.1,'#fff'] //0.1透明度的白色背景
			});
			$.ajax({
	  	        type:"post",
	  	        url:_ctxPath+"/basic/user/upsertParty.action",
	  	      	data:$('#user').serialize(),
	  	        dataType:"json",
	  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
	  	        success:function(data){
	  	        	if(data){
	  	        		if (data.success) {
	  	        			window.parent.toastr.success("用户信息提交成功");
	  	        			document.location.href = _ctxPath
							+ "/basic/user/toPartyQuery.action?bumenId=${param.bumenId}";
						} else {
							toastr.error(data.message);
						}
	  	  	        }else{
	  	  	        	toastr.error("数据提交异常，请稍后再试！");
	  	  	  	    }
	  	        	layer.close(index);
	  	        }
			});
		});
	}

	function getBumenLeaderTable(){
		//console.log($("#serOutcom").formobj());
		$("#bumenleaderTable")
		.grid(
				{
					url : _ctxPath
							+ "/leadership/queryBumenLeader.action",
					postData : $('#bumenLeader').serialize(),
					colNames : ["任职党组织名称", "职务名称", "任职方式" , "任职状态" , "任职日期" , "离任日期"],
					//multiselect: true,//复选框
					colModel : [
					        {
								name : "bumenName",
								index : "bumenName",
								width : 230
							},
							{
								name : "jobName",
								index : "jobName",
								width : 80
							},
							{
								name : "byway",
								index : "byway",
								width : 80
							},
							{
								name : "status",
								index : "status",
								width : 80,
								formatter : function(
										cellvalue,
										options,
										rowObject) {
									var v=""
									if(cellvalue==1){
										v="在任";
									}else if(cellvalue==2){
										v="离任";
									}else{
										v="类型未知";
									}
									return v;
								}
							},
							{
								name : "fromatStartTime",
								index : "fromatStartTime",
								width : 100
							},
							{
								name : "fromatEndTime",
								index : "fromatEndTime",
								width : 100
							}]
				});
	}
	function getadminDutiesTable(){
		$("#adminDutiesTable")
		.grid(
				{
					url : _ctxPath
							+ "/administrativeDuties/query.action",
					postData : $('#administrativeDuties').serialize(),
					colNames : ["任职单位", "任职部门", "职务名称","职级", "任职方式" , "任职状态" , "任职日期" , "离任日期","操作"],
					//multiselect: true,//复选框companyName
					colModel : [
							{
								name : "companyName",
								index : "companyName",
								width : 230
							},
					        {
								name : "bumenName",
								index : "bumenName",
								width : 230
							},
							{
								name : "jobTitle",
								index : "jobTitle",
								width : 80
							},
							{
								name : "rankName",
								index : "rankName",
								width : 100
							},
							{
								name : "byway",
								index : "byway",
								width : 80
							},
							{
								name : "status",
								index : "status",
								width : 80,
								formatter : function(
										cellvalue,
										options,
										rowObject) {
									var v=""
									if(cellvalue==1){
										v="在任";
									}else if(cellvalue==2){
										v="离任";
									}else{
										v="类型未知";
									}
									return v;
								}
							},
							{
								name : "fromatStartTime",
								index : "fromatStartTime",
								width : 100
							},
							{
								name : "fromatEndTime",
								index : "fromatEndTime",
								width : 100
							},
							{
								name : "_id",
								index : "_id",
								width : 80,
								formatter : function(
										cellvalue,
										options,
										rowObject) {
									var v = "";
									v += "<a href='javascript:void(0);' onclick='changAdmins(\""
										+ cellvalue
										+ "\")' class='m-r-10'>编辑</a>";
										v += "<a href='javascript:void(0);' onclick='removeAdmins(\""
											+ cellvalue
											+ "\")' class='m-r-10'>删除</a>";
									return v;
								}
							}]
				});
	}

	function changAdmins(obj){
		document.location.href = _ctxPath
		+ "/administrativeDuties/toUpsert.action?bumenId=${param.bumenId}&skip=1&type=1&userId=${ffuser._id}&adminDutieId="+obj;
	}

	function removeAdmins(obj) {
		layer.confirm('该条用户行政信息删除后将无法恢复，是否确认删除？',{title:"删除"}, function(index) {
			layer.close(index);
			var url = _ctxPath + "/administrativeDuties/deladminDuties/" + obj + ".action";
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#adminDutiesTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		});
	}
	</script>
</html>