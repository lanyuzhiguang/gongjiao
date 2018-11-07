<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
<style type="text/css">
.divcss5{color:#F00}
</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="my-titlebar">
				<a href="${ctxPath}/basic/user/party/insParty.action" class="btn-link"> 
					<i class="fa fa-angle-double-left"></i>返回
				</a>
				书记信息验证
			</div>
			<div class="card-body card-padding">
				<form id="user" method="post" enctype="multipart/form-data" 
					action="${ctxPath}/basic/user/upSJExcelParty.action" class="form-horizontal" >
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="createTime" name="createTime">
						<input type="hidden" id="uptype" name="uptype" value="${uptype}">
						<c:if test="${uptype != 2}">
							<div class="form-group">
								<div class="col-sm-2">
									&nbsp;&nbsp;&nbsp;&nbsp;选择根据模板填写了，书记信息的excel文件，目前只验证组织类别为党支部的书记信息，其余组织的不参与验证，是否存在不影响验证，只对验证更新速度有影响。
								</div>
								<div class="col-sm-6">
									<div class="fg-line">
										<input type="file" id="file" name="file" value="">
									</div>
								</div>
							</div>
						</c:if>
					
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<div class="col-sm-1">
							<button id="dowtemp" class="btn btn-danger m-l-20"	type="button">书记信息校对模板下载</button>
						</div>
						<div class="col-sm-6 col-sm-offset-3">
						<div class="fg-line">
							<c:if test="${uptype == 1}">
								<button class="btn btn-primary" type="submit">更新书记信息</button>
							</c:if>
						</div>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<c:if test="${sucont != null}">
						 <div class="form-group">
						    <label class="col-sm-1">提示内容</label>
						    <div class="col-sm-7 col-sm-offset-3 divcss5">
						      ${sucont}
						    </div>
						  </div>
					</c:if>
				</form>
			</div>
		</div>
	</div>

</body>
<script src="${ctxPath}/module/resources/js/jquery.form.min.js" ></script>
<script type="text/javascript">
	$("#dowtemp").click(function(){
		document.location.href = _ctxPath
		+ "/basic/user/dowSJExcelUser.action";
	});
	$("form").submit(function(e){
		layer.load(1);
	});
</script>
</html>
