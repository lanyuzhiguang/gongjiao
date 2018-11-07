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
						<div id="bumen"></div>
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
				<div class="organizition" ><span>组织类别</span><span id="bumenType"></span></div>
				<div class="createdDate" ><span>建立日期</span><span id="recordTime"></span></div>
				<div class="partyNum" ><span>党员数量</span><span id="count"></span>名<span style="margin-left: 10px;">(正式党员<span id="partysum"></span>名，预备党员<span id="propartysum"></span>名)</span></div>
				<div class="introduce" ><span>组织简介</span>
					<p id="summary"></p>
				</div>
				<div class="titleZ">班子成员</div>
				<div class="BZList">
					<ul id="bz">
						<li id="bzItem" style="display: none;">
							<img src="img.jpg">
							<div>
								<div id="name">张三</div>
								<div id="jobName">党委书记</div>
							</div>
						</li>
					</ul>
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
							$("#newBumen")
									.click(
											function() {
												var parentId=$("#parentId").val();
												if(parentId==""||parentId==null||parentId==undefined){
													parentId="0";
												}
												document.location.href = _ctxPath
														+ "/bumen/toUpsert.action?parentId="
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
												+ "/bumen/toUpsert.action?bumenId="
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
							var treeObj = $.fn.zTree.getZTreeObj("bumen");
							treeObj.selectNode(treeObj.getNodeByParam("_id",
									"${param.parentId}"));

							function clk(e, treeId, node) {
								//alert(node.name+"==="+node._id);
								//$("#parentId").val(node._id);
								//$("#bumenname").html(node.name);
								//$("#bumenname1").html(node.name);
								getbumenbyid(node._id);
								getLeadershipbyid(node._id)
								//$('.comment_name').text(titlename)
								$("#newBumen").show();
							}
						
							getbumenbyid(${tenatBumen._id});	
							getLeadershipbyid(${tenatBumen._id})
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
			    	    $("#bumenType").html(data.bumenType);
						$("#recordTime").html(data.recordTime);
						$("#count").html(data.count);
						$("#partysum").html(data.partysum);
						$("#propartysum").html(data.propartysum);
						$("#summary").html(data.summary);

			      }
			  });
        }
		
		function del(bumenId) {
			//alert(bumenId);
			url=_ctxPath + "/bumen/delcheck.action?bumenId="+bumenId;
			delurl=_ctxPath + "/bumen/del/" + bumenId + ".action";
			$.get(url, {}, function(data) {
				//alert(data);
				if (data) {
					if (data.success) {
						doGet(delurl);
					} else {
						window.parent.toastr.error(data.message);
					}
				} else {
					window.parent.toastr.error("验证失败");
					
				}
			});
		}
		function doGet(url) {
			$.get(url, {}, function(data) {
				if (data) {
					if (data.success) {
						window.parent.toastr.success("操作成功");
						$("#bumenTable").trigger("reloadGrid");
						// 默认选择parentId指定节点
						
					} else {
						toastr.error(data.message);
					}
					
					//document.location.reload();//当前页面 
				} else {
					window.parent.toastr.success("操作成功");
				}
			});
		}
		// 默认选择parentId指定节点
		var treeObj = $.fn.zTree.getZTreeObj("bumen");
		function refreshTree(){
			var rootNode = treeObj.getNodeByParam("id","0",null);
				treeObj.expandNode(rootNode,true,true,true);
			treeObj.reAsyncChildNodes(rootNode, "refresh");
		}
		var bz=$("#bz");
		var bzItem=$("#bzItem");
		bzItem.css('display', '');
		bzItem.remove();
		
		function getLeadershipbyid(id){
			bz.html("");
        	//alert(id);
        	  $.ajax({
			      type:"post",
			      async:false,
			      url:_ctxPath + "/leadership/findFristLeadership/"+id+".action",
			      //data:{'bumenId':id},
			      contentType: "application/x-www-form-urlencoded; charset=utf-8",
			      success:function(data){
						if(data){
							if(data.success){
								$.ajax({
								      type:"post",
								      url:_ctxPath + "/leadership/queryBumenLeader.action",
								      data:{'page': 1,'size':5 ,"leadershipId":data.data._id},
								      contentType: "application/x-www-form-urlencoded; charset=utf-8",
								      success:function(data){
											if(data){
												var bea=data.data;//gitRoot 个推共享文件根地址
												console.log(data.success+bea);
												for(var i=0;i<bea.length;i++){//listItem
													var Item=bzItem.clone();
													Item.find("img").attr('src', bea[i].avatar?gitRoot+bea[i].avatar:_ctxPath + "/moduleweb/basic/bumen/img.jpg");
													Item.find("#name").html(bea[i].name);
													Item.find("#jobName").html(bea[i].jobName);
													console.log(Item);
													bz.append(Item);
												}
											}
								      }
								});
							}
						}
			      }
			  });
        }
	</script>
</body>
</html>
