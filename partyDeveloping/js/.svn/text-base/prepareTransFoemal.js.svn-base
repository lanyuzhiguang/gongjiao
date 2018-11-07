//分页参数设置 这些全局变量关系到分页的功能


/*****************************申请人阶段*************************************/
var pagea = 1; //开始页数
var sizea = 20;  //每页最多显示条数
var nowpagea = 1;  //当前页数
var pagesa = 0;  //数据总条数

function pageAjaxa() {
    $.ajax({
        type: "POST",
        url: _ctxPath + "/recruit/queryStatis.action",
        data:{
            "type|integer":5,
            "page":nowpagea, //当前页数
            "size":sizea,//每页显示条数
            "bumenId":bumenId
        },
        dataType: "json",
        success: function (data) {
            pagea = data.page;//当前页数(后台返回)
            pagesa = data.total;//数据总条数(后台返回)
            var data=data.data;
            handleData(data);
            topage();
        }
    });
}

function handleData(data) {
	var party0=$("#pag0");
	party0.html("");
	for (var i=0;i<data.length;i++) {
    	var dataa = data[i];
		var num=dataa._id;
		var applyUserName=dataa.applyUserName;
		var birthday=dataa.formtBirthday;
		if(typeof birthday === "undefined"||birthday==null){
			birthday="";
		}
		var volk=dataa.volk;
		if(typeof volk === "undefined"||volk==null){
			volk="";
		}
		var pr=dataa.nativePlace;
		if(typeof pr === "undefined"||pr==null){
			pr="";
		}
		var nativePlace=pr.dProvince+" "+pr.dCity+" "+pr.dDistrict;
		var education=dataa.education;
		if(typeof education === "undefined"||education==null){
			education="";
		}
		var bumenName=dataa.bumenName;
		var formtEntialDate=dataa.formtEntialDate;
		party0.append(" <tr> <td>"+applyUserName+"</td> <td><span>"+birthday+"</span></td> <td>"+volk+"</td> <td><span>"+nativePlace+"</span></td> <td>"+education+"</td><td>"+bumenName+"</td><td>"+formtEntialDate+"</td></tr>");
    }
	if(data.length<1){
		party0.append(" <tr  style='border-bottom:1px solid transparent'> <td  colspan='6'>暂无数据</td> </tr>");
	}
}
function topage() {
    //调用分页
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        laypage.render({
            elem: 'pageContenta'
            ,count: pagesa
            ,limit: sizea  //每页显示的数据的条数,layui会根据count，limit进行分页的计算
            ,curr: nowpagea
            ,jump: function (obj,first) {
                // var currPage=obj.curr;
                // var perPage_num=obj.limit;
                nowpagea = obj.curr;
                pagea = (obj.curr-1)*sizea;
                if(!first){//一定要加此判断，否则初始时会无限刷新
                    pageAjaxa();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                    location.href = '#top';
                    //<a href="#top">返回顶部</a>
			    }
			
			}

        });
    })
}

/*****************************积极分子阶段*************************************/
var pageb = 1; //开始页数
var sizeb = 20;  //每页最多显示条数
var nowpageb = 1;  //当前页数
var pagesb = 0;  //数据总条数

function pageAjaxab() {
    $.ajax({
        type: "POST",
        url: _ctxPath + "/recruit/queryStatis.action",
        data:{
            "type|integer":1,
            "page":nowpageb, //当前页数
            "size":sizeb,//每页显示条数
            "bumenId":bumenId
        },
        dataType: "json",
        success: function (data) {
            pageb = data.page;//当前页数(后台返回)
            pagesb = data.total;//数据总条数(后台返回)
            var data=data.data;
            handleDatab(data);
            topageb();
        }
    });
}

function handleDatab(data) {
	var party0=$("#pag1");
	party0.html("");
	for (var i=0;i<data.length;i++) {
    	var dataa = data[i];
		var num=dataa._id;
		var applyUserName=dataa.applyUserName;
		var birthday=dataa.formtBirthday;
		if(typeof birthday === "undefined"||birthday==null){
			birthday="";
		}
		var volk=dataa.volk;
		if(typeof volk === "undefined"||volk==null){
			volk="";
		}
		var pr=dataa.nativePlace;
		if(typeof pr === "undefined"||pr==null){
			pr="";
		}
		var nativePlace=pr.dProvince+" "+pr.dCity+" "+pr.dDistrict;
		var education=dataa.education;
		if(typeof education === "undefined"||education==null){
			education="";
		}
		var bumenName=dataa.bumenName;
		var formtEntialDate=dataa.formtEntialDate;
		var formtRustDate=dataa.formtRustDate;
		party0.append(" <tr> <td>"+applyUserName+"</td> <td><span>"+birthday+"</span></td> <td>"+volk+"</td> <td><span>"+nativePlace+"</span></td> <td>"+education+"</td> <td>"+bumenName+"</td> <td>"+formtEntialDate+"</td> <td>"+formtRustDate+"</td></tr>");
    }
	if(data.length<1){
		party0.append(" <tr  style='border-bottom:1px solid transparent'> <td  colspan='6'>暂无数据</td> </tr>");
	}
}
function topageb() {
    //调用分页
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        laypage.render({
            elem: 'pageContentb'
            ,count: pagesb
            ,limit: sizeb  //每页显示的数据的条数,layui会根据count，limit进行分页的计算
            ,curr: nowpageb
            ,jump: function (obj,first) {
                // var currPage=obj.curr;
                // var perPage_num=obj.limit;
                nowpageb = obj.curr;
                pageb = (obj.curr-1)*sizeb;
                if(!first){//一定要加此判断，否则初始时会无限刷新
                    pageAjaxab();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                    location.href = '#top';
                    //<a href="#top">返回顶部</a>
			    }
			
			}

        });
    })
}


