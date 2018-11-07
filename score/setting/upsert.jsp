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
				<c:if test="${returnStatus.status == 0}">
					<div class="alert alert-danger">
						<i class="fa fa-exclamation-triangle"></i>${returnStatus.message}
					</div>
				</c:if>
				<form id="setting" method="post"
					action="${ctxPath}/pc/score/setting/upsert.action" class="form-horizontal">
					<input type="hidden" id="_id" name="_id" value="1">
					<div class="form-group">
						<!-- <label class="col-sm-2 control-label">新闻点击积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="newsClick" name="newsClick" type="number"
									class="form-control" min="0" max="100" required>
							</div>
							<span class="help-block m-b-none">新闻点击一次积多少分！</span>
						</div> -->
						<label class="col-sm-2 control-label">新闻浏览积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="newsTime" name="newsTime" type="number"
									class="form-control" min="0" max="100" required>
							</div>
							<span class="help-block m-b-none">新闻浏览一分钟积多少分！</span>
						</div>
						<label class="col-sm-2 control-label">新闻浏览积分上限:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="newsMax" name="newsMax" type="number"
									class="form-control" min="0" max="200" required>
							</div>
							<span class="help-block m-b-none">每日新闻浏览获得的最高积分！</span>
						</div>
					</div>
					<div class="form-group">
						<!-- <label class="col-sm-2 control-label">音频点击积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="audioClick" name="audioClick" type="number"
									class="form-control" min="0" max="100" required>
							</div>
							<span class="help-block m-b-none">音频点击一次积多少分！</span>
						</div> -->
						<label class="col-sm-2 control-label">音频听取积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="audioTime" name="audioTime" type="number"
									class="form-control" min="0" max="100" required>
							</div>
							<span class="help-block m-b-none">音频听取一分钟积多少分！</span>
						</div>
						<label class="col-sm-2 control-label">心得提交积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="gainedNew" name="gainedNew" type="number"
									class="form-control" min="0" max="100" required>
							</div>
							<span class="help-block m-b-none">提交一篇心得体会积多少分！</span>
						</div>
					</div>
					<div class="form-group">
						<!-- <label class="col-sm-2 control-label">视频点击积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="videoClick" name="videoClick" type="number"
									class="form-control" min="0" max="100" required>
							</div>
							<span class="help-block m-b-none">视频点击一次积多少分！</span>
						</div> -->
					 <label class="col-sm-2 control-label">视频观看积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="videoTime" name="videoTime" type="number"
									class="form-control" min="0" max="100" required>
							</div>
							<span class="help-block m-b-none">视频听取一分钟积多少分！</span>
						</div>
						
                       <label class="col-sm-2 control-label">心得删除积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="gainedDel" name="gainedDel" type="number"
									class="form-control" min="-100" max="0" required>
							</div>
							<span class="help-block m-b-none">删除一篇心得体会积多少分，负数为扣减！</span>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">互动积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="groupMessageNew" name="groupMessageNew" type="number"
									class="form-control" min="0" max="100" required>
							</div>
							<span class="help-block m-b-none">互动新增一次积多少分！</span>
						</div>
						<label class="col-sm-2 control-label">互动删除积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="groupMessageDel" name="groupMessageDel" type="number"
									class="form-control" min="-100" max="0" required>
							</div>
							<span class="help-block m-b-none">删除互动积多少分，负数为扣减！</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">评论积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="commentNew" name="commentNew" type="number"
									class="form-control" min="0" max="100" required>
							</div>
							<span class="help-block m-b-none">评论一次积多少分！</span>
						</div>
						<label class="col-sm-2 control-label">评论删除积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="commentDel" name="commentDel" type="number"
									class="form-control" min="-100" max="0" required>
							</div>
							<span class="help-block m-b-none">删除评论积多少分，负数为扣减！</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">签到积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="courseSign" name="courseSign" type="number"
									class="form-control" min="0" max="100" required>
							</div>
							<span class="help-block m-b-none">签到一次积多少分！</span>
						</div>
						
					</div>
					<!-- <div class="form-group">
						<label class="col-sm-2 control-label">获赞积分:</label>
						<div class="col-sm-4">
							<div class="fg-line">
								<input id="zaned" name="zaned" type="number"
									class="form-control" min="0" max="100" required>
							</div>
							<span class="help-block m-b-none">获取一次赞积多少分！</span>
						</div>
					</div> -->
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">
							<button class="btn btn-primary" type="submit">提交</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$().ready(function() {
			$("#setting").validate({
				submitHandler : function(form) {
					$.shade.show();
					form.submit();
				}
			});

		});
	</script>
</body>
</html>
