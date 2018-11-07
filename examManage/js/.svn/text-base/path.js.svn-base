var path = "";//http://192.168.3.24:8090/dangjian
$(function() {
	function getQueryString(name) {
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
		var r = window.location.search.substr(1).match(reg);
		if (r != null)
			return decodeURI(r[2]);
			return null;
		}
		var iframe = document.getElementById("common");///公共页面有公共的属性 一般为使用静态页面获取不到的参数存储的页面
		iframe.src = "../common/common.jsp";//common.jsp  也就是公共页面的相对地址
		if (iframe.attachEvent) {//判断iframe是否加载完成
			iframe.attachEvent("onload", function() {
				getCommon();
			});
		} else {
			iframe.onload = function() {
				getCommon();
			};
		}
	});
//var path = "http://192.168.3.3/dangjian";
//var path = "http://msriw8.natappfree.cc/dangjian";