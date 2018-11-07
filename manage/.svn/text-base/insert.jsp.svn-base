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
					<a href="../noticeDetail/toList.action" class="btn-link"> <i
						class="fa fa-angle-double-left"></i>返回
					</a>
					发送通知
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
						<div class="col-sm-10">
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
											value="未选择部门" >
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
				<div class="col-sm-12">
					<div class="col-sm-12">
						<form id="notice" method="post"
							  action="../notice/insert.action" class="form-horizontal">
							<input id="bIds" name="bIds"  type="hidden">
							<div class="form-group">
								<label class="col-sm-2 control-label">通知类别</label>
								<div class="col-sm-5">
									<div class="fg-line" style="margin-top: 8px;">
										<label class="radio radio-inline m-r-20"> <input
											type="radio" name="notType" value="0" id="notType"
											class="gender"> <i class="input-helper"></i> 普通通知
										</label> <label class="radio radio-inline m-r-20"> <input
											type="radio" checked="checked" name="notType" id="notType" value="1" class="gender"> <i
											class="input-helper"></i> 会议通知
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">标题</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input type="text" class="form-control "
											   id=title name="title"  required />
									</div>
								</div>
							</div>
							<div class="form-group" style="display: none;">
								<input id="mtype" name="mtype" value="2"><!-- 会议其他分类 -->
								<label class="col-sm-2 control-label">分类</label>
								<div class="col-sm-10">
									<select class="form-control selectpicker" id="meetId"
										name="meetId" data-live-search="true">
											<option data="2" value="" >其他</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">发布单位</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input type="hidden" class="form-control "
											   id="forBumenId" name="forBumenId"  required />
										<input type="text" class="form-control "
											   id="forbumname" name="forbumname"  required />
									</div>
								</div>
							</div>
							<input type="hidden" id="state" name="state" value="0">
							<input type="hidden" id="alerted" name="alerted" value="0">
							<input  type="hidden" id="userIds" name="userIds" >
							<div class="form-group">
								<label class="col-sm-2 control-label">发布范围</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input type="text" class="form-control "
											   id="userNames" name="userNames" required readonly="readonly"/>
									</div>
								</div>
							</div>
							<div class="form-group" style="display: none;">
								<label class="col-sm-2 control-label">是否需要上传记录</label>
								<div class="col-sm-5">
									<div class="fg-line" style="margin-top: 8px;">
										<label class="radio radio-inline m-r-20"> <input
											type="radio" checked="checked" name="isupfile" id="isupfile" value="1"
											class="gender"> <i class="input-helper"></i> 是
										</label> 
										<label class="radio radio-inline m-r-20"> <input
											type="radio" name="isupfile" id="isupfile" value="0" class="gender"> <i
											class="input-helper"></i> 否
										</label>
									</div>
								</div>
							</div>
							<div class="form-group" id="f3">
								<label class="col-sm-2 control-label">开会时间</label>
								<div class="col-sm-3">
									<input type="text" id="attTime" name='attTime' class="form-control laydate-icon"/> 
								</div>
							</div>
							<div class="form-group" id="f6">
								<label class="col-sm-2 control-label">结束时间</label>
								<div class="col-sm-3">
									<input type="text" id="endTimeFrom" name='endTimeFrom' class="form-control laydate-icon"/> 
								</div>
							</div>
							<div class="form-group" id="f4">
							<label class="col-sm-2 control-label">会议地点</label>
								<div class="col-sm-10">
									<div class="fg-line">
										<input id="address" name="address" class="form-control" style="width: 100%"
											placeholder="" required> 
										</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">内容</label>
								<div class="col-sm-10">
									<textarea id="realContent" name="realContent" style="width: 100%" class="form-control" rows="6"></textarea>
								</div>
							</div>
							<div style="display: none;" class="form-group" id="f5">
							<label class="col-sm-2 control-label">签到距离范围(米)</label>
							<div class="col-sm-4">
								<div class="fg-line">
									<input id="signDistance" name="signDistance" type="number"
										class="form-control" min="0" value="300" required />
								</div>
								<span class="help-block m-b-none">距离活动地点方圆多少米以内才能签到（需要考虑gps定位误差，一般室外30米、室内60米左右误差）。</span>
							</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">图片最多上传9张哦</label>
								<div class="col-sm-10">
									<div id="imagesDiv" class="col-sm-12">
									</div>
									<div class="col-sm-12 m-t-10" style="width: 120px;">
										<button id="images" type="button"
												class="btn bgm-teal btn-block comp"
												comp="type:'fileupload',imagesDiv:'imagesDiv',showImage:true,imgWidth:'80px',imgHeight:'60px',isPrivate:true">选择上传图片</button>
									</div>
								</div>
							</div>
							<!-- <div class="form-group organr">
								<label class="col-sm-2 control-label">文档文件</label>
								<div class="col-sm-10">
									<div id="attachesDiv" class="f-left"></div>
									<div class="f-left" style="width: 120px; padding-top: 10px">
										<input type="hidden" id="fileid" name="fileid">
										<button type="button" class="btn bgm-teal btn-block comp"
											comp="type:'fileupload',attachesDiv:'attachesDiv',showAttach:true,showAttachCallback:doCallback,isPrivate:true">选择上传文档</button>
									</div>
								</div>
							</div> -->
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
		</div>
	</div>
	<script src="${ctxPath}/modulepc/resources/plugins/laydate/layui.js" type="text/javascript" ></script>
	<script src="${ctxPath}/modulepc/resources/plugins/laydate/laydate.min.js"></script>
	<script type="text/javascript">
	//时间插件方法
	var startDate = layui.laydate.render({
	elem: '#attTime',
	type:"datetime",
	change:function(value,date){
	if( value !== '' ){
	endDate.config.min.year = date.year;
	endDate.config.min.month = date.month - 1;
	endDate.config.min.date = date.date;
	}else{
	endDate.config.min.year = '';
	endDate.config.min.month = '';
	endDate.config.min.date = '';
	}
	}
	});


	var endDate = layui.laydate.render({
	elem: '#endTimeFrom',
	type:"datetime",
	change:function(value,date){
	if( value !== '' ){
	startDate.config.max.year = date.year;
	startDate.config.max.month = date.month - 1;
	startDate.config.max.date = date.date;
	console.log(date.date);
	}else{
	startDate.config.max.year = '';
	startDate.config.max.month = '';
	startDate.config.max.date = '';
	}
	}
	});
	var notType=1;
	$("#meetId").change(function() {
		notType=$("#meetId").find("option:selected").attr("data");
	});
	$("input[name='notType']").bind("click",function(){    
        //测试操作代码    
        if($(this).val()==0){
        	$("#f1").hide();
        	$("#f2").hide();
        	$("#f3").hide();
        	$("#f4").hide();
        	$("#f5").hide();
        	$("#f6").hide();
        	notType=0;
        }else if($(this).val()==1){
        	$("#f1").show();
        	$("#f2").show();
        	$("#f3").show();
        	$("#f4").show();
        	$("#f6").show();
        	notType=1;
        }
         
    }); 
	$("input[name='isupfile']").bind("click",function(){
		alert($("#f2 input:radio").val().prop('checked', true));
		if($(this).val()==0){
        	if(notType == 1){
        		//layer.alert("三会一课必须上传会议资料！");
        		//$("input[@type='radio'][name='isupfile'][@value='1']").attr("checked","checked"); 
        		//$("input[@type='radio'][name='isupfile'][@value=1]").attr('checked',"checked");
        		//$("input[@type='radio'][name='isupfile']").prop('checked', 'checked');
        		//$("input[@type='radio'][name='isupfile'][@value=1]").parent('label').addClass('active');
        	}
        }else if($(this).val()==1){
        	
        }
	});
		$().ready(function() {
			$("#notice").validate({
				submitHandler : function(form) {
					$.shade.show();
					$("#groupMessage").enable();
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
						url :"../user/queryBumenIds.action",
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
			$("#cancelBtn").click(function() {
				document.location.href = "../noticeDetail/toList.action";
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
		
		function doCallback(fs, cfg, comp) {
			var s = (fs[fs.length - 1]).split('|');
			var url = s[2];
			$("#fileid").val(s[0]);

			setMedia(url, s[0]);
		}

		function setMedia(url, fileid) {
			var cid = "doc";
			$(".attach_" + cid).remove();
			var a = $("<div class=\"attach_" + cid
					+ " m-r-10\"><a target=\"_blank\" href=\"" + url
					+ "\" class=\"m-r-5\">"
					+ fileid + "</a></div>");
			$("#attachesDiv").append(a);
		}
	</script>
</body>
</html>
