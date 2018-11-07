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
							<p id="source"></p>
							<table id="categoryTable"></table>
						</div>
					</div>
					<div class="col-sm-7">
						<form id="searchForm" method="get" class="form-horizontal">
							<input id="libraryCategorys.cetId" name="libraryCategorys.cetId" class="cetId" type="hidden">
							<input id="classification|integer" name="classification|integer" value="1" type="hidden">
							<input id="state|integer" name="state|integer" value="1" type="hidden">
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
	
	<form id="functionDiv" method="post" calss="form-horizontal"
		style="display: none;">
		<input id="id" name="id" type="hidden">
		<table class="table">
			<tr>
				<td>新闻来源</td>
				<td><span id="sour"></span></td>
			</tr>
			<tr>
				<td>选择推送栏目</td>
				<td>
					<select class="form-control selectpicker" id="cetId"
							name="cetId" data-live-search="true">
							<c:forEach  items="${newsCategorys }"  var="newsCategory">
							   <option value="${newsCategory._id }">${newsCategory.name }</option>
							</c:forEach >
					</select>
				</td>
			</tr>
			<tr>
				<td>是否启用推送</td>
				<td>
					<div class="col-sm-10">
						<div class="col-sm-4">
							<label>
								<input type="radio" name="tuiSou" id="tuiSou" value="0" checked>
									    否
								</label>
							</div>
							<div class="col-sm-4">
							<label>
							<input type="radio" name="tuiSou" id="tuiSou" value="1">
									    是
							</label>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</form>
	<script type="text/javascript">
		var categoryId;
		$()
				.ready(
						function() {
						$("#btn").hide();	
							$("#categoryTable").grid(
									{
										url : _ctxPath
												+ "/pc/spiderSourcePc/qeryBytanent.action",
										postData : {},
										colNames : [ "分类名称","数量","状态","推送栏目","操作" ],
										hidegrid : false,
										onSelectRow : function(id) {
											var cid = $("#" + id, $("#categoryTable")).data("rawData")._id;
											$(".cetId").val(cid);
											$("#newsTable").reloadGrid({
												postData : $("#searchForm").formobj()
											});
										},
										colModel : [ {
											name : "name",
											index : "name",
											width :100,
										}, {
											name : "librarys",
											index : "librarys",
											width :40
										},{
											name:"tenState",
											index:"tenState",
											width : 40,
											formatter:function(cellvalue,options,rowObject){
												var result = "";
												if(cellvalue == 0){//tenTui
													result = "未开通";
												}else if(cellvalue == 1){
													if(rowObject.tenTui == 0){
														result = "未启用";
													}else if(rowObject.tenTui == 1){
														result = "启用";
													}
												}
												return result;
											}
										},{
											name : "tenCrString",
											index : "tenCrString",
											width :40
										},
										{
											name : "_id",
											index : "_id",
											width : 40,
											formatter : function(
													cellvalue,
													options,
													rowObject) {
												var v = "";
												<c:if test="${tenant.hasNews != 1}">
													v = "<a href='javascript:void(0);' onclick='openTelAlert()' class='m-r-10'>开通</a>";
												</c:if>
												<c:if test="${tenant.hasNews == 1}">
												if(rowObject.tenState == 0){
													v = "<a href='javascript:void(0);' onclick='tanentOPen(\""
															+ cellvalue
															+ "\")' class='m-r-10'>开通</a>";
												}else{
													v = "<a href='javascript:void(0);' onclick='setLibNews(\""
														+ cellvalue
														+ "\",\""
														+ rowObject.name
														+ "\",\""
														+ rowObject.tenTui
														+ "\",\""
														+ rowObject.tenCrid
														+ "\")' class='m-r-10'>设置</a>";
												}
												</c:if>
												return v;
											}
										} ]
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
														"发布日期", "新闻来源",
														 ],
												colModel : [
														
														{
															name : "title",
															index : "title",
															width : 400,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																return "<a target='_blank' href='${ctxPath}/pc/newsSpiderPc/toLibrNewsDat.action?id="+rowObject._id+"' >"+cellvalue+"</a>"
															}
														},
														{
															name : "speTimeFormat",
															index : "speTimeFormat",
															width : 100
														},
														{
															name : "libSource",
															index : "libSource",
															width : 200
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
				content : '您尚未开通新闻资源库，请联系系统管理员开通,</br>联系方式:400 060 8338'
			});
		}
		
		function enable(newsId) {
			$.ajax({
				url: _ctxPath+'/pc/spiderSourcePc/chagLibNewType.action?id='+newsId+"&type=1",
				async:true,
				dataType:'json',
				type:'post',
				success:function(data){
					if (data.success) {
						toastr.success("操作成功");
						$("#categoryTable").trigger("reloadGrid");
					} else {
						toastr.error(data.message);
					}
				}
			})
		}
		function disable(newsId) {
			$.ajax({
				url: _ctxPath+'/pc/spiderSourcePc/chagLibNewTuiSou.action?id='+newsId+"&tuiSou=1",
				async:true,
				dataType:'json',
				type:'post',
				success:function(data){
					if (data.success) {
						toastr.success("操作成功");
					} else {
						toastr.error(data.message);
					}
				}
			})
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
				url: _ctxPath+'/pc/spiderSourcePc/toagreement.action',
				async:true,
				dataType:'json',
				type:'post',
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
									url: _ctxPath+'/pc/spiderSourcePc/agree.action',
									async:true,
									dataType:'json',
									type:'post',
									success:function(data){
										if(data.success){
											enable(id);
											setSource()
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
				content : _ctxPath + '/pc/studyresourcePc/towatch.action?id=' + url+'&type='+type //iframe的url，no代表不显示滚动条
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
		
		function setLibNews(obj1,obj2,obj3,obj4){
			$("#cetId").selectpicker('val', obj4);
			$('#cetId').selectpicker('refresh');
			$("#sour").html(obj2);
			//$("input[@type='radio'][name='tuiSou'][@value='"+obj3+"']").attr("checked",true);
			$(":radio[name='tuiSou'][value='" + obj3 + "']").prop("checked", "checked");
			$("#id").val(obj1);
			layer.open({
				type : 1,
				title : "抓取到的连接名称及地址",
				offset: 't',
				area : [ '400px','300px'],
				shadeClose : true,
				closeBtn : 1,
				content : $("#functionDiv"),
				btn: ['确定','取消'],
				yes: function(index, layero){
						if($("#functionDiv #cetId").val()==""
								||$("#functionDiv #cetId").val()==null
								||$("#functionDiv #cetId").val()=="undefined"){
							layer.alert("请在新闻咨询中添加资源库的分类后进行操作！");
							layer.close(index);
						}else{
					    	//loading层
							var indx = layer.load(1, {
							  shade: [0.7,'#fff'] //0.1透明度的白色背景
							});
					    	$.ajax({
					  	        type:"post",
					  	        url:_ctxPath+"/pc/spiderSourcePc/upListsert.action",
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
									$("#categoryTable").trigger("reloadGrid");
					  	        	layer.close(index);
					  	        	setSource();
					  	        }
							});
						}
				  }
			});
		}//soreSpider
		
		function setSource(){
			$.ajax({
	  	        type:"post",
	  	        url:_ctxPath+"/pc/newsSpiderPc/soreSpider.action",
	  	        dataType:"json",
	  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
	  	        success:function(data){
	  	        	var d = data.data;
	  	        	$("#source").html("新闻资源库 共"+d[0]+"个 已开通"+d[1]+"个 启用"+d[2]+"个");
	  	        }
			});
		}
		setSource();
	</script>
</body>
</html>
