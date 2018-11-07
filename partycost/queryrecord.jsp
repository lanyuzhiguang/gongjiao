<%@ page language="java" pageEncoding="utf-8" %>
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

        .laydate_table {
            display: none;
        }

        #laydate_hms {
            display: none !important;
        }

        td {
            text-align: center !important;
        }

        th {
            text-align: center !important;
        }

        #search {
            padding: 0;
            height: 24px;
            width: 57px;
            vertical-align: -webkit-baseline-middle;
            vertical-align: baseline;
            background: #2196F3;
            margin-left: 27px;
        }

        label {
            color: #333333;
        }

        #exParty {
            height: 24px;
            width: 66px;
            vertical-align: bottom;
            line-height: 24px;
            padding: 0;
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
                    <form id="searchForm" name="searchForm" method="get" class="form-horizontal" action="">
                        <input id="bumenId" name="bumenId" type="hidden">
                        <input id="bumenIds" name="bumenIds" type="hidden">
                        <div class="form-group">
                            <div class="col-sm-8" style="margin-left: 2%;">
                                <div class="col-sm-5">
                                    <div class="input-group fg-float">
                                        <div class="fg-line">
                                            <label>选择时间
                                                <input style="width: 25%;" type="text" id="yeartime" value=""
                                                       name="yeartime">

                                                <select name="month" id="month" style="width:32%;height: 24px;">
                                                    <option value="">月份</option>
                                                    <option value="">全部</option>
                                                    <option value="01">01</option>
                                                    <option value="02">02</option>
                                                    <option value="03">03</option>
                                                    <option value="04">04</option>
                                                    <option value="05">05</option>
                                                    <option value="06">06</option>
                                                    <option value="07">07</option>
                                                    <option value="08">08</option>
                                                    <option value="09">09</option>
                                                    <option value="10">10</option>
                                                    <option value="11">11</option>
                                                    <option value="12">12</option>
                                                </select>

                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <button id="search" class="btn btn-primary m-l-10" type="submit">查询</button>
                                <button id="exParty" class="btn btn-primary m-l-10"
                                        type="button">导出记录
                                </button>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="col-sm-12">
                                <div class="col-sm-12">
                                    组织名称： <span id="bumenname"></span>
                                </div>
                                <div class="col-sm-3">时间： &nbsp;&nbsp;<span id="butime"></span></div>
                                <div class="col-sm-3">应收党费 &nbsp;&nbsp; ￥ &nbsp; <span id="totalPayable"></span></div>
                                <div class="col-sm-3">实收党费 &nbsp;&nbsp; ￥ &nbsp; <span id="totalPaid"></span></div>

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

                $("#exParty").click(function () {
                    document.searchForm.action = "${ctxPath}/pc/feerecordPc/doFeeRecordExcel.action";
                    document.searchForm.submit();
                });

                // 默认选择parentId指定节点
                var treeObj = $.fn.zTree.getZTreeObj("bumen");
                treeObj.selectNode(treeObj.getNodeByParam("_id",
                    "${param.bumenId}"));

                function clk(e, treeId, node) {
                    var nid = node._id;
                    if (nid == "0")
                        nid = '';
                    $("#bumenId", $("#searchForm")).val(nid);
                    //$("#userTable").reloadGrid({
                    //	postData : $("#searchForm").formobj()
                    //});

                    if (node.level == 2) {
                        $("#newFunction").hide();
                    } else {
                        $("#newFunction").show();
                    }
                }


                var bumenIds = [];
                var bumenNames = [];

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
                    //$("#userTable").reloadGrid({
                    //	postData : $("#searchForm").formobj()
                    //});
                }

                $("#searchForm").submit(function () {
                    if (bumenIds == null || bumenIds == "") {
                        alert("请选择部门！！" + bumenIds);
                        return false;
                    }
                    $("#userTable").reloadGrid({
                        postData: $("#searchForm").formobj()
                    });
                    infor();
                    return false;
                });

                function infor() {
                    $.ajax({
                        type: "post",
                        async: false,
                        url: _ctxPath
                        + "/pc/feerecordPc/queryBumenIdsdate.action",
                        data: $("#searchForm").formobj(),
                        success: function (data) {
                            $("#bumenname").text(data.bumenname);
                            $("#butime").text(data.butime);
                            $("#totalPayable").text(data.totalPayable);
                            $("#totalPaid").text(data.totalPaid);
                        }
                    });
                }

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
                            + "/pc/feerecordPc/queryBumenIds.action",
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
                            colNames: ["缴纳状态", "姓名", "所属支部",
                                "月份", "应缴金额", "实缴金额", "缴纳时间", "经手人"],
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
                                        status
                                        var v = "";
                                        if (rowObject.status == 0) { //|| rowObject.valid == -1
                                            v += "未缴纳";

                                        } else if (rowObject.status == 1) {
                                            v += "已缴纳";
                                        }
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
                                    name: "monthtime",
                                    index: "monthtime"
                                },
                                {
                                    name: "payable",
                                    index: "payable"
                                },
                                {
                                    name: "paid",
                                    index: "paid"
                                },
                                {
                                    name: "paymenttime",
                                    index: "paymenttime",
                                }
                                ,
                                {
                                    name: "handleName",
                                    index: "handleName",
                                }
                            ],
                        });


            });
    //执行一个laydate实例
    laydate.render({
        elem: '#yeartime',
        type: 'year',
        value: new Date()
    });
</script>
</body>
</html>
