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
					<input type="hidden" id="valid" name="valid" value="1">
					<input type="hidden" id="orgType" name="orgType" value="3">
					<div class="form-group">
						<label class="col-sm-2 control-label">姓名</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="name" name="name" type="text" class="form-control" minlength="2" maxlength="50" required>
							</div>
						</div>
						<label class="col-sm-2 control-label">手机号</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="phone" name="phone" type="text" class="form-control"
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
									class="gender"> <i class="input-helper"></i> 男
								</label> <label class="radio radio-inline m-r-20"> <input
									type="radio" name="gender" value="1" class="gender"> <i
									class="input-helper"></i> 女
								</label>
							</div>
						</div>
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
						<label class="col-sm-2 control-label">原党支部</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="bumenName" name="bumenName" type="text" class="form-control" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">生日</label>
						<div class="col-sm-3">
							<input id="birthday" name="birthday" class="laydate-icon form-control"  required>
						</div>
						<label class="col-sm-2 control-label">转入支部</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input type="hidden" id="toBumenId" name="toBumenId" value="">
								<input type="text" name="toBumenName" placeholder="党支部" onclick="showMenu();" class="form-control" value="" id="toBumenName" required/>
							</div>
						</div>
					</div>
				   <div class="form-group">
					  <label class="col-sm-2 control-label">学历</label>
						<div class="col-sm-3">
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
						<label class="col-sm-2 control-label">党费金额</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="payment" name="payment" type="text" class="form-control" required>
							</div>
						</div>
					</div>
					<div class="form-group organr">
					  <label class="col-sm-2 control-label">人员类别</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" id="type"
								name="type" data-live-search="true" required>
								<option value="3">预备党员</option>
								<option value="4">正式党员</option>
							</select>
						</div>
					    
					    <label class="col-sm-2 control-label">党费交至</label>
						<div class="col-sm-3">
							<input id="paymentDateStr" name="paymentDateStr" class="laydate-icon form-control" value="" required>
						</div>
					</div>
					
						<div class="form-group">
						<label class="col-sm-2 control-label">工作岗位</label>
						<div class="col-sm-3">
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
								<option value="其他无业人员">其他无业人员</option>
							</select>
						</div>
						
						<label class="col-sm-2 control-label">地址</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="address" name="address" type="text" class="form-control" required>
							</div>
						</div>
						
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">介绍信编号</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="referNumber" name="referNumber" type="text" class="form-control" required>
							</div>
						</div>
						<label class="col-sm-2 control-label">有效期</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="vilDay" name="vilDay" type="text" class="form-control" style="width: 90%;" required>
								<span style="position: absolute; right: 10px; top: 14px;">天</span>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">入党日期</label>
						<div class="col-sm-3">
							<input id="joinParty" name="partyMember.joinParty" class="laydate-icon form-control"  required>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					
					<div class="my-titlebar">
						党员原所在基层党委信息
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">党委名称</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="oldPartyName" name="oldPartyName" type="text" class="form-control" required>
							</div>
						</div>
						<label class="col-sm-2 control-label">通讯地址</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="partAdress" name="partAdress" type="text" class="form-control" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">联系电话</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="partPhone" name="partPhone" type="text" class="form-control" required>
							</div>
						</div>
						<label class="col-sm-2 control-label">传真</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="partFax" name="partFax" type="text" class="form-control" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">邮编</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="zipCode" name="zipCode" type="text" class="form-control" required>
							</div>
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
							//执行一个laydate实例
							laydate.render({
								elem: '#paymentDateStr' //指定元素
							});
							laydate.render({
								elem: '#birthday' //指定元素
							});
							laydate.render({
								elem: '#joinParty' //指定元素
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

							$("#user").validate({
								submitHandler : function(form) {
									//$.shade.show();
									$("#user").enable();
									//form.submit(); 提交信息
									//loading层
									var index = parent.layer.load(1, {
									  shade: [0.1,'#fff'] //0.1透明度的白色背景
									});
									$.ajax({
								    	url:"${ctxPath}/organParty/upUserOrgan.action",
								    	type:"post",
								    	data:$('#user').serialize(),
								    	dataType:"json",
								    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
								        success:function(data) {
								        	parent.layer.close(index); 
								        	if (data) {
												if(data.success){
													document.location.href = _ctxPath + "/organParty/toQueryIn.action";
												} else{
													parent.layer.alert(data.message);
												}
											} else{
												parent.layer.alert("信息提交失败！");
											}
								        },
										error:function(e){
											parent.layer.close(index); 
											parent.layer.alert("信息提交失败！");
						                }
									});
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
							    	$("#toBumenId").val(toBumenId);
							    	toBumenName=node.name;
							    	$("#toBumenName").val(toBumenName);
								}
							}

	});

		function showMenu() {
			var cityObj = $("#toBumenName");
			var cityOffset = $("#toBumenName").offset();
			$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");

			$("body").bind("mousedown", onBodyDown);
		}
		function hideMenu() {
			$("#menuContent").fadeOut("fast");
			$("body").unbind("mousedown", onBodyDown);
		}
		function onBodyDown(event) {
			if (!(event.target.id == "menuBtn" || event.target.id == "toBumenName" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
				hideMenu();
			}
		}
	</script>
</body>
</html>
