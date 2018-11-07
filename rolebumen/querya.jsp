<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
<style>
		.maxHeight {
		height: 480px;
		border: 1px solid #ddd;
		overflow: auto;
	}
	</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a href="${ctxPath}/basic/adminUser/toQuery.do" class="btn-link"> <i
						class="fa fa-angle-double-left"></i>返回
					</a>
					添加角色
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<div id="functionSelectDiv" class="treeDiv" >
				    <div class="col-sm-4 maxHeight" id="bumtree">
						<div id="bumenlist"></div>
					</div>
				</div>
				<form id="searchForm" method="get" class="form-horizontal">
							<input id="userId" name="userId" type="hidden"
								value="${userId}">
						</form>
				<form id="rolebumen" method="post"
					action="${ctxPath}/rolebumen/upserta.do" class="form-horizontal">
					<input type="hidden" id="userId" name="userId" value="${userId}">
					<input type="hidden" id="bumenId" name="bumenId" value="">
					<input type="hidden" id="valid" name="valid" value="1">
						<div class="form-group">
						<label class="col-sm-1 control-label">组织机构</label>
						<div class="col-sm-3">
								<div class="fg-line">
									<input type="text" class="form-control "
										   id="bumenName" name="bumenName"  required />
								</div>
						</div>
						<label class="col-sm-1 control-label">角色：</label>
						<div class="col-sm-3">
						<c:if test="${fn:length(roleList) == 0}">
								<span class="help-block m-b-none">没有可选角色</span>
							</c:if>
							<c:if test="${fn:length(roleList) > 0}">
								<div class="select">
									<select class="form-control" id="roleId" name="roleId" >
										<c:forEach items="${roleList}" var="role">
											<option value="${role._id}">${role.name}</option>
										</c:forEach>
									</select>
								</div>
							</c:if>
						</div>
						<div class="col-sm-3">
							<button class="btn btn-primary" type="submit">保存</button>
							<button id="cancelBtn" class="btn bgm-gray m-l-20" type="button">取消</button>
						</div>
					</div>
				</form>
				   <div class="jqGrid_wrapper">
							<table id="newsTable"></table>
				   </div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		var layerId;
		$()
				.ready(
						function() {
							var functionIds = [], functionNames = [];
							if (fillmaps && fillmaps.account) {
								var account = fillmaps.account;
								if (account.functionIds) {
									functionIds = account.functionIds;
								}
								if (account.functionNames) {
									functionNames = account.functionNames;
								}

								if (fillmaps.account._id) {
									$("#accountName").disable();
									$("#accountPwd").attr("required", null);
									$("#accountPwd").val(""); // 默认清空口令
								}
							}

							$("#account")
									.validate(
											{
												submitHandler : function(form) {
													$.shade.show();
													$("#account").enable();
													$(".functionIds").remove();
													// 生成所在部门提交域
													for (var i = 0; i < functionIds.length; i++) {
														var dd = $(
																"<input type='hidden'>")
																.attr(
																		"name",
																		"functionIds["
																				+ i
																				+ "]")
																.addClass(
																		"functionIds")
																.val(
																		functionIds[i]);
														$("#account")
																.append(dd);
													}
													form.submit();
												}
											});

							$("#cancelBtn")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/basic/adminUser/toQuery.do";
											});

							  $("#bumenlist").tree({
					                onClick : clk,
					                idKey : "_id",
					                pIdKey : "parentId",
					                nameKey : "name",
					                nodeHandler : function(n) {
					                    if (n._id == "0") // 展开根节点
					                        n.open = true;
					                }
					            });
							  var treeObj = $.fn.zTree.getZTreeObj("bumenlist");
					            treeObj.selectNode(treeObj.getNodeByParam("_id",
					                "${param.parentId}"));
						     function clk(e, treeId, node) {
					            		//alert(node.name);
					            		$("#bumenName").val(node.name);
					            		$("#bumenId").val(node._id);
											var node = treeObj.getNodeByParam("_id", functionIds);
											if (node) {
												treeObj.selectNode(node, true);
											}
											
					                bumenIds = new Array();
					                bumenNames = new Array();
									if(node._id == 0) {
										bumenIds.push(node._id);
										bumenNames.push(node.name);
									} else  {
										var radioVal =  $("input[name='bumenRadio']:checked").val();
										bumenIds.push(node._id);
										bumenNames.push(node.name);
										if(radioVal == 1)
											getBumenIds(node,bumenIds,bumenNames);
									}
					            }
						     $("#bumenName").click(function() {
									//alert($("#meetId").attr("data"));
									$("#functionSelectDiv").show();//id="divb1"
									$("#bumtree").removeClass("maxHeight");
									layer.open({
										type : 1,
										title : "选择发布部门",
										offset: 't',
										area : [ '400px','500px'],
										shadeClose : true,
										closeBtn : 1,
										content : $("#functionSelectDiv")
									});
								});
						 	$("#functionSelectDiv").hide();
						 	
						 	$("#newsTable")
							.grid(
									{
										url : _ctxPath
												+ "/rolebumen/query.do",
										postData : $("#searchForm")
												.formobj(),
										shrinkToFit : false,
										colNames : [ "组织机构", "角色", "操作" ],
										colModel : [
												
												{
													name : "bumenName",
													index : "bumenName",
													width : 360
												},
												{
													name : "roleName",
													index : "roleName",
													width : 260
												},
												{
													name : "_id",
													index : "_id",
													align : "center",
													width : 160,
													formatter : function(
															cellvalue,
															options,
															rowObject) {
														var v = "<a href='${ctxPath}/news/toUpsert.do?newsId="
																+ cellvalue
																+ "' class='m-r-10'>详情</a>";
														v += "<a href='javascript:void(0);' onclick='remove(\""
																+ cellvalue
																+ "\")' class='m-r-10'>删除</a>";

														return v;
													}
												}]
									});
						});
		
		function remove(rolebumenId){
			doGet(_ctxPath + "/rolebumen/remove/" + rolebumenId + ".do");
		}
	
		function doGet(url) {
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
		}
	</script>

</body>
</html>
