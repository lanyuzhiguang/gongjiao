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
				<div class="row">
					<div class="col-sm-12">
						<form id="searchForm" method="get" class="form-horizontal">
							<input id="libraryCategorys.cetId" name="libraryCategorys.cetId"
								class="cetId" type="hidden"> <input
								id="classification|integer" name="classification|integer"
								value="1" type="hidden"> <input id="ne:state|integer"
								name="ne:state|integer" value="-1" type="hidden"> <input
								id="isTenNews|integer" name="isTenNews|integer" value="1"
								type="hidden">
							<div class="form-group">
								<div class="col-sm-2 col-sm-offset-1">
									<div class="input-group fg-float">
										<div class="fg-line">
											<input id="regex:title" name="regex:title" type="text"
												class="form-control"> <label class="fg-label">标题</label>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<label class="col-sm-3 control-label">推荐状态</label>
									<div class="col-sm-9">
										<select class="form-control selectpicker" id="state|integer"
											name="state|integer" data-live-search="true">
											<option value="">请选择</option>
											<option value="3">未通过</option>
											<option value="1">通过</option>
											<option value="2">待审核</option>
										</select>
									</div>
								</div>
								<div class="col-sm-4">
									<button id="search" class="btn btn-primary" type="submit">查询</button>
								</div>
							</div>
						</form>
						<div class="jqGrid_wrapper">
							<table id="newsTable"></table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<form id="functionDiv" method="post" calss="form-horizontal"
		style="display: none;">
		<input id="id" name="id" type="hidden">
		<div class="form-group">
			<label class="col-sm-2 control-label">审核</label>
			<div class="col-sm-10">
				<div class="col-sm-4">
					<label> <input type="radio" name="state" id="state" onclick="shu()"
						value="1" checked> 通过
					</label>
				</div>
				<div class="col-sm-4">
					<label> <input type="radio" name="state" id="state" onclick="diss()"
						value="3"> 未通过
					</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label">原因</label>
			<div class="col-sm-9">
				<div class="fg-line">
					<input id="about" name="about" type="text" class="form-control"
						minlength="0" required>
				</div>
			</div>
		</div>
		<div class="form-group" id="licd">
			<label class="col-sm-3 control-label">资源栏目</label>
			<div class="col-sm-9">
				<div class="fg-line">
					<select class="form-control selectpicker" id="libCrId"
							name="libCrId" data-live-search="true">
							<c:forEach  items="${spiderSources }"  var="spiderSource">
							   <option value="${spiderSource._id }">${spiderSource.name }</option>
							</c:forEach >
					</select>
				</div>
			</div>
		</div>
	</form>
	<script type="text/javascript">
		var categoryId;
		$()
				.ready(
						function() {
							$("#categoryTable").reloadGrid({
								postData : {}
							});

							$("#searchForm").submit(function() {
								$("#newsTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								return false;
							});
							$("#newsTable")
									.grid(
											{
												url : _ctxPath
														+ "/pc/newsSpiderPc/query.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "标题",
														"发布日期", "新闻来源","审核状态",
														"操作" ],
												colModel : [
														
														{
															name : "title",
															index : "title",
															width : 400
														},
														{
															name : "speTime",
															index : "speTime",
															width : 100
														},
														{
															name : "libSource",
															index : "libSource",
															width : 200
														},
														{
															name : "state",
															index : "state",
															width : 200,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if(cellvalue==2){
																	return "待审核"
																}
																if(cellvalue==1){
																	return "通过"
																}
																if(cellvalue==3){
																	return "未通过"
																}
															}
														},{
															name : "_id",
															index : "_id",
															align : "center",
															width : 160,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v="";
																if(rowObject.state==1){
																	v += "<a href='javascript:void(0);' onclick='disAuditin(\""
																		+ cellvalue
																		+ "\")' class='m-r-10'>撤销</a>";
																}
																if(rowObject.state==2){
																	v += "<a href='javascript:void(0);' onclick='setSpSour(\""
																		+ cellvalue
																		+ "\",\""+rowObject.name+"\")' class='m-r-10'>审核</a>";
																	v += "<a href='${ctxPath}/pc/newsSpiderPc/toTenSUpsert.action?id="
																		+ cellvalue+"&type="+rowObject.type
																		+ "' class='m-r-10'>编辑</a>";
																}
																v += "<a href='javascript:void(0);' onclick='remove(\""
																		+ cellvalue
																		+ "\")' class='m-r-10'>删除</a>";

																return v;
															}
														}
														]
											});

						});
		function loadNews() {
			if (!categoryId)
				return;
			$("#categoryId").val(categoryId);
			$("#newsTable").reloadGrid({
				postData : $("#searchForm").formobj()
			});
		}
		function enable(newsId) {
			doGet(_ctxPath + "/pc/sturesourcePc/enable.action?id="+newsId);
		}
		function disable(newsId) {
			doGet(_ctxPath + "/pc/sturesourcePc/disable.action?id="+newsId);
		}
		function sertVideo(id){
			document.location.href = _ctxPath
			+ "/pc/sturesourcePc/toupsert.action?categoryId="
			+ categoryId+"&type=1";
		}
		function sertAudio(){
			document.location.href = _ctxPath
			+ "/pc/sturesourcePc/toupsert.action?categoryId="
			+ categoryId+"&type=2";
		}
		function sertDoc(){
			document.location.href = _ctxPath
			+ "/pc/sturesourcePc/toupsert.action?categoryId="
			+ categoryId+"&type=3";
		}
		function doGet(url) {
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
		}
		function remove(newsId) {
			layer.confirm('确定要删除?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/pc/sturesourcePc/delete.do?id=" + newsId;
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
		function disAuditin(Id) {
			layer.confirm('撤销当前新闻资源吗?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/pc/newsSpiderPc/disAuditin.action?id=" + Id;
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
		function setSpSour(obj1,obj2){
			$("#id").val(obj1);
			openFrom();
		}
		
		function openFrom(){
			layer.open({
				type : 1,
				title : "审核",
				offset: 't',
				area : [ '300px','250px'],
				shadeClose : true,
				closeBtn : 1,
				content : $("#functionDiv"),
				btn: ['确定','取消'],
				yes: function(index, layero){
				    	//loading层
						var indx = layer.load(1, {
						  shade: [0.7,'#fff'] //0.1透明度的白色背景
						});
				    	$.ajax({
				  	        type:"post",
				  	        url:_ctxPath+"/pc/newsSpiderPc/auditin.action",
				  	      	data:$('#functionDiv').serialize(),
				  	        dataType:"json",
				  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
				  	        success:function(data){
				  	        	layer.close(indx);
				  	        	if (data.success) {
									toastr.success("操作成功");
								} else {
									toastr.error(data.message);
								}
								$("#newsTable").trigger("reloadGrid");
				  	        	layer.close(index);
				  	        }
						});
				    }
			});
		}
		
		function shu(){
			$("#licd").show();
		}
		function diss(){
			$("#licd").hide();
		}
	</script>
</body>
</html>
