<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/modulepc/resources/common.jsp"%>
<html>
<head>
<title></title>
<style>
.maxHeight {
	height: 480px;
	border: 1px solid #ddd;
	overflow: auto;
}
.mask {
	position: absolute; top: 0px; filter: alpha(opacity=60); background-color: #777;
	z-index: 1002;
	opacity:0.5; -moz-opacity:0.5;
	left: 0px;
	right: 0;
	bottom: 0;
	}
	.popver{
	background: #ffffff;
	position: absolute;
	top: 15%;
	left: 17%;
	width: 60%;
	margin: 0 auto;
	display: inline-block;
	height: 500px;
	z-index: 1005;
	}
	.hid{
	display:none;
	}
td { 
	text-align:center !important;
}
th { 
	text-align:center !important;
}
	#search,#exParty,#noParty,#adParty{
		padding: 0;
		height: 24px;
		width: 57px;
		vertical-align: -webkit-baseline-middle;
		vertical-align: baseline;
		background: #FF111E;
		margin-left: 27px;
		border-radius: 8px;
	}
	#exParty,#noParty{
	width:16%;
	}
	#adParty{
	width: 21%;
	}
	label{
		color: #333333;
	}
	.layui-laydate .layui-this{
		background-color: #FD0101!important;
	}
	.laydate-footer-btns span:hover{
		color:#FD0101!important;
	}
	.form-control[disabled], .form-control[readonly], fieldset[disabled] .form-control{
		background-color:#ffffff!important;
	}
	#feerecord{
	width: 80%;
	margin: auto;
	margin-top: 76px;
	}
	.popver{
		background: #ffffff;
		position: absolute;
		top: 15%;
	left: 25%;
		width: 49%;
		margin: 0 auto;
		height: 403px;
		z-index: 1005;
		/* line-height: 500px; */
	}
