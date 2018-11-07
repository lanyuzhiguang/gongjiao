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
</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="row">
					<div class="col-sm-3 maxHeight">
						<div id="bumen"></div>
					</div>
					<div class="col-sm-9">
						<form id="searchForm" method="get" class="form-horizontal">
							<input id="bumenId" name="bumenId" type="hidden"
								value="${param.bumenId}">
							<input id="bumenIds" name="bumenIds"  type="hidden">	
							<div class="form-group">
								<div class="col-sm-7">
									<div class="col-sm-4">
									<div class="input-group fg-float">
										<div class="fg-line">
											<input id="regex:name" name="regex:name" type="text"
												class="form-control"> <label class="fg-label">名称</label>
										</div>
										</div>
										</div>
									<div class="col-sm-4">
									<div class="input-group fg-float">
										<div class="fg-line">
											<input id="regex:phone" name="regex:phone" type="text"
												class="form-control"> <label class="fg-label">手机号</label>
										</div>
										</div>
										</div>
									<button id="search" class="btn btn-primary" type="submit">查询</button>
								</div>
							<div class="col-sm-5">
									<button id="newUser" class="btn btn-primary m-l-10"
										type="button">新增</button>
									<button id="newPartyUser" class="btn btn-primary m-l-10"
										type="button">导入</button>
									<button id="outPartyUser" class="btn btn-primary m-l-10"
										type="button">导出</button>
							</div>
							</div>
						</form>
						<div class="jqGrid_wrapper">
							<table id="userTable"></table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<form id="user" action="#" method="post" class="form-horizontal" style="display: none;">
		<input type="hidden" name="bumenId" class="bumenId" value="">
		<div class="form-group col-sm-12">
			<label class="col-sm-3 control-label">人员姓名：</label>
			<div class="col-sm-6">
				<div class="fg-line">
					<input id="name" name="name" type="text" class="form-control">
				</div>
			</div>
		</div>
		
		<div class="form-group col-sm-12">
			<label class="col-sm-3 control-label">身份证号：</label>
			<div class="col-sm-8">
				<div class="fg-line">
					<input id="userID" name="userID" type="text" class="form-control" required>
				</div>
			</div>
		</div>
		
		<div class="form-group col-sm-12">
			<label class="col-sm-3 control-label">手机号码：</label>
			<div class="col-sm-8">
				<div class="fg-line">
					<input id="phone" name="phone" type="text" class="form-control" required>
				</div>
			</div>
		</div>
		<div class="form-group col-sm-12">
				<div class="col-sm-3">
				</div>
				<div class="col-sm-6">
				<div class="fg-line">
					<button class="btn btn-primary" type="submit">保存</button>
					<button onclick="closOpen();" class="btn btn-primary" type="button">取消</button>
				</div>
			</div>
		</div>
	</form>
	
	<script type="text/javascript">
		var chalid=false;
		var ckBumid='${param.bumenId}';
		var manageType;
		$()
				.ready(
						function() {

							$("#user").validate({
								submitHandler : function(form) {//用户信息提交验证
								$("#user").enable();
								if(isPhone($("#phone").val())){
								if(isCardNo($("#userID").val())){
									$.ajax({
							  	        type:"post",
							  	        url:_ctxPath+"/basic/user/comparisonUser.action",
							  	      	data:$('#user').serialize(),
							  	        dataType:"json",
							  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
							  	        success:function(data){
							  	        	if (data.success) {
								  	        	var str="";
								  	        	var obj1=ckBumid;
								  	        	var obj2="";
								  	        	if(data.data){
									  	        	var user=data.data;
									  	        	obj2=user._id;
									  	        	if(user.name!=null&&user.name!="undefined"){
									  	        		str+="<br>姓名："+user.name;
										  	        }
									  	        	if(user.userID!=null&&user.userID!="undefined"){
									  	        		str+="<br>身份证："+user.userID;
										  	        }
										  	        if(user.phone!=null&&user.phone!="undefined"){
									  	        		str+="<br>电话号码："+user.phone+"<br>";
										  	        }
									  	        }
												layer.confirm("<p>"+data.message+"</p>"+str,{title:"提示"}, function(indx) {
													layer.close(indx);
													addedit(obj1,obj2,$("#name").val(),$("#userID").val(),$("#phone").val());
												});
											} else {
												var users=data.data;
												var str=ckBumid;
												for(var i=0;i<users.length;i++){
													if(users[i].name!=null&&users[i].name!="undefined"){
									  	        		str+="<br>姓名："+users[i].name;
										  	        }
									  	        	if(users[i].userID!=null&&users[i].userID!="undefined"){
									  	        		str+="<br>身份证："+users[i].userID;
										  	        }
										  	        if(users[i].phone!=null&&users[i].phone!="undefined"){
									  	        		str+="<br>电话号码："+users[i].phone+"<br>";
										  	        }
												}
												layer.confirm("<span style='color: red;'>"+data.message+"</span><br/>"+str,{title:"提示"}, function(indx) {
													layer.close(indx);
												});
											}
							  	        	layer.close(index);
							  	        }
									});
								}else{
									window.parent.toastr.error("请填写正确的身份证号码！");
								}
								}}
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
							
							//$("#adUsers").click(function(){
							//		document.location.href=_ctxPath+"/basic/user/insuer.do";
							//	}
							//);
							$("#adParty").click(function(){
									document.location.href=_ctxPath+"/basic/user/party/insParty.action";
								}
							);
							$("#newPartyUser").click(function(){
									document.location.href=_ctxPath+"/userExcel/indsqparty.action";
								}
							);
							$("#apUsers").click(function(){
								document.location.href=_ctxPath+"/application/application.action";
							}
						);
							
							$("#newUser")
									.click(
											function() {
												opensetleader();
												/* document.location.href = _ctxPath
														+ "/basic/user/toPartyUpsert.do?bumenId="
														+ ckBumid//$("#bumenId").val()
														+ "&isNew=true"; */
											});
							// 默认选择parentId指定节点
							var treeObj = $.fn.zTree.getZTreeObj("bumen");
							treeObj.selectNode(treeObj.getNodeByParam("_id",
									"${param.bumenId}"));

							function clk(e, treeId, node) {
								var nid = node._id;
								if (nid == "0")
									nid = '';
								$("#bumenId", $("#searchForm")).val(nid);
								$("#userTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});

								if (node.level == 2) {
									$("#newFunction").hide();
								} else {
									$("#newFunction").show();
								}
							}

							
							 var bumenIds=[];
								var bumenNames=[];
					            // 默认选择parentId指定节点
					            var treeObj = $.fn.zTree.getZTreeObj("bumen");
					            treeObj.selectNode(treeObj.getNodeByParam("_id",
					                "${param.parentId}"));
					            function clk(e, treeId, node) {
					            	chalid=node.data.hasChild;//获取当前树选择的部门 判断是否为支部
					            	ckBumid=node._id;//设置部门id
					            	$(".bumenId").val(node._id);//设置新增的人员的部门id
					                bumenIds = new Array();
					                bumenNames = new Array();
									if(node._id == 0) {
										bumenIds.push(node._id);
										bumenNames.push(node.name);
									} else  {
										bumenIds.push(node._id);
										bumenNames.push(node.name);
										getBumenIds(node,bumenIds,bumenNames);
									}
									var ids = bumenIds.join(",");
									$("#bumenIds", $("#searchForm")).val(ids);
									$("#userTable").reloadGrid({
										postData : $("#searchForm").formobj()
									});
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
											+ "/basic/adminUser/queryBumenId.action",
											postData : $("#searchForm")
												.formobj(),
											shrinkToFit : false,
											multiselect: true,
											beforeSelectRow: beforeSelectRow,//js方法
											onSelectRow:function(rowId,status){
												jQuery('#gridid').restoreRow(lastSel);
												lastSel=rowId;
												var rowData = jQuery("#userTable").jqGrid('getRowData',rowId);
												if(idNames[rowData._id] && status == false) {
													delete idNames[rowData._id];
												} else  {
													idNames[rowData._id] = rowData.name;
												}
												var uIds = '';
												var names = '';
												for(var k in idNames) {
													uIds += k+',';
													names += idNames[k]+',';
												}
												if(uIds.length>0) {
					                                uIds = uIds.substring(0,uIds.length-1);
												}
					                            $("#userIds").val(uIds);
												if(names.length>0) {
													names = names.substring(0,names.length-1);
												}
					                            if(bName.length>0) {
					                                if(!names) {
					                                    $("#userNames").val(bName);
													} else {
					                                    $("#userNames").val(bName+','+names);
													}
					                            } else {
					                                $("#userNames").val(names);
					                            }
											},
												colNames : [ "操作", "姓名", "性别",
														"所在部门", "职务", "入职时间"],

												colModel : [
														{
															name : "_id",
															index : "_id",
															align : "center",
															width : 200,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='${ctxPath}/basic/adminUser/toUpsert.action?bumenId=${param.bumenId}&userId="
																		+ cellvalue
																		+ "' class='m-r-10'>详情</a>";
																		
																if (rowObject.valid == 0 ) { //|| rowObject.valid == -1
																	v += "<a href='javascript:void(0);' onclick='enable(\""
																			+ cellvalue
																			+ "\")' class='m-r-10' >启用</a>";
																} else if (rowObject.valid == 1) {
																	v += "<a href='javascript:void(0);' onclick='disable(\""
																			+ cellvalue
																			+ "\")' class='m-r-10' >禁用</a>";
																} 
																v += "<a href='javascript:void(0);' onclick='reset(\""
																	+ cellvalue
																	+ "\")' class='m-r-10'>重置密码</a>";
															   // v += "<a href='${ctxPath}/rolebumen/toQuerya.action?accountId="
																//		+ cellvalue
																//		+ "'>授权</a>";
																return v;
															}
														},
														{
															name : "name",
															index : "name",
															width : 140
														},
														{
															name : "gender",
															index : "gender",
															width : 70,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == 0) {
																	return "男";
																} else if (cellvalue == 1) {
																	return "女";
																} 
																	return "未知";
															}
														},
														{
															name : "perAdminInformName",
															index : "perAdminInformName",
															width : 200
														},
														{
															name : "perAdminInformation.dutiesName",
															index : "perAdminInformation.dutiesName",
															width : 120
														}, {
															name : "perAdminInformation.formtEntryDate",
															index : "perAdminInformation.formtEntryDate",
															width : 80
														}]
											});

						});
		function enable(userId) {
			doGet(_ctxPath + "/basic/user/enable/" + userId + ".action");
		}
		function disable(userId) {
			doGet(_ctxPath + "/basic/user/disable/" + userId + ".action");
		}
		function reset(userId) {
			doGet(_ctxPath + "/basic/user/reset/" + userId + ".action");
		}

		function addedit(obj1,obj2,obj3,obj4,obj5){
			document.location.href = _ctxPath+"/basic/adminUser/toUpsert.action?bumenId="+obj1+"&userId="+obj2+"&name="+obj3+"&userID="+obj4+"&phone="+obj5;
		}
		
		function doGet(url) {
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
		}
		var index="";
		function opensetleader(){
			index=layer.open({
					type : 1,
					title : "新增党员信息校验",
					offset: 't',
					area : [ '400px','250px'],
					shadeClose : true,
					closeBtn : 1,
					content : $("#user")
				});
		}

		function closOpen(){
			layer.close(index);
		}

		
	    function isCardNo(card){  
	       // 身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X  
	       //var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;  
	       if (!card || !/^[1-9][0-9]{5}(19[0-9]{2}|200[0-9]|2010)(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])[0-9]{3}[0-9xX]$/i.test(card)) {  
	           return  false;  
	       }else{
	    	   return  true;  
		   }
	    }  

	    function isPhone(tel) { 
	        if ("" == tel || !tel) { 
	        	window.parent.toastr.error('手机号不可以为空!'); 
	        } else { 
	          var reg = /^0?1[3|4|5|7|8][0-9]\d{8}$/; 
	          //验证规则 
	          if (reg.test(tel)) return true; 
	          window.parent.toastr.error("手机号错误!"); 
	        } 
	        return false; 
	      }

	      
	</script>
</body>
</html>
