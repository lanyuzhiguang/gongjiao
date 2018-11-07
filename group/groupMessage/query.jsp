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
				<div class="my-titlebar">
					<a href="${ctxPath}/pc/group/favorGroupPc/toQuery.action" class="btn-link"> <i
							class="fa fa-angle-double-left"></i>返回
					</a>
					 ${favorGroup.name}
				</div>
				<form id="searchForm" method="get" class="form-horizontal">
					<div class="form-group">
						<div class="col-sm-3 col-sm-offset-1">
							<div class="input-group fg-float">
								<div class="fg-line">
									<input id="regex:content" name="regex:content" type="text"
										class="form-control"> <label class="fg-label">消息内容</label>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
						<div class="input-group fg-float">
						<div class="fg-line">
						    <input type="text" id="gte:createTime|date" name='gte:createTime|date' class="startTime form-control laydate-icon"/>
						    <label class="fg-label">开始日期</label>  
						</div>
						</div>
					</div>
						
					<div class="col-sm-3">
						<div class="input-group fg-float">
						<div class="fg-line">
					    	<input type="text" id="lte:createTime|date" name='lte:createTime|date' class="endTime form-control col-sm-2 laydate-icon"/>
					    	<label class="fg-label">结束日期</label>   
					    </div>
					    </div>
					</div>
					</div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-1">
							<button id="search" class="btn btn-primary" type="submit">查询</button>
							<%--<button id="newMessage" class="btn btn-danger m-l-20" type="button">发布消息</button>--%>
						</div>
					</div>
				</form>

				<div class="jqGrid_wrapper">
					<table id="messageTable"></table>
				</div>
			</div>
		</div>
	</div>
	<script src="${ctxPath}/moduleweb/resources/plugins/laydate/layui.js" type="text/javascript" ></script>
	<script src="${ctxPath}/moduleweb/resources/plugins/laydate/laydate.min.js"></script>
	<script type="text/javascript">
		$().ready(
			function() {
			/*	$("#newMessage").click(function() {
					document.location.href = _ctxPath
							+ "/group/groupMessage/toUpsert.do?groupId=${param.groupId}";
				});*/
	//时间插件方法
	var startDate = layui.laydate.render({
	elem: '.startTime',
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
	elem: '.endTime',
	type:"datetime",
	change:function(value,date){
	if( value !== '' ){
	startDate.config.max.year = date.year;
	startDate.config.max.month = date.month - 1;
	startDate.config.max.date = date.date;
	}else{
	startDate.config.max.year = '';
	startDate.config.max.month = '';
	startDate.config.max.date = '';
	}
	}
	});
				$("#searchForm").submit(function() {
					$("#messageTable").reloadGrid({
						postData : $("#searchForm").formobj()
					})
					return false;
				});
				$("#messageTable")
						.grid(
					{
						url : _ctxPath
								+ "/pc/group/groupMessagePc/query.action?groupId=${param.groupId}",
						postData : $("#searchForm")
								.formobj(),
						shrinkToFit : false,
						colNames : [ "操作", "消息内容","发布人", "状态",
								"点赞次数","发布时间" ],
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
										var v = "<a href='${ctxPath}/pc/group/groupMessagePc/toUpsert.action?groupId=${param.groupId}&id="
												+ cellvalue
												+ "' class='m-r-10'>详情</a>";
										return v;
									}
								},
								{
									name : "content",
									index : "content",
									width : 300
								},
								{
									name : "userName",
									index : "userName",
									width : 150
								},
								{
									name : "state",
									index : "state",
									width : 100,
                                    formatter : function(
                                        cellvalue,
                                        options,
                                        rowObject) {
                                        if(cellvalue == 0) {
                                            cellvalue = '无效';
                                        } else if(cellvalue == 1) {
                                            cellvalue = '有效';
                                        }
                                        return cellvalue;
                                    }
								},
								{
									name : "zanTimes",
									index : "zanTimes",
									width : 100
								},
								{
									name : "createTime",
									index : "createTime",
									width : 200
								}
						]
					});
			});
		$(function(){  
	        var start = {  
	            elem: '#gte:createTime|date', //选择ID为START的input  
	            format: 'YYYY-MM-DD hh:mm:ss', //自动生成的时间格式  
	            min: '2017-07-01 23:59:59', //设定最小日期为当前日期  
	            max: laydate.now(), //最大日期  
	            istime: true, //必须填入时间  
	            istoday: false,  //是否是当天  
	            start: laydate.now(0,"YYYY-MM-DD hh:mm:ss"),  //设置开始时间为当前时间  
	            choose: function(datas){  
	                 end.min = datas; //开始日选好后，重置结束日的最小日期  
	                 end.start = datas //将结束日的初始值设定为开始日  
	            }  
	        };  
	        var end = {  
	            elem: '#lte:createTime|date',
	            format: 'YYYY-MM-DD hh:mm:ss',  
	            min: '2017-07-01 23:59:59',  
	            max: laydate.now(),  
	            istime: true,  
	            istoday: false,  
	            start: laydate.now(0,"YYYY-MM-DD hh:mm:ss"),  
	            choose: function(datas){  
	                start.max = datas; //结束日选好后，重置开始日的最大日期  
	            }  
	        };  
	        laydate(start);  
	        laydate(end);  
	        })  
	</script>
</body>
</html>
