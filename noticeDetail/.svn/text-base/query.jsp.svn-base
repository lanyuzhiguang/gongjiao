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
					<%String ref = request.getHeader("REFERER");%>
					<a href="#" class="btn-link" onclick="javascript:window.location='<%=ref%>'"> <i
							class="fa fa-angle-double-left"></i>返回
					</a>
					通知详情
				</div>
				<form id="searchForm" method="get" class="form-horizontal">
					<div class="form-group">
						<div class="col-sm-12">
							<input  type="hidden" id="userIds" name="userIds" >
							<!-- <div class="form-group">
								<label class="col-sm-2 control-label">通知人员</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input type="text" class="form-control "
											   id="userNames" name="userNames" />
									</div>
								</div>
							</div> -->
							<div class="col-sm-12">
								<button id="reNotice" class="btn btn-danger m-l-20" type="button">未读人员再次通知</button>
							</div>
						</div>
					</div>
				</form>
				<div class="jqGrid_wrapper">
					<table id="noticeDetailTable"></table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//var manageType;
		$().ready(
						function() {
						    var noticeId = '${param.noticeId}'
                            $("#reNotice").click(function () {
								/* var userIds =  $("#userIds").val();
								if(userIds.length<=0) {
                                    toastr.error('请选择通知人员');
									return;
								} */
                                $.get( _ctxPath + "/noticeDetail/reNotice.action", {'noticeId':noticeId}, function(data) {
                                    if (data) {
                                        if (data.success) {
                                            $("#noticeDetailTable").reloadGrid({
                                            });
                                            toastr.success("操作成功");
                                        } else {
                                            toastr.error(data.message);
                                        }
                                    } else {
                                        toastr.error("操作失败");
                                    }
                                });
                            });

                            var lastSel = null;
                            var idNames = new Object();
							$("#noticeDetailTable")
									.grid(
								{
									url : _ctxPath
											+ "/noticeDetail/query.action?noticeId=${param.noticeId}",
									postData : $("#searchForm")
											.formobj(),
									shrinkToFit : false,
                                    //multiselect: true,
									colNames : [ '操作', "用户姓名", "阅读状态","发送次数",
											"一次发送时间" ,"最后一次发送时间"],
									colModel : [
											{
												name : "userId",
												index : "userId",
												width : 120,
												hidden:true
											},
											{
												name : "userName",
												index : "userName",
												width : 120
											},
											{
												name : "state",
												index : "state",
												width : 100,
                                                formatter : function(cellvalue,options, rowObject) {
												    if(cellvalue == 0) {
                                                        cellvalue = '未读';
													} else if (cellvalue == 1){
                                                        cellvalue = '已读';
													}
													return cellvalue;
                                                }
											},
											{
												name : "sendCount",
												index : "sendCount",
												width : 100
											},
											{
												name : "createTime",
												index : "createTime",
												width : 200
											}
											,
											{
												name : "updateTime",
												index : "updateTime",
												width : 200
											}
											],
                                    onSelectRow:function(rowId){
                                        jQuery('#gridid').restoreRow(lastSel);
                                        lastSel=rowId;
                                        var rowData = jQuery("#noticeDetailTable").jqGrid('getRowData',rowId);
                                        if(idNames[rowData.userId]) {
                                            delete idNames[rowData.userId];
                                        } else  {
                                            idNames[rowData.userId] = rowData.userName;
                                        }

                                        var ids = '';
                                        var names = '';
                                        for(var k in idNames) {
                                            ids += k+',';
                                            names += idNames[k]+',';
                                        }
                                        if(ids.length>0) {
                                            ids = ids.substring(0,ids.length-1);
                                            $("#userIds").val(ids);
                                        }
                                        if(names.length>0) {
                                            names = names.substring(0,names.length-1);
                                            $("#userNames").val(names);
                                        }
                                    },
								});

						});

	</script>
</body>
</html>
