<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<html>
<head>
<title></title>
	<style type="text/css">
			* {
				margin: 0;
				padding: 0;
				box-sizing: border-box;
			}
			
			.boxWrapper {
				width: 100%;
				margin-bottom: 8rem;
			}
			
			.inner {
				width: 80%;
				margin: auto;
				margin-top: 20px;
			}
			
			.inner>div {
				width: 24.4%;
				display: inline-block;
				position: relative;
			}
			
			.itemdiv {
				padding-right: 3px;
				position: relative;
			}
			
			.itemdiv.dialogdiv:before {
				background-color: #c5c5c5!important;
				border: 1px solid #c5c5c5!important;
				left: 16px!important;
				width: 1px!important;
			}
			
			.itemdiv.dialogdiv:before {
				position: absolute;
				display: block;
				content: "";
				left: 0!important;
				right: 0!important;
				width: 100%!important;
				background-color: #c5c5c5;
				border: 1px solid #c5c5c5;
				border-width: 0 1px;
			}
			.user div{
				width: 20px;
				height: 20px;
				background: #ffffff;
				color: #c5c5c5;
				text-align: center;
				border: 1px solid #c5c5c5;
				border-radius: 100%;
				line-height: 18px;
			}
			.itemdiv>.user{
				display: inline-block;
				position: absolute;
				right: -15px;
				top: -10px;
				z-index: 1000;
				
			}
			
			.body div {
				position: absolute;
				right: -36px;
				top: 18px;
				color: #c5c5c5;
			}
			/*处理中样式   js单独控制*/
			
			/*圈文字*/
			.onHanding div{
				background: #2196F3!important;
				color: #ffffff!important;
				border: 1px solid #2196F3!important;
			}
			/*线的颜色*/
			.hangding.dialogdiv:before {
				background-color: #2196F3!important;
				border: 1px solid #2196F3!important;
			}
			/*文字*/
			.onWord div span{
				color: #2196F3!important;
			}
			
			/*处理中样式结束*/
		</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="my-titlebar">
				<a href="${ctxPath}/basic/user/toPartyQuery.action" class="btn-link"> 
					<i class="fa fa-angle-double-left"></i>返回
				</a>
				党员基本信息导入
			</div>
			<div class="boxWrapper">
			<div class="inner">
				<div class="hangding itemdiv dialogdiv">
					<div class="user  onHanding">
						<div>1</div>
					</div>
					<div class="body onWord">
						<div>
							<span>上传文件</span>
						</div>
					</div>
				</div>
				<div class="itemdiv dialogdiv">
					<div class="user">
						<div>2</div>
					</div>
					<div class="body">
						<div>
							<span>数据校验</span>
						</div>
					</div>
				</div>
				<div class="itemdiv dialogdiv">
					<div class="user">
						<div>3</div>
					</div>
					<div class="body">
						<div>
							<span>导入数据</span>
						</div>
					</div>
				</div>
				<div class="itemdiv dialogdiv">
				</div>
			</div>
		</div>
		
			<div class="card-body card-padding">
				<form id="user" method="post" enctype="multipart/form-data" 
					action="${ctxPath}/basic/user/upExcelParty.action" class="form-horizontal" >
					<input type="hidden" id="_id" name="_id"> <input
						type="hidden" id="createTime" name="createTime">
						<input type="hidden" id="uptype" name="uptype" value="${uptype}">
						<div style="display: ;">
							<div class="form-group">
								<div class="col-sm-3"></div>
								<div class="col-sm-3">
									请下载标准模板进行信息导入
									内容填写请参考模板内说明进行
								</div>
							</div>
						</div>
						<div id="upMont" style="display: ;">
								<table class="table">
									<tr>
										<td class="col-sm-3">文件名：</td>
										<td class="col-sm-8">
											<div class="col-sm-12" id="filelist">您的浏览器没有Flash、Silverlight或HTML5支持。 </div>
										</td>
									</tr>
									<tr>
										<td class="col-sm-3">操作：</td>
										<td class="col-sm-9">
										<div id="container">
										    <a id="uploadfiles" class="btn btn-outline btn-danger m-l-20"  href="javascript:;">导入</a>
										</div>
										</td>
									</tr>
									<tr>
										<td class="col-sm-3">提示：</td>
										<td class="col-sm-9">
											<pre class="col-sm-12" id="console">提示如下：</pre>
										</td>
									</tr>
								</table>
						</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<div class="col-sm-4"></div>
						<div class="col-sm-2">
							<div class="fg-line">
								<div  style="display: ;">
									<a id="pickfiles" class="btn btn-primary" href="javascript:;">选择文件</a> 
								</div>
								<div style="display: none;">
									<button class="btn btn-primary" type="button">校验</button>
								</div>
								<div style="display: none;">
									<button class="btn btn-primary" type="button">提交</button>
								</div>
							</div>
						</div>
						<div class="col-sm-2">
							<button id="dowtemp" class="btn btn-primary m-l-20"	type="button">下载模板</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
