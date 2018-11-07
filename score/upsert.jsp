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
	.card {
		overflow: hidden;
	}
	.my-titlebar {
		margin-bottom: 10px;
	}
	#content:not(.content-alt) {
	    padding-left: 2px;
	    padding-right: 15px;
	}
</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a
						href="${ctxPath}/pc/score/scoresetdetail/toQuery.action?categoryId=${ffscoreSetDetail.categoryId}"
						class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffscoreSetDetail._id != null}">修改积分详情信息
							</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
			
				<form id="scoreSetDetail" method="post" action="${ctxPath}/pc/score/scoresetdetail/upsert.action"
					class="form-horizontal">
					<input type="hidden" id="_id" name="_id">
					 <input type="hidden" id="tenantId" name="tenantId">
					<div class="form-group">
						<label class="col-sm-2 control-label">积分名称</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="typeName" name="typeName" type="text" class="form-control"
									minlength="2" maxlength="50" required readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">积分分类</label>
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
					<div class="form-group">
						<label class="col-sm-2 control-label">积分编码</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="type" name="type" type="text" class="form-control"
									minlength="2" maxlength="50" required readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">积分分值</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="fieldscore" name="fieldscore" type="text" class="form-control"
									minlength="2" maxlength="50" required readonly="readonly">
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
	<script src="${ctxPath}/modulepc/resources/plugins/laydate/layui.js" type="text/javascript" ></script>
	<script type="text/javascript">
		$()
				.ready(
						function() {
							$("#scoreSetDetail").formSubmit({
								submitHandler : function(form) {
									var sf=document.getElementById("categoryId").value;
									alert(sf);
									$.shade.show();
									$("#scoreSetDetail").enable();
									form.submit();
								}
							});

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
					            
							$("#cancelBtn")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/pc/score/scoresetdetail/toQuery.action";
											});
						});
	</script>
</body>
</html>
