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
					<div class="col-sm-5 maxHeight">
						<div class="jqGrid_wrapper">
							<p>学习资源库栏目 共${allCount}个 已开通${openCount}个 启用<span id="useCount">${useCount}</span>个</p>
							<table id="categoryTable"></table>
						</div>
					</div>
					<div class="col-sm-7">
						<form id="searchForm" method="get" class="form-horizontal">
							<input type="hidden" id="categoryId" name="categoryId"
								value="${param.categoryId}">
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
	<script type="text/javascript">
		var categoryId;
		$()
				.ready(
						function() {
						$("#btn").hide();	
							$("#categoryTable").grid(
									{
										url : _ctxPath
												+ "/pc/studyresourcePc/tenantlist.action",
										postData : {},
										colNames : [ "操作","学习资源库栏目","类型","数量","状态" ],
										hidegrid : false,
										autoScroll: true, 
										shrinkToFit : false,
										onSelectRow : function(id) {
											var cid = $("#" + id,
													$("#categoryTable")).data(
													"rawData")._id;
											var type = $("#" + id,
													$("#categoryTable")).data(
													"rawData").type;
											if (!categoryId
													|| categoryId != cid) {
												categoryId = cid;
												loadNews();
											}
										},
										colModel : [ 
										{
											name : "_id",
											index : "_id",
											width : 50,
											formatter : function(
													cellvalue,
													options,
													rowObject) {
												var v = "";
												if (rowObject.status == 0) {
													v = "<a href='javascript:void(0);' onclick='openTelAlert()' class='m-r-10'>开通</a>";
												} else if(rowObject.status == 1){
													v = "<a href='javascript:void(0);' onclick='tanentOPen(\""
															+ cellvalue
															+ "\")' class='m-r-10'>启用</a>";
												}else if(rowObject.status == 2){
													v = "<a href='javascript:void(0);' onclick='disable(\""
														+ cellvalue
														+ "\")' class='m-r-10'>禁用</a>";
												}
												return v;
											}
										} ,{
											name : "categoryName",
											index : "categoryName",
											width :250,
										}, {
											name : "type",
											index : "type",
											width : 50,
											formatter : function(
													cellvalue,
													options,
													rowObject) {
												if (cellvalue == 1) {
													return "视频";
												} else if (cellvalue == 2) {
													return "音频";
												} else if (cellvalue == 3) {
													return "文档";
												} else if (cellvalue == 4) {
													return "考试";
												} else
													return "未知";
											}
										},{
											name:"resourceNumber",
											index:"resourceNumber",
											width : 50,
										},{
											name : "status",
											index : "status",
											width :70,
											formatter:function(cellvalue,options,rowObject){
												var result = "";
												if(cellvalue == 0){
													result = "未开通";
												}else if(cellvalue == 1){
													result = "未启用";
												}else if(cellvalue == 2){
													result = "启用";
												}
												return result;
											}
										}]
									});
/* 							$("#categoryTable").reloadGrid({
								postData : {}
							});
 */							/* $("#newNews")
									.click(
											function() {
												document.location.href = _ctxPath
														+ "/news/toUpsert.do?categoryId="
														+ categoryId;
											}); */

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
														+ "/pc/sturesourcePc/tanentlist.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "标题",
														"发布日期",
														"类型", "操作" ],
												colModel : [
														
														{
															name : "title",
															index : "title",
															width : 340,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='${ctxPath}/pc/sturesourcePc/tanentupsert.action?id="
																	+ rowObject._id+"&type="+rowObject.type
																	+ "' class='m-r-10'>"+cellvalue+"</a>";	
																return v;
															}
														},
														{
															name : "createTime",
															index : "createTime",
															width : 80
														},
														{
															name:"type",
															index:"type",
															width:60,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == 1) {
																	return "视频";
																} else if (cellvalue == 2) {
																	return "音频";
																} else if (cellvalue == 3) {
																	return "文档";
																} else if (cellvalue == 4) {
																	return "考试";
																} else
																	return "未知";
															}
														},{
															name : "_id",
															index : "_id",
															width : 80,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "<a href='javascript:void(0);' onclick='testWatch(\""+cellvalue+"\",\""+rowObject.type+"\")' class='m-r-10'>预览</a>";	
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
		function openTelAlert(){
			window.parent.layer.open({
				type : 1,
				title : "开通提示",
				closeBtn : false, //不显示关闭按钮
				area : [ '300px', '150px' ],
				shadeClose: true, 
				//time: 2000, //2秒后自动关闭
				anim : 2,
				btn : [ '确定'],
				content : '您尚未开通学习资源库，请联系系统管理员开通,</br>联系方式:400 060 8338'
			});
		}
		
		function enable(newsId) {
			doGet(_ctxPath + "/pc/studyresourcePc/enable.action?categoryId="+newsId,"1");
		}
		function disable(newsId) {
			doGet(_ctxPath + "/pc/studyresourcePc/disable.action?categoryId="+newsId,"0");
		}
		function doGet(url,type) {
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
					$("#categoryTable").trigger("reloadGrid");
						var strcount = $("#useCount").html();
						var count = parseInt(strcount);
						if(type=="0"){
							$("#useCount").html(count-1);
						}else if(type =="1"){
							$("#useCount").html(count+1);
						}
				} else {
					toastr.error("操作失败");
				}
			});
		}
		function tanentOPen(id){
			var content = '协议';			
			$.ajax({
				url:'/dangjian/pc/studyresourcePc/toagreement.action',
				async:true,
				dataType:'json',
				type:'get',
				success:function(data){
					if(data.success){
						enable(id);
					}else{
						window.parent.layer.confirm(data.data, 
							{
								title:'运营协议',	
								btn : [ '同意', '不同意' ],
								area: ['800px', '460px']
							}, 
							function(index) {
								$.ajax({
									url:'/dangjian/pc/studyresourcePc/agree.action',
									async:true,
									dataType:'json',
									type:'get',
									success:function(data){
										if(data.success){
											enable(id);
											window.parent.layer.close(index);
										}
									}
								})
							}, 
							function() {
								
							});
					}
				}
			})
		}

		function testWatch(url,type) {
			var area ;
			if(type == 1){
				area = [ '700px', '500px'];
			}else if( type == 2){
				area = ['400px','400px'];
			}else if(type == 3){
				area = ['1000px','600px'];
			}
			
			window.parent.layer.open({
				type : 2,
				title : false,
				closeBtn : true, //不显示关闭按钮
				area : area,
				//time: 2000, //2秒后自动关闭
				anim : 2,
				content : '/dangjian/pc/studyresourcePc/towatch.action?id=' + url+'&type='+type //iframe的url，no代表不显示滚动条
			});
		}
		function remove(newsId) {
			layer.confirm('确定要删除?', function(index) {
				layer.close(index);
				var url = _ctxPath + "/pc/sturesourcePc/delete.action?id=" + newsId;
				$.get(url, {}, function(data) {
					if (data) {
						if (data.success) {
							toastr.success("操作成功");
						} else {
							toastr.error(data.message);
						}
						$("#categoryTable").trigger("reloadGrid");
					} else {
						toastr.error("操作失败");
					}
				});
			});
		}
	</script>
</body>
</html>