</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
			 <div class="my-titlebar">
						<a
							href="${ctxPath}/login/home.action"
							class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
						</a>
							党费缴费管理
					</div>
				<div class="row">
					<div class="col-sm-3 maxHeight">
						<div id="bumen"></div>
					</div>
					<div class="col-sm-9">
						<form id="searchForm" name="searchForm" method="get" class="form-horizontal" action="" >
							<input id="bumenId" name="bumenId" type="hidden"
								value="${param.bumenId}">
							<input id="bumenIds" name="bumenIds"  type="hidden">	
							<div class="form-group">
								<div class="col-sm-12 col-sm-offset-1" style="margin-left:0;padding-left: 14px;">
									<div class="col-sm-12" style="padding-left:0">
										<div class="input-group fg-float">
										<div class="fg-line">
											<label >选择时间
												<input style="width: 10%;margin-left:8px;" type="text" id="yeartime" value="" name="yeartime" >

												<select name="month" id="month" style="width:14%;height: 24px;" >
												<option value="">月份</option>
												<option value="01">01</option><option value="02">02</option>
												<option value="03">03</option><option value="04">04</option>
												<option value="05">05</option><option value="06">06</option>
												<option value="07">07</option><option value="08">08</option>
												<option value="09">09</option><option value="10">10</option>
												<option value="11">11</option><option value="12">12</option>
												</select>
												<button id="search" class="btn btn-primary m-l-10" type="submit">查询</button>
												<button id="exParty" class="btn btn-primary m-l-10"
												type="button">导出记录</button>
												<button id="noParty" class="btn btn-primary m-l-10"
												type="button">缴费提醒</button>
												<!-- 
												<button id="adParty" class="btn btn-primary m-l-10"
												type="button">生成本年基础信息</button> -->
											</label>
										</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="form-group">
							<div class="col-sm-8 col-sm-offset-1" style="margin-left:0;padding-left: 14px;">
									<div class="col-sm-7" style="padding-left:0">
									    <div class="input-group fg-float">
										<div class="fg-line">
											<label>
												姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名<input id="regex:userName" name="regex:userName" type="text" class="name" value="" style="margin-left: 10px;">
											</label>
										</div>
										</div> 
									</div>
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
		<div class="mask hid" ></div>
	<!--弹出的凭证浮层-->
	<div class="popver hid" style="background: #ffffff;">
		<form id="feerecord" method="post"
					action="" class="form-horizontal">
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="createTime" name="createTime">
					<div class="form-group" style="">
						<label class="col-sm-2 control-label">姓名</label>
						<div class="col-sm-5">
							<div class="fg-line">
								<input id="userName" name="userName" type="text" class="form-control"
									minlength="2" maxlength="50"  readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">所属支部</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="bumenName" name="bumenName" type="text" class="form-control"
									minlength="2" maxlength="50"  readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">应缴金额</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="payable" name="payable" type="text" class="form-control"
									minlength="2" maxlength="50"  readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">实缴金额</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="paid" name="paid" type="text" class="form-control"
									minlength="2" maxlength="50" >
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<button id="sub" class="btn btn-primary" type="button">提交</button>
							<button id="cancelBtn" class="btn bgm-gray m-l-20" type="button">取消</button>
						</div>
					</div>
				</form>
	</div>
	<script src="${ctxPath}/modulepc/resources/plugins/laydate/layui.js" type="text/javascript" ></script>
	<script src="${ctxPath}/modulepc/resources/plugins/laydate/laydate.min.js"></script>
	<script type="text/javascript">
		var manageType;
		$()
				.ready(
						function() {
							layui.laydate.render({
							elem: '#yeartime',
							type: 'year',
							value: new Date()
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
					
							$("#exParty").click(function(){
								    document.searchForm.action="doFeeRecordExcel.action";     
						            document.searchForm.submit();      
						        });
							$("#noParty").click(function(){
								document.location.href=_ctxPath+"/feerecord/toQueryno.action?functioncode=adfee";
							}
						);
							
							$("#adParty").click(function(){
									document.location.href=_ctxPath+"/feerecord/toCreatre.action";
								}
							);
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
								//	$("#userTable").reloadGrid({
								//		postData : $("#searchForm").formobj()
								//	});
					            }

					            $("#searchForm").submit(function() {
					            	if(bumenIds==null||bumenIds==""){
					            		alert("请选择部门！！"+bumenIds);
					            		return false;
					            	}
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
											+ "/feerecord/queryBumenIds.action",
											postData : $("#searchForm")
												.formobj(),
											shrinkToFit : false,
											multiselect: false,
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
											},
												colNames : [ "缴费确认", "姓名", "所属支部",
														"月份", "应缴金额", "实缴金额", "缴纳时间", "经手人"],
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
																var v = "";
																if (rowObject.status == 0 ) { //|| rowObject.valid == -1
																	  //v += "<a href='${ctxPath}/feerecord/toUpsert.action?bumenId=${param.bumenId}&userId="
																	//	+ cellvalue
																	//	+ "' class='m-r-10'>缴费确认</a>";
																	v += "<a href='javascript:void(0);' onclick=\"pingzh('"+rowObject.userName+"','"+rowObject.bumenName+"','"+rowObject._id+"','"+rowObject.createTime+"','"+rowObject.payable+"')\">缴费确认</a>"
																		
																	} else if (rowObject.status == 1) {
																		v += "<a href='javascript:void(0);'  class='m-r-10' >已缴纳</a>";
																	} 
																return v;
															}
														},
														{
															name : "userName",
															index : "userName",
															width : 100
														},
														{
															name : "bumenName",
															index : "bumenName",
															width : 140
														},
														{
															name : "monthtime",
															index : "monthtime"
														},
														{
															name : "payable",
															index : "payable"
														},
														{
															name : "paid",
															index : "paid"
														},
														{
															name : "paymenttime",
															index : "paymenttime",
														}
														,
														{
															name : "handleName",
															index : "handleName",
														}
														]
											});
					            $("#cancelBtn")
								.click(
										function() {
											$(".mask").addClass("hid");
											$(".popver").addClass("hid");
										});
					        	$(".mask").click(function(){
									$(".mask").addClass("hid");
									$(".popver").addClass("hid");
								})
								$("#sub")
								.click(function() {
									$.ajax({
							  	        type:"post",
							  	        url:"upsert.action",
							  	        data:$("#feerecord").formobj(),
							  	        success:function(data){
							  	        	 if(data) alert("缴费确认成功！！");
					            	    	  $("#userTable").trigger("reloadGrid");
					            	    	  $(".mask").addClass("hid");
											  $(".popver").addClass("hid");
							  	        }
									});
										});
							    
						});
		function pingzh(userName,bumenName,_id,createTime,payable){
			//var y=monthtime.substring(0,4);
			//var m=monthtime.substr(-2);
			$("#_id").val(_id);
			$("#createTime").val(createTime);
			$("#userName").val(userName);
			$("#bumenName").val(bumenName);
			$("#payable").val(payable);
			$("#paid").val(payable);
			//$(".paymenttime").text(paymenttime);
			//$(".bumenName").text(bumenName);
			$(".mask").removeClass("hid");
			$(".popver").removeClass("hid");
		};

	</script>
</body>
</html>
