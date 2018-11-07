<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="UTF-8" />
    <title>基层e党建</title>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/bootstrap.css" />
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/font-awesome.css" />
    <link href="${ctxPath}/modulepc/css/iconfont.css" rel="stylesheet"/>
    <!-- page specific plugin styles -->
    <!-- text fonts -->
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace-fonts.css" />
    <!-- ace styles -->
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace-part2.css" class="ace-main-stylesheet" />
    <![endif]-->
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace-ie.css" />
    <![endif]-->
    <!-- inline styles related to this page -->
    <!-- ace settings handler -->
    <script src="${ctxPath}/modulepc/assets/js/ace-extra.js"></script>
    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
    <!--[if lte IE 8]>
    <script src="${ctxPath}/modulepc/assets/js/html5shiv.js"></script>
    <script src="${ctxPath}/modulepc/assets/js/respond.js"></script>
    <![endif]-->
    <link href="${ctxPath}/modulepc/css/index.css" rel="stylesheet"/>
    <link href="${ctxPath}/modulepc/css/branch.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="${ctxPath}/moduleweb/planwork/css/demo.css">
    <link rel="stylesheet" type="text/css" href="${ctxPath}/moduleweb/planwork/css/zTreeStyle.css">
    <style type="text/css">
        .node_name{
            color: black;
        }
        a:hover {
            background-color: white;
            color: white;
        }
    </style>
</head>

<body class="no-skin">
<br/><br/>
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12 outW">
                    <div class="col-sm-9 rightB">
                        <i class="pink ace-icon fa ic iconfont icon-zuzhi"></i>
                        <div class="col-sm-3" style="width: 40%">
                            <input type="hidden" id="branchId" value="">
                            <input type="text" id="branch" placeholder="请选择党支部" readonly="readonly"  class="chosen-select form-control"/>
                            <div id="menuContent2" class="menuContent" style="display:none; position: absolute; z-index: 1000;left:0;top: 31px;">
                                <ul id="treeDemo2" class="ztree" style="margin-top:0; width:206px;"></ul>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                    </div>

                    <div class="widget-box transparent lifeW" id="recent-box">
                        <div class="widget-header">
                            <h4 class="widget-title lighter smaller tissue">
                                <i class=" ace-icon fa iconfont icon-xing "></i>支部组织生活
                            </h4>

                            <div class="widget-toolbar no-border ">
                                <ul class="nav nav-tabs" id="recent-tab">
                                    <li class="active" id="notssItem">
                                        <a data-toggle="tab" href="#task-tab">支部党员大会</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main padding-4">
                                <div class="tab-content padding-8" id="bgTable">
                                    <!--支部党员大会-->

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='${ctxPath}/modulepc/assets/js/jquery.js'>"+"<"+"/script>");
</script>
<!-- <![endif]-->
<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='${ctxPath}/modulepc/assets/js/jquery1x.js'>"+"<"+"/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='${ctxPath}/modulepc/assets/js/jquery.mobile.custom.js'>"+"<"+"/script>");
</script>
<script src="${ctxPath}/modulepc/assets/js/bootstrap.js"></script>
<!--[if lte IE 8]>
<script src="${ctxPath}/modulepc/assets/js/excanvas.js"></script>
<![endif]-->
<script src="${ctxPath}/modulepc/assets/js/jquery-ui.custom.js"></script>
<script src="${ctxPath}/modulepc/assets/js/jquery.ui.touch-punch.js"></script>
<script src="${ctxPath}/modulepc/assets/js/jquery.easypiechart.js"></script>
<script src="${ctxPath}/modulepc/assets/js/jquery.sparkline.js"></script>
<script src="${ctxPath}/modulepc/assets/js/flot/jquery.flot.js"></script>
<script src="${ctxPath}/modulepc/assets/js/flot/jquery.flot.pie.js"></script>
<script src="${ctxPath}/modulepc/assets/js/flot/jquery.flot.resize.js"></script>
<!-- ace scripts -->
<script src="${ctxPath}/modulepc/assets/js/ace/elements.scroller.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.colorpicker.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.fileinput.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.typeahead.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.wysiwyg.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.spinner.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.treeview.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.wizard.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.aside.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.ajax-content.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.touch-drag.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.sidebar.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.sidebar-scroll-1.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.submenu-hover.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.widget-box.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.settings.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.settings-rtl.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.settings-skin.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.widget-on-reload.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.searchbox-autocomplete.js"></script>
<script src="${ctxPath}/modulepc/js/echarts.min.js"></script>
<script src="${ctxPath}/moduleweb/planwork/js/jquery.ztree.core.min.js"></script>
<script src="${ctxPath}/moduleweb/planwork/js/jquery.ztree.excheck.min.js"></script>
<!-- inline scripts related to this page -->
<script type="text/javascript">
    var bumId=new Array();
    jQuery(function($) {

        //获得部门信息
        /* $.ajax({
                type:"post",
                async:false,
                url:"${ctxPath}/manage/bumen/findTendBumens.action",
	        dataType:"json",
  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
	        success:function(data){
	        	bumId=$("#bumenId").val();
				var bum =dldata(data);
			  		bumId=$(this).val();

			  		setMeetingType();
			  		getminbum();
		}});*/
    })
