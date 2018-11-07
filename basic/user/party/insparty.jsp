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
				<a href="${ctxPath}/basic/user/toQuery.action" class="btn-link"> 
					<i class="fa fa-angle-double-left"></i>返回
				</a>
				用户信息导入
			</div>
			<div class="card-body card-padding">
				<form id="user" method="post" enctype="multipart/form-data" 
					action="${ctxPath}/basic/user/upExcelParty.action" class="form-horizontal" >
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="createTime" name="createTime">
						<input type="hidden" id="uptype" name="uptype" value="${uptype}">
						<c:if test="${uptype != 2}">
							<div class="form-group">
								<div class="col-sm-2">
									选择根据模板填写了，用户信息excel文件 
									<br/>*导入功能已经更新，请重新下载模板，工具模板导入信息！
									<br>模板更新时间：2017.9.30
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
							<button id="dowtemp" class="btn btn-danger m-l-20"	type="button">下载模板</button>
						</div>
						<div class="col-sm-6 col-sm-offset-3">
						<div class="fg-line">
						<c:if test="${uptype == 1}">
							<button class="btn btn-primary" type="submit">校验</button>
						</c:if>
						<c:if test="${uptype == 2}">
							<button class="btn btn-primary" type="submit">提交</button>
						</c:if>
						</div>
						</div>
					</div>
					<div class="form-group" style="display: none;">
						<div class="col-sm-1">
							<button id="dowSjtemp" class="btn btn-danger m-l-20"	type="button">书记信息校对更新</button>
						</div>
						<div class="col-sm-6 col-sm-offset-3">
						<div class="fg-line">
							<p>校对书记信息，主要是批量的将以党员岗位导入的书记信息更新为书记岗位，也就是需要已经导入的书记进行校才有意义。</p>
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
		+ "/basic/user/dowExcelUser.action";
	});
	$("#dowSjtemp").click(function(){
		document.location.href = _ctxPath
		+ "/basic/user/party/insSJParty.action";
	});
	$("form").submit(function(e){
		layer.load(1);
	});
</script>
</html>
