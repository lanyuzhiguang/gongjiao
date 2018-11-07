(function($) {
	$.fn.formSubmit = function(options) {
		var t = this, sh = options.submitHandler;
		$.extend(options, {
			submitHandler : function(form) {
				$(".my_ueditor").each(function() {
					var $t = $(this);
					var ue = $t.attrObj("ueditor");
					if (ue) {
						var c = ue.getContent();
						$t.val(c);
					}
				});
				if (sh)
					sh(form);
			}
		});
		t.validate(options);
	}
})(jQuery);
$()
		.ready(
				function() {
					$(".comp").each(function() {
						$(this).compThis();
					});
					$.codeoption();
					$.autofillform({
						fillmaps : $.ctx.fillmaps
					});
					$.codetext();
					$(window).load(function() { // trigger change on all select
						// while all dom and js loaded
						$("select").trigger('change');
					});
					Waves.attach(".btn:not(.btn-icon):not(.btn-float)");
					Waves.attach(".btn-icon, .btn-float", [ "waves-circle",
							"waves-float" ]);
					Waves.init();
					$(".switcher").each(function() {
						new Switchery(this, {
							color : "#1AB394"
						});
					});
					$(".switcher-red").each(function() {
						new Switchery(this, {
							color : "#ED5565"
						});
					});

					if ($(".fg-line")[0]) {
						$("body").on(
								"focus",
								".fg-line .form-control",
								function() {
									$(this).closest(".fg-line").addClass(
											"fg-toggled")
								});
						$("body").on(
								"blur",
								".form-control",
								function() {
									var p = $(this).closest(
											".form-group, .input-group"), i = p
											.find(".form-control").val();
									p.hasClass("fg-float") ? 0 == i.length
											&& $(this).closest(".fg-line")
													.removeClass("fg-toggled")
											: $(this).closest(".fg-line")
													.removeClass("fg-toggled")
								})
					}
					if ($(".fg-float")[0])
						$(".fg-float .form-control").each(
								function() {
									var i = $(this).val();
									if (0 == !i.length)
										$(this).closest(".fg-line").addClass(
												"fg-toggled");
								});
					if ($(".auto-size")[0])
						autosize($(".auto-size"));

					// $('#file-pretty input[type="file"]').prettyFile();

					$(".layer-date").each(function() {
						var $t = $(this);
						var layercfg = {
							event : "focus",
							format : 'YYYY-MM-DD',
							min : laydate.now(),
							max : "2099-06-16 23:59:59",
							istime : false,
							istoday : true
						};
						var layerdate = $t.attr("laydate");
						if (layerdate) {
							var cfg = $.parseJSON(layerdate);
							layercfg = $.extend(layercfg, cfg);
						}
						layercfg.elem = "#" + $t.attr("id");
						laydate(layercfg);
					});

					$(".suggest")
							.each(
									function() {
										var $t = $(this);
										var suggestcfg = {
											showBtn : false,
											// autoSelect : true,
											idField : "_id",
											keyField : "name"
										};
										var sg = $t.attr("suggest");
										if (sg) {
											var cfg = $.parseJSON(sg);
											suggestcfg = $.extend(suggestcfg,
													cfg);
										}
										suggestcfg.data = {
											value : suggestcfg.data
										};
										if (!suggestcfg.effectiveFields) {
											suggestcfg.effectiveFields = [ suggestcfg.keyField ];
										}
										if (!suggestcfg.searchFields) {
											suggestcfg.searchFields = [];
										}
										suggestcfg.searchFields.push("zjfCode");

										var $h = $('<input type="hidden"/>'), nm = $t
												.attr("id");
										var $gp = $('<div class="input-group"><div class="input-group-btn"><button type="button" class="btn btn-white dropdown-toggle"data-toggle="dropdown"><span class="caret"></span></button><ul class="dropdown-menu dropdown-menu-right" role="menu"></ul></div></div>');
										$t.after($gp);
										$h.attr("id", nm);
										$h.attr("name", nm);
										$t.attr("id", "sg_" + nm);
										$t.attr("rawId", nm);
										$t.attr("name", "sg_" + nm);
										$gp.prepend($t);
										$gp.prepend($h);

										$t.keyup(function() {
											var $tt = $(this);
											if ($tt.val() == "") {
												$("#" + $tt.attr('rawId')).val(
														"");
											}
										});

										$h.data("suggest_raw", $t);
										$h.data("suggest_name",
												suggestcfg.keyField);
										$h.data("suggest_data",
												suggestcfg.data.value);
										$t
												.bsSuggest(suggestcfg)
												.on(
														"onSetSelectValue",
														function(e, ko) {
															for (var i = 0; i < suggestcfg.data.value.length; i++) {
																if (suggestcfg.data.value[i][suggestcfg.idField] == ko.id) {
																	$h
																			.attr(
																					"selectedIndex",
																					i);
																	break;
																}
															}
															$h.val(ko.id);
															$h
																	.trigger('change');
														})
												.on(
														"onUnsetSelectValue",
														function(e) {
															$h.val("");
															$h
																	.attr(
																			"selectedIndex",
																			"");
															$h
																	.trigger('change');
														});
										if (suggestcfg.style2) {
											$("ul", $gp).css("min-width", "");
											$("ul", $gp).css("left", "");
											$("ul", $gp).css("right", "");
											$("ul", $gp).css("margin-top",
													"15px");
										} else if (suggestcfg.style3) {
											$(".input-group-btn", $gp).css(
													"position", "absolute");
											$(".input-group-btn", $gp).css(
													"margin-left", "150px");
											$(".input-group-btn", $gp).css(
													"margin-top", "20px");
											$("ul", $gp).css("min-width", "");
											$("ul", $gp).css("left", "");
											$("ul", $gp).css("right", "");
											$("ul", $gp).css("margin-top",
													"15px");
										} else {
											$("ul", $gp).css("min-width", "");
											$("ul", $gp).css("margin-top",
													"36px");
											$(".input-group-btn", $gp).css(
													"display", 'inline');
										}

									});

					$.jgrid.defaults.styleUI = "Bootstrap";
				});

