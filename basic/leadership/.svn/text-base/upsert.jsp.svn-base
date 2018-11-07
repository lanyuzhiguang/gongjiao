<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<!DOCTYPE html>
<html>
	<head>
	</head>
	<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<c:if test="${account.entityID != ffuser._id }">
					<div class="my-titlebar">
						<a href="${ctxPath}/bumen/toUpsert.action?bumenId=${ffleadership.bumenId}"
						class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
					</a>
						班子成员信息维护
					</div>
				</c:if>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>

			<form id="leadership" action="#" method="post" class="form-horizontal">
					<input type="hidden" id="_id" name="_id" value="">
					<input type="hidden" id="bumenId" name="bumenId" value="">
					<div class="form-group">
						<div class="col-sm-12 col-sm-offset-1">
							<label class="col-sm-2 control-label">班子届次：</label>
							<div class="col-sm-1">第</div>
							<div class="col-sm-2">
								<div class="fg-line">
									<input id="num" name="num" aria-required="true" type="number" min="0" class="form-control" required>
								</div>
							</div>
							<div class="col-sm-1">届</div>
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-12 col-sm-offset-1">
							<label class="col-sm-2 control-label">当选日期：</label>
							<div class="col-sm-4">
								<div class="fg-line">
									<input id="fromatRecordTime" name="recordTime" type="text" class="form-control laydate-icon">
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12 col-sm-offset-1">
							<label class="col-sm-2 control-label">届满日期：</label>
							<div class="col-sm-4">
								<div class="fg-line">
									<input id="fromatRecordEnd" name="recordEnd" type="text" class="form-control laydate-icon">
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12 col-sm-offset-1">
							<div class="col-sm-4">
								<div class="fg-line">
									<button onclick="opensetleader();" class="btn btn-primary" type="button">添加班子成员</button>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="fg-line">
									<button class="btn btn-primary" type="submit">保存</button>
									<button id="cancelBtn" class="btn btn-primary" type="button">取消</button>
								</div>
							</div>
						</div>
					</div>
			</form>
			
			<div class="jqGrid_wrapper form-group" id="bumenleaderlist">
				<table id="bumenleaderTable"></table>
			</div>
	</div>
