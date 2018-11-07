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
										<option value="1">有效</option>
										<option value="0">无效</option>
										<c:if test="${tenant.hasAuditing == 1}">
										<option value="2">待审核</option>
										<option value="3">未通过审核</option>
										</c:if>
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
	<script type="text/javascript">//hasNews 新闻运营判断
		var categoryId;
		$()
				.ready(
						function() {
							$("#categoryTable").grid(
									{
										url : _ctxPath
												+ "/pc/news/categoryPc/query.action",
										postData : {},
										colNames : [ "分类名称", "排序" ],
										onSelectRow : function(id) {
											var cid = $("#" + id,
													$("#categoryTable")).data(
													"rawData")._id;
											if (!categoryId
													|| categoryId != cid) {
												categoryId = cid;
												loadNews();
											}
										},
										colModel : [ {
											name : "name",
											index : "name"
										}, {
											name : "order",
											index : "order"
										} ]
									});
							$("#categoryTable").reloadGrid({
								postData : {}
							});
							$("#newNews")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/pc/news/toAudUpsert.action?categoryId="
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
														+ "/pc/news/query.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作", "标题","发布日期", 
												        "新闻栏目","发布者","状态", "是否置顶",
														"点击次数", "收藏次数", "赞次数"
														<c:if test="${tenant.hasAuditing == 1}">, "审核员" </c:if>
														],
												colModel : [
														{
															name : "_id",
															index : "_id",
															align : "center",
															width : 120,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "";
																if (rowObject.state == 0) {
																	v += "<a href='javascript:void(0);' onclick='enable(\""
																			+ cellvalue
																			+ "\")' class='m-r-10'>启用</a>";
																} else {
																	v += "<a href='javascript:void(0);' onclick='disable(\""
																			+ cellvalue
																			+ "\")' class='m-r-10'>禁用</a>";
																}
																v += "<a href='javascript:void(0);' onclick='remove(\""
																		+ cellvalue
																		+ "\")' class='m-r-10'>删除</a>";

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
																var v = "<a href='${ctxPath}/pc/news/toAudUpsert.action?newsId="+rowObject._id+"' >"+cellvalue+"</a>";
																return v;
															}
														},
														{
															name : "createTime",
															index : "createTime",
															width : 90
														},
														{
															name : "categoryName",
															index : "categoryName",
															width : 100
														},
														{
															name : "userName",
															index : "userName",
															width : 100
														},
														{
															name : "state",
															index : "state",
															width : 60,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == 0) {
																	return "<font color='red'>无效</font>";
																} else if (cellvalue == 1) {
																	return "有效";
																}else if (cellvalue == 2) {
																	return "待审核";
																}else if (cellvalue == 3) {
																	return "未通过审核";
																} else
																	return "未知";
															}
														},
														{
															name : "isTop",
															index : "isTop",
															width : 80,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == 0) {
																	return "否";
																} else if (cellvalue == 1) {
																	return "置顶";
																} else
																	return "未知";
															}
														},
														{
															name : "times",
															index : "times",
															width : 80
														},
														{
															name : "favorTimes",
															index : "favorTimes",
															width : 80
														}, {
															name : "zanTimes",
															index : "zanTimes",
															width : 80
														}
														<c:if test="${tenant.hasAuditing == 1}">, {
															name : "auditingName",
															index : "auditingName",
															width : 100
														}</c:if>
														]
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
		function enable(newsId) {
			doGet(_ctxPath + "/pc/news/enable/" + newsId + ".action");
		}
		function disable(newsId) {
			doGet(_ctxPath + "/pc/news/disable/" + newsId + ".action");
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
				var url = _ctxPath + "/pc/news/remove/" + newsId + ".action";
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
		
		function toLib(newsId){
			layer.confirm('确定推荐到资源库吗?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/pc/news/toLib/" + newsId + ".action";
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
  	        url:"${ctxPath}/news/categoryPc/queryAllByTenantId.action",
  	        dataType:"json",
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
  	        success:function(data){
  	        	for(var i=0;i<data.length;i++){
  	        		if(data[i].islib!=1){
  	        			$('#categoryId').append("<option value=" + data[i]._id + ">" + data[i].name + "</option>");
  	        		}
  	        	}
	  	        $("#categoryId").selectpicker('val', '${param.categoryId}');
  	        	$('#categoryId').selectpicker('refresh');
  	        }});
	</script>
</body>
</html>
