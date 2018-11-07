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
					action="${ctxPath}/organParty/upUserOrgan.action" class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-2 control-label">姓名</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="name" name="name" type="text" class="form-control" readonly="readonly" required>
							</div>
						</div>
						<label class="col-sm-2 control-label">手机号</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="phone" name="phone" type="text" readonly="readonly" class="form-control"
									mobile="true" required>
							</div>
						</div>
					</div>
					
					 <div class="form-group">
						<label class="col-sm-2 control-label">性别</label>
						<div class="col-sm-3">
							<div class="fg-line" style="margin-top: 8px;">
								<label class="radio radio-inline m-r-20"> <input
									type="radio" checked="checked" name="gender" value="0"
									class="gender"> <i class="input-helper" readonly="readonly"></i> 男
								</label> <label class="radio radio-inline m-r-20"> <input
									type="radio" name="gender" value="1" class="gender" readonly="readonly"> <i
									class="input-helper"></i> 女
								</label>
							</div>
						</div>
						<label class="col-sm-2 control-label">身份证号</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="userID" name="userID" type="text" class="form-control"
									readonly="readonly" required>
							</div>
						</div>
					</div>
					
						<div class="form-group">
						<label class="col-sm-2 control-label">民族</label>
						<div class="col-sm-3">
							<input id="volk" name="volk" type="text" class="form-control" readonly="readonly" required>
						</div>
						<label class="col-sm-2 control-label">生日</label>
						<div class="col-sm-3">
							<input id="birthday" name="birthday" readonly="readonly" class="form-control"  required>
						</div>
					</div>
				   <div class="form-group">
					  <label class="col-sm-2 control-label">学历</label>
						<div class="col-sm-3">
							<input id="education" name="education" type="text" class="form-control" readonly="readonly" required>
						</div>
					  <label class="col-sm-2 control-label">人员类别</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" id="type"
								name="type" readonly="readonly" data-live-search="true" required>
								<option value="3">预备党员</option>
								<option value="4">正式党员</option>
							</select>
						</div>
					</div>
					
						<div class="form-group">
						<label class="col-sm-2 control-label">工作岗位</label>
						<div class="col-sm-3">
							<input id="oneJob" name="oneJob" type="text" class="form-control" readonly="readonly" required>
						</div>
						
						<label class="col-sm-2 control-label">地址</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="address" name="address" readonly="readonly" type="text" class="form-control" required>
							</div>
						</div>
						
					</div>
					<div class="hr-line-dashed"></div>
				</form>
				<form action="#" id="organParty" class="form-horizontal">
					<div class="my-titlebar">
						党员转接信息
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">原党支部</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="oldBumenName" readonly="readonly" name="oldBumenName" type="text" class="form-control" required>
							</div>
						</div>
						<label class="col-sm-2 control-label">转入支部</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input type="text" readonly="readonly" name="oldToBumenName" placeholder="党支部" class="form-control" value="" id="oldToBumenName" required/>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">党费金额</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="payment" readonly="readonly" name="payment" type="text" class="form-control" required>
							</div>
						</div>
						 <label class="col-sm-2 control-label">党费交至</label>
						<div class="col-sm-3">
							<input id="paymentDateStr" readonly="readonly" name="paymentDateStr" class="laydate-icon form-control" value="" required>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<button id="cancelBtn" readonly="readonly" class="btn bgm-gray m-l-20" type="button">返回</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<div id="menuContent" class="menuContent" style="display:none; position: absolute;background-color: #f0f6e4;">
		<div id="bumen"></div>
</div>

	<script type="text/javascript">
	var bumenId,//当前所在的部门id （处理当前申请的部门，如果是 起点则为提出申请的用户的部门id）
		bumenName,//转接时处理的人所在部门名称
		toBuType=3,//默认组织关系转接为 系统内
		toBumenId,//如果为起点则为目标部门id 如果为办理部门则为办理之后的下一级办理部门id（均为目标部门id）
		toBumenName,//如果为起点则为目标部门名称 如果为办理部门则为办理之后的下一级办理部门名称（均为目标部门名称）
		payment,
		paymentDateStr;

	var isSubPeyment=1;//是否已有缴费记录  0：没有 1:有
	
		$()
				.ready(
						function() {
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
									$("#user").enable();
									//form.submit(); 提交信息
								}
							});

							$("#cancelBtn")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/organParty/toQueryIn.action";
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
							    "${param.parentId}"));
							function clk(e, treeId, node) {
							    if(node.children=='undefined'||node.children==null||node.children.length==0){
							    	toBumenId=node._id;
							    	toBumenName=node.name;
							    	$("#toBumen").val(toBumenName);
								}
							}

	});

	</script>
</body>
</html>
