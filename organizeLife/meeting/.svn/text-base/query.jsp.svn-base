<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<form id="searchForm" method="get" class="form-horizontal">
				    <input id="type|integer" name="type|integer" type="hidden" value="1">
					<div class="form-group">
						<div class="col-sm-3 col-sm-offset-1">
							<div class="input-group fg-float">
								<div class="fg-line">
									<input id="regex:name" name="regex:name" type="text"
										class="form-control"> <label class="fg-label">分类名称</label>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<button id="search" class="btn btn-primary" type="submit">查询</button>
							<button id="newNotice" class="btn btn-danger m-l-20" type="button">新增分类</button>
						</div>
					</div>
				</form>
				<div class="jqGrid_wrapper">
					<table id="groupTable"></table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//var manageType;
		$().ready(
						function() {
							$("#newNotice").click(function() {
								document.location.href = _ctxPath
										+ "/pc/meetingTypePc/toInsert.action";
							});
							$("#searchForm").submit(function() {
								$("#groupTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								return false;
							});
							$("#groupTable")
									.grid(
											{
												url : _ctxPath
														+ "/pc/meetingTypePc/query.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "操作", "分类名称", "说明",
															"创建时间"],
												colModel : [
														{
															name : "_id",
															index : "_id",
															align : "center",
															width : 100,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='${ctxPath}/pc/meetingTypePc/toInsert.action?mettypeId="
																		+cellvalue+"' class='m-r-10'>编辑</a>";
																	if(rowObject.type==1){
																		v += "<span class='m-r-10'>删除</span>";
																	}else if(rowObject.type==2){
																		v += "<a href='javascript:void(0);' onclick='remove(\""
																			+ cellvalue
																			+ "\")' class='m-r-10'>删除</a>";
																	}
																	
																return v;
															}
														},
														{
															name : "name",
															index : "name",
                                                            width : 300
														},
														{
															name : "about",
															index : "about",
															width : 400,
														},
														{
															name : "createTime",
															index : "createTime",
															width : 200
														}
														]
											});
						});
		function remove(id) {
			doGet(_ctxPath + "/pc/meetingTypePc/remove/" + id + ".action");
		}
		function doGet(url) {
			layer.confirm('确定要删除分类信息?', function(index) {
				layer.close(index);
				$.get(url, {}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#groupTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
				});
			});

		}
	</script>
</body>
</html>
