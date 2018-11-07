<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<!DOCTYPE html>
<html>
	<head>
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
			<c:if test="${account.entityID != ffuser._id }">
					<div class="my-titlebar">
						<a href="${ctxPath}/bumen/toQuery.action?parentId=${param.parentId}"
						class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
					</a>
						党组织信息维护
					</div>
				</c:if>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<div id="functionSelectDiv" class="treeDiv" >
				    <div class="col-sm-4 maxHeight" id="bumtree">
						<div id="bumenlist"></div>
					</div>
				</div>
		<div class="main-container" id="main-container">
			<div class="main-content">
				<div class="main-content-inner">
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<div class="tabbable">
									<ul class="nav nav-tabs padding-18 tab-size-bigger" id="myTab">
										<li  style="margin-left: 30%;border: 1px solid #ccc;">
											<a data-toggle="tab" href="#faq-tab-1">
												党组织信息
											</a>
										</li>
										<li  style="border: 1px solid #ccc;">
											<a data-toggle="tab" href="#faq-tab-2">
												组织奖惩
											</a>
										</li>
										<li style="border: 1px solid #ccc;">
											<a data-toggle="tab" href="#faq-tab-3">
												班子成员
											</a>
										</li>

										<li style="border: 1px solid #ccc;">
											<a data-toggle="tab" href="#faq-tab-4">
												 所在单位信息
											</a>
										</li>

									</ul>
									<div class="tab-content no-border padding-24">
										<div id="faq-tab-1" class="tab-pane fade col-sm-12 in active">
		<form id="bumen" method="post" action="${ctxPath}/bumen/upsert.action"
					class="form-horizontal">
					<input type="hidden" id="_id" name="_id">
					<input type="hidden" id="parentId" name="parentId" value="">
					<input type="hidden" id="tenantId" name="tenantId" value="">
				    <input type="hidden" id="createTime" name="createTime">
				    <input type="hidden" id="valid" name="valid" value="">
				    
					<div  class="form-group" >
				    	<c:if test="${ffbumen._id==null||ffbumen.parentId!=ffbumen.tenantId}">
							<label class="col-sm-2 control-label">上级党组织：</label>
							<div class="col-sm-10">
								<div class="fg-line">
									<input type="text" class="form-control "
										   id="pname" name="pname" value="${pbName}" required />
								</div>
							</div>
						</c:if>
						<!--  
						<label class="col-sm-2 control-label">上级党组织：</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="pname" name="pname" type="text" class="form-control"
									minlength="2" maxlength="50" value="${ffpbumen.name}" disabled="disabled" required>
							</div>
						</div>
						-->
						<label class="col-sm-2 control-label">党组织全称：</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="name" name="name" type="text" class="form-control"
									minlength="2" maxlength="50" 
									<c:if test="${ffbumen.parentId==ffbumen.tenantId}"> readonly="readonly" </c:if>
									required>
							</div>
						</div>
					</div>
					
					
						<div class="form-group">
						<label class="col-sm-2 control-label">党组织简称：</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="shortening" name="shortening" type="text"
									maxlength="20" class="form-control" required>
							</div>
						</div>
						<label class="col-sm-2 control-label">党组织建立时间：</label>
						<div class="col-sm-3">
							<input id="recordTime" name="recordTime" class="laydate-icon form-control" placeholder="" required>
						</div>
					</div>
					<div class="form-group organr">
						<label class="col-sm-2 control-label">联系人：</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="contactName" name="contactName" type="text"
									maxlength="20" class="form-control">
							</div>
						</div>
						<label class="col-sm-2 control-label">联系电话：</label>
						<div class="col-sm-3">
							<div class="fg-line">
								<input id="contactPhone" name="contactPhone" type="text"
									maxlength="20" class="form-control">
							</div>
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">组织类别</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" data-live-search="true"
								id="bumenTypeId" name="bumenTypeId" required>
								<option value="1">党委</option>
								<option value="2">党工委</option>
								<option value="3">党总支部</option>
								<option value="4">党支部</option>
								<option value="5">联合党支部</option>
							</select>
						</div>
						<label class="col-sm-2 control-label">党组织属地关系：</label>
						<div class="col-sm-3">
						<select class="form-control selectpicker" data-live-search="true"
								id="apanage" name="apanage" required>
								<option value="1">市（地、州、盟）</option>
								<option value="2">县（市、区、旗）</option>
								<option value="3">城市街道</option>
								<option value="4">城市街道建制村</option>
								<option value="5">城市街道社区（居委会）</option>
								<option value="6">镇</option>
								<option value="7">镇辖建制村</option>
								<option value="8">镇辖社区（居委会）</option>
								<option value="9">乡</option>
								<option value="10">乡辖建制村</option>
								<option value="11">镇乡辖社区（居民会）</option>
								<option value="12">其他建制村</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">组织简介：</label>
						<div class="col-sm-10">
							<div class="fg-line">
								
							  <textarea rows="5" cols="100" class="form-control" 
							  id="summary" name="summary" required="required"></textarea>
							    
							</div>
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">省</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" data-live-search="true"
								id="province" name="province">
								<option value="">请选择</option>
							</select>
						</div>
						<label class="col-sm-2 control-label">市</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" data-live-search="true"
								id="city" name="city">
								<option value="">请选择</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">区</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" data-live-search="true"
								id="district" name="district">
								<option value="">请选择</option>
							</select>
						</div>
						<label class="col-sm-2 control-label">详细地址</label>
						<div class="col-sm-3">
							<div class="input-group">
								<div class="fg-line">
									<input id="address" name="address" class="form-control"
										placeholder="" maxlength="100">
								</div>
								<span class="input-group-btn">
									<button type="button" class="btn bgm-teal comp"
										comp="type:'map',provinceField:'province'">地图定位</button>
								</span>
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

										<div id="faq-tab-2" class="tab-pane fade col-sm-12 active"><!-- 组织奖惩 -->
											<form id="serOutcom" action="">
												<input type="hidden" value="0" id="type|integer" name="type|integer">
												<input type="hidden" value="1" id="valid|integer" name="valid|integer">
												<c:if test="${ffbumen._id != null}">
													<input type="hidden" value="部门新建中" id="bumenId" name="bumenId">
												</c:if>
												<c:if test="${ffbumen._id != null}">
													<input type="hidden" value="${ffbumen._id }" id="bumenId" name="bumenId">
												</c:if>
											</form>
												<c:if test="${ffbumen._id != null}">
												<div class="form-group col-sm-12">
													<div class="col-sm-5"><button id="addOutcome" class="btn btn-primary m-l-20" type="button">添加</button></div>
												</div>
											</c:if>
												<c:if test="${ffbumen._id == null}">
													<div class="col-sm-5"><span style="color: red;">请先创建部门信息！！</span></div>
												</c:if>
											<div class="jqGrid_wrapper" id="newslist">
												<table id="newsTable"></table>
											</div>
										</div>

										<div id="faq-tab-3" class="tab-pane fade col-sm-12 active"><!-- 班子成员 -->
											<form id="leadership" action="" style="display: none;">
												<input type="hidden" value="1" id="state|integer" name="state|integer">
												<c:if test="${ffbumen._id == null}">
													<input type="hidden" value="部门新建中" id="bumenId" name="bumenId">
												</c:if>
												<c:if test="${ffbumen._id != null}">
													<input type="hidden" value="${ffbumen._id }" id="bumenId" name="bumenId">
												</c:if>
											</form>
											<c:if test="${ffbumen._id != null}">
												<div class="form-group col-sm-12">
													<div class="col-sm-5"><button id="addleadership" onclick="opensetleader();" class="btn btn-primary m-l-20" type="button">添加</button></div>
												</div>
											</c:if>
											    <c:if test="${ffbumen._id == null}">
													<div class="col-sm-5"><span style="color: red;">请先创建部门信息！！</span></div>
												</c:if>
											<div class="jqGrid_wrapper" id="leadershiplist">
												<table id="leadershipTable"></table>
											</div>
										</div>
										
										<div id="faq-tab-4" class="tab-pane fade col-sm-12 active"> <!-- 所在单位信息 -->
											<form id="institution" action="" style="display: none;">
												<c:if test="${ffbumen._id == null}">
													<input type="hidden" value="部门新建中" id="bumenId" name="bumenId">
												</c:if>
												<c:if test="${ffbumen._id != null}">
													<input type="text" value="${ffbumen._id}" id="bumenId" name="bumenId">
												</c:if>
											</form>
												<c:if test="${ffbumen._id != null}">
												<div class="form-group col-sm-12">
													<div class="col-sm-5"><button id="addInstitution" class="btn btn-primary m-l-20" type="button">添加</button></div>
												</div>
											</c:if>
												<c:if test="${ffbumen._id == null}">
													<div class="col-sm-5"><span style="color: red;">请先创建部门信息！！</span></div>
												</c:if>
											<div class="jqGrid_wrapper" id="Institutionlist">
												<table id="InstitutionTable"></table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
			</div>
		</div>
	</div>
	<form id="leadershipFrom" action="#" method="post" calss="form-horizontal" style="display: none;">
		<input type="hidden" name="bumenId" value="${ffbumen._id }">
		<div class="form-group">
			<label class="col-sm-4 control-label">班子届次：</label>
			<div class="col-sm-1">第</div>
			<div class="col-sm-6">
				<div class="fg-line">
					<input id="num" name="num" aria-required="true" type="number" min="0" class="form-control" required>
				</div>
			</div>
			<div class="col-sm-1">届</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-4 control-label">当选日期：</label>
			<div class="col-sm-8">
				<div class="fg-line">
					<input id="" name="recordTime" type="text" class="form-control laydate-icon recordTime">
				</div>
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-4 control-label">届满日期：</label>
			<div class="col-sm-8">
				<div class="fg-line">
					<input id="recordEnd" name="recordEnd" type="text" class="form-control laydate-icon">
				</div>
			</div>
		</div>
		
	</form>
	
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
					elem: '#recordTime' //指定元素
				});
				laydate.render({
					elem: '#recordEnd' //指定元素
				});
				
				    var prce = "${ffbumen.province}";
					var city = "${ffbumen.city}";
					var district = "${ffbumen.district}";
				
				  $("#bumenlist").tree({
		                onClick : clk,
		                idKey : "_id",
		                pIdKey : "parentId",
		                nameKey : "name",
		                nodeHandler : function(n) {
		                    if (n._id == "0") // 展开根节点
		                        n.open = true;
		                }
		            });
				  var treeObj = $.fn.zTree.getZTreeObj("bumenlist");
		            treeObj.selectNode(treeObj.getNodeByParam("_id",
		                "${param.parentId}"));
			     function clk(e, treeId, node) {
		            		//alert(node.name);
		            		$("#pname").val(node.name);
		            		$("#parentId").val(node._id);
								var node = treeObj.getNodeByParam("_id", functionIds);
								if (node) {
									treeObj.selectNode(node, true);
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
		            }
				$("#cancelBtn")
						.click(
								function() {
									document.location.href = _ctxPath
									+ "/bumen/toQuery.action?parentId=${param.parentId}";//因为由于租户id在树中是0所以获取上一级参数
								});

				$("#addOutcome").click(
						function() {
							document.location.href = _ctxPath
									+ "/outcome/toUpsert.action?type=0&bumenId=${ffbumen._id }";//当前所需要的是正在编辑的部门的id所以使用ffbumen._id 获取
						});
				$("#addInstitution").click(
						function() {
							document.location.href = _ctxPath
									+ "/institution/toUpsert.action?bumenId=${ffbumen._id }";//当前所需要的是正在编辑的部门的id所以使用ffbumen._id 获取
						});
				$("#pname").click(function() {
					//alert($("#meetId").attr("data"));
					$("#functionSelectDiv").show();//id="divb1"
					$("#bumtree").removeClass("maxHeight");
					layer.open({
						type : 1,
						title : "选择发布部门",
						offset: 't',
						area : [ '400px','500px'],
						shadeClose : true,
						closeBtn : 1,
						content : $("#functionSelectDiv")
					});
				});
				getLeadershipTable();
				getNewTable();	
				
				
				$.post(
						'${ctxPath}/division/queryProvince.action',
						{},
						function(data, status) {
							var c = $("#province")[0];
							for (var i = 0; i < data.length; i++) {
								var d = data[i];
								var option = new Option(
										d.name, d.name);
								option.tmp = d._id;
								c.options[c.options.length] = option;
								if (data.length === 1
										|| (fillmaps
												&& fillmaps.tenant && fillmaps.tenant.country == d.name)) {
									option.selected = true;
									$(c).trigger('change');
								}
								if(d.name==prce){
								option.selected = true;
								$(c).trigger('change');}
							}
							$('#province').selectpicker(
									'refresh');
						});

		$("#province")
				.change(
						function() {
							var t = $("#province")[0];
							var v = t.options[t.selectedIndex];
							if (v && v.tmp) {
								$
										.post(
												'${ctxPath}/division/queryCity.action',
												{
													provinceId : v.tmp
												},
												function(
														data,
														status) {
													var c = $("#city")[0], ds = [];
													c.options.length = 1;
													for (var i = 0; i < data.length; i++) {
														var d = data[i];
														var option = new Option(
																d.name,
																d.name);
														option.tmp = d._id;
														c.options[c.options.length] = option;
														if (fillmaps
																&& fillmaps.tenant
																&& fillmaps.tenant.city == d.name) {
															option.selected = true;
															$(
																	c)
																	.trigger(
																			'change');
														} else if (addressComponents
																&& addressComponents.city == d.name) {
															option.selected = true;
															$(
																	c)
																	.trigger(
																			'change');
														}
														if(d.name==city){
														option.selected = true;
														$(c).trigger('change');}
													}
													$(
															'#city')
															.selectpicker(
																	'refresh');
												});
							} else {
								$("#city")[0].options.length = 1;
								$('#city').selectpicker(
										'refresh');
							}
						});
		$("#city")
				.change(
						function() {
							var t = $("#city")[0];
							var v = t.options[t.selectedIndex];
							if (v && v.tmp) {
								$
										.post(
												'${ctxPath}/division/queryDistrict.action',
												{
													cityId : v.tmp
												},
												function(
														data,
														status) {
													var c = $("#district")[0], ds = [];
													c.options.length = 1;
													for (var i = 0; i < data.length; i++) {
														var d = data[i];
														var option = new Option(
																d.name,
																d.name);
														option.tmp = d._id;
														c.options[c.options.length] = option;
														if (fillmaps
																&& fillmaps.tenant
																&& fillmaps.tenant.district == d.name) {
															option.selected = true;
															$(
																	c)
																	.trigger(
																			'change');
														} else if (addressComponents
																&& addressComponents.district == d.name) {
															option.selected = true;
															$(
																	c)
																	.trigger(
																			'change');
														}
														if(d.name==district){
														option.selected = true;
														}
													}
													$(
															'#district')
															.selectpicker(
																	'refresh');
												});
							} else {
								$("#district")[0].options.length = 1;
								$('#district')
										.selectpicker(
												'refresh');
							}
						});

		getInstitutionTable();
		$("#functionSelectDiv").hide();
});

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

	function getNewTable(){
		//console.log($("#serOutcom").formobj());
		$("#newsTable")
		.grid(
				{
					url : _ctxPath
							+ "/outcome/query.action",
					postData : $("#serOutcom").formobj(),
					colNames : ["奖惩名称", "奖惩日期", "批准奖惩的党组织" , "类别" , "操作" ],
					//multiselect: true,//复选框
					shrinkToFit:false,
					autowidth:true,
					colModel : [
					        {
								name : "name",
								index : "name",
								width : 250
							},
							{
								name : "fromtRecordTime",
								index : "fromtRecordTime",
								width : 80
							},
							{
								name : "toname",
								index : "toname",
								width : 250
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
										v="奖励";
									}else if(cellvalue==2){
										v="惩罚";
									}else{
										v="类型未知";
									}
									return v;
								}
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
									v += "<a href='javascript:void(0);' onclick='changCategory(\""
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
	
	function getLeadershipTable(){
		//console.log($("#leadership").formobj());
		$("#leadershipTable")
		.grid(
				{
					url : _ctxPath
							+ "/leadership/query.action",
					postData : $("#leadership").formobj(),
					colNames : ["班子届次", "班子成员", "当选日期" , "届满日期" , "操作" ],
					//multiselect: true,//复选框
					colModel : [
					        {
								name : "num",
								index : "num",
								width : 250,
								formatter : function(
										cellvalue,
										options,
										rowObject) {
									return "第"+cellvalue+"届";
								}
							},
							{
								name : "userNames",
								index : "userNames",
								width : 250
							},
							{
								name : "fromatRecordTime",
								index : "fromatRecordTime",
								width : 80
							},
							{
								name : "fromatRecordEnd",
								index : "fromatRecordEnd",
								width : 80
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
									v += "<a href='javascript:void(0);' onclick='changLeadershipCategory(\""
										+ cellvalue
										+ "\")' class='m-r-10'>编辑</a>";
										v += "<a href='javascript:void(0);' onclick='removeLeadershipCategory(\""
											+ cellvalue
											+ "\")' class='m-r-10'>删除</a>";
									return v;
								}
							} ]
				});
	}

	function removeLeadershipCategory(obj) {
		layer.confirm('该条信息删除后将无法恢复，且对应的班子成员信息也将删除，请谨慎确认是否要进行删除操作？',{title:"删除"}, function(index) {
			layer.close(index);
			var url = _ctxPath + "/leadership/delLeadership/" + obj + ".action";
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#leadershipTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		});
	}
	
	function changinst(obj){
		document.location.href = _ctxPath + "/institution/toUpsert.action?instId="+obj;
	}

	function changLeadershipCategory(obj){
		document.location.href = _ctxPath + "/leadership/toUpsert.action?leadershipId="+obj;
	}
	
	function opensetleader(){
		layer.open({
			type : 1,
			title : "届次数据添加",
			offset: 't',
			area : [ '400px','250px'],
			shadeClose : true,
			closeBtn : 1,
			content : $("#leadershipFrom"),
			btn: ['确定','取消'],
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
								window.parent.toastr.success("操作成功,请对班子成员信息进行调整！");
								changLeadershipCategory(data.data._id);
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

	function removeinst(obj) {
		layer.confirm('该条信息删除后将无法恢复，是否确认删除？',{title:"删除"}, function(index) {
			layer.close(index);
			var url = _ctxPath + "/institution/del/" + obj + ".action";
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#InstitutionTable").trigger("reloadGrid");
				} else {
					toastr.error("操作失败");
				}
			});
		});
	}
	
	function getInstitutionTable(){
		$("#InstitutionTable")
		.grid(
				{
					url : _ctxPath
							+ "/institution/query.action",
					postData : $("#institution").formobj(),
					colNames : ["单位名称", "单位类别", "单位建立党组织情况" , "党组织所在单位代码" , "操作" ],
					//multiselect: true,//复选框
					colModel : [
					        {
								name : "name",
								index : "name",
								width : 150
							},
							{
								name : "bumenType",
								index : "bumenType",
								width : 150
							},
							{
								name : "situation",
								index : "situation",
								width : 300,
								formatter : function(
										cellvalue,
										options,
										rowObject) {
									var v=""
									if(cellvalue==1){
										v="建立党委的";
									}else if(cellvalue==2){
										v="建立党总支部的";
									}else if(cellvalue==3){
										v="建立党支部的";
									}else if(cellvalue==4){
										v="建立联合党支部的";
									}else{
										v="类型未知";
									}
									return v;
								}
							},
							{
								name : "unitcode",
								index : "unitcode",
								width : 200,
								
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
									v += "<a href='javascript:void(0);' onclick='changinst(\""
										+ cellvalue
										+ "\")' class='m-r-10'>编辑</a>";
										v += "<a href='javascript:void(0);' onclick='removeinst(\""
											+ cellvalue
											+ "\")' class='m-r-10'>删除</a>";
									return v;
								}
							} ]
				});
	}
	
	</script>
</html>