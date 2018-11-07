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
</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
				<div class="my-titlebar">
					<%String ref = request.getHeader("REFERER");%>
					<a href="#" class="btn-link" onclick="javascript:window.location='<%=ref%>'"> <i
							class="fa fa-angle-double-left"></i>返回
					</a>
					上传会议记录
				</div>
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				
				<div class="col-sm-12">
					<div class="col-sm-12">
						<form id="notice" method="post"
							  action="../noticeDetail/toUpMinsous.action" class="form-horizontal">
							<input  type="hidden" id="_id" name="_id" value="${noticeId }" >
							<div class="form-group">
								<label class="col-sm-2 control-label">会议记录</label>
								<div class="col-sm-10">
									<textarea id="minCont" name="minCont" style="width: 100%" class="form-control" rows="6"></textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">图片最多上传9张哦</label>
								<div class="col-sm-10">
									<div id="imagesDiv" class="col-sm-12">
									</div>
									<div class="col-sm-12 m-t-10" style="width: 120px;">
										<button id="minImges" type="button"
												class="btn bgm-teal btn-block comp"
												comp="type:'fileupload',imagesDiv:'imagesDiv',showImage:true,imgWidth:'80px',imgHeight:'60px',isPrivate:true">选择上传图片</button>
									</div>
								</div>
							</div>
							<div class="form-group organr">
								<label class="col-sm-2 control-label">文档文件</label>
								<div class="col-sm-10">
									<div id="attachesDiv" class="f-left"></div>
									<div class="f-left" style="width: 120px; padding-top: 10px">
										<input type="hidden" id="fileid" name="fileid">
										<button type="button" class="btn bgm-teal btn-block comp"
											comp="type:'fileupload',attachesDiv:'attachesDiv',showAttach:true,showAttachCallback:doCallback,isPrivate:true">选择上传文档</button>
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
				</div>

			</div>
		</div>
	</div>

	<script type="text/javascript">
	
	
		$().ready(function() {
			
			$("#cancelBtn").click(function() {
				window.location='<%=ref%>';
				//document.location.href = "../noticeDetail/toList.action";
			});
			//时间插件方法
			var start = {  
		            elem: '#attendtime', //选择ID为START的input  
		            format: 'YYYY-MM-DD hh:mm:ss', //自动生成的时间格式  
		            min: laydate.now(), //最大日期  
		            istime: true, //必须填入时间  
		            istoday: false,  //是否是当天  
		            start: laydate.now(0,"YYYY-MM-DD hh:mm:ss")  //设置开始时间为当前时间  
		        };
			laydate(start);  
			
			//全局变量用以判断是选择单位还是选择发布范围
			var ty=0; //1、选择部门 2、选择发布范围
			//弹窗方法
			$("#forBumenId").click(function() {
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
					content : $("#functionSelectDiv")
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
					content : $("#functionSelectDiv")
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
