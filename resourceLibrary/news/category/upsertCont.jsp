<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<%String ref = request.getHeader("REFERER");%>
<html>
<head>
<title></title>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<a href="javascript:backPag();" class="btn-link">
						<i class="fa fa-angle-double-left"></i>返回
					</a>
					<c:if test="${ffspiderSource._id == null}">
								新建新闻来源内容抓取规则
							</c:if>
					<c:if test="${ffspiderSource._id != null}">
								修改新闻来源内容抓取规则
							</c:if>
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="spiderSource" method="post"
					action="${ctxPath}/pc/newsSpiderPc/upsert.action" class="form-horizontal">
					<!-- 隐藏域状态，id，固定值 -->
					<input type="hidden" id="_id" name="_id"><!-- id -->
					<input type="hidden" id="state" name="state" value="1"><!-- 状态启用禁用 -->
					<input type="hidden" id="type" name="type" value="1"><!-- 当前规则类型 -->
					<input type="hidden" id="spiderType" name="spiderType" value="1"><!-- 爬取网页类型 -->
					<c:if test="${ffspiderSource.type==1 && ffspiderSource.type==2}">
						<input type="hidden" id="isTempt" name="isTempt" value="0"><!-- 是否为模板 -->
					</c:if>
					<input type="hidden" id="createTime" name="createTime"><!-- 创建时间 -->
					<input type="hidden" id="spiderParentId" name="spiderParentId"><!-- 上一级id -->
					<div class="form-group">
						<label class="col-sm-2 control-label">来源名称</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="name" name="name" type="text" class="form-control"
									minlength="0" maxlength="100" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">抓取目标路径</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="url" name="url" type="text" minlength="0" class="form-control" required>
							</div>
							<span class="help-block m-b-none">也就是当前规则爬取的页面地址。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">过滤网页地址正则表达式</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="ruleRegexInto" name="ruleRegexInto" type="text" class="form-control">
							</div>
							<span class="help-block m-b-none">通过当前的正则过滤掉不能使用当前抓取规则的网页地址。</span>
						</div>
					</div>
					<h4 class="">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-right"></i>检索范围块的选定规则</h4>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Xsoup规则</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="ruleXsoupBlock" name="ruleXsoupBlock" type="text" class="form-control"
									 minlength="0" maxlength="100">
							</div>
							<span class="help-block m-b-none">Xsoup规则请参考操作文档。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">正则表达式</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="ruleRegexBlock" name="ruleRegexBlock" type="text" class="form-control"
									 minlength="0" maxlength="100">
							</div>
							<span class="help-block m-b-none">正则表达式，请自行百度了解相关检索比较规则。</span>
						</div>
					</div>
					<h4 class="">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-right"></i>抓取新闻logo图片或者封面图</h4>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Xsoup规则</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="ruleXsoupImage" name="ruleXsoupImage" type="text" class="form-control"
									 minlength="0" maxlength="100">
							</div>
							<span class="help-block m-b-none">Xsoup规则请参考操作文档。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">正则表达式</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="ruleRegexImage" name="ruleRegexImage" type="text" class="form-control"
									 minlength="0" maxlength="100">
							</div>
							<span class="help-block m-b-none">正则表达式，请自行百度了解相关检索比较规则。</span>
						</div>
					</div>
					<h4 class="">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-right"></i>抓取新闻标题</h4>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Xsoup规则</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="ruleXsoupName" name="ruleXsoupName" type="text" class="form-control"
									 minlength="0" maxlength="100">
							</div>
							<span class="help-block m-b-none">Xsoup规则请参考操作文档。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">正则表达式</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="ruleRegexName" name="ruleRegexName" type="text" class="form-control"
									 minlength="0" maxlength="100">
							</div>
							<span class="help-block m-b-none">正则表达式，请自行百度了解相关检索比较规则。</span>
						</div>
					</div>
					<h4 class="">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-right"></i>抓取新闻发布时间</h4>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Xsoup规则</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="ruleXsoupTime" name="ruleXsoupTime" type="text" class="form-control"
									 minlength="0">
							</div>
							<span class="help-block m-b-none">Xsoup规则请参考操作文档。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">正则表达式</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="ruleRegexTime" name="ruleRegexTime" type="text" class="form-control"
									 minlength="0">
							</div>
							<span class="help-block m-b-none">当前常用有，^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])\s+(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d$ 格式为: 2014-01-01 12:00:00</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">抓取的时间的格式</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="fomatDate" name="fomatDate" type="text" class="form-control"
									 minlength="0" maxlength="100">
							</div>
							<span class="help-block m-b-none">yy/MM/dd HH:mm:ss 如 2002/1/1 17:55:00；yyyy年MM月dd日 HH:mm:ss 如 2002年1月1日 17:55:00</span>
						</div>
					</div>
					<h4 class="">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-right"></i>抓取新闻来源</h4>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Xsoup规则</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="ruleXsoupSoure" name="ruleXsoupSoure" type="text" class="form-control"
									 minlength="0" maxlength="100">
							</div>
							<span class="help-block m-b-none">Xsoup规则请参考操作文档。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">正则表达式</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="ruleRegexSoure" name="ruleRegexSoure" type="text" class="form-control"
									 minlength="0" maxlength="100">
							</div>
							<span class="help-block m-b-none">正则表达式，请自行百度了解相关检索比较规则。</span>
						</div>
					</div>
					<h4 class="">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-right"></i>抓取新闻内容</h4>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Xsoup规则</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="ruleXsoupCont" name="ruleXsoupCont" type="text" class="form-control"
									 minlength="0" maxlength="100">
							</div>
							<span class="help-block m-b-none">Xsoup规则请参考操作文档。</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">正则表达式</label>
						<div class="col-sm-10">
							<div class="fg-line">
								<input id="ruleRegexCont" name="ruleRegexCont" type="text" class="form-control"
									 minlength="0" maxlength="100">
							</div>
							<span class="help-block m-b-none">正则表达式，请自行百度了解相关检索比较规则。</span>
						</div>
					</div>
					<c:if test="${ffspiderSource.type!=1 && ffspiderSource.type!=2}">
							<c:if test="${ffspiderSource.isTempt!=1}">
							<div class="form-group">
								<label class="col-sm-2 control-label">是否添加为模板</label>
								<div class="col-sm-10">
									<div class="col-sm-4">
									  <label>
									    <input type="radio" name="isTempt" id="isTempt" value="0" checked>
									    否
									  </label>
									</div>
									<div class="col-sm-4">
									  <label>
									    <input type="radio" name="isTempt" id="isTempt" value="1">
									    是
									  </label>
									</div>
									<span class="help-block m-b-none col-sm-12">模板为可重复使用的规则，同时一旦添加为模板即不可修改提交！</span>
								</div>
							</div>
							</c:if>
							</c:if>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<button class="btn btn-primary" type="submit" onclick="testTrm();">测试</button>
							<c:if test="${ffspiderSource.isTempt!=1}">
								<button class="btn btn-primary" type="submit" onclick="submintSpider();">提交</button>
							</c:if>
							<button onclick="backPag();" class="btn bgm-gray m-l-20" type="button">返回</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<div id="functionDiv" style="display: none;">
	<div class="form-horizontal">
		<div class="form-group">
			<label class="col-sm-12">&nbsp;&nbsp;&nbsp;&nbsp;标题名称:</label>
			<label class="col-sm-1"></label>
			<div class="col-sm-10" id="title">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-12">&nbsp;&nbsp;&nbsp;&nbsp;发布时间:</label>
			<label class="col-sm-1"></label>
			<div class="col-sm-10" id="time">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-12">&nbsp;&nbsp;&nbsp;&nbsp;发布来源:</label>
			<label class="col-sm-1"></label>
			<div class="col-sm-10" id="coure">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-12">&nbsp;&nbsp;&nbsp;&nbsp;发布内容:</label>
			<label class="col-sm-1"></label>
			<div class="col-sm-10" id="cont">
			</div>
		</div>
	</div>
	</div>
	
	<script type="text/javascript">
		$().ready(
				function() {
					$("#spiderSource").validate({
						submitHandler : function(form) {
							//$.shade.show();
							//$("#category").enable();
							//form.submit();
						}
					});

					$("#cancelBtn").click(
							function() {
								window.location='<%=ref%>';
							});

				});
		
	
	function testTrm(){
		if (!$("#spiderSource").valid()) {
	        return;
	     }
		//loading层
		var index = layer.load(1, {
		  shade: [1,'#fff'] //0.1透明度的白色背景
		});
		$.ajax({
  	        type:"post",
  	        url:_ctxPath+"/pc/newsSpiderPc/testSpider.action",
  	      	data:$('#spiderSource').serialize(),
  	        dataType:"json",
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
  	        success:function(data){
  	        	$("#title").html("");
  	        	$("#time").html("");
  	        	$("#coure").html("");
  	        	$("#cont").html("");
  	        	var soure=data.data;
  	        	$("#title").html(soure.title);
  	        	$("#time").html(soure.speTime);
  	        	$("#coure").html(soure.libSource);
  	        	$("#cont").html(soure.content);
  	        	layer.close(index);
  	        	testOpen();
  	        }
		});
	}
		function testOpen(){
			layer.open({
				type : 1,
				title : "抓取到的连接名称及地址",
				offset: 't',
				area : [ '400px','500px'],
				shadeClose : true,
				closeBtn : 1,
				content : $("#functionDiv"),
				btn: ['确定'],
				yes: function(index, layero){
				    //按钮【按钮一】的回调
				    layer.close(index);
				  }
			});
		}
		
		function submintSpider(){
			if (!$("#spiderSource").valid()) {
		        return;
		     }
			//loading层
			var index = layer.load(1, {
			  shade: [0.7,'#fff'] //0.1透明度的白色背景
			});
			$.ajax({
	  	        type:"post",
	  	        url:_ctxPath+"/pc/spiderSourcePc/upsert.action",
	  	      	data:$('#spiderSource').serialize(),
	  	        dataType:"json",
	  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
	  	        success:function(data){
	  	        	layer.close(index);
	  	        	if(data){
	  	        		if(data.success){
		  	        		var spSoure = data.data;
		  	        		$("#_id").val(spSoure._id);//设置id值
		  	        		toastr.success("操作成功");
		  	        	}else{
		  	        		layer.alert(data);
		  	        		td.append("<tr> <td> "+data.message+" </td> </tr>");
		  	        		toastr.error("操作失败");toastr.error("操作失败");
		  	        	}
	  	        	}else{
	  	        		toastr.error("操作失败");toastr.error("操作失败");
	  	        	}
	  	        }
			});
		}
		
		/***
		 *时间戳格式化为如 2017-10-16 07:07:00 时间
		 */
		function formatDate(now) {
			now = new Date(now);
			var year = now.getFullYear(),
			month = now.getMonth() + 1,
			date = now.getDate(),
			hour = now.getHours(),
			minute = now.getMinutes(),
			second = now.getSeconds();
			month = month>8?month:"0"+month;
			date = date>9?date:"0"+date;
			hour = hour>9?hour:"0"+hour;
			minute = minute>9?minute:"0"+minute;
			second = second>9?second:"0"+second;
		 	return year + "-" + month + "-" + date + " " + hour + ":" + minute + ":" + second;
		}
		/****
		 *返回上一页功能
		 */
		function backPag(){
			var parId=$("#spiderParentId").val();
			parId=$.trim(parId);
			var type=$("#type").val();
			if(parId==""||type==1||type==2){
				document.location.href = _ctxPath + "/pc/spiderSourcePc/toQuery.action";
			}else{
				document.location.href = _ctxPath + "/pc/spiderSourcePc/toUpserts.action?spiderPId="+parId;
			}
		}
		/*****
		 *返回来源列表
		 */
		function toQuery(){
			document.location.href = _ctxPath + "/pc/spiderSourcePc/toQuery.action";
		}
	</script>
</body>
</html>
