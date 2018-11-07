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
					党组织信息维护
				</div>
				<form id="institution" method="post" action="${ctxPath}/institution/upsert.action" class="form-horizontal">
					<!-- 奖惩信息id -->
					<input type="hidden" id="_id" name="_id">
					<!-- 被奖惩的个人或者组织信息 -->
					<input type="hidden" id="bumenId" name="bumenId" value="${ffbumen._id}">
					<input type="hidden" id="bumenName" name="bumenName" value="${ffbumen.name}">
					<input type="hidden" id="valid" name="valid">
					<div class="form-group">
						<label class="col-sm-2 control-label">单位名称：</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="name" name="name" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">单位类别：</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" data-live-search="true"
								id="bumenTypeId" name="bumenTypeId" required>
		  <option value="1">城市街道</option>
          <option value="2">城市社区（居委会）</option>
          <option value="3">乡镇</option>
          <option value="4">农村社区（居委会）</option>
          <option value="5">建制村</option>
          <option value="6">国有经济控制</option>
          <option value="7">集体经济控制</option>
          <option value="8">非公有经济控制</option>
          <option value="9">事业单位</option>
          <option value="10">机关</option>
          <option value="11">社会组织</option>
          <option value="12">其他</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">单位建立党组织情况：</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" data-live-search="true"
								id="situation" name="situation" required>
								<option value="1">建立党委的</option>
								<option value="2">建立党总支部的</option>
								<option value="3">建立党支部的</option>
								<option value="4">建立联合党支部的</option>
							</select>
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">单位代码：</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="unitcode" name="unitcode" type="text" class="form-control"
									minlength="2" maxlength="50" >
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
		$()
				.ready(
						function() {
							//执行一个laydate实例
							laydate.render({
								elem: '#fromtRecordTime' //指定元素
							});
							
							$("#institution").validate({
								submitHandler : function(form) {
									$.shade.show();
									$("#institution").enable();
									submintOutcome();
								}
							});

							$("#cancelBtn")
									.click(
											function() {
												document.location.href = _ctxPath
												+ "/bumen/toUpsert.action?bumenId=${ffbumen._id}";
											});

							
						});

		function submintOutcome(){
			$.ajax({
	              type:"post",
	              url:"${ctxPath}/institution/upsert.action",
	              data:$('#institution').serialize(),
	              dataType:"json",
	              success:function(data){
		              if(data){
	            	  	if (data.success) {
							//toastr.success("操作成功");
							window.parent.toastr.success("操作成功");
							document.location.href = _ctxPath
							+ "/bumen/toUpsert.action?bumenId=${ffbumen._id}";
						} else {
							window.parent.toastr.error(data.message);
						}
			          }else{
			        	  window.parent.toastr.error("信息提交异常");
				      }
	              }
			});
		} 

	</script>
</body>
</html>
