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
					<div class="col-sm-4 maxHeight">
						<div class="jqGrid_wrapper">
							<table id="categoryTable"></table>
						</div>
					</div>
					<div class="col-sm-8">
						<form id="searchForm" method="get" class="form-horizontal">
							<input type="hidden" id="categoryId" name="categoryId"
								value="${param.categoryId}">
							<div class="form-group">
								<div class="col-sm-2 col-sm-offset-1">
									<div class="input-group fg-float">
										<div class="fg-line">
											<input id="regex:title" name="regex:title" type="text"
												class="form-control"> <label class="fg-label">标题</label>
										</div>
									</div>
								</div>
								<label class="col-sm-2 control-label">是否有效</label>
								<div class="col-sm-3">
									<select class="form-control selectpicker" id="state|integer"
										name="state|integer">
										<option value="">请选择</option>
										<option value="1">有效</option>
										<option value="0">无效</option>
									</select>
								</div>
								<div class="col-sm-4">
									<button id="search" class="btn btn-primary" type="submit">查询</button>
									<button id="newNews" class="btn btn-danger m-l-20"
										type="button" onclick="">新增视频</button>
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
	<script type="text/javascript">
		var categoryId;
		$()
				.ready(
						function() {
						$("#newNews").hide();	
							$("#categoryTable").grid(
									{
										url : _ctxPath
												+ "/pc/studyresourcePc/list.action",
										postData : {},
										shrinkToFit : false,
										autoScroll: true, 
										colNames : [ "栏目名称", "开通数量","类型","文件数量" ],
										onSelectRow : function(id) {
											var cid = $("#" + id,
													$("#categoryTable")).data(
													"rawData")._id;
											var type = $("#" + id,
													$("#categoryTable")).data(
													"rawData").type;
											if (!categoryId
													|| categoryId != cid) {
												categoryId = cid;
												loadNews();
												if(type != null && type != ""){
													if(type == 1){
														$("#newNews").show();
														$("#newNews").html("新增视频");
														$("#newNews").attr("onclick","sertVideo();");
													}else if(type == 2){
														$("#newNews").show();
														$("#newNews").html("新增音频");
														$("#newNews").attr("onclick","sertAudio();");
													}else if(type == 3){
														$("#newNews").show();
														$("#newNews").html("新增文档");
														$("#newNews").attr("onclick","sertDoc();");
													}
												}
											}
										},
										colModel : [ {
											name : "categoryName",
											index : "categoryName",
											width :250
										},{
											name : "openNumber",
											index : "openNumber",
											width :80,
											formatter : function(
													cellvalue,
													options,
													rowObject) {
												if (cellvalue == null || cellvalue == "") {
													return "0";
												} else{
													return cellvalue;
												}
											}
										}, {
											name : "type",
											index : "type",
											width :60,
											formatter : function(
													cellvalue,
													options,
													rowObject) {
												if (cellvalue == 1) {
													return "视频";
												} else if (cellvalue == 2) {
													return "音频";
												} else if (cellvalue == 3) {
													return "文档";
												} else if (cellvalue == 4) {
													return "考试";
												} else
													return "未知";
											}
										},{
											name:"resourceNumber",
											index:"resourceNumber",
											width :80
										} ]
									});
							$("#categoryTable").reloadGrid({
								postData : {}
							});
							/* $("#newNews")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/news/toUpsert.do?categoryId="
														+ categoryId;
											}); */

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
														+ "/pc/sturesourcePc/list.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "标题",
														"发布日期",
														"类型", "状态", "操作" ],
												colModel : [
														
														{
															name : "title",
															index : "title",
															width : 250
														},
														{
															name : "createTime",
															index : "createTime",
															width : 100
														},
														{
															name:"type",
															index:"type",
															width:70,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == 1) {
																	return "视频";
																} else if (cellvalue == 2) {
																	return "音频";
																} else if (cellvalue == 3) {
																	return "文档";
																} else if (cellvalue == 4) {
																	return "考试";
																} else
																	return "未知";
															}
														},
														{
															name : "state",
															index : "state",
															width : 70,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == 0) {
																	return "<font color='red'>无效</font>";
																} else if (cellvalue == 1) {
																	return "有效";
																} else
																	return "未知";
															}
														},{
															name : "_id",
															index : "_id",
															align : "center",
															width : 160,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "";/* "<a href='${ctxPath}/news/toUpsert.do?newsId="
																	+ cellvalue
																	+ "' class='m-r-10'>预览</a>"; */	
																
															 	v += "<a href='${ctxPath}/pc/sturesourcePc/toupsert.action?id="
																		+ cellvalue+"&type="+rowObject.type
																		+ "' class='m-r-10'>详情</a>";
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
														}
														]
											});

						});
		function loadNews() {
			if (!categoryId)
				return;
			$("#categoryId").val(categoryId);
			$("#newsTable").reloadGrid({
				postData : $("#searchForm").formobj()
			});
		}
		function enable(newsId) {
			doGet(_ctxPath + "/pc/sturesourcePc/enable.action?id="+newsId);
		}
		function disable(newsId) {
			doGet(_ctxPath + "/pc/sturesourcePc/disable.action?id="+newsId);
		}
		function sertVideo(id){
			document.location.href = _ctxPath
			+ "/pc/sturesourcePc/toupsert.action?categoryId="
			+ categoryId+"&type=1";
		}
		function sertAudio(){
			document.location.href = _ctxPath
			+ "/pc/sturesourcePc/toupsert.action?categoryId="
			+ categoryId+"&type=2";
		}
		function sertDoc(){
			document.location.href = _ctxPath
			+ "/pc/sturesourcePc/toupsert.action?categoryId="
			+ categoryId+"&type=3";
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
				var url = _ctxPath + "/pc/sturesourcePc/delete.action?id=" + newsId;
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
	</script>
</body>
</html>
