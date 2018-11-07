<%@ page language="java" pageEncoding="utf-8" %>
<%@ include file="/moduleweb/resources/common.jsp" %>
<html>
<head>
    <title></title>
    <style>
        .maxHeight {
            height: 480px;
            border: 1px solid #ddd;
            overflow: auto;
        }
    </style>
</head>
<body class="gray-bg">
<div class="container">
    <div class="card">
        <div class="card-body card-padding">
            <div class="row">
                <div class="col-sm-3 maxHeight">
                    <div id="bumen"></div>
                </div>
                <div class="col-sm-9">
                    <form id="searchForm" method="get" class="form-horizontal">
                        <input id="bumenId" name="bumenId" type="hidden"
                               value="${param.bumenId}">
                        <input id="bumenIds" name="bumenIds" type="hidden">
                        <div class="form-group">
                            <div class="col-sm-8 col-sm-offset-1">
                                <div class="col-sm-3">
                                    <div class="input-group fg-float">
                                        <div class="fg-line">
                                            <input id="regex:userName" name="regex:userName" type="text"
                                                   class="form-control"> <label class="fg-label">名称</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <!--  <div class="input-group fg-float">
                                      <div class="fg-line">
                                          <input id="regex:phone" name="regex:phone" type="text"
                                              class="form-control"> <label class="fg-label">手机号</label>
                                      </div>
                                      </div> -->
                                </div>
                                <button id="search" class="btn btn-primary m-l-10" type="submit">查询</button>
                                <button id="adParty" class="btn btn-primary m-l-10"
                                        type="button">导入党费缴纳基础信息
                                </button>
                            </div>
                        </div>
                        <!--
                        <div class="form-group">
                        <div class="col-sm-8 col-sm-offset-1">
                                <button id="search" class="btn btn-primary" type="submit">查询</button>
                                <button id="adParty" class="btn btn-danger m-l-10"
                                    type="button">导入党费缴纳信息</button>
                        </div>
                        </div> -->
                    </form>
                    <div class="jqGrid_wrapper">
                        <table id="userTable"></table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var manageType;
    $()
        .ready(
            function () {
                $("#bumen").tree({
                    onClick: clk,
                    idKey: "_id",
                    pIdKey: "parentId",
                    nameKey: "name",
                    nodeHandler: function (n) {
                        if (n._id == "0") // 展开根节点
                            n.open = true;
                    }
                });

                function getBumenIds(node, bumenIds, bumenNames) {
                    if (!node.children) {
                        return;
                    }
                    for (var i = 0; i < node.children.length; i++) {
                        bumenIds.push(node.children[i]._id);
                        bumenNames.push(node.children[i].name);
                        getBumenIds(node.children[i], bumenIds, bumenNames);
                    }
                }

                $("#adParty").click(function () {
                        document.location.href = _ctxPath + "/pc/feePc/toinfee.action";
                    }
                );

                // 默认选择parentId指定节点
                var treeObj = $.fn.zTree.getZTreeObj("bumen");
                treeObj.selectNode(treeObj.getNodeByParam("_id",
                    "${param.bumenId}"));

                function clk(e, treeId, node) {
                    var nid = node._id;
                    if (nid == "0")
                        nid = '';
                    $("#bumenId", $("#searchForm")).val(nid);
                    $("#userTable").reloadGrid({
                        postData: $("#searchForm").formobj()
                    });

                    if (node.level == 2) {
                        $("#newFunction").hide();
                    } else {
                        $("#newFunction").show();
                    }
                }


                var bumenIds = [];
                var bumenNames = [];
                // 默认选择parentId指定节点
                var treeObj = $.fn.zTree.getZTreeObj("bumen");
                treeObj.selectNode(treeObj.getNodeByParam("_id",
                    "${param.parentId}"));

                function clk(e, treeId, node) {
                    bumenIds = new Array();
                    bumenNames = new Array();
                    if (node._id == 0) {
                        bumenIds.push(node._id);
                        bumenNames.push(node.name);
                    } else {
                        bumenIds.push(node._id);
                        bumenNames.push(node.name);
                        getBumenIds(node, bumenIds, bumenNames);
                    }
                    var ids = bumenIds.join(",");
                    $("#bumenIds", $("#searchForm")).val(ids);
                    $("#userTable").reloadGrid({
                        postData: $("#searchForm").formobj()
                    });
                }

                $("#searchForm").submit(function () {
                    if (bumenIds == null || bumenIds == "") {
                        alert("请选择部门！！" + bumenIds);
                        return false;
                    }
                    $("#userTable").reloadGrid({
                        postData: $("#searchForm").formobj()
                    });
                    return false;
                });

                function beforeSelectRow() {
                    $("#logisticsTable").jqGrid('resetSelection');
                    return (true);
                }

                var lastSel = null;
                var idNames = new Object();
                $("#userTable")
                    .grid(
                        {
                            url: _ctxPath
                            + "/pc/feePc/queryBumenIds.action",
                            postData: $("#searchForm")
                                .formobj(),
                            shrinkToFit: false,
                            multiselect: false,
                            beforeSelectRow: beforeSelectRow,//js方法
                            onSelectRow: function (rowId, status) {
                                jQuery('#gridid').restoreRow(lastSel);
                                lastSel = rowId;
                                var rowData = jQuery("#userTable").jqGrid('getRowData', rowId);
                                if (idNames[rowData._id] && status == false) {
                                    delete idNames[rowData._id];
                                } else {
                                    idNames[rowData._id] = rowData.name;
                                }
                                var uIds = '';
                                var names = '';
                                for (var k in idNames) {
                                    uIds += k + ',';
                                    names += idNames[k] + ',';
                                }
                                if (uIds.length > 0) {
                                    uIds = uIds.substring(0, uIds.length - 1);
                                }
                                $("#userIds").val(uIds);
                                if (names.length > 0) {
                                    names = names.substring(0, names.length - 1);
                                }
                            },
                            colNames: ["操作", "姓名", "所属支部",
                                "缴纳基数", "缴纳比例", "每月应缴金额", "规则生效开始时间"],
                            colModel: [
                                {
                                    name: "_id",
                                    index: "_id",
                                    align: "center",
                                    width: 150,
                                    formatter: function (
                                        cellvalue,
                                        options,
                                        rowObject) {
                                        var v = "<a href='${ctxPath}/pc/feePc/toUpsert.action?bumenId=${param.bumenId}&userId="
                                            + cellvalue
                                            + "' class='m-r-10'>编辑</a>";
                                        v += "<a href='${ctxPath}/pc/feePc/tohis.action?valid=0&userId="
                                            + cellvalue
                                            + "' class='m-r-10'>历史修改记录</a>";
                                        ;
                                        return v;
                                    }
                                },
                                {
                                    name: "userName",
                                    index: "userName",
                                    width: 100
                                },
                                {
                                    name: "bumenName",
                                    index: "bumenName",
                                    width: 140
                                },
                                {
                                    name: "basefee",
                                    index: "basefee"
                                },
                                {
                                    name: "proportionStr",
                                    index: "proportionStr"
                                },
                                {
                                    name: "payable",
                                    index: "payable"
                                },
                                {
                                    name: "fmtStartTime",
                                    index: "fmtStartTime",
                                }
                            ]
                        });

            });
</script>
</body>
</html>