<script src="${ctxPath}/module/resources/js/jquery.form.min.js" ></script>
<script src="${ctxPath}/moduleweb/resources/plugins/plupload/plupload.full.min.js"></script>
<script src="${ctxPath}/moduleweb/resources/plugins/plupload/i18n/zh_CN.js"></script>
<script type="text/javascript">
	$("#dowtemp").click(function(){
		document.location.href = _ctxPath
		+ "/userExcel/dowPartyExcel.action";
	});
	$("#dowSjtemp").click(function(){
		document.location.href = _ctxPath
		+ "/basic/user/party/insSJParty.action";
	});
	$("form").submit(function(e){
		layer.load(1);
	});

	var uploader = new plupload.Uploader({
		runtimes : 'html5,flash,silverlight,html4',
		browse_button : 'pickfiles', // you can pass an id...
		container: document.getElementById('container'), // ... or DOM Element itself
		url : '${ctxPath}/userExcel/upPartyExcel.action',
		flash_swf_url : '${ctxPath}/moduleweb/resources/plugins/plupload/Moxie.swf',
		silverlight_xap_url : '${ctxPath}/moduleweb/resources/plugins/plupload/Moxie.xap',
		
		filters : {
			max_file_size : '10mb',
			mime_types: [
				{title : "Zip files", extensions : "xlsx,xls"}
			]
		},

		init: {
			PostInit: function() {
				document.getElementById('filelist').innerHTML = '';

				document.getElementById('uploadfiles').onclick = function() {
					uploader.start();
					return false;
				};
			},

			FilesAdded: function(up, files) {
				if(uploader.files.length>1) { // 最多上传1个文件
                    document.getElementById('console').appendChild(document.createTextNode('\n提示:只能上传一个文件，请删除文件再选择！'));
                    return;
                }
				plupload.each(files, function(file) {
					var fileHtml='<div style="float:left" class="pic_list" id="' + file.id + '">'+file.name
                    + ' (' + plupload.formatSize(file.size) +')<a href="###" class="pic_delete" data-val=' 
                    + file.id +'>删除</a><br/></div>';
					document.getElementById('filelist').innerHTML +=fileHtml; //'<div id="' + file.id + '">' + file.name + ' (' + plupload.formatSize(file.size) + ') <b></b></div>';
				});
			},

			UploadProgress: function(up, file) {
				document.getElementById(file.id).getElementsByTagName('a')[0].innerHTML = '<span>' + file.percent + "%</span>";
			},

			Error: function(up, err) {
				document.getElementById('console').appendChild(document.createTextNode("\nError #" + err.code + ": " + err.message));
			}
		}
	});

	uploader.bind('FileUploaded', function(up, file, info) {
		info = JSON.parse(info.response)
		if(info != null && info != ""){
			if(info.success){
				layer.alert(info.message);
				document.getElementById('console').appendChild(document.createTextNode("\n上传提示: " + info.message));
				$("#categoryTable").trigger("reloadGrid");
			}else{
				document.getElementById('console').appendChild(document.createTextNode("\n上传提示: " + info.message));
				layer.alert(info.message);
			}
		}
	});

	uploader.init();
	
	 $(document).on('click', '.pic_list a.pic_delete', function () {
         $(this).parent().remove();
         var toremove = '';
         var id = $(this).attr("data-val");
         for (var i in uploader.files) {
             if (uploader.files[i].id === id) {
                 toremove = i;
             }
         }
         uploader.files.splice(toremove, 1);
     });
	
</script>
</html>