</script>

<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<%-- <script src="${ctxPath}/modulepc/assets/js/chosen.jquery.js"></script> --%>
<link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace.onpage-help.css" />
<script type="text/javascript"> ace.vars['base'] = '${ctxPath}/modulepc'; </script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.onpage-help.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/ace.onpage-help.js"></script>
<script type="text/javascript">

    //支部组织生活
    var listItm1s=$("#notssItem");
    listItm1s.remove();
    function setMeetingType(){
        var bgTable=$("#bgTable");
        bgTable.html("");
        $.ajax({
            type:"post",
            async:false,
            url:"${ctxPath}/pc/noticePc/meetingTypes.action",
            success:function(data){
                var tab1=$("#recent-tab");
                tab1.html("");
                var tbl=true;
                for(var i=0;i<data.length;i++){
                    var meet=data[i];
                    if(meet.type==1){
                        var listItems = listItm1s.clone();
                        listItems.css('display', '');//清楚隐藏
                        getlistli(meet._id,tbl);
                        if(tbl){
                            tbl=false;
                        }else{
                            listItems.removeClass("active");
                        }
                        listItems.find("a").html(meet.name);
                        listItems.find("a").attr('href',"#"+meet._id);
                        tab1.append(listItems);
                    }
                }
            }
        });
    }

    function getlistli(obj,bl){
        var bgTable=$("#bgTable");
        //支部组织生活
        $.ajax({
            type:"post",
            async:false,
            url:"${ctxPath}/pc/noticePc/noticeMeetDetail.action",
            data:{'page': 1
                ,'size':10
                ,'meetId':obj
                ,'in:forBumenId|array': bumId.toString()},
            success:function(data){
                var notices=data.data;
                var tabl="";
                tabl+="<div id=\""+obj+"\" class=\"tab-pane";
                if(bl){
                    tabl+=" active ";
                }
                tabl+="\">";
                tabl+="<div class=\"widget-body\">";
                tabl+="<div class=\"widget-main no-padding\">";
                tabl+="<div class=\"dialogs\" id=\"diaid\">";
                var bool=true;
                for (var it = 0; it < notices.length; it++) {
                    var notice=notices[it];
                    var sthtml="";
                    sthtml+="<div id=\"dialItem\" class=\"itemdiv dialogdiv";
                    if(bool){
                        sthtml+=" specH ";
                        bool=false;
                    }
                    sthtml+="\">";
                    sthtml+="<div class=\"user\">";
                    sthtml+="<img src=\"${ctxPath}/modulepc/img/redD.png\"/>";
                    sthtml+="</div>";
                    sthtml+="<div class=\"body\">";
                    sthtml+="<div class=\"time\">";
                    sthtml+="<i class=\"ace-icon fa fa-clock-o\"></i>";
                    sthtml+="<span class=\"timeS\">"+notice.attendtimeFormat+"</span>";
                    sthtml+="</div>";
                    sthtml+="<div class=\"name\">";
                    sthtml+="<i class=\"ace-icon fa fa-caret-right\"></i>";
                    sthtml+="<a target=\"_blank\" href=\"${ctxPath}/noticeDetail/toMeeting.do?noticeId="+notice._id+"\">"+notice.title+"</a>";
                    sthtml+="</div>";
                    sthtml+="<div style='margin-left: -2px;'><i class=\"ace-icon fa iconfont icon-ddian\"></i><span class='pdzi'>"+notice.address+"</span></div>";
                    sthtml+="<div class=\"text\">";
                    sthtml+="<span>实到人数</span>";
                    var strs= new Array(); //定义一数组
                    try {
                        if (Date.parse(new Date())>notice.attendtime) {
                            strs=notice.tolReach.split("/"); //字符分割
                            sthtml+="<span>实到人数</span><span class=\"onTime\">"+strs[0]+"人</span>";
                            sthtml+="<span>应到人数</span><span class=\"onTime\">"+strs[1]+"人</span>";
                        }else{
                            strs=notice.tolRedaer.split("/"); //字符分割
                            sthtml+="<span>已阅</span><span class=\"onTime\">"+strs[0]+"人</span>";
                            sthtml+="<span>未阅</span><span class=\"onTime\">"+(strs[1]-strs[0])+"人</span>";
                        }
                    } catch (e) {
                        // TODO: handle exception
                    }
                    sthtml+="</div>";
                    sthtml+="</div>";
                    sthtml+="</div>";
                    tabl+=sthtml;
                }
                if(notices.length<1){
                    tabl+="<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>";
                }
                tabl+="</div>";
                tabl+="</div>";
                tabl+="</div>";
                tabl+="</div>";
                bgTable.append(tabl);

                // 控制滑动
                $('.dialogs,.comments').ace_scroll({
                    size: 300
                });
            }
        });
    }

    slidTree();
    function slidTree() {
        $("#branch").click(function () {
            showMenu();
        });
        var setting = {
            view: {
                dblClickExpand: false
            },
            data: {
                simpleData: {
                    enable: true,
                    idKey: "id",
                    pIdKey: "pId"
                },
                key: {
                    name: "name"
                }
            },
            callback: {
                beforeClick: beforeClick,
                onClick: onClick
            }
        };
        $.ajax({
            type: "GET",
            url: "${ctxPath}/pc/noticePc/queryTreeByCode.action",
            data: {},
            dataType: "json",
            contentType: "application/x-www-form-urlencoded; charset=utf-8",
            success: function (data) {
                if (data) {
                    zNodes = data;
                    var zTree = $.fn.zTree.init($("#treeDemo2"), setting, zNodes);
                    var node = zTree.getNodeByParam("id", 0);
                    //alert(JSON.stringify(node));
                    zTree.selectNode(node);
                    zTree.expandAll(true);
                    zTree.expandNode(node, true, false, false);
                }
            }
        });
        var zNodes = [];

        function beforeClick(treeId, treeNode) {
            /* var check = (treeNode && !treeNode.isParent);
            if (!check) {
                parent.layer.alert('请选择党支部！');
            }
            return check; */
        }

        function onClick(e, treeId, treeNode) {
            var zTree = $.fn.zTree.getZTreeObj("treeDemo2"),
                nodes = zTree.getSelectedNodes(),
                v = "";
            nodes.sort(function compare(a, b) {
                return a.id - b.id;
            });
            for (var i = 0, l = nodes.length; i < l; i++) {
                v += nodes[i].name + ",";
            }
            if (v.length > 0) v = v.substring(0, v.length - 1);
            var cityObj = $("#branch");
            cityObj.attr("value", v);
            bumId = new Array();
            bumId.push(treeNode.id);
            var bumenNames=new Array();
            getBumenIds(treeNode,bumId,bumenNames);
            setMeetingType();
        }

        function getBumenIds(node,bumenIds,bumenNames) {
            if(!node.children) {
                return;
            }
            for(var i=0;i<node.children.length;i++) {
                bumenIds.push(node.children[i].id);
                bumenNames.push(node.children[i].name);
                getBumenIds(node.children[i],bumenIds,bumenNames);
            }
        }

        function showMenu() {
            var cityObj = $("#branch");
            var cityOffset = $("#branch").offset();
            $("#menuContent2").slideDown("fast");

            $("body").bind("mousedown", onBodyDown);
        }

        function hideMenu() {
            $("#menuContent2").fadeOut("fast");
            $("body").unbind("mousedown", onBodyDown);
        }

        function onBodyDown(event) {
            if (!(event.target.id == "menuBtn" || event.target.id == "menuContent2" || $(event.target).parents("#menuContent2").length > 0)) {
                hideMenu();
            }
        }
    }
    //setMeetingType();
</script>
</body>
</html>