</div>
</div>	

	<div id="menuContent" class="menuContent" style="display:none; position: absolute;background-color: #f0f6e4;z-index: 119891018;">
			<div class="col-sm-12">
				<div id="bumen"></div>
			</div>
			<div class="col-sm-12">
				<div class="col-sm-12">
					<div class="fg-line">
							<button onclick="" class="btn btn-primary" type="button">搜索</button>
					</div>
				</div>
				<div class="jqGrid_wrapper form-group" id="userist">
						<table id="userTable"></table>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
	$()
	.ready(
			function() {
				$("#leadership").validate({
					submitHandler : function(form) {
						$("#leadership").enable();
						var num=$("#num").val();
					    if($.trim(num)!=""){
						    if(!isNaN(num)){
							layer.confirm('以上信息修改将被保持，是否保存？',{title:"提示"}, function(index) {
								layer.close(index);
								$.shade.show();
								$.ajax({
						  	        type:"post",
						  	        url:_ctxPath+"/leadership/upsert.action",
						  	      	data:$('#leadership').serialize(),
						  	        dataType:"json",
						  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
						  	        success:function(data){
									if (data) {
										if (data.success) {
											window.parent.toastr.success("班子届次信息保存成功！");
											document.location.href = _ctxPath+ "/bumen/toUpsert.action?bumenId=${ffleadership.bumenId}";
										} else {
											toastr.error(data.message);
										}
									} else {
										toastr.error("操作失败");
									}
								}});
							});
							}else{
								toastr.error("填写正确的届次，届次为纯数字！");
							}
					    }else{
					    	toastr.error("请填写新增的班子届次！");
					    }
					}
				});
				
				//执行一个laydate实例
				laydate.render({
					elem: '#fromatRecordTime' //指定元素
				});
				laydate.render({
					elem: '#fromatRecordEnd' //指定元素
				});
				laydate.render({
					elem: '#startTime' //指定元素
				});
				laydate.render({
					elem: '#endTime' //指定元素
				});
				$("#cancelBtn").click(function() {
					layer.confirm('以上信息修改将被取消，班子成员修改已保存，请问要取消吗？',{title:"提示"}, function(index) {
						document.location.href = _ctxPath+ "/bumen/toUpsert.action?bumenId=${ffleadership.bumenId}";
					});
				});

		getBumenLeaderTable();

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
		var bName = '';
		$('#sendBumen').click(function () {
		    if(bumenIds.length<=0)  {
		        toastr.error("请选择部门");
			}
			var userNames = '';
		    if(!userNames) {
		        userNames +=bumenNames.join(',');
		    }
		    $("#userIds").val('');
		    $("#userNames").val(userNames);
		    $("#nams").val(userNames);
		    var bIds = '';
		    if(!bIds) {
		        bIds +=bumenIds.join(',');
		    }
		    $("#bIds").val(bIds);
		    bName = userNames;
		});
		function getBumenIds(node,bumenIds,bumenNames) {
		    if(!node.children) {
		        return;
		    }
		    for(var i=0;i<node.children.length;i++) {
		        bumenIds.push(node.children[i]._id);
		        bumenNames.push(node.children[i].name);
		        getBumenIds(node.children[i],bumenIds,bumenNames);
		    }
		}
		var bumenIds=[];
		var bumenNames=[];
		// 默认选择parentId指定节点
		var treeObj = $.fn.zTree.getZTreeObj("bumen");
		treeObj.selectNode(treeObj.getNodeByParam("_id",
		    "${param.parentId}"));
		function clk(e, treeId, node) {
		    //if(node.children=='undefined'||node.children==null||node.children.length==0){  判断选择的部门是支部
		    	toBumenId=node._id;
		    	toBumenName=node.name;
		    	$("#tobumenId").val(toBumenId);
		    	$("#toname").val(toBumenName);
		    	console.log(toBumenId+"---"+toBumenName);
			//}
		}
});


	function showMenu() {
		var cityObj = $("#name");
		var cityOffset = $("#name").offset();
		$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");
		$("body").bind("mousedown", onBodyDown);
	}
	function hideMenu() {
		$("#menuContent").fadeOut("fast");
		$("body").unbind("mousedown", onBodyDown);
	}
	function onBodyDown(event) {
		if (!(event.target.id == "menuBtn" || event.target.id == "toname" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
			hideMenu();
		}
	}

	function removeCategory(obj) {
		layer.confirm('该条班子成员信息将被删除，是否确认删除？',{title:"删除"}, function(index) {
			layer.close(index);
			var url = _ctxPath + "/leadership/delBumenLeader/" + obj + ".action";
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#userTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		});
	}

	function getBumenLeaderTable(){
		//console.log($("#serOutcom").formobj());
		$("#bumenleaderTable")
		.grid(
				{
					url : _ctxPath
							+ "/leadership/queryBumenLeader.action",
					postData : {"leadershipId":"${ffleadership._id }"},
					colNames : ["姓名", "职务名称", "任职方式" , "任职状态" , "任职日期" , "离任日期" , "操作"],
					//multiselect: true,//复选框
					colModel : [
					        {
								name : "name",
								index : "name",
								width : 130
							},
							{
								name : "jobName",
								index : "jobName",
								width : 80
							},
							{
								name : "byway",
								index : "byway",
								width : 80
							},
							{
								name : "status",
								index : "status",
								width : 80,
								formatter : function(
										cellvalue,
										options,
										rowObject) {
									var v=""
									if(cellvalue==1){
										v="在任";
									}else if(cellvalue==2){
										v="离任";
									}else{
										v="类型未知";
									}
									return v;
								}
							},
							{
								name : "fromatStartTime",
								index : "fromatStartTime",
								width : 100
							},
							{
								name : "fromatEndTime",
								index : "fromatEndTime",
								width : 100
							},
							{
								name : "_id",
								index : "_id",
								align : "center",
								width : 100,
								formatter : function(
										cellvalue,
										options,
										rowObject) {
									var v = "";
									v += "<a href='javascript:void(0);' onclick='opensetleader(\""
										+ cellvalue
										+ "\")' class='m-r-10'>编辑</a>";
										v += "<a href='javascript:void(0);' onclick='removeCategory(\""
											+ cellvalue
											+ "\")' class='m-r-10'>删除</a>";
									return v;
								}
							} ]
				});
	}
	
	
	function opensetleader(id){//toUpsertbl
		document.location.href = _ctxPath + "/leadership/toUpsertbl.action?id="+id+"&leadershipId="+$("#_id").val()+"&bumenId="+$("#bumenId").val();
	}
	
	
	</script>
</html>