/*****************************发展对象阶段*************************************/
var pagec = 1; //开始页数
var sizec = 20;  //每页最多显示条数
var nowpagec = 1;  //当前页数
var pagesc = 0;  //数据总条数

function pageAjaxac() {
    $.ajax({
        type: "POST",
        url: _ctxPath + "/recruit/queryStatis.action",
        data:{
            "type|integer":2,
            "page":nowpagec, //当前页数
            "size":sizec,//每页显示条数
            "bumenId":bumenId
        },
        dataType: "json",
        success: function (data) {
            pagec = data.page;//当前页数(后台返回)
            pagesc = data.total;//数据总条数(后台返回)
            var data=data.data;
            handleDatac(data);
            topagec();
        }
    });
}

function handleDatac(data) {
	var party0=$("#pag2");
	party0.html("");
	for (var i=0;i<data.length;i++) {
    	var dataa = data[i];
		var num=dataa._id;
		var applyUserName=dataa.applyUserName;
		var birthday=dataa.formtBirthday;
		if(typeof birthday === "undefined"||birthday==null){
			birthday="";
		}
		var volk=dataa.volk;
		if(typeof volk === "undefined"||volk==null){
			volk="";
		}
		var pr=dataa.nativePlace;
		if(typeof pr === "undefined"||pr==null){
			pr="";
		}
		var nativePlace=pr.dProvince+" "+pr.dCity+" "+pr.dDistrict;
		var education=dataa.education;
		if(typeof education === "undefined"||education==null){
			education="";
		}
		var bumenName=dataa.bumenName;
		var formtEntialDate=dataa.formtEntialDate;
		var formtRustDate=dataa.formtRustDate;
		var formtRuDate=dataa.formtRuDate;
		party0.append(" <tr> <td>"+applyUserName+"</td> <td><span>"+birthday+"</span></td> <td>"+volk+"</td> <td><span>"+nativePlace+"</span></td> <td>"+education+"</td> <td>"+bumenName+"</td> <td>"+formtEntialDate+"</td> <td>"+formtRustDate+"</td> <td>"+formtRuDate+"</td></tr>");
    }
	if(data.length<1){
		party0.append(" <tr  style='border-bottom:1px solid transparent'> <td  colspan='6'>暂无数据</td> </tr>");
	}
}
function topagec() {
    //调用分页
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        laypage.render({
            elem: 'pageContentc'
            ,count: pagesc
            ,limit: sizec  //每页显示的数据的条数,layui会根据count，limit进行分页的计算
            ,curr: nowpagec
            ,jump: function (obj,first) {
                // var currPage=obj.curr;
                // var perPage_num=obj.limit;
                nowpagec = obj.curr;
                pagec = (obj.curr-1)*sizec;
                if(!first){//一定要加此判断，否则初始时会无限刷新
                    pageAjaxac();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                    location.href = '#top';
                    //<a href="#top">返回顶部</a>
			    }
			
			}

        });
    })
}


/*****************************预备党员阶段*************************************/
var paged = 1; //开始页数
var sized = 20;  //每页最多显示条数
var nowpaged = 1;  //当前页数
var pagesd = 0;  //数据总条数

function pageAjaxad() {
    $.ajax({
        type: "POST",
        url: _ctxPath + "/recruit/queryStatis.action",
        data:{
            "type|integer":3,
            "page":nowpaged, //当前页数
            "size":sized,//每页显示条数
            "bumenId":bumenId
        },
        dataType: "json",
        success: function (data) {
            paged = data.page;//当前页数(后台返回)
            pagesd = data.total;//数据总条数(后台返回)
            var data=data.data;
            handleDatad(data);
            topaged();
        }
    });
}