(function($) {
	// 手机号码验证
	jQuery.validator
			.addMethod(
					"mobile",
					function(value, element) {
						var length = value.length;
						return this.optional(element)
								|| (length == 11 && /^(((13[0-9]{1})|(14[0-9]{1})|(15[0-9]{1})|(16[0-9]{1})|(17[0-9]{1})|(18[0-9]{1})|(19[0-9]{1}))+\d{8})$/
										.test(value));
					}, "请填写正确的手机号码");
	// 身份证号码验证
	jQuery.validator.addMethod("isIdCardNo", function(value, element) {
		return this.optional(element) || idCardNoUtil.checkIdCardNo(value);
	}, "请输入正确的身份证号码");
	$.fn.disable = function() {
		this.each(function(i) {
			$(this).find(':input button').add(this).each(function() {
				var id = this.id, t = $(this);
				/*
				 * if (keyObj[id]) $.hotkeys.remove(keyObj[id]);
				 */
				switch (this.tagName.toLowerCase()) {
				case 'button':
				case 'textarea':
				case 'select':
				case 'input':
					this.disabled = true;
					if (t.data("suggest_raw")) {
						t.data("suggest_raw").disable();
					}
					break;
				}
			});
		});
	};
	$.fn.enable = function() {
		this.each(function(i) {
			$(this).find(':input,a.common_button').add(this).each(function() {
				var id = this.id, t = $(this);
				switch (this.tagName.toLowerCase()) {
				case 'textarea':
				case 'select':
				case 'input':
					if (t.data("suggest_raw")) {
						t.data("suggest_raw").enable();
					}
					this.disabled = null;
					break;
				}
			});
		});
	};
	var attrObjs = [];
	$.fn.attrObj = function(name, value) {
		var obj;
		for (var i = 0; i < attrObjs.length; i++) {
			if (attrObjs[i].o == this[0]) {
				obj = attrObjs[i];
				break;
			}
		}
		if (!obj) {
			obj = new Object();
			obj.o = this[0];
			obj.v = new Object();
			attrObjs.push(obj);
		}
		if (value) {
			obj.v[name] = value;
		} else {
			return obj.v[name];
		}
	};
	$.fn.removeAttrObj = function(name) {
		for (var i = 0; i < attrObjs.length; i++) {
			if (attrObjs[i].o == this[0]) {
				var obj = attrObjs[i];
				obj.v[name] = null;
				break;
			}
		}
	};
	$.fn.grid = function(options) {
		var $t = this, pid = $t.attr("id") + "_pager";
		var settings = {
			datatype : "json",
			height : 350,
			mtype : "POST",
			autowidth : true,
			autoCode : true,
			rowNum : 10,
			rowList : [ 10, 20, 30 ],
			jsonReader : {
				root : "data",
				page : "page",
				total : "pages",
				records : "total"
			},
			gridview : false,
			afterInsertRow : function(rowid, rowdata, rawdata) {
				$("#" + rowid, $(this)).data("rawData", rawdata);
			},
			viewrecords : true
		};

		var genPager = options.noPager ? false : true;
		if (genPager) {
			var $p = $("<div></div>");
			$p.attr("id", pid);
			$t.after($p);
			settings.pager = "#" + pid;
		}

		options = $.extend(settings, options);
		if (options.autoCode) {
			options.gridComplete = function(id) {
				$t.codetext();
				$t.codeoption();
			};
		}

		if (!options.colMenu)
			options.colMenu = options.menu;

		var cm = options.colModel, cns = options.colNames;
		if (!cns)
			options.colNames = [];
		for (var i = 0; i < cm.length; i++) {
			var cmi = cm[i];
			if (cmi.codecfg) {
				cmi.classes = "codecfg";
				cmi.cellattr = function(ts, rowId, tv, rawObject, cm, rdata) {
					return "codecfg=\"" + rawObject.codecfg.replace(/"/g, "'")
							+ "\"";
				}
			}
			if (!cmi.coloptions) {
				cmi.coloptions = {
					sorting : true,
					columns : true,
					filtering : false,
					seraching : false,
					grouping : false,
					freeze : false
				};
			}
			if (!cns) {
				options.colNames.push(cmi.name);
				cmi.name = cmi.index;
			}
		}

		if (options.tableCfg && options.tableCfg.length > 0) {
			var tcfgs = options.tableCfg;
			// 隐藏：hidden : true,
			// 宽度：width
			// 顺序
			var cn = options.colNames;
			var ncm = [], ncn = [];
			for (var i = 0; i < tcfgs.length; i++) {
				var tcfg = tcfgs[i];
				for (var j = 0; j < cm.length; j++) {
					var m = cm[j];
					if (m.index == tcfg.id) {
						if (tcfg.display == 'none')
							m.hidden = true;
						else
							m.hidden = false;
						if (m.width < tcfg.width)
							m.width = tcfg.width;
						ncm.push(m);
						ncn.push(cn[j]);
					}
				}
			}
			// 新加的列显示到最后
			for (var j = 0; j < cm.length; j++) {
				var m = cm[j], flag = false;
				for (var i = 0; i < ncm.length; i++) {
					var nc = ncm[i];
					if (nc.index == m.index) {
						flag = true; // 已存在
						break;
					}
				}
				if (!flag) { // 不存在
					ncm.push(m);
					ncn.push(cn[j]);
				}
			}
			options.colModel = ncm;
			cm = options.colModel;
			options.colNames = ncn;
		}

		$t.attr("isGrid", true);
		$t.jqGrid(options);

		if (options.searchbar) {
			$t.jqGrid('filterToolbar');
		}

		$(window).bind("resize", function() {
			var width = $(".jqGrid_wrapper").width();
			$t.setGridWidth(width);
		})
	};
	$.fn.reloadGrid = function(options) {
		var settings = {
			page : 1
		};
		options = $.extend(settings, options);
		if (!options.postData) {
			options.postData = options.data;
		}
		this.jqGrid("setGridParam", options).trigger("reloadGrid");
	};
})(jQuery);

Array.prototype.remove = function(obj) {
	for (var i = 0; i < this.length; i++) {
		var temp = this[i];
		if (i == obj || temp == obj) {
			for (var j = i; j < this.length; j++) {
				this[j] = this[j + 1];
			}
			this.length = this.length - 1;
		}
	}
}
Array.prototype.contains = function(obj) {
	var i = this.length;
	while (i--) {
		if (this[i] === obj) {
			return true;
		}
	}
	return false;
}
String.prototype.parseDate = function() {
	var str = this.replace(/-/g, "/");
	if (!str || str === "")
		return undefined;
	else
		return new Date(str);
}
Date.prototype.format = function(fmt) {
	var o = {
		"M+" : this.getMonth() + 1, // 月份
		"d+" : this.getDate(), // 日
		"h+" : this.getHours(), // 小时
		"m+" : this.getMinutes(), // 分
		"s+" : this.getSeconds(), // 秒
		"q+" : Math.floor((this.getMonth() + 3) / 3), // 季度
		"S" : this.getMilliseconds()
	// 毫秒
	};
	if (!fmt)
		fmt = "yyyy-MM-dd";
	if (/(y+)/.test(fmt))
		fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "")
				.substr(4 - RegExp.$1.length));
	for ( var k in o)
		if (new RegExp("(" + k + ")").test(fmt))
			fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k])
					: (("00" + o[k]).substr(("" + o[k]).length)));
	return fmt;
}

