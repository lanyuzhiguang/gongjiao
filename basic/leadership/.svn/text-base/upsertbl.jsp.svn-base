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
						<a href="${ctxPath}/leadership/toUpsert.action?leadershipId=${ffbumenLeader.leadershipId}"
						class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
					</a>
						班子成员信息编辑
					</div>
				</c:if>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>

	<form id="bumenLeader" action="#" method="post" class="form-horizontal">
		<input type="hidden" id="_id" name="_id" value="">
		<input type="hidden" id="userId" name="userId" value="">
		<input type="hidden" id="leadershipId" name="leadershipId" value="">
		<input type="hidden" id="bumenId" name="bumenId" value="">
		<input type="hidden" id="createTime" name="createTime" value="">
		<input type="hidden" id="state" name="state" value="">
		<div class="form-group">
			<div class="col-sm-12 col-sm-offset-1">
			<label class="col-sm-1 control-label">姓名：</label>
			<div class="col-sm-6">
				<div class="fg-line">
					<input id="name" name="name" type="text" onclick="opensetleader();" class="form-control" required>
				</div>
			</div>
			</div>
		</div>
		
		<div class="form-group">
		<div class="col-sm-12 col-sm-offset-1">
			<label class="col-sm-1 control-label">职务名称：</label>
			<div class="col-sm-3">
				<select class="form-control selectpicker" id="jobId" name="jobId" required>
						<option value="1">书记</option>
						<option value="2">副书记</option>
						<option value="3">委员</option>
						<option value="4">党小组长</option>
						<option value="5">组织委员</option>
						<option value="6">纪检委员</option>
						<option value="7">宣传委员</option>
						<option value="8">生活委员</option>
						<option value="9">群团委员</option>
				</select>
			</div>
			<label class="col-sm-1 control-label">排序号：</label>
			<div class="col-sm-3">
				<input id="order" name="order" aria-required="true" type="number" min="0" class="form-control" required>
			</div>
		</div>
		</div>
		
		<div class="form-group">
		<div class="col-sm-12 col-sm-offset-1">
			<label class="col-sm-1 control-label">任职方式：</label>
			<div class="col-sm-3">
				<select class="form-control selectpicker" id="bywayId" name="bywayId" required>
						<option value="1">选举</option>
						<option value="2">任命</option>
				</select>
			</div>
			<label class="col-sm-1 control-label">任职状态：</label>
			<div class="col-sm-3">
				<select class="form-control selectpicker" id="status" name="status" required>
						<option value="1">在任</option>
						<option value="2">离任</option>
				</select>
			</div>
		</div>
		</div>
		<div class="form-group">
		<div class="col-sm-12 col-sm-offset-1">
			<label class="col-sm-1 control-label">任职日期：</label>
			<div class="col-sm-3">
				<div class="fg-line">
						<input id="fromatStartTime" name="startTime" type="text" class="form-control laydate-icon" required>
				</div>
			</div>
			<label class="col-sm-1 control-label">离职日期：</label>
			<div class="col-sm-3">
				<div class="fg-line">
					<input id="fromatEndTime" name="endTime" type="text" class="form-control laydate-icon">
				</div>
			</div>
		</div>
		</div>
		<div class="form-group">
			<div class="col-sm-4">
			</div>
			<div class="col-sm-4">
				<button class="btn btn-primary" type="submit">保存</button>
				<button id="cancelBtn" class="btn btn-primary" type="button">取消</button>
			</div>
			<div class="col-sm-4">
			</div>
		</div>
		
	</form>
			
	</div>
