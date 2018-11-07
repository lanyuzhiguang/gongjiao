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
					<c:if test="${ffoutcome.type == 0}">
							<a href="${ctxPath}/bumen/toUpsert.action?bumenId=${ffoutcome.bumenId }"
								class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
							</a>	组织奖惩信息
							</c:if>
					<c:if test="${ffoutcome.type == 1}">
						<a href="${ctxPath}/basic/user/toPartyUpsert.action?bumenId=&userId=${ffoutcome.userId}"
								class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
							</a>	党员奖惩信息
							</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="outcome" method="post" action="${ctxPath}/outcome/upsert.action" class="form-horizontal">
					<!-- 奖惩信息id -->
					<input type="hidden" id="_id" name="_id">
					<!-- 被奖惩的个人或者组织信息 -->
					<input type="hidden" id="userId" name="userId" value=""> 
					<input type="hidden" id="userName" name="userName" value="">
					<input type="hidden" id="bumenId" name="bumenId" value="">
					<input type="hidden" id="bumenName" name="bumenName" value="">
					<!-- 用来保持奖惩信息批准的部门的id -->
					<input type="hidden" id="tobumenId" name="tobumenId" value="">
					<!-- type 类型，0:部门；1:个人 -->
					<input type="hidden" id="type" name="type" value="">
					
					<div class="form-group">
						<label class="col-sm-2 control-label">奖惩类别：</label>
						<div class="col-sm-8">
							<div class="fg-line" style="margin-top: 8px;">
								<label class="radio radio-inline m-r-20"> <input
									type="radio" checked="checked" name="status" value="1"
									class="gender"> <i class="input-helper"></i> 奖励
								</label> <label class="radio radio-inline m-r-20"> <input
									type="radio" name="status" value="2" class="gender"> <i
									class="input-helper"></i> 惩罚
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">奖惩名称：</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="name" name="name" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">奖惩日期：</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="fromtRecordTime" name="recordTime" type="text" class="laydate-icon form-control"
									required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">批准奖惩的党组织：</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="toname" onclick="showMenu();" name="toname" type="text" class="form-control"
									minlength="2" maxlength="50" required>
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

<div id="menuContent" class="menuContent" style="display:none; position: absolute;background-color: #f0f6e4;">
		<div id="bumen"></div>
</div>

	<script type="text/javascript">
	var toBumenId='${ffoutcome.tobumenId}';
	var toBumenName='${ffoutcome.toname}';
		$()
				.ready(
						function() {
							//执行一个laydate实例
							laydate.render({
								elem: '#fromtRecordTime' //指定元素
							});
							
							$("#outcome").validate({
								submitHandler : function(form) {
									$.shade.show();
									$("#outcome").enable();
									submintOutcome();
								}
							});

							$("#cancelBtn")
									.click(
											function() {
												document.location.href = _ctxPath
												<c:if test="${ffoutcome.type == 0}">//如果是组织则应该跳转组织信息页面
												+ "/bumen/toUpsert.action?bumenId=${ffoutcome.bumenId}";
												</c:if>
												<c:if test="${ffoutcome.type == 1}">//如果是党员则应该跳转党员信息页面
														+ "/basic/user/toPartyUpsert.do?bumenId=&userId=${ffoutcome.userId}";
												</c:if>
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
							    //if(node.children=='undefined'||node.children==null||node.children.length==0){  判断选择的部门是支部
							    	toBumenId=node._id;
							    	toBumenName=node.name;
							    	$("#tobumenId").val(toBumenId);
							    	$("#toname").val(toBumenName);
							    	console.log(toBumenId+"---"+toBumenName);
								//}
							}
							
						});

		function showMenu() {
			var cityObj = $("#toname");
			var cityOffset = $("#toname").offset();
			$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");
			$("body").bind("mousedown", onBodyDownaction);
		}
		function hideMenu() {
			$("#menuContent").fadeOut("fast");
			$("body").unbind("mousedown", onBodyDown);
		}
		function onBodyDown(event) {
			if (!(event.target.id == "menuBtn" || event.target.id == "toname" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
				hideMenu();
			}
		}

		function submintOutcome(){
			$.ajax({
	              type:"post",
	              url:"${ctxPath}/outcome/upsert.action",
	              data:$('#outcome').serialize(),
	              dataType:"json",
	              contentType: "application/x-www-form-urlencoded; charset=utf-8",
	              success:function(data){
		              if(data){
	            	  	if (data.success) {
							toastr.success("操作成功");
							document.location.href = _ctxPath
							<c:if test="${ffoutcome.type == 0}">//如果是组织则应该跳转组织信息页面
							+ "/bumen/toUpsert.action?bumenId=${ffoutcome.bumenId}";
							</c:if>
							<c:if test="${ffoutcome.type == 1}">//如果是党员则应该跳转党员信息页面
									+ "/basic/user/toPartyUpsert.action?bumenId=&userId=${ffoutcome.userId}";
							</c:if>
						} else {
							toastr.error(data.message);
						}
			          }else{
			        	  toastr.error("信息提交异常");
				      }
	              }
			});
		} 

	</script>
</body>
</html>
