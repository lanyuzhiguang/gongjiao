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
					<a href="${ctxPath}/pc/group/favorGroupPc/toQuery.action" class="btn-link"> <i
							class="fa fa-angle-double-left"></i>返回
					</a>
					 ${favorGroup.name}
				</div>
				<form id="searchForm" method="get" class="form-horizontal">
					<div class="form-group">
						<div class="col-sm-3 col-sm-offset-1">
							<div class="input-group fg-float">
								<div class="fg-line">
									<input id="userName" name="userName" type="text"
										class="form-control"> <label class="fg-label">成员名称</label>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<button id="search" class="btn btn-primary" type="submit">查询</button>
							<button id="newMember" class="btn btn-danger m-l-20" type="button">新增成员</button>
						</div>
					</div>
				</form>

				<div class="jqGrid_wrapper">
					<table id="memberTable"></table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$().ready(
			function() {
				$("#newMember").click(function() {
					document.location.href = _ctxPath
							+ "/pc/group/favorMemberPc/toInsert.action?groupId=${param.groupId}";
				});
				$("#searchForm").submit(function() {
					$("#memberTable").reloadGrid({
						postData : $("#searchForm").formobj()
					})
					return false;
				});
				$("#memberTable")
						.grid(
					{
						url : _ctxPath
								+ "/pc/group/favorMemberPc/query.action?groupId=${param.groupId}",
						postData : $("#searchForm")
								.formobj(),
						shrinkToFit : false,
						colNames : [ "操作", "成员名称", "角色",
								"审核状态","创建时间" ],
						colModel : [
								{
									name : "_id",
									index : "_id",
									align : "center",
									width : 150,
									formatter : function(
											cellvalue,
											options,
											rowObject) {
										var v = "<a href='${ctxPath}/pc/group/favorMemberPc/toUpsert.action?groupId=${param.groupId}&id="
												+ cellvalue
												+ "' class='m-r-10'>详情</a>";
											v += "<a href='javascript:void(0);' onclick='disable(\""
													+ cellvalue
													+ "\")' class='m-r-10' >踢除</a>";
										return v;
									}
								},
								{
									name : "userName",
									index : "userName",
									width : 100
								},
								{
									name : "role",
									index : "role",
									width : 200,
                                    formatter : function(
                                        cellvalue,
                                        options,
                                        rowObject) {
                                        if(cellvalue == 0) {
                                            cellvalue = '群主';
                                        } else if(cellvalue == 1) {
                                            cellvalue = '管理员';
                                        } else if(cellvalue == 2) {
                                            cellvalue = '用户';
                                        }  else  {
                                            cellvalue = '未知角色';
                                        }
                                        return cellvalue;
                                    }
								},
								{
									name : "state",
									index : "state",
									width : 200,
									formatter : function(
										cellvalue,
										options,
										rowObject) {
									    if(cellvalue == 0) {
                                            cellvalue = '申请中';
										} else if(cellvalue == 1) {
                                            cellvalue = '已审核';
                                        } else  {
                                            cellvalue = '未知状态';
                                        }
										return cellvalue;
									}
								},
								{
									name : "createTime",
									index : "createTime",
									width : 200
								}
						]
					});

			});
		
		function disable(Id) {
			//alert(Id);
			doGet(_ctxPath + "/pc/group/favorMemberPc/disable/" + Id + ".action");
		}
		function doGet(url) {
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#memberTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		}
	</script>
</body>
</html>
