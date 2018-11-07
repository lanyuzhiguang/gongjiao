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
				<div class="row">
					<div class="col-sm-3 maxHeight">
						<div id="bumen"></div>
					</div>
					<div class="col-sm-9">
						<form id="searchForm" method="get" class="form-horizontal">
							<input id="bumenId" name="bumenId" type="hidden"
								value="${param.bumenId}">
							<input id="bumenIds" name="bumenIds"  type="hidden">	
							<div class="form-group">
								<div class="col-sm-3 col-sm-offset-1">
									<div class="input-group fg-float">
										<div class="fg-line">
											<input id="regex:name" name="regex:name" type="text"
												class="form-control"> <label class="fg-label">名称</label>
										</div>
									</div>
								</div>
								<div class="col-sm-8">
								   <div class="col-sm-3 col-sm-offset-1">
									<div class="input-group fg-float">
										<div class="fg-line">
											<input id="regex:phone" name="regex:phone" type="text"
												class="form-control"> <label class="fg-label">手机号</label>
										</div>
									</div>
								</div>
									<button id="search" class="btn btn-primary" type="submit">查询</button>
									<!--  <button id="newUser" class="btn btn-danger m-l-10"
										type="button">新增用户</button>-->
								</div>
							</div>
						</form>
						<div class="jqGrid_wrapper">
							<table id="userTable"></table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var manageType;
		$()
				.ready(
						function() {
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
							
							// 默认选择parentId指定节点
							var treeObj = $.fn.zTree.getZTreeObj("bumen");
							treeObj.selectNode(treeObj.getNodeByParam("_id",
									"${param.bumenId}"));

							function clk(e, treeId, node) {
								var nid = node._id;
								if (nid == "0")
									nid = '';
								$("#bumenId", $("#searchForm")).val(nid);
								$("#userTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});

								if (node.level == 2) {
									$("#newFunction").hide();
								} else {
									$("#newFunction").show();
								}
							}

							
							 var bumenIds=[];
								var bumenNames=[];
					            // 默认选择parentId指定节点
					            var treeObj = $.fn.zTree.getZTreeObj("bumen");
					            treeObj.selectNode(treeObj.getNodeByParam("_id",
					                "${param.parentId}"));
					            function clk(e, treeId, node) {
					                bumenIds = new Array();
					                bumenNames = new Array();
									if(node._id == 0) {
										bumenIds.push(node._id);
										bumenNames.push(node.name);
									} else  {
										bumenIds.push(node._id);
										bumenNames.push(node.name);
										getBumenIds(node,bumenIds,bumenNames);
									}
									var ids = bumenIds.join(",");
									$("#bumenIds", $("#searchForm")).val(ids);
									$("#userTable").reloadGrid({
										postData : $("#searchForm").formobj()
									});
					            }

					            $("#searchForm").submit(function() {
					                $("#userTable").reloadGrid({
					                    postData : $("#searchForm").formobj()
					                });
					                return false;
					            });
					            function beforeSelectRow()
					            {
					                $("#logisticsTable").jqGrid('resetSelection');
					                return(true);
					            }
							
							  var lastSel = null;
					            var idNames = new Object();
					            $("#userTable")
					                .grid(
										{
											url : _ctxPath
											+ "/basic/user/queryBumenIds.action",
											postData : $("#searchForm")
												.formobj(),
											shrinkToFit : false,
											multiselect: true,
											beforeSelectRow: beforeSelectRow,//js方法
											onSelectRow:function(rowId,status){
												jQuery('#gridid').restoreRow(lastSel);
												lastSel=rowId;
												var rowData = jQuery("#userTable").jqGrid('getRowData',rowId);
												if(idNames[rowData._id] && status == false) {
													delete idNames[rowData._id];
												} else  {
													idNames[rowData._id] = rowData.name;
												}
												var uIds = '';
												var names = '';
												for(var k in idNames) {
													uIds += k+',';
													names += idNames[k]+',';
												}
												if(uIds.length>0) {
					                                uIds = uIds.substring(0,uIds.length-1);
												}
					                            $("#userIds").val(uIds);
												if(names.length>0) {
													names = names.substring(0,names.length-1);
												}
					                            if(bName.length>0) {
					                                if(!names) {
					                                    $("#userNames").val(bName);
													} else {
					                                    $("#userNames").val(bName+','+names);
													}
					                            } else {
					                                $("#userNames").val(names);
					                            }
											},
												colNames : [ "操作", "名称", "手机号",
														"是否有效", "部门", "岗位",
														"最新登录时间" ],
												colModel : [
														{
															name : "_id",
															index : "_id",
															align : "center",
															width : 160,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v ="";
																if (rowObject.isrec == 1 ) { 
																		v += "<a href='javascript:void(0);' onclick='dsetrec(\""
																				+ cellvalue
																				+ "\")' class='m-r-10' >移除收件人</a>";
																	} else {
																		v += "<a href='javascript:void(0);' onclick='setrec1(\""
																				+ cellvalue
																				+ "\")' class='m-r-10' >设为收件人</a>";
																	} 
																	
																return v;
															}
														},
														{
															name : "name",
															index : "name",
															width : 100
														},
														{
															name : "phone",
															index : "phone"
														},
														{
															name : "valid",
															index : "valid",
															width : 100,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == 0) {
																	return "<font color='red'>无效</font>";
																} else if (cellvalue == 1) {
																	return "有效";
																} else if (cellvalue == -1) {
																	return "未激活";
																} else
																	return "未知";
															}
														},
														{
															name : "bumenId",
															index : "bumenId",
															codecfg : "codeType:'java',codeId:'com.dangjian.service.basic.bumen.BumenCode'",
															width : 140
														},
														{
															name : "postId",
															index : "postId",
															codecfg : "codeType:'java',codeId:'com.dangjian.service.basic.post.PostCode'",
															width : 140
														}, {
															name : "updateTime",
															index : "updateTime",
															width : 200
														} ]
											});

						});
		function setrec1(userId) {
			doGet(_ctxPath + "/basic/user/setrec/" + userId + ".action");
//			var url=_ctxPath + "/basic/user/checkrec/" + userId + ".do";
//			$.get(url, {}, function(data) {
//				if (data) {
//					if (data.success) {
//						if(data.data==1)
//						toastr.error("该群组下已有收件人，请移除后设置！");
//						else doGet(_ctxPath + "/basic/user/setrec/" + userId + ".do");
//					} else {
//						toastr.error(data.message);
//					}
//				} else {
//					toastr.error("验证前置条件失败，请联系管理员！");
//				}
//			});
			
		}
		function dsetrec(userId) {
			
			 doGet(_ctxPath + "/basic/user/setrec/" + userId + ".action");
		
		}
		function doGet(url) {
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#userTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		}
	</script>
</body>
</html>
