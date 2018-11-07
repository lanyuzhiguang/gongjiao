<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
	<style>
		.card {
			overflow: hidden;
		}
	</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a href="${ctxPath}/pc/group/favorMemberPc/toQuery.action?groupId=${param.groupId}" class="btn-link"> <i
						class="fa fa-angle-double-left"></i>返回
					</a>
						新增群组人员${fffavorMember.role}
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>

				<div class="col-sm-4">
					<form id="searchForm" method="get" class="form-horizontal">
						<div class="form-group">
							<div class="col-sm-8">
								<div class="input-group fg-float">
									<div class="fg-line">
										<input id="regex:name" name="regex:name"  type="text"
											   class="form-control"> <label class="fg-label">名称</label>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<button id="search" class="btn btn-primary" type="submit">查询</button>
							</div>
						</div>
					</form>
					<div class="jqGrid_wrapper">
						<table id="userTable"></table>
					</div>
				</div>


				<div class="col-sm-8">
					<form id="favorMember" method="post"
						  action="${ctxPath}/pc/group/favorMemberPc/insert.action" class="form-horizontal">
						<input type="hidden" id="ids" name="ids">
						<input  type="hidden" id="createTime" name="createTime">
						<input  type="hidden" id="groupId" name="groupId" value="${param.groupId}">
						<div class="form-group">
							<label class="col-sm-2 control-label">选择用户</label>
							<div class="col-sm-10">
								<div class="fg-line">
									<input type="text" class="form-control "
										   id="names" name="names" disabled="disabled" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">分配角色</label>
							<div class="col-sm-10">
								<div class="fg-line" style="margin-top: 8px;">
									<label class="radio radio-inline m-r-20">
										<input type="radio"  name="role"value="0" class="role">
										<i class="input-helper"></i>
										群主
									</label>
									<label class="radio radio-inline m-r-20">
										<input type="radio" name="role" value="1" class="role">
										<i class="input-helper"></i>
										管理员
									</label>
									<label class="radio radio-inline m-r-20">
										<input type="radio"  name="role" class="role" checked="checked" value="2">
										<i class="input-helper"></i>
										用户
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">审核状态</label>
							<div class="col-sm-10">
								<div class="fg-line" style="margin-top: 8px;">
									<label class="radio radio-inline m-r-20">
										<input type="radio"  name="state" class="state" value="0" >
										<i class="input-helper"></i>
										申请中
									</label>
									<label class="radio radio-inline m-r-20">
										<input type="radio"  name="state" class="state"  checked="checked"  value="1">
										<i class="input-helper"></i>
										已审核
									</label>
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
	</div>

	<script type="text/javascript">
		$().ready(function() {
            $("#searchForm").submit(function() {
                $("#userTable").reloadGrid({
                    postData : $("#searchForm").formobj()
                });
                return false;
            });
            function beforeSelectRow()
            {
                $("#logisticsTable").jqGrid('resetSelection');
                return(true);
            }
            var lastSel = null;
            var idNames = new Object();
            $("#userTable")
                .grid(
                    {
                        url : _ctxPath
                        + "/basic/user/query.action",
                        postData : $("#searchForm")
                            .formobj(),
                        shrinkToFit : false,
                        multiselect: true,
                        beforeSelectRow: beforeSelectRow,//js方法
                        onSelectRow:function(rowId){

                                jQuery('#gridid').restoreRow(lastSel);
                                lastSel=rowId;
                                var rowData = jQuery("#userTable").jqGrid('getRowData',rowId);
                                if(idNames[rowData._id]) {
                                   delete idNames[rowData._id];
								} else  {
                                    idNames[rowData._id] = rowData.name;
								}
								var ids = '';
							    var names = '';
								for(var k in idNames) {
                                    ids += k+',';
                                    names += idNames[k]+',';
								}
								if(ids.length>0) {
								    ids = ids.substring(0,ids.length-1);
								}
								if(names.length>0) {
                                    names = names.substring(0,names.length-1);
								}
								$("#ids").val(ids);
								$("#names").val(names);
                        },
                        colNames : [ "操作", "用户名称"],
                        colModel : [
                            {
                                name : "_id",
                                index : "_id",
                                hidden:true
                            },
                            {
                                name : "name",
                                index : "name",
                                width : 100
                            }]});
            $("#favorMember").validate({
				submitHandler : function(form) {
					$.shade.show();
					$("#favorMember").enable();
					form.submit();
				}
			});
			$("#cancelBtn").click(function() {
				document.location.href = _ctxPath + "/pc/group/favorMemberPc/toQuery.action?groupId=${param.groupId}";
			});
		});
	</script>
</body>
</html>
