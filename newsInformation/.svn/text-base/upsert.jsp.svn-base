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
	.my-titlebar {
		margin-bottom: 10px;
	}
	#content:not(.content-alt) {
	    padding-left: 2px;
	    padding-right: 15px;
	}
</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a
						href="${ctxPath}/pc/newsPc/toQuery.action?categoryId=${ffnews.categoryId}"
						class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffnews._id == null}">
								新建新闻信息
							</c:if>
					<c:if test="${ffnews._id != null}">修改新闻信息
							</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
			
				<div id="functionSelectDiv" class="treeDiv" >
				<div class="col-sm-12" id="divb1">
					<div class="col-sm-12">
						<button class="btn bgm-blue col-sm-2" id="sendBumen" type="button" style="margin-bottom: 8px;">发送部门</button>
						<div class="col-sm-6">
							<div class="fg-line">
								<label class="radio radio-inline  m-r-20"  style="margin-top:6px;">
									<input type="radio"  name="bumenRadio" checked="checked"  value="0" >
									<i class="input-helper"></i>
									本部门
								</label>
								<label class="radio radio-inline m-r-20" style="margin-top:6px;">
									<input type="radio"  name="bumenRadio" value="1">
									<i class="input-helper"></i>
									本部门以及子部门
								</label>
							</div>
						</div>
						<button class="btn bgm-blue col-sm-1" id="sendcon" type="button" style="margin-bottom: 8px;">确定</button>
					    <button class="btn bgm-blue col-sm-1" id="sendcan" type="button" style="margin-bottom: 8px;margin-left: 30px;">取消</button>
						
					</div>
					<div class="col-sm-12">
						<textarea id="nams" name="nams" style="width: 100%" class="form-control" rows="2" readonly="readonly"></textarea>
					</div>
				</div>
					<div class="col-sm-4" id="bumtree">
						<div id="bumen"></div>
					</div>
					<div class="col-sm-4" id="divb2">
						<form id="searchForm" method="get" class="form-horizontal">
							<div class="form-group">
								<div class="col-sm-8">
									<div class="input-group fg-float">
										<div class="fg-line">
											<input id="bumenIds" name="bumenIds"  type="hidden" 
											value="<c:forEach items="${ffbumen}" var="bumen">${bumen._id},</c:forEach>" >
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
						<div class="">
							<table id="userTable"></table>
						</div>
					</div>
				</div>


				<form id="news" method="post" action="${ctxPath}/pc/newsPc/upsert.action"
					class="form-horizontal">
					<input type="hidden" id="_id" name="_id">
					 <input type="hidden" id="tenantId" name="tenantId">
					 <input id="bumenId" name="bumenId"  type="hidden" required>
					 <input  type="hidden" id="userIds" name="userIds" required>
					<div class="form-group">
						<label class="col-sm-2 control-label">新闻标题</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="title" name="title" type="text" class="form-control"
									minlength="2" maxlength="50" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">新闻分类</label>
						<div class="col-sm-2">
							<select class="form-control" id="categoryId" name="categoryId"
								required>
								<option value="">请选择</option>
								<c:forEach items="${categorys}" var="category">
									<c:if test="${category.islib != 1}">
										<option value="${category._id}">${category.name}</option>
									</c:if>
								</c:forEach>
							</select>
						</div>
						<label class="col-sm-2 control-label">新闻标签</label>
						<div class="col-sm-2">
							<select class="form-control" id="labelId" name="labelId" >
								<option value="">请选择</option>
								<c:forEach items="${labels}" var="label">
										<option value="${label._id}">${label.name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">logo图片</label>
						<div class="col-sm-10">
							<div style="width: 150px; height: 150px;" class="f-left">
								<img id="logoimg" style="width: 100%; height: 100%;" />
							</div>
							<div class="f-left" style="width: 120px; padding-top: 10px">
								<button type="button" class="btn bgm-teal btn-block comp"
									comp="type:'fileupload',previewImgId:'logoimg',valueId:'logo'">选择上传图片</button>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">是否置顶</label>
						<div class="col-sm-3">
							<input id="isTop" name="isTop" type="checkbox" class="switcher" value="1" />
						</div>
						<label class="col-sm-2 control-label">是否有效</label>
						<div class="col-sm-3">
							<input id="state" name="state" type="checkbox" class="switcher"
								value="1" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">是否推送消息</label>
						<div class="col-sm-3">
							<input id="push" name="push" type="checkbox" class="switcher"
								value="1" /> <span class="help-block m-b-none">发布时是否同时推送App消息。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">是否控制发布范围</label>
						
						<div class="col-sm-3">
							<input id="hasScope" name="hasScope" type="checkbox" class="switcher"
								value="1" /> <span class="help-block m-b-none">发布时是否是否控制范围。</span>
						</div>
					</div>
					       <div class="form-group">
								<label class="col-sm-2 control-label">历史发布范围</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input type="text" class="form-control " id="scopename" name="scopename" readonly="readonly"/>
									<span class="help-block m-b-none">以前选定的范围。只用于友好提示！</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">发布范围</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input type="text" class="form-control "
											   id="userNames" name="scope" required readonly="readonly"/>
											   <span class="help-block m-b-none">如不更改或不选定范围则请保持空。</span>
									</div>
								</div>
							</div>
					
					<div class="form-group organr">
						<label class="col-sm-2 control-label">banner图片</label>
						<div class="col-sm-10">
							<div style="width: 200px; height: 100px;" class="f-left">
								<img id="bannerimg" style="width: 100%; height: 100%;" />
							</div>
							<div class="f-left" style="width: 120px; padding-top: 10px">
								<button type="button" class="btn bgm-teal btn-block comp"
									comp="type:'fileupload',previewImgId:'bannerimg',valueId:'banner'">选择上传图片</button>
							</div>
							<span class="help-block m-b-none">新闻置顶时显示的banner图片。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">新闻内容</label>
						<div class="col-sm-10">
							<div id="realContent" class="comp" comp="type:'htmlEditor'"></div>
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
	<script src="${ctxPath}/modulepc/resources/plugins/laydate/layui.js" type="text/javascript" ></script>
	<script type="text/javascript">
		$()
				.ready(
						function() {
							$("#news").formSubmit({
								submitHandler : function(form) {
									
									var f=document.getElementById("isTop").checked;
									var uf=$("#banner").val();
								    if(uf==""&&f){
								    	alert("置顶新闻请选择banner图片！！");
								    	return;
								    }
								    var hf=document.getElementById("hasScope").checked;
								    var huf=document.getElementById("userNames").value;
								    var sf=document.getElementById("scopename").value;
							
								   // alert("huf----"+huf+"sf----"+sf+"hf----"+hf);
								    
								    if(huf==""&&sf==""&&hf){
								    	alert("控制范围的新闻请选择范围！！");
								    	return;
								    }
									$.shade.show();
									$("#news").enable();
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
					            	if(ty==1){
					            		//alert(node.name);
					            		$("#forbumname").val(node.name);
					            		$("#forBumenId").val(node._id);
											var node = treeObj.getNodeByParam("_id", functionIds);
											if (node) {
												treeObj.selectNode(node, true);
											}
										}	
					                bumenIds = new Array();
					                bumenNames = new Array();
									if(node._id == 0) {
										bumenIds.push(node._id);
										bumenNames.push(node.name);
									} else  {
										var radioVal =  $("input[name='bumenRadio']:checked").val();
										bumenIds.push(node._id);
										bumenNames.push(node.name);
										if(radioVal == 1)
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
										+ "/basic/user/queryBumenIds.action",
										postData : $("#searchForm")
											.formobj(),
										shrinkToFit : false,
										multiselect: true,
										beforeSelectRow: beforeSelectRow,//js方法
										onSelectAll:function(rowIds,status){
								             //函数里做自己的处理
											console.log(rowIds.length);
								             for(var rowId in rowIds){
								            	 rowId=Number(rowId)+1;
								            	 jQuery('#gridid').restoreRow(lastSel);
													lastSel=rowId;
													var rowData = jQuery("#userTable").jqGrid('getRowData',rowId);
													console.log(rowData);
													if(idNames[rowData._id] && status == false) {
														delete idNames[rowData._id];
													} else  {
														idNames[rowData._id] = rowData.name;
													}
													var uIds = '';
													var names = '';
													for(var k in idNames) {
														if(k=='undefined')continue;
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
						                                    $("#nams").val(bName);
														} else {
						                                    $("#userNames").val(bName+','+names);
						                                    $("#nams").val(bName+','+names);
														}
						                            } else {
						                                $("#userNames").val(names);
						                                $("#nams").val(names);
						                            }
								             }
								        },
										onSelectRow:function(rowId,status){
											console.log(rowId);
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
												if(k=='undefined')continue;
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
				                                    $("#nams").val(bName);
												} else {
				                                    $("#userNames").val(bName+','+names);
				                                    $("#nams").val(bName+','+names);
												}
				                            } else {
				                                $("#userNames").val(names);
				                                $("#nams").val(names);
				                            }
										},
										colNames : [ "操作", "用户名称","部门"],
										colModel : [
											{
												name : "_id",
												index : "_id",
												hidden:true
											},
											{
												name : "name",
												index : "name",
												width : 125
										    },
											{
												name : "bumenName",
												index : "bumenName",
												width : 225
										    }]
							        });
					            
					            
							$("#cancelBtn")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/pc/newsPc/toQuery.action?categoryId=${ffnews.categoryId}";
                        });
							//全局变量用以判断是选择单位还是选择发布范围
							var ty=0; //1、选择部门 2、选择发布范围
							//弹窗方法
							$("#forbumname").click(function() {
								if(notType==0||notType==2){
									return;
								}
								/* if(($.trim($("#meetId").val()))==""&&notType!=0){
									layer.alert("请选择会议通知分类！");
									return;
								} */
								return;
								//alert($("#meetId").attr("data"));
								ty=1;//1、选择部门  
								$("#functionSelectDiv").show();//id="divb1"
								$("#bumtree").removeClass("maxHeight");
								$("#divb1").hide();
								$("#divb2").hide();
								layer.open({
									type : 1,
									title : "选择发布部门",
									offset: 't',
									area : [ '400px','500px'],
									shadeClose : true,
									closeBtn : 1,
									content : $("#functionSelectDiv"),
									btn: ['确定'],
									yes: function(index, layero){
									    //按钮【按钮一】的回调
									    alert(index);
									  }
								});
							});
							//全局变量用以判断是选择单位还是选择发布范围
							var ty=0; //1、选择部门 2、选择发布范围
							//弹窗方法
							$("#forbumname").click(function() {
								if(notType==0||notType==2){
									return;
								}
								/* if(($.trim($("#meetId").val()))==""&&notType!=0){
									layer.alert("请选择会议通知分类！");
									return;
								} */
								return;
								//alert($("#meetId").attr("data"));
								ty=1;//1、选择部门  
								$("#functionSelectDiv").show();//id="divb1"
								$("#bumtree").removeClass("maxHeight");
								$("#divb1").hide();
								$("#divb2").hide();
								layer.open({
									type : 1,
									title : "选择发布部门",
									offset: 't',
									area : [ '400px','500px'],
									shadeClose : true,
									closeBtn : 1,
									content : $("#functionSelectDiv"),
									btn: ['确定'],
									yes: function(index, layero){
									    //按钮【按钮一】的回调
									    alert(index);
									  }
								});
							});
							$("#userNames").click(function() {
								ty=2;//  2、选择发布范围
								$("#functionSelectDiv").show();//id="divb1"
								$("#bumtree").addClass("maxHeight");//
								$("#divb1").show();
								$("#divb2").show();
								layer.open({
									type : 1,
									offset: 't',
									title : "选择发布范围",
									area : [ '700px','500px'],
									shadeClose : true,
									closeBtn : 1,
									content : $("#functionSelectDiv"),
									btn: ['确定'],
									yes: function(index, layero){
									    //按钮【按钮一】的回调
									    //alert(index);
									    layer.close(index);
									}/* ,
									btn2: function(index, layero){
										//按钮【按钮二】的回调
										$("#userIds").val("");
										$("#bIds").val("");
										$("#nams").val("");
										$("#userNames").val("");
										$("#userTable").reloadGrid({
											postData : $("#searchForm").formobj()
										});
										//return false 开启该代码可禁止点击该按钮关闭
									} */
								});
							});
							$("#functionSelectDiv").hide();
							
						});
	</script>
</body>
</html>
