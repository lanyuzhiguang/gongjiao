<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
<style>
	.maxHeight {
		height: 480px;
		border: 1px solid #ddd;
		overflow: auto;
	}
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
					<a href="../noticeDetail/toList.action" class="btn-link"> <i
						class="fa fa-angle-double-left"></i>返回
					</a>
					发送通知
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<div class="col-sm-12">
					<div class="col-sm-3 maxHeight">
						<div id="bumen"></div>
					</div>
					<div class="col-sm-3">
						<form id="searchForm" method="get" class="form-horizontal">
							<div class="form-group">
								<div class="col-sm-8">
									<div class="input-group fg-float">
										<div class="fg-line">
											<input id="bumenId" name="bumenId"  type="hidden" value="0">
											<input id="regex:name" name="regex:name"  type="text"
												   class="form-control"> <label class="fg-label">用户名称</label>
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
					<div class="col-sm-6">
						<form id="notice" method="post"
							  action="${ctxPath}/notice/insert.do" class="form-horizontal">
							<input id="bumenId" name="bumenId"  type="hidden" required>
							<input  type="hidden" id="userIds" name="userIds" required>
							<div class="form-group">
								<label class="col-sm-2 control-label">通知人员</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input type="text" class="form-control "
											   id="userNames" name="userNames" required/>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">通知标题</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input type="text" class="form-control "
											   id=title name="title"  required />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">通知内容</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input type="text" class="form-control "
											   id="realContent" name="realContent" required />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">图片最多上传9张哦</label>
								<div class="col-sm-10">
									<div id="imagesDiv" class="col-sm-12">
									</div>
									<div class="col-sm-12 m-t-10" style="width: 120px;">
										<button id="images" type="button"
												class="btn bgm-teal btn-block comp"
												comp="type:'fileupload',imagesDiv:'imagesDiv',showImage:true,imgWidth:'80px',imgHeight:'60px',isPrivate:false">选择上传图片</button>
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
	</div>

	<script type="text/javascript">
		$().ready(function() {

			$("#notice").validate({
				submitHandler : function(form) {
					$.shade.show();
					$("#groupMessage").enable();
					form.submit();
				}
			});
            $("#bumen").tree({
                onClick : clk,
                idKey : "_id",
                pIdKey : "parentId",
                nameKey : "name",
                nodeHandler : function(n) {
                    if (n._id == "0") // 展开根节点
                        n.open = true;
                }
            });

            // 默认选择parentId指定节点
            var treeObj = $.fn.zTree.getZTreeObj("bumen");
            treeObj.selectNode(treeObj.getNodeByParam("_id",
                "${param.parentId}"));
            function clk(e, treeId, node) {
                 $("#bumenId", $("#searchForm")).val(node._id);
                 $("#bumenId", $("#notice")).val(node._id);
				 $("#userTable").reloadGrid({
					  postData : $("#searchForm").formobj()
				 });
                 $("#userIds").val('');
                 $("#userNames").val('');
            }
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
						+ "/basic/user/query.do",
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
							$("#userIds").val(ids);
							$("#userNames").val(names);
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
						    }]
			        });
			$("#cancelBtn").click(function() {
				document.location.href = "../noticeDetail/toList.action";
			});
		});
	</script>
</body>
</html>