</div>
</div>	

	<div id="menuContent" class="menuContent" style="display:none;">
			<div class="col-sm-5">
				<div id="bumen"></div>
			</div>
			<div class="col-sm-7">
				<div class="col-sm-12">
					<form action="#" id="searchUser" name="searchUser" method="post" class="form-horizontal">
					<input id="bumenId" name="bumenId"  type="hidden" value="${ffbumenLeader.bumenId }">
					<div class="col-sm-6">
						<div class="input-group fg-float">
							<div class="fg-line">
								<input id="regex:name" name="regex:name" type="text"
												class="form-control"> <label class="fg-label">名称</label>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="input-group fg-float">
							<div class="fg-line">
								<input id="regex:phone" name="regex:phone" type="text"
												class="form-control"> <label class="fg-label">手机号</label>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="fg-line">
							<button onclick="serch();" class="btn btn-primary" type="button">搜索</button>
						</div>
					</div>
					</form>
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
				//执行一个laydate实例
				laydate.render({
					elem: '.recordTime' //指定元素
				});
				laydate.render({
					elem: '#fromatRecordEnd' //指定元素
				});
				laydate.render({
					elem: '#fromatStartTime' //指定元素
				});
				laydate.render({
					elem: '#fromatEndTime' //指定元素
				});
				$("#cancelBtn").click(function() {
					layer.confirm('以上编辑的信息将不会保存与修改，是否取消？',{title:"提示"}, function(index) {
						document.location.href = _ctxPath+ "/leadership/toUpsert.action?leadershipId=${ffbumenLeader.leadershipId}";
					});
				});

				$("#bumenLeader").validate({
					submitHandler : function(form) {
						$("#bumenLeader").enable();
						if($("#userId").val() != ''&&$("#userId").val() != null&&$("#userId").val() != "undefined"){
							layer.confirm('是否确认提交当前用户信息为班子成员？',{title:"提示"}, function(index) {
								layer.close(index);
								$.shade.show();
								$.ajax({
						  	        type:"post",
						  	        url:_ctxPath+"/leadership/upsertbl.action",
						  	      	data:$('#bumenLeader').serialize(),
						  	        dataType:"json",
						  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
						  	        success:function(data){
									if (data) {
										if (data.success) {
											window.parent.toastr.success("操作成功");
											document.location.href = _ctxPath+ "/leadership/toUpsert.action?leadershipId=${ffbumenLeader.leadershipId}";
										} else {
											toastr.error(data.message);
										}
									} else {
										toastr.error("操作失败");
									}
								}});
							});
						}else{
							layer.alert("请选择用户");
						}
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
		    	$("#menuContent").find("#bumenId").val(toBumenId);
		    	serch();
			//}
		}
});

	function serch(){
		$("#userTable").reloadGrid({
			postData : $("#searchUser").formobj()
		});
	}
	
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
	
	function changCategory(obj){
		document.location.href = _ctxPath + "/outcome/toUpsert.action?outcomeId="+obj;
	}

	function removeCategory(obj) {
		layer.confirm('该条奖惩信息删除后将无法恢复，是否确认删除？',{title:"删除"}, function(index) {
			layer.close(index);
			var url = _ctxPath + "/outcome/del/" + obj + ".action";
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
	var index;
	function opensetleader(){
		$("#userist").html('<table id="userTable"></table>');
		getUsers();
		index=layer.open({
			type : 1,
			title : "编辑",
			offset: 't',
			area : [ '700px','450px'],
			shadeClose : true,
			closeBtn : 1,
			content : $("#menuContent"),
			//btn: ['确定','取消'],
			yes: function(index, layero){
				var num=$("#num").val();
			    if($.trim(num)!=""){
				    if(!isNaN(num)){
			    	//loading层
					var indx = layer.load(1, {
					  shade: [0.7,'#fff'] //0.1透明度的白色背景
					});
			    	$.ajax({
			  	        type:"post",
			  	        url:_ctxPath+"/leadership/upsert.action",
			  	      	data:$('#leadershipFrom').serialize(),
			  	        dataType:"json",
			  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
			  	        success:function(data){
			  	        	layer.close(indx);
			  	        	if (data.success) {
								toastr.success("操作成功");
							} else {
								toastr.error(data.message);
							}
							$("#leadershipTable").trigger("reloadGrid");
			  	        	layer.close(index);
			  	        }
					});
				    }else{
				    	toastr.error("请填写新增的班子届次,届次为数字！");
					}
			    }else{
			    	toastr.error("请填写新增的班子届次！");
			    }
			}
		});
	}

	function getUsers(){
		$("#userTable")
        .grid(
			{
				url :"${ctxPath}/basic/user/queryBumenId.action",
				postData : $("#searchUser").formobj(),
				colNames : [ "姓名", "电话号码","操作"],
				colModel : [
					{
						name : "name",
						index : "name",
						width : 150
					},
					{
						name : "phone",
						index : "phone",
						width : 150
				    },
					{
						name : "_id",
						index : "_id",
						width : 120,
						formatter : function(
								cellvalue,
								options,
								rowObject) {
							var v = "";
							v += "<a href='javascript:void(0);' onclick='addUser(\""
								+ cellvalue+"\",\""+rowObject.name
								+ "\")' class='m-r-10'>选择</a>";
							return v;
						}
				    }]
	        });
	}

	function addUser(id,name){//upsertbl
		//alert(id+"--"+name);
		$("#bumenLeader").find("#userId").val(id);
		$("#bumenLeader").find("#name").val(name);
		layer.close(index);
	}

	</script>
</html>