Date.prototype.addDate = function(days) {
	this.setDate(this.getDate() + days);
	return this;
}

var idCardNoUtil = {

	provinceAndCitys : {
		11 : "北京",
		12 : "天津",
		13 : "河北",
		14 : "山西",
		15 : "内蒙古",
		21 : "辽宁",
		22 : "吉林",
		23 : "黑龙江",
		31 : "上海",
		32 : "江苏",
		33 : "浙江",
		34 : "安徽",
		35 : "福建",
		36 : "江西",
		37 : "山东",
		41 : "河南",
		42 : "湖北",
		43 : "湖南",
		44 : "广东",
		45 : "广西",
		46 : "海南",
		50 : "重庆",
		51 : "四川",
		52 : "贵州",
		53 : "云南",
		54 : "西藏",
		61 : "陕西",
		62 : "甘肃",
		63 : "青海",
		64 : "宁夏",
		65 : "新疆",
		71 : "台湾",
		81 : "香港",
		82 : "澳门",
		91 : "国外"
	},
	powers : [ "7", "9", "10", "5", "8", "4", "2", "1", "6", "3", "7", "9",
			"10", "5", "8", "4", "2" ],
	parityBit : [ "1", "0", "X", "9", "8", "7", "6", "5", "4", "3", "2" ],
	genders : {
		male : "男",
		female : "女"
	},
	checkAddressCode : function(addressCode) {
		var check = /^[1-9]\d{5}$/.test(addressCode);
		if (!check)
			return false;
		if (idCardNoUtil.provinceAndCitys[parseInt(addressCode.substring(0, 2))]) {
			return true;
		} else {
			return false;
		}
	},
	checkBirthDayCode : function(birDayCode) {
		var check = /^[1-9]\d{3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))$/
				.test(birDayCode);
		if (!check)
			return false;
		var yyyy = parseInt(birDayCode.substring(0, 4), 10);
		var mm = parseInt(birDayCode.substring(4, 6), 10);
		var dd = parseInt(birDayCode.substring(6), 10);
		var xdata = new Date(yyyy, mm - 1, dd);
		if (xdata > new Date()) {
			return false;// 生日不能大于当前日期
		} else if ((xdata.getFullYear() == yyyy)
				&& (xdata.getMonth() == mm - 1) && (xdata.getDate() == dd)) {
			return true;
		} else {
			return false;
		}
	},
	getParityBit : function(idCardNo) {
		var id17 = idCardNo.substring(0, 17);

		var power = 0;
		for (var i = 0; i < 17; i++) {
			power += parseInt(id17.charAt(i), 10)
					* parseInt(idCardNoUtil.powers[i]);
		}

		var mod = power % 11;
		return idCardNoUtil.parityBit[mod];
	},
	checkParityBit : function(idCardNo) {
		var parityBit = idCardNo.charAt(17).toUpperCase();
		if (idCardNoUtil.getParityBit(idCardNo) == parityBit) {
			return true;
		} else {
			return false;
		}
	},
	checkIdCardNo : function(idCardNo) {
		// 15位和18位身份证号码的基本校验
		var check = /^\d{15}|(\d{17}(\d|x|X))$/.test(idCardNo);
		if (!check)
			return false;
		// 判断长度为15位或18位
		if (idCardNo.length == 15) {
			return idCardNoUtil.check15IdCardNo(idCardNo);
		} else if (idCardNo.length == 18) {
			return idCardNoUtil.check18IdCardNo(idCardNo);
		} else {
			return false;
		}
	},

	// 校验15位的身份证号码
	check15IdCardNo : function(idCardNo) {
		// 15位身份证号码的基本校验
		var check = /^[1-9]\d{7}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))\d{3}$/
				.test(idCardNo);
		if (!check)
			return false;
		// 校验地址码
		var addressCode = idCardNo.substring(0, 6);
		check = idCardNoUtil.checkAddressCode(addressCode);
		if (!check)
			return false;
		var birDayCode = '19' + idCardNo.substring(6, 12);
		// 校验日期码
		return idCardNoUtil.checkBirthDayCode(birDayCode);
	},

	// 校验18位的身份证号码
	check18IdCardNo : function(idCardNo) {
		// 18位身份证号码的基本格式校验
		var check = /^[1-9]\d{5}[1-9]\d{3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))\d{3}(\d|x|X)$/
				.test(idCardNo);
		if (!check)
			return false;
		// 校验地址码
		var addressCode = idCardNo.substring(0, 6);
		check = idCardNoUtil.checkAddressCode(addressCode);
		if (!check)
			return false;
		// 校验日期码
		var birDayCode = idCardNo.substring(6, 14);
		check = idCardNoUtil.checkBirthDayCode(birDayCode);
		if (!check)
			return false;
		// 验证校检码
		return idCardNoUtil.checkParityBit(idCardNo);
	},

	formateDateCN : function(day) {
		var yyyy = day.substring(0, 4);
		var mm = day.substring(4, 6);
		var dd = day.substring(6);
		return yyyy + '-' + mm + '-' + dd;
	},

	// 获取信息
	getIdCardInfo : function(idCardNo) {
		var idCardInfo = {
			gender : "", // 性别
			birthday : "" // 出生日期(yyyy-mm-dd)
		};
		if (idCardNo.length == 15) {
			var aday = '19' + idCardNo.substring(6, 12);
			idCardInfo.birthday = idCardNoUtil.formateDateCN(aday);
			if (parseInt(idCardNo.charAt(14)) % 2 == 0) {
				idCardInfo.gender = idCardNoUtil.genders.female;
			} else {
				idCardInfo.gender = idCardNoUtil.genders.male;
			}
		} else if (idCardNo.length == 18) {
			var aday = idCardNo.substring(6, 14);
			idCardInfo.birthday = idCardNoUtil.formateDateCN(aday);
			if (parseInt(idCardNo.charAt(16)) % 2 == 0) {
				idCardInfo.gender = idCardNoUtil.genders.female;
			} else {
				idCardInfo.gender = idCardNoUtil.genders.male;
			}

		}
		return idCardInfo;
	},
	getId15 : function(idCardNo) {
		if (idCardNo.length == 15) {
			return idCardNo;
		} else if (idCardNo.length == 18) {
			return idCardNo.substring(0, 6) + idCardNo.substring(8, 17);
		} else {
			return null;
		}
	},
	getId18 : function(idCardNo) {
		if (idCardNo.length == 15) {
			var id17 = idCardNo.substring(0, 6) + '19' + idCardNo.substring(6);
			var parityBit = idCardNoUtil.getParityBit(id17);
			return id17 + parityBit;
		} else if (idCardNo.length == 18) {
			return idCardNo;
		} else {
			return null;
		}
	}
};
