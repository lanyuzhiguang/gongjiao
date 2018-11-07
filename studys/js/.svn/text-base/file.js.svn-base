(function($) {
	$.fn.compThis = function(options) {
		var t = this;
		var tc = t.attr("comp"), tj, tp;
		if (tc) {
			tj = $.parseJSON('{' + tc + '}');
			if (options) {
				tj = $.extend(tj, options);
				var com = $.toJSON(tj);
				t.attr("comp", com.substring(1, com.length - 1));
			}
			tp = tj.type;
			t.attr('compType', tp);
			var hasId = true;
			var id = t.attr("id");
			if (!id) {
				id = (Math.random() + '').substring(3);
				t.attr("id", id);
				hasId = false;
			}
			switch (tp) {
			case 'htmlEditor':
				tj = $.extend({
					minHeight : "400px"
				}, tj);
				if ($(".my_ueditor_script").length == 0) {
					$("body")
							.append(
									'<script class="my_ueditor_script" src="'
											+ _ctxPath
											+ '/moduleweb/resources/plugins/ueditor/ueditor.config.js"></script><script class="my_ueditor_script" src="'
											+ _ctxPath
											+ '/moduleweb/resources/plugins/ueditor/ueditor.all.min.js"></script><script class="my_ueditor_script" src="'
											+ _ctxPath
											+ '/moduleweb/resources/plugins/ueditor/ueditor.parse.min.js"></script>');
				}
				t.attr("id", "ueditor_" + id);
				t.attr("name", "ueditor_" + id);
				t.css("min-height", tj.minHeight);
				t.after('<input type="hidden" id="' + id + '" name="' + id
						+ '" class="my_ueditor">');
				var ue = UE.getEditor("ueditor_" + id, {});
				$("#" + id).attrObj("ueditor", ue);
				break;
			case 'fileupload':
				tj = $.extend({
					attachesDiv : "attachesDiv",
					attachesField : "attaches",
					imagesDiv : "imagesDiv",
					imagesField : "imgs",
					imgWidth : "150px",
					imgHeight : "200px"
				}, tj);
				if (hasId) {
					tj.attachesField = id;
					tj.imagesField = id;
				}
				if ($("#_fileupload_div").length == 0) {
					$("body")
							.append(
									'<div id="_fileupload_div" class="hidden"><form action="" id="_fileupload_fileForm"><input type="file" rel="msgImage" autocomplete="off" name="_fileupload_onlyFile" id="_fileupload_onlyFile" onchange="_fileupload_changeFile(this)"/></form></div>');
				}
				if (tj.valueId) {
					if ($("#" + tj.valueId).length == 0) {
						var th = $('<input type="hidden" name="' + tj.valueId
								+ '" id="' + tj.valueId + '"/>');
						if (tj.previewImgId) {
							th
									.attr("_fileupload_previewImgId",
											tj.previewImgId);
						}
						t.after(th);
						th.attrObj("_fileupload_fs", []);
						th.attrObj("_comp", t);
					}
				}
				if (tj.showAttach || tj.showImage) {
					t.attrObj("_fileupload_fs", []);
				}
				t.click(function() {
					$("#_fileupload_onlyFile").attr("cid", t.attr("id"));
					$('#_fileupload_onlyFile').click();
				});
				break;
			case 'map':
				tj = $.extend({
					width : '90%',
					height : '90%',
					addressField : 'address',
					latitudeField : 'gpsPoint.latitude',
					longitudeField : 'gpsPoint.longitude',
					autoAddress : true
				}, tj);
				var lat = tj.latitudeField, lon = tj.longitudeField;
				var idxLat = lat.indexOf('.'), idxLon = lon.indexOf('.');
				var clzLat = lat, clzLon = lon;
				if (idxLat != -1)
					clzLat = lat.substring(0, idxLat);
				if (idxLon != -1)
					clzLon = lat.substring(0, idxLon);
				if ($("#" + lat).length == 0) {
					t.after('<input type="hidden" name="' + lat + '" id="'
							+ lat + '" class="' + clzLat + '"/>');
				}
				if ($("#" + lon).length == 0) {
					t.after('<input type="hidden" name="' + lon + '" id="'
							+ lon + '"  class="' + clzLon + '"/>');
				}
				t.click(function() {
					var url = _ctxPath + "/common/toMap.do?TB_iframe=true&lat="
							+ $("#" + lat.replace('.', '\\.')).val() + "&lng="
							+ $("#" + lon.replace('.', '\\.')).val();
					var layerId = layer.open({
						type : 2,
						title : '选择坐标',
						shadeClose : false, // 点击遮罩关闭层
						area : [ tj.width, tj.height ],
						content : url
					});
					t.attr("_comp_map_layerId", layerId);
					_comp_t = t;
				});
				break;
			}
			t.attrObj("_compCfg", tj);
		}
	};
	$.fn.comp = function(options) {
		$(".comp", this).add(this).each(function(i) {
			$(this).compThis(options);
		});
	};
	$.fn.fileuploadDisplay = function(options) {
		var comp = this;
		if (this.attrObj("_comp")) {
			comp = this.attrObj("_comp");
			comp.attrObj("_fileupload_fs", this.attrObj("_fileupload_fs"));
		}
		var cfg = comp.attrObj("_compCfg"), cid = comp.attr("id");
		var fs = comp.attrObj("_fileupload_fs");
		if (!fs)
			fs = [];
		if (cfg.showAttach) { // 附件显示
			if (cfg.showAttachCallback) {
				cfg.showAttachCallback(fs, cfg, comp);
			} else {
				$(".attach_" + cid).remove();
				for (var i = 0; i < fs.length; i++) {
					var s = fs[i].split('|');
					var url = s[2];
					var fileName = s[1];
					var a = $("<div class=\"attach_" + cid
							+ " m-r-10\"><a target=\"_blank\" href=\"" + url
							+ "\" class=\"m-r-5\">" + fileName + "</a></div>");
					var dh = $("<i class=\"fa fa-times\" style=\"cursor:pointer;\"></i>");
					dh.attr("attach_i", i);
					dh.attr("attach_cid", cid);
					dh.click(function() {
						var $t = $(this), ii = $t.attr("attach_i"), cidd = $t
								.attr("attach_cid"), compp = $("#" + cidd);
						var fss = compp.attrObj("_fileupload_fs");
						if (ii && fss && fss.length > ii) {
							fs.splice(ii, 1);
							compp.fileuploadDisplay();
						}
						if (cfg.valueId)
							$("#" + cfg.valueId).val('');
					});
					a.append(dh);
					$("#" + cfg.attachesDiv).append(a);
					if (!cfg.valueId) {
						comp.after($("<input type=\"hidden\" id=\""
								+ cfg.attachesField + "[" + i + "]\" name=\""
								+ cfg.attachesField + "[" + i + "]\" value=\""
								+ s[0] + "\" class=\"attach_" + cid + "\">"));
					}
				}
			}
		}
		if(cfg.previewImgId && this.attrObj("_comp")) {
			var v = $(this).val();
			if (v && v !== '') {
				$("#" + cfg.previewImgId).attr("src", _qiniuImageHost + v);
			}
		}
		if (cfg.showImage) { // 图片显示
			if (cfg.showImageCallback) {
				cfg.showImageCallback(fs, cfg, comp);
			} else {
				$(".attach_" + cid).remove();
				for (var i = 0; i < fs.length; i++) {
					var s = fs[i].split('|');
					var url = _qiniuImageHost + "/" + s[0];
					var fileName = s[1];
					var dv = '<div style="width: ' + cfg.imgWidth + ';height:'
							+ cfg.imgHeight
							+ ';float:left" class="m-r-10 attach_' + cid
							+ '"><img ';
					if (fileName)
						dv += 'alt="' + fileName + '" ';
					dv += ' src="' + url
							+ '" style="width: 100%; height: 100%;" /></div>';
					var a = $(dv);
					$("#" + cfg.imagesDiv).append(a);
					a.attr("attach_i", i);
					a.attr("attach_cid", cid);
					a.dblclick(function() { // 双击删除图片
						var $t = $(this), ii = $t.attr("attach_i"), cidd = $t
								.attr("attach_cid"), compp = $("#" + cidd);
						var fss = compp.attrObj("_fileupload_fs");
						if (ii && fss && fss.length > ii) {
							fs.splice(ii, 1);
							compp.fileuploadDisplay();
						}
					});
					comp.after($("<input type=\"hidden\" id=\""
							+ cfg.imagesField + "[" + i + "]\" name=\""
							+ cfg.imagesField + "[" + i + "]\" value=\"" + s[0]
							+ "\" class=\"attach_" + cid + "\">"));
				}
			}
		}

	}
})(jQuery);

