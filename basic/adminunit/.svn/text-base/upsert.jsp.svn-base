<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<!DOCTYPE html>
<html>
	<head>
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
			<c:if test="${account.entityID != ffuser._id }">
					<div class="my-titlebar">
						<a href="${ctxPath}/adminunit/toQuery.action?parentId=${param.parentId}"
						class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
					</a>
						组织架构信息维护
					</div>
				</c:if>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<div id="functionSelectDiv" class="treeDiv" >
				    <div class="col-sm-4 maxHeight" id="bumtree">
						<div id="adminUnitlist"></div>
					</div>
				</div>
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
												基本信息
											</a>
										</li>

									</ul>
									<div class="tab-content no-border padding-24">
										<div id="faq-tab-1" class="tab-pane fade col-sm-12 in active">
		<form id="adminUnit" method="post" action="${ctxPath}/adminunit/upsert.action"
					class="form-horizontal">
					<input type="hidden" id="_id" name="_id">
					<input type="hidden" id="parentId" name="parentId" value="">
					<input type="hidden" id="tenantId" name="tenantId" value="">
				    <input type="hidden" id="createTime" name="createTime">
				    <input type="hidden" id="valid" name="valid" value="">
				    
				    <c:if test="${ffadminUnit._id==null||ffadminUnit.parentId!=ffadminUnit.tenantId}">
					<div  class="form-group" >
					<label class="col-sm-2 control-label">上级组织：</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input type="text" class="form-control "
											   id="pname" name="pname" required />
									</div>
								</div>
					</div>
					</c:if>
					<div class="form-group">
					 <label class="col-sm-2 control-label">行政组织全称：</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="name" name="name" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
						<label class="col-sm-2 control-label">组织简介：</label>
						<div class="col-sm-10">
							<div class="fg-line">
								
							  <textarea rows="5" cols="100" class="form-control" 
							  id="summary" name="summary" required="required"></textarea>
							    
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
			</div>
		</div>
	</div>
	
	</body>
	<script type="text/javascript">
	$()
	.ready(
			function() {
				//执行一个laydate实例
				  $("#adminUnitlist").tree({
		                onClick : clk,
		                idKey : "_id",
		                pIdKey : "parentId",
		                nameKey : "name",
		                nodeHandler : function(n) {
		                    if (n._id == "0") // 展开根节点
		                        n.open = true;
		                }
		            });
				  var treeObj = $.fn.zTree.getZTreeObj("adminUnitlist");
		            treeObj.selectNode(treeObj.getNodeByParam("_id",
		                "${param.parentId}"));
			     function clk(e, treeId, node) {
		            		//alert(node.name);
		            		$("#pname").val(node.name);
		            		$("#parentId").val(node._id);
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
				$("#cancelBtn")
						.click(
								function() {
									document.location.href = _ctxPath
									+ "/adminunit/toQuery.action";//因为由于租户id在树中是0所以获取上一级参数
								});

				$("#pname").click(function() {
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
});


	</script>
</html>