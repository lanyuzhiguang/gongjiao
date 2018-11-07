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
				用户信息特殊处理功能页
			</div>
			<div class="card-body card-padding">
				<form id="user" method="post"
					action="" class="form-horizontal" >
					<div class="form-group">
						<div class="col-sm-1">
							<button id="dowtemp" class="btn btn-danger m-l-20"	type="button">用户信息更新</button>
						</div>
						<div class="col-sm-6 col-sm-offset-3">
						<div class="fg-line">
						
						</div>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-1">简要说明</label>
						<div class="col-sm-7 col-sm-offset-3 divcss5">
						      用户信息更新，将以excel表中信息为主，以联系电话为唯一标识进行数据更新，所以请慎重进行此操作。
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
<script src="${ctxPath}/module/resources/js/jquery.form.min.js" ></script>
<script type="text/javascript">
	$("#dowtemp").click(function(){
		document.location.href = _ctxPath
		+ "/excelData/indsqparty.action";
	});
</script>
</html>
