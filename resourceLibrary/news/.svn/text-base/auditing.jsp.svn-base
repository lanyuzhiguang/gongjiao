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
					新闻审核管理
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="tenant" method="post" action=""
					class="form-horizontal">
					
					<div class="form-group">
						<label class="col-sm-2 control-label">新闻审核状态</label>
						<div class="col-sm-2">
							<select class="form-control selectpicker" id="hasAuditing" name="hasAuditing"
								required>
								<option value="0">关闭</option>
								<option value="1">开启</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">注意</label>
						<div class="col-sm-6">
						<p>默认不开启发布审核，不开启审核时，任何人新增的新闻，均不需要需由审核人员确认后才能发布<br>
						开启新闻发布审核后，任何人新增的新闻，均需由审核人员确认后才能发布；有新闻审核权限的人员发布的新闻无需审核，可自动发布</p>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<button class="btn btn-primary" type="button" onclick="subm();">提交</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		function subm(){
			var auvl=$('#hasAuditing').selectpicker('val');//取值;
			var aler="";
			if(auvl==0){
				aler="如果原本审核功能是开启的，关闭后新闻只显示已经通过的，并且所有新闻审核功能将关闭，确认提交修改吗？";
			}else if(auvl==1){
				aler="如果原本审核功能是关闭的，开启审核，会在之后的新闻发布中添加审核功能，需要赋予部分人员审核，新发布的新闻才能正常显示，确认提交修改吗？";
			}
			//询问框
			layer.confirm(aler, {
			  btn: ['提交','取消'] //按钮
			}, function(){
				$.ajax({
		  	        type:"post",
		  	        url:"${ctxPath}/basic/tenant/auditing.do",
		  	        data:{hasAuditing: auvl },
		  	        dataType:"json",
		  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
		  	        success:function(data){
		  	        	layer.msg('审核信息修改成功！', {icon: 1});
		  	        }});
			}, function(){
				layer.msg('已经取消操作，数据未做修改！', {icon: 1});
			});
		}
	</script>
</body>
</html>
