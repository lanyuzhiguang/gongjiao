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
	* {
				padding: 0;
				margin: 0;
				list-style: none;
				font-size: 16px;
			}
			
			.wrapper {
				width: 66%;
			}
			
			.innerB {
				width: 90%;
				margin: auto;
			}
			.innerB div{
				margin-bottom: 10px;
			}
			.innerB div>span:first-child {
				margin-right: 2%;
			}
			
			.innerB div p {
				display: inline-block;
				margin-left:-4px;
				width: 80%;
				vertical-align: text-top;
			}
			
			.titleZ {
				font-size: 18px;
			}
			
			.BZList {
				overflow: hidden;
				width: 85%;
				margin: auto;
			}
			
			.BZList ul li {
				float: left;
				width: 20%;
				text-align: center;
				margin-bottom: 10px;
			}
			.BZList ul li img{
				width: 90%;
			}
</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="row">
					<div class="col-sm-4 maxHeight" >
						<div id="adminUnit"></div>
					</div>
					<div class="col-sm-8">
						<form id="searchForm" method="get" class="form-horizontal">
							<input id="parentId" name="parentId" type="hidden"
								value="${param.parentId}">
						</form>
								<div class="col-sm-3" style="width: 51%">
										<span id="bumenname" style="font-size: 2rem;font-family: Arial, Helvetica;font-weight: bold;"></span>
								</div>
								<div class="col-sm-5" style="float: right;">
								    <button id="newBumen" class="btn btn-primary"type="button">添加下级组织</button>
									<button id="update" class="btn btn-primary" type="button">修改</button>
									<button id="del" class="btn btn-primary" type="button">删除</button>
								</div>
					</div>
					
							<div class="wrapper" style="overflow: auto;">
								<hr/>
			<div class="innerB">
				<div class="titleZ" id="bumenname1"></div>
				<div class="partyNum" ><span>员工数量</span><span id="count"></span>名<span style="margin-left: 10px;">(正式党员<span id="partysum"></span>名，预备党员<span id="propartysum"></span>名)</span></div>
				<div class="introduce" ><span>简介</span>
					<p id="summary"></p>
				</div>
			</div>
		</div>
							
							
							
							
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var manageType;
		$().ready(
						function() {
							$("#adminUnit").tree({
								onClick : clk,
								idKey : "_id",
								pIdKey : "parentId",
								nameKey : "name",
								nodeHandler : function(n) {
									if (n._id == "0") // 展开根节点
										n.open = true;
								}
							});
							$("#newBumen")
									.click(
											function() {
												var parentId=$("#parentId").val();
												if(parentId==""||parentId==null||parentId==undefined){
													parentId="0";
												}
												document.location.href = _ctxPath
														+ "/adminunit/toUpsert.action?parentId="
														+ parentId;
											});
							$("#update")
							.click(
									function() {
										var parentId=$("#parentId").val();
										if(parentId==""||parentId==null||parentId==undefined){
											parentId="0";
										}
										document.location.href = _ctxPath
												+ "/adminunit/toUpsert.action?bumenId="
												+ parentId;
									});
							$("#del")
							.click(function() {
										var parentId=$("#parentId").val();
										if(parentId==""||parentId==null||parentId==undefined){
											parentId="0";
										}
										del(parentId);
									});
							// 默认选择parentId指定节点
							var treeObj = $.fn.zTree.getZTreeObj("adminUnit");
							treeObj.selectNode(treeObj.getNodeByParam("_id",
									"${param.parentId}"));

							function clk(e, treeId, node) {
								//alert(node.name+"==="+node._id);
								//$("#parentId").val(node._id);
								//$("#bumenname").html(node.name);
								//$("#bumenname1").html(node.name);
								getbumenbyid(node._id);
								//$('.comment_name').text(titlename)
								$("#newBumen").show();
							}
							getbumenbyid("${tenatAdminUnit._id}");	

						});
		
        function getbumenbyid(id){
        	//alert(id);
        	  $.ajax({
			      type:"post",
			      async:false,
			      url:"queryByid.action",
			      data:{'bumenId':id},
			      contentType: "application/x-www-form-urlencoded; charset=utf-8",
			      success:function(data){
			    	    $("#parentId").val(data._id);
						$("#bumenname").html(data.name);
						$("#bumenname1").html(data.name);
						$("#summary").html(data.summary);

			      }
			  });
        }
		
		function del(bumenId) {
			//alert(bumenId);
			url=_ctxPath + "/adminunit/delcheck.action?bumenId="+bumenId;
			delurl=_ctxPath + "/adminunit/del/" + bumenId + ".action";
			$.get(url, {}, function(data) {
				//alert(data);
				if (data) {
					if (data.success) {
						doGet(delurl);
					} else {
						toastr.error(data.message);
					}
				} else {
					toastr.error("验证失败");
				}
			});
		}
		function doGet(url) {
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						window.parent.toastr.success("操作成功");
						// 默认选择parentId指定节点
						document.location.href = _ctxPath
						+ "/adminunit/toQuery.action";
					} else {
						window.parent.toastr.error(data.message);
					}
					
					//document.location.reload();//当前页面 
				} else {
					window.parent.toastr.error("操作失败");
				}
			});
		}
		// 默认选择parentId指定节点
		var treeObj = $.fn.zTree.getZTreeObj("adminUnit");
		function refreshTree(){
			var rootNode = treeObj.getNodeByParam("id","0",null);
				treeObj.expandNode(rootNode,true,true,true);
			treeObj.reAsyncChildNodes(rootNode, "refresh");
		}

	</script>
</body>
</html>
