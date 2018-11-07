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
				<div class="row">
					<div class="col-sm-12">
						<form id="searchForm" method="get" class="form-horizontal">
							<div class="form-group">
								<div class="col-sm-2 col-sm-offset-1">
									<div class="input-group fg-float">
										<div class="fg-line">
											<input id="regex:title" name="regex:title" type="text"
												class="form-control"> <label class="fg-label">标题</label>
										</div>
									</div>
								</div>
								<label class="col-sm-1 control-label">状态</label>
								<div class="col-sm-2">
									<select class="form-control selectpicker" id="state|integer"
										name="state|integer">
										<option value="">请选择</option>
										<option value="2">待审核</option>
										<option value="3">未通过</option>
									</select>
								</div>
								<label class="col-sm-1 control-label">栏目</label>
								<div class="col-sm-2">
									<select class="form-control selectpicker" id="categoryId"
										name="categoryId" data-live-search="true">
										<option value="">请选择</option>
									</select>
								</div>
								<div class="col-sm-1">
									<button id="search" class="btn btn-primary" type="submit">查询</button>
									<!-- <button id="newNews" class="btn btn-danger m-l-20"
										type="">新增新闻资讯</button> -->
								</div>
							</div>
						</form>
						<div class="jqGrid_wrapper">
							<table id="newsTable"></table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-3 maxHeight" style="display: none;">
		<div class="jqGrid_wrapper">
			<table id="categoryTable"></table>
		</div>
	</div>
	<form id="funcDiv" style="display: none;" class="form-horizontal">
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-3 control-label">审核结果</label>
			<div class="col-sm-7">
				<div>
					<label class="radio radio-inline "> 
						<input type="radio" name="state" id="state" value="1"> 
						<i class="input-helper"></i> 通过
					</label> 
				</div>
				<div style="top: 40px;">
					<label class="radio radio-inline "> 
						<input type="radio" checked="checked" name="state" id="state" value="3"> 
						<i class="input-helper"></i> 不通过
					</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label">修改意见</label>
			<div class="col-sm-7">
				<textarea  id="auditingCont" name="auditingCont" class="form-control" rows="6"></textarea >
			</div>
		</div>
		<div class="hr-line-dashed"></div>
	</form>
	<script type="text/javascript">
		var categoryId;
		$()
				.ready(
						function() {
							$("#newNews")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/news/toUpsert.action?categoryId="
														+ categoryId;
											});

							$("#searchForm").submit(function() {
								$("#newsTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								return false;
							});
							$("#newsTable")
									.grid(
											{
												url : _ctxPath
														+ "/news/query.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作", "标题","发布日期", 
												        "新闻栏目","发布者","状态", 
														 "审核员" ],
												colModel : [
														{
															name : "_id",
															index : "_id",
															align : "center",
															width : 60,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "";
																if (rowObject.state == 2) {
																	v += "<a href='javascript:void(0);' onclick='senhe(\""
																			+ cellvalue
																			+ "\")' class='m-r-10'>审核</a>";
																} else {
																	v += "审核";
																}
																return v;
															}
														},
														{
															name : "title",
															index : "title",
															width : 460,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='${ctxPath}/news/toUpsert.action?newsId="+rowObject._id+"' >"+cellvalue+"</a>";
																return v;
															}
														},
														{
															name : "createTime",
															index : "createTime",
															width : 100
														},
														{
															name : "categoryName",
															index : "categoryName",
															width : 140
														},
														{
															name : "userName",
															index : "userName",
															width : 100
														},
														{
															name : "state",
															index : "state",
															width : 100,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == 0) {
																	return "<font color='red'>无效</font>";
																} else if (cellvalue == 1) {
																	return "有效";
																}else if (cellvalue == 2) {
																	return "审核中";
																}else if (cellvalue == 3) {
																	return "未通过审核";
																} else
																	return "未知";
															}
														},{
															name : "auditingName",
															index : "auditingName",
															width : 120
														} ]
											});

						});
		function loadNews() {
			if (!categoryId)
				return;
			//$("#categoryId").val(categoryId);
			$("#categoryId").selectpicker('val', categoryId);
			$('#categoryId').selectpicker('refresh');
			$("#newsTable").reloadGrid({
				postData : $("#searchForm").formobj()
			});
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
		function remove(newsId) {
			layer.confirm('确定要删除?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/news/remove/" + newsId + ".do";
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
			});
		}
		$.ajax({
  	        type:"post",
  	        url:"${ctxPath}/newsCategory/queryAllByTenantId.action",
  	        dataType:"json",
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
  	        success:function(data){
  	        	for(var i=0;i<data.length;i++){
  	        		$('#categoryId').append("<option value=" + data[i]._id + ">" + data[i].name + "</option>");
  	        	}
	  	        $("#categoryId").selectpicker('val', '${param.categoryId}');
  	        	$('#categoryId').selectpicker('refresh');
  	        }});
		$("input[name='state']").bind("click",function(){    
	        //测试操作代码    
	        if($(this).val()==1){
	        	$("#auditingCont").attr("disabled",true);
	        }else if($(this).val()==3){
	        	$("#auditingCont").attr("disabled",false);
	        }
	    }); 
		
		function senhe(id) {
			$("#funcDiv").show(); //
			layer.open({
				type : 1,
				offset: 't',
				title : "审核处理",
				area : [ '400px','360px'],
				shadeClose : true,
				closeBtn : 1,
				content : $("#funcDiv")
				,btn: ['确定', '取消']
			    ,btnAlign: 'l'
			    ,yes: function(index,layero){
			    	//console.log(layero, index);
			    	$.ajax({
			  	        type:"post",
			  	        url:"${ctxPath}/news/upnewsadit.action",
			  	        data:{'_id':id,"auditingCont":$("#auditingCont").val(),"state":$('input:radio[name="state"]:checked').val()},
			  	        dataType:"json",
			  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
			  	        success:function(data){
			  	        		layer.msg('审核信息提交成功！', {icon: 6});
			  	        		$("#auditingCont").val("");
			  	        		$("#newsTable").trigger("reloadGrid");
			  	        	}
			  	    	});
			    	
			      	layer.close(index);
			   }
			});
		}
		$("#funcDiv").hide();
	</script>
</body>
</html>