function handleDatad(data) {
	var party0=$("#pag3");
	party0.html("");
	for (var i=0;i<data.length;i++) {
    	var dataa = data[i];
		var num=dataa._id;
		var applyUserName=dataa.applyUserName;
		var birthday=dataa.formtBirthday;
		if(typeof birthday === "undefined"||birthday==null){
			birthday="";
		}
		var volk=dataa.volk;
		if(typeof volk === "undefined"||volk==null){
			volk="";
		}
		var pr=dataa.nativePlace;
		if(typeof pr === "undefined"||pr==null){
			pr="";
		}
		var nativePlace=pr.dProvince+" "+pr.dCity+" "+pr.dDistrict;
		var education=dataa.education;
		if(typeof education === "undefined"||education==null){
			education="";
		}
		var bumenName=dataa.bumenName;
		var formtEntialDate=dataa.formtEntialDate;
		var formtRustDate=dataa.formtRustDate;
		var formtRuDate=dataa.formtRuDate;
		var formtProbPartyDate=dataa.formtProbPartyDate;
		party0.append(" <tr> <td>"+applyUserName+"</td> <td><span>"+birthday+"</span></td> <td>"+volk+"</td> <td><span>"+nativePlace+"</span></td> <td>"+education+"</td> <td>"+bumenName+"</td> <td>"+formtEntialDate+"</td> <td>"+formtRustDate+"</td> <td>"+formtRuDate+"</td> <td>"+formtProbPartyDate+"</td></tr>");
    }
	if(data.length<1){
		party0.append(" <tr  style='border-bottom:1px solid transparent'> <td  colspan='6'>暂无数据</td> </tr>");
	}
}
function topaged() {
    //调用分页
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        laypage.render({
            elem: 'pageContentd'
            ,count: pagesd
            ,limit: sized  //每页显示的数据的条数,layui会根据count，limit进行分页的计算
            ,curr: nowpaged
            ,jump: function (obj,first) {
                // var currPage=obj.curr;
                // var perPage_num=obj.limit;
                nowpaged = obj.curr;
                paged = (obj.curr-1)*sized;
                if(!first){//一定要加此判断，否则初始时会无限刷新
                    pageAjaxad();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                    location.href = '#top';
                    //<a href="#top">返回顶部</a>
			    }
			
			}

        });
    })
}

/*****************************预备党员转正阶段*************************************/
var pagee = 1; //开始页数
var sizee = 20;  //每页最多显示条数
var nowpagee = 1;  //当前页数
var pagese = 0;  //数据总条数

function pageAjaxae() {
    $.ajax({
        type: "POST",
        url: _ctxPath + "/recruit/queryStatis.action",
        data:{
            "type|integer":4,
            "page":nowpagee, //当前页数
            "size":sizee,//每页显示条数
            "bumenId":bumenId
        },
        dataType: "json",
        success: function (data) {
            pagee = data.page;//当前页数(后台返回)
            pagese = data.total;//数据总条数(后台返回)
            var data=data.data;
            handleDatae(data);
            topagee();
        }
    });
}

function handleDatae(data) {
	var party0=$("#pag4");
	party0.html("");
	for (var i=0;i<data.length;i++) {
    	var dataa = data[i];
		var num=dataa._id;
		var applyUserName=dataa.applyUserName;
		var birthday=dataa.formtBirthday;
		if(typeof birthday === "undefined"||birthday==null){
			birthday="";
		}
		var volk=dataa.volk;
		if(typeof volk === "undefined"||volk==null){
			volk="";
		}
		var pr=dataa.nativePlace;
		if(typeof pr === "undefined"||pr==null){
			pr="";
		}
		var nativePlace=pr.dProvince+" "+pr.dCity+" "+pr.dDistrict;
		var education=dataa.education;
		if(typeof education === "undefined"||education==null){
			education="";
		}
		var bumenName=dataa.bumenName;
		var formtEntialDate=dataa.formtEntialDate;
		var formtRustDate=dataa.formtRustDate;
		var formtRuDate=dataa.formtRuDate;
		var formtProbPartyDate=dataa.formtProbPartyDate;formtToPartyDate;
		var formtToPartyDate=dataa.formtToPartyDate;
		party0.append(" <tr> <td>"+applyUserName+"</td> <td><span>"+birthday+"</span></td> <td>"+volk+"</td> <td><span>"+nativePlace+"</span></td> <td>"+education+"</td> <td>"+bumenName+"</td> <td>"+formtEntialDate+"</td> <td>"+formtRustDate+"</td> <td>"+formtRuDate+"</td> <td>"+formtProbPartyDate+"</td><td>"+formtToPartyDate+"</td></tr>");
    }
	if(data.length<1){
		party0.append(" <tr  style='border-bottom:1px solid transparent'> <td  colspan='6'>暂无数据</td> </tr>");
	}
}
function topagee() {
    //调用分页
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        laypage.render({
            elem: 'pageContente'
            ,count: pagese
            ,limit: sizee  //每页显示的数据的条数,layui会根据count，limit进行分页的计算
            ,curr: nowpagee
            ,jump: function (obj,first) {
                // var currPage=obj.curr;
                // var perPage_num=obj.limit;
                nowpagee = obj.curr;
                pagee = (obj.curr-1)*sizee;
                if(!first){//一定要加此判断，否则初始时会无限刷新
                    pageAjaxae();//一定要把翻页的ajax请求放到这里，不然会请求两次。
                    location.href = '#top';
                    //<a href="#top">返回顶部</a>
			    }
			
			}

        });
    })
}


