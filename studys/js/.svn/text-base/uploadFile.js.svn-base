//$(function() {
	var fileId = "",
		name = "",
		size = 0,
		fileUrl = "";
	function fileChange(_this, ftype, isPrivate,fsize,hideCon) {
		name = _this.files[0].name;
		var f = _this.files[0];
		if (hideCon) {
			
		} else {
			$(".filesize").text(_this.files[0].size);
			$(".filename").text(name);
		}
		//			ftype = ftype.split(",");
		/* 校验文件格式
		 * pdf   文档
		 * audio 音频
		 * video 视频
		 * image 图片*/
		if(_this.files[0].type.indexOf(ftype) == -1) {
			layer.open({
			  	title: '提示',
			  	content: '文件格式不符合要求！'
			});
		} else if (_this.files[0].size > fsize) {
			layer.open({
			  	title: '提示',
			  	content: '文件过大！'
			});
		} else {
			$.ajax({
				type:"get",
				url:_ctxPath+'file/upToken.action',
				data:{
					isPrivate: isPrivate,
					fileName: name
				},
				xhrFields: {				
		            withCredentials: true	
		        },							
		        crossDomain: true,
				success:function(data) {
					var observable = qiniu.upload(f, data.key, data.token);
					observable.subscribe({
						complete: function(res) {
							var d = [];
							if(data.url)
								d.push(data.key + '~' + data.url);
							else
								d.push(data.key);
							d = {
								data: d,
								success: true
							};
							fileId = res.key;
	//						console.log("文件id：" + res.key);
							toastr.success("上传成功！");
							if (isPrivate === false) {
								fileUrl = "http://qiniu.thdangjian.com/"+fileId;
								if ($(".fileImg")) {
					        		$(".fileImg").html("<img style='width:100%;height:100%;' src='http://qiniu.thdangjian.com/" + fileId + "' />");
					        	}
							} else{
								$.ajax({
									type:"get",
									url:_ctxPath+'file/fileUrl.action',
									data:{
										"fileId": fileId
									},
									xhrFields: {				
							            withCredentials: true	
							        },							
							        crossDomain: true,
							        success:function(datau){
							        	fileUrl = datau;
							        	if ($(".fileImg")) {
							        		$(".fileImg").html("<img style='width:100%;height:100%;' src='" + fileUrl + "' />");
							        	}
	//						        	console.log(data);
							        }
								});
							}
						},
						next: function(res) {
							if (hideCon) {
								
							} else {
								$(".progressSon").css("width", res.total.percent + "%");
								$(".progressSon").text(parseInt(res.total.percent) + "%");
							}
							size = res.total.size;
	//						console.log("文件大小（七牛）：" + res.total.size);
						},
						error: function(err) {
							toastr.success("上传失败:" + err.message);
						}
					})
				}
			});
		}
	}
//});