//// 文件上传动作
function _fileupload_changeFile(_this) {
	$.shade.show();
	var cid = $(_this).attr("cid");
	var comp = $("#" + cid);
	if (comp.length != 0) {
		var cfg = comp.attrObj("_compCfg");
		if (cfg.qiniuUpload) { // 七牛上传
			var f = _this.files[0];
			$.post(_ctxPath + '/back/super/file/upToken.action', {
				isPrivate : cfg.isPrivate,
				fileName : f.name
			}, function(data) {
				var observable = qiniu.upload(f, data.key, data.token);
				observable.subscribe({
					complete : function(res) {
						var d = [];
						if (data.url)
							d.push(data.key + '~' + data.url);
						else
							d.push(data.key);
						d = {
							data : d,
							success : true
						};
//						_fileUploadSuccess(cfg, d, _this, comp);
					},
					error : function(err) {
						if (cfg.error) {
							cfg.error(err);
						} else {
							$.shade.hide();
							toastr.success("上传失败:" + err.message);
						}
					}
				})
			});
			return;
		}
		$("#_fileupload_fileForm").ajaxSubmit({
			type : 'post',
			headers : {
				// 'type' : $(_this).attr("rel"),
				'isPrivate' : cfg.isPrivate,
				'watermark' : cfg.watermark,
				'X-Auth-Token' : eh.utils.cookie.get('X-Auth-Token')
			},
			url : URL.fileupload,
			success : function(data) {
				_fileUploadSuccess(cfg, data, _this, comp);
			},
			error : function(XmlHttpRequest, textStatus, errorThrown) {
				if (cfg.error) {
					cfg.error(XmlHttpRequest, textStatus, errorThrown);
				} else {
					$.shade.hide();
					toastr.success("上传失败");
				}
			}
		});
	}
}
function _fileUploadSuccess(cfg, data, _this, comp) {
	if (cfg.success) {
		cfg.success(data);
	} else {
		$.shade.hide();
		var fileId = data.data[0], url;
		var rf = fileId.split('~');
		if (rf.length > 1) {
			fileId = rf[0];
			url = rf[1];
		} else {
			url = _qiniuImageHost + "/" + fileId;
		}
		if (cfg.previewImgId) {
			var imgpath = url;
			$("#" + cfg.previewImgId).attr("src", imgpath);
		}
		var fileName = getFileName(_this);
		if (cfg.valueId) {
			var fid = fileId;
			if (cfg.showAttach)
				fid = fileId + "|" + fileName + "|" + url;
			$("#" + cfg.valueId).val(fid);
		}
		if (cfg.showAttach || cfg.showImage) {
			var f = fileId + "|" + fileName + "|" + url;
			var fs = comp.attrObj("_fileupload_fs");
			if (!fs || cfg.valueId)
				fs = [];
			fs.push(f);
			comp.attrObj("_fileupload_fs", fs);
			comp.fileuploadDisplay();
		}

		$("#_fileupload_onlyFile").val("");
		toastr.success("上传成功");
	}
}
function getFileName(obj) {
	var val = obj.value;
	var idx = val.lastIndexOf("/");
	if (idx == -1)
		idx = val.lastIndexOf("\\");
	return val.substring(idx + 1);
}