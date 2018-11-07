<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="/modulepc/resources/common.jsp"%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
            <meta charset="utf-8" />
            <title>天合互联党建</title>
            <meta name="description" content="overview &amp; stats" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
            <!-- bootstrap & fontawesome -->
            <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/bootstrap.css" />
            <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/font-awesome.css" />
            <link href="${ctxPath}/modulepc/css/iconfont.css" rel="stylesheet" />
            <!-- page specific plugin styles -->
            <!-- text fonts -->
            <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace-fonts.css" />
            <!-- ace styles -->
            <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
            <!--[if lte IE 9]>
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace-part2.css" class="ace-main-stylesheet"/>
    <![endif]-->
            <!--[if lte IE 9]>
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/ace-ie.css"/>
    <![endif]-->
            <!-- inline styles related to this page -->
            <!-- ace settings handler -->
            <script src="${ctxPath}/modulepc/assets/js/ace-extra.js"></script>
            <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
            <!--[if lte IE 8]>
    <script src="${ctxPath}/modulepc/assets/js/html5shiv.js"></script>
    <script src="${ctxPath}/modulepc/assets/js/respond.js"></script>
    <![endif]-->
            <link href="${ctxPath}/modulepc/css/index.css" rel="stylesheet" />
            <link href="${ctxPath}/modulepc/css/home_party.css" rel="stylesheet">
        </head>

        <body class="no-skin">
            <!--主要内容部分-->
            <!--<div class="page-header">-->
            <!--我是党员内容-->
            <!--</div>-->
            <div class="row">
                <div class="col-xs-12" id="contentBox">
                    <div class="row">
                        <div class="col-sm-2 myBranch">
                            <input type="hidden" id="userId" value="${user._id }">
                            <input type="hidden" id="bumenId" value="${user.bumenId}">
                            <div class="branchTitl banch"><i class="icon iconfont icon-danghui"></i>我的支部</div>
                            <ul>
                                <li>支部排名：<span class="R">18</span>/<span class="num">1400</span></li>
                                <li>党员人数：<span class="num1">18</span></li>
                                <!-- <li>党支部书记：<span></span></li> -->
                                <li>支部积分：<span id="score_avg">18</span></li>
                                <li>人均学习积分：<span id="score_avg_study">18</span></li>
                                <li>人均活跃积分：<span id="score_avg_active">18</span></li>
                            </ul>
                        </div>
                        <div class="col-sm-6">
                            <div class="col-sm-12 widget-container-col ui-sortable" style="min-height: 127px;">
                                <div class="widget-box ui-sortable-handle" style="opacity: 1; z-index: 0;">
                                    <div class="widget-header widget-header-small">
                                        <h5 class="widget-title integral">
                                            <i class="ace-icon fa fa-signal"></i> 我的积分
                                        </h5>
                                        <div class="widget-toolbar no-border">
                                            <ul class="nav nav-tabs" id="myTab">
                                                <li class="active">
                                                    <a data-toggle="tab" href="#home" aria-expanded="false">我的积分</a>
                                                </li>

                                                <li class="">
                                                    <a data-toggle="tab" href="#profile" aria-expanded="false">总活跃积分</a>
                                                </li>

                                                <li class="">
                                                    <a data-toggle="tab" href="#info" aria-expanded="true">总学习积分</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="widget-body innerBody">
                                        <div class="widget-main padding-6">
                                            <div class="tab-content newClass">
                                                <div id="home" class="tab-pane active">
                                                    <div id="myStudyPoints" class="pieChart" style="width:400px;height:280px;margin: auto;"></div>
                                                </div>

                                                <div id="profile" class="tab-pane">
                                                    <div id="activePoints" class="pieChart" style="width:420px;height:250px;margin: auto;"></div>
                                                </div>

                                                <div id="info" class="tab-pane">
                                                    <div id="studyPoints" class="pieChart" style="width:420px;height:250px;margin: auto;"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 rank " style="margin-top: 3px;">
                            <div class="branchTitl" style="border: 1px solid #cccccc"><i class="icon iconfont icon-paiming"></i>我的排名
                                <div class="rightF"><span class="redC"> 30</span>/<span class="blackC">50</span></div>
                            </div>
                            <ul class="rankingList">
                                <li id="itmStu" style="display: none">
                                    <div class="ranking"></div>
                                    <div class="user headT">
                                        <img id="" src="${ctxPath}/modulepc/img/redD.png" />
                                        <div class="item">
                                            <div class="listName">
                                                <span><!-- 姓名： --><span id="userName">张三</span></span>
                                            </div>
                                            <div class="listIntegral">
                                                <span>积分：<span id="stolNum">100</span></span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>

            </div>
            <!--分割线-->
            <div class="hr hr32 hr-dotted line_"></div>

            <div class="row" style="    margin-top: -14px;">
                <div class="col-xs-12" id="_contentBox">
                    <div class="row">
                        <div class="col-sm-4 _myBranch">
                            <div class="_branchTitl "><i class="icon iconfont icon-dangan"></i>我的档案
                                <a href="${ctxPath}/user/toResume.action"><i id="introIcn" class="icon iconfont  icon-bianjiedit26"></i></a>
                            </div>
                            <ul class="marT">
                                <li>入党时间：<span><fmt:formatDate value="${user.regParty }" pattern="yyyy-MM-dd"/></li>
                    <li>性别：<span></span>
                                    <c:if test="${user.gender == 1 }">女</c:if>
                                    <c:if test="${user.gender == 0 }">男</c:if>
                                </li>
                                <li>民族：<span>${user.volk }</span></li>
                                <li>学历：<span>${user.education }</span></li>
                                <li>人员类别：<span>${user.postName }</span></li>
                                <li>工作岗位：<span>${user.oneJob }</span></li>
                            </ul>
                        </div>
                        <div class="col-sm-8 list">
                            <div class="widget-box transparent" id="recent-box">
                                <div class="widget-header">
                                    <h4 class="widget-title lighter smaller tissue">
                                        <i class=" ace-icon fa iconfont icon-xing "></i>支部组织生活
                                    </h4>

                                    <div class="widget-toolbar no-border">
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
            <!--分割线-->
            <div class="hr hr32 hr-dotted line_"></div>
            <div class="row" style=" margin-top: -17px;">
                <div class="col-xs-12" id="contentBox2">
                    <!--<div class="branchTit_1"><i class="icon iconfont icon-bi"></i>我的学习<span class="more">查看更多></span></div>-->
                    <div class="widget-header widget-header-flat mystu">
                        <h4 class="widget-title lighter branchTit_1">
                            <i class="ace-icon fa  iconfont icon-bi"></i> 我的学习
                        </h4>

                        <div class="widget-toolbar">
                            <a href="../study/toList.action?studytype=1" class="More">
                    查看更多
                    <i class="ace-icon fa fa-chevron-right"></i>
                </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 list_">
                            <ul id="voidTabl">
                                <li id="voidItm">
                                    <a href="javascript:;">
                                        <img src="${ctxPath}/modulepc/img/test.jpg">
                                        <div class="word">

                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            <!--分割线-->
            <div class="hr hr32 hr-dotted line_"></div>

            <div class="row" style="margin-bottom: 100px;margin-top: -28px;">
                <div class="col-xs-12" id="contentBox_">
                    <!--<div class="newN"><i class="icon iconfont icon-lingdang"></i>最新通知 <span class="more">查看更多></span></div>-->
                    <div class="widget-header widget-header-flat mystu">
                        <h4 class="widget-title lighter newN">
                            <i class="ace-icon fa iconfont icon-lingdang"></i> 最新通知
                        </h4>

                        <div class="widget-toolbar">
                            <a href="../noticeDetail/toList.action" class="More">
                    查看更多
                    <i class="ace-icon fa fa-chevron-right"></i>
                </a>
                        </div>
                    </div>

                    <div class="row listNotice">
                        <div class="col-sm-12 tableB">
                            <table border="0">
                                <thead>
                                    <tr>
                                        <th>标题</th>
                                        <th style="width: 20%">发送时间</th>
                                        <th style="width: 20%">通知类型</th>
                                        <th style="width: 20%">通知次数</th>
                                        <th style="width: 10%">状态</th>
                                    </tr>
                                </thead>
                                <tbody id="tabNot">
                                    <tr id="notItem" style="display: none;">
                                        <td id="noticeTitle"></td>
                                        <td id="updateTime">xxxx-yy-zz hh:mm</td>
                                        <td id="notName">通知</td>
                                        <td id="sendCount">3</td>
                                        <td id="state">未阅</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!--[if !IE]> -->
            <script type="text/javascript">
                window.jQuery || document.write("<script src='${ctxPath}/modulepc/assets/js/jquery.js'>" + "<" + "/script>");
            </script>
            <!-- <![endif]-->
            <!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='${ctxPath}/modulepc/assets/js/jquery1x.js'>" + "<" + "/script>");
</script>
<![endif]-->
            <script type="text/javascript">
                if ('ontouchstart' in document.documentElement) document.write("<script src='${ctxPath}/modulepc/assets/js/jquery.mobile.custom.js'>" + "<" + "/script>");
            </script>
            <script src="${ctxPath}/modulepc/assets/js/bootstrap.js"></script>
            <!--[if lte IE 8]>
<script src="${ctxPath}/modulepc/assets/js/excanvas.js"></script>
<![endif]-->
            <script src="${ctxPath}/modulepc/assets/js/flot/jquery.flot.js"></script>
            <script src="${ctxPath}/modulepc/assets/js/flot/jquery.flot.pie.js"></script>
            <script src="${ctxPath}/modulepc/assets/js/flot/jquery.flot.resize.js"></script>
            <script src="${ctxPath}/modulepc/assets/js/ace/elements.scroller.js"></script>
            <script src="${ctxPath}/modulepc/js/echarts.min.js"></script>
            <script type="text/javascript">
                jQuery(function($) {
                    var time = "true";
                    $("#introIcn").click(function() {
                        window.parent.shouyeB.trigger("click", time);
                    });

                    //控制表格第一个td变点点方法
                    $("tbody tr:even").css({
                        "background": "#f5f5f5"
                    });
                    var oTr = $("tbody tr");
                    for (var i = 0; i < oTr.length; i++) {
                        $(oTr[i]).find("td").eq(0).css({
                            textAlign: "left"
                        });
                        $(oTr[i]).find("td").eq(0).addClass("changeDot");
                        var oTdFirst = $(oTr[i]).find("td").eq(0).text();
                        $(oTr[i]).find("td").eq(0).attr("title", oTdFirst);
                    }


                    //柱状图   总活跃积分
                    // 基于准备好的dom，初始化echarts实例
                    var myChart_active = echarts.init(document.getElementById('activePoints'));
                    var option_active = {
                        color: ['#3398DB'],
                        tooltip: {
                            trigger: 'axis',
                            axisPointer: { // 坐标轴指示器，坐标轴触发有效
                                type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
                            }
                        },
                        grid: {
                            left: '0%',
                            right: '6%',
                            bottom: '3%',
                            containLabel: true
                        },
                        xAxis: [{
                            type: 'category',
                            data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                            axisTick: {
                                alignWithLabel: true
                            }
                        }],
                        yAxis: [{
                            type: 'value'
                        }],
                        series: [{
                            type: 'bar',
                            barWidth: '40%',
                            center: ['45%', '60%'],
                            data: [10, 52, 200, 334, 390, 330, 220],
                            itemStyle: {
                                normal: {
                                    label: {
                                        show: true,
                                        position: 'top'
                                    }

                                }
                            }
                        }]
                    };
                    // 使用刚指定的配置项和数据显示图表。
                    //myChart_active.setOption(option_active);

                    //柱状图   总学习积分
                    // 基于准备好的dom，初始化echarts实例
                    var myChart_study = echarts.init(document.getElementById('studyPoints'));
                    var option_study = {
                        color: ['#3398DB'],
                        tooltip: {
                            trigger: 'axis',
                            axisPointer: { // 坐标轴指示器，坐标轴触发有效
                                type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
                            }
                        },
                        grid: {
                            left: '0%',
                            right: '6%',
                            bottom: '3%',
                            containLabel: true
                        },
                        xAxis: [{
                            type: 'category',
                            data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                            axisTick: {
                                alignWithLabel: true
                            }
                        }],
                        yAxis: [{
                            type: 'value'
                        }],
                        series: [{
                            type: 'bar',
                            barWidth: '40%',
                            center: ['45%', '60%'],
                            data: [10, 52, 200, 334, 390, 330, 220],
                            itemStyle: {
                                normal: {
                                    label: {
                                        show: true,
                                        position: 'top'
                                    }

                                }
                            }
                        }]
                    };
                    // 使用刚指定的配置项和数据显示图表。
                    //myChart_study.setOption(option_study);

                    //饼状图 我的积分
                    // 基于准备好的dom，初始化echarts实例
                    var myChart_integral = echarts.init(document.getElementById('myStudyPoints'));
                    var option_integral = {
                        title: {
                            x: 'center'
                        },
                        tooltip: {
                            trigger: 'item',
                            formatter: "{a} <br/>{b} : {c} ({d}%)"
                        },
                        legend: {
                            bottom: 10,
                            left: 'center',
                            data: ['直接访问', '邮件营销', '联盟广告', '视频广告', '搜索引擎']
                        },
                        series: [{
                            name: '',
                            type: 'pie',
                            radius: '55%',
                            center: ['50%', '40%'],
                            data: [{
                                value: 335,
                                name: '直接访问'
                            }, {
                                value: 310,
                                name: '邮件营销'
                            }, {
                                value: 234,
                                name: '联盟广告'
                            }, {
                                value: 135,
                                name: '视频广告'
                            }, {
                                value: 1548,
                                name: '搜索引擎'
                            }],
                            itemStyle: {
                                emphasis: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                },
                                normal: {
                                    label: {
                                        show: true,
                                        formatter: '{b}:{d}%'
                                    },
                                    labelLine: {
                                        show: true
                                    }
                                }
                            }
                        }]
                    };

                    // 使用刚指定的配置项和数据显示图表。
                    //myChart_integral.setOption(option_integral);

                    //我的积分
                    $.ajax({
                        url: "../score/userScoreDetail.action",
                        type: "post",
                        data: {
                            userId: $("#userId").val()
                        },
                        dataType: "json",
                        contentType: "application/x-www-form-urlencoded; charset=utf-8",
                        success: function(data) {
                            if (data.length > 0) {
                                $(".mui-title").text(data[0].userName);
                            }

                            var studyTitles = [],
                                activeTitles = [];
                            var studyScores = [],
                                activeScores = [];
                            var totalStudyScore = 0,
                                totalActiveScore = 0;
                            var dataStudy = [];
                            var st = 0;

                            //活跃积分
                            var dataName_active = [];
                            var dataValue_active = [];
                            //学习积分
                            var dataName_study = [];
                            var dataValue_study = [];
                            //我的积分
                            var dataName_integral = [];
                            var dataValue_integral = [];

                            var comment = 0; //评论
                            var experience = 0; //心得
                            var Interaction = 0; //互动

                            for (var i = 0; i < data.length; i++) {
                                var dd = data[i];
                                if (dd._id < 400) {
                                    if (dd.typeName == "心得" || dd.typeName == "删除心得") {
                                        experience += dd.scoreTotal;
                                    } else {
                                        //我的积分
                                        dataName_integral.push(dd.typeName);
                                        dataValue_integral.push({
                                            value: dd.scoreTotal,
                                            name: dd.typeName
                                        });
                                    }
                                    //学习积分
                                    dataName_study.push(dd.typeName);
                                    dataValue_study.push(
                                        dd.scoreTotal
                                    );

                                } else { // 活跃
                                    //activeTitles.push(dd.typeName);
                                    //activeScores.push(dd.scoreTotal);
                                    if (dd.typeName == "评论" || dd.typeName == "删除评论") {
                                        comment += dd.scoreTotal;
                                    } else if (dd.typeName == "互动" || dd.typeName == "删除互动") {
                                        Interaction += dd.scoreTotal;
                                    } else {
                                        //我的积分
                                        dataName_integral.push(dd.typeName);
                                        dataValue_integral.push({
                                            value: dd.scoreTotal,
                                            name: dd.typeName
                                        });
                                    }

                                    //活跃积分
                                    dataName_active.push(dd.typeName);
                                    dataValue_active.push(
                                        dd.scoreTotal
                                    );
                                    //totalActiveScore += dd.scoreTotal;
                                }
                            }
                            //drawPieChart(placeholder, dataStudy);
                            //$("#totalStudyScore").text(totalStudyScore );
                            //$("#totalActiveScore").text(totalActiveScore );
                            dataName_integral.push("评论");
                            dataValue_integral.push({
                                value: comment,
                                name: "评论"
                            });
                            dataName_integral.push("互动");
                            dataValue_integral.push({
                                value: Interaction,
                                name: "互动"
                            });
                            dataName_integral.push("心得");
                            dataValue_integral.push({
                                value: experience,
                                name: "心得"
                            });
                            option_integral.legend.data = dataName_integral;
                            option_integral.series[0].data = dataValue_integral;
                            myChart_integral.setOption(option_integral);

                            option_study.xAxis[0].data = dataName_study;
                            option_study.series[0].data = dataValue_study;
                            myChart_study.setOption(option_study);

                            option_active.xAxis[0].data = dataName_active;
                            option_active.series[0].data = dataValue_active;
                            myChart_active.setOption(option_active);

                        }
                    })








                    //部门信息
                    var bumId = $("#bumenId").val();
                    $.ajax({
                        type: "post",
                        url: "../score/scoreRankingBumen.action",
                        dataType: "json",
                        contentType: "application/x-www-form-urlencoded; charset=utf-8",
                        success: function(data) {
                            $(".num").html(data.length);
                            for (var i = 0; i < data.length; i++) {
                                d = data[i];
                                if (bumId == d._id) {
                                    $(".R").html(i + 1);
                                }

                            }
                        }
                    });
                    $.ajax({
                        type: "post",
                        url: "../mine/bumenDetail.action",
                        data: {
                            'bumenId': bumId
                        },
                        dataType: "json",
                        contentType: "application/x-www-form-urlencoded; charset=utf-8",
                        success: function(data) {
                            $(".num1").html(data.count);
                        }
                    });
                    $.ajax({
                        type: "post",
                        url: "../score/bumenScoreDetail.action",
                        data: {
                            'bumenId': bumId
                        },
                        dataType: "json",
                        contentType: "application/x-www-form-urlencoded; charset=utf-8",
                        success: function(data) {
                            var scoreTotal = 0,
                                scoreTotalStudy = 0,
                                scoreTotalActive = 0;
                            for (var i = 0; i < data.length; i++) {
                                d = data[i];
                                scoreTotal += d.scoreTotal;
                                scoreTotalStudy += d.scoreStudy;
                                scoreTotalActive += d.scoreActivity;
                                if (data.length > 0) {
                                    $("#score_avg").text(parseInt(scoreTotal / data.length));
                                    $("#score_avg_study").text(parseInt(scoreTotalStudy / data.length));
                                    $("#score_avg_active").text(parseInt(scoreTotalActive / data.length));
                                }
                            }
                        }
                    });
                    //我的排名
                    var listItm1 = $("#itmStu");
                    listItm1.remove();
                    $.ajax({
                        type: "post",
                        url: "../score/scoreRankingUser.action",
                        dataType: "json",
                        contentType: "application/x-www-form-urlencoded; charset=utf-8",
                        success: function(data) {
                            var snum = data.length;
                            $(".blackC").text(snum);
                            if (snum > 5) snum = 5;
                            for (var i = 0; i < snum; i++) {
                                var d = data[i];
                                var listItem = listItm1.clone();
                                if (i == 0) {} else if (i == 1) {
                                    listItem.find(".ranking").attr("class", "ranking_T"); //设置Id为two的class属性。
                                } else if (i == 2) {
                                    listItem.find(".ranking").attr("class", "ranking_Th"); //设置Id为two的class属性。
                                } else {
                                    listItem.find(".ranking").html(i + 1);
                                    listItem.find(".ranking").attr("class", "rank_L"); //设置Id为two的class属性。

                                }
                                listItem.css('display', ''); //清除隐藏
                                listItem.find("#userName").html(d.name);
                                var avatar = d.avatar ? (qiniuRoot + d.avatar + '!avatar') : '${ctxPath}/modulepc/img/rehead.png';
                                listItem.find(".headT").find("img").attr("src", avatar);
                                listItem.find("#stolNum").text(d.scoreTotal);
                                $(".rankingList").append(listItem);
                            }
                            $(".rankingList").append('<a class="lookMore" href="${ctxPath}/user/toRanking.action">查看更多</a>');
                            $(".rankingList").append('&nbsp;');
                            for (var j = 0; j < data.length; j++) {
                                var d = data[j];
                                if ($("#userId").val() == d._id) {
                                    $(".redC").text(j + 1);
                                    $("#userNum").text(d.scoreTotal);
                                    break;
                                }
                            }
                        }
                    });
                    var listItm1cd = $("#notItem"); //通知公告
                    listItm1cd.remove();
                    /**
                     * 获取最新通知公告
                     */
                    function findNotice(size) {
                        //最新通知 
                        $.ajax({
                            type: "post",
                            url: "../noticeDetail/myNoticeDetailList.action",
                            data: {
                                'page': 1,
                                'size': size
                            },
                            dataType: "json",
                            contentType: "application/x-www-form-urlencoded; charset=utf-8",
                            success: function(data) {
                                var tab1 = $("#tabNot");
                                var notss = data.data;
                                for (var i = 0; i < notss.length; i++) {
                                    var notice = notss[i];
                                    var listItem = listItm1cd.clone();
                                    listItem.css('display', ''); //清楚隐藏
                                    listItem.find("#noticeTitle").attr("title", notice.noticeTitle);
                                    if (notice.notType == 0) {
                                        listItem.find("#noticeTitle").html('<a href="../noticeDetail/toDetail.action?noticeId=' + notice.noticeId + '" target="_blank" >' + notice.noticeTitle + '</a>');
                                    } else if (notice.notType == 1) {
                                        listItem.find("#noticeTitle").html('<a href="../noticeDetail/toMeeting.action?noticeId=' + notice.noticeId + '" target="_blank" >' + notice.noticeTitle + '</a>');
                                    }
                                    listItem.find("#updateTime").html(notice.updateTime);
                                    if (notice.notType == 0) {
                                        listItem.find("#notName").html("通知公告");
                                    } else if (notice.notType == 1) {
                                        listItem.find("#notName").html(notice.meetName);
                                    }
                                    listItem.find("#sendCount").html(notice.sendCount);
                                    if (notice.state == 0) {
                                        listItem.find("#state").html('<span style="color:red;">未阅</span>');
                                    } else if (notice.state == 1) {
                                        listItem.find("#state").html('已阅');
                                    }
                                    tab1.append(listItem);
                                }
                            }
                        });
                    }

                    function findConferdetail() {
                        //最新通知 
                        $.ajax({
                            type: "post",
                            url: _ctxPath + "/conference/detail/query.action",
                            data: {
                                'page': 1,
                                'size': 6
                            },
                            dataType: "json",
                            contentType: "application/x-www-form-urlencoded; charset=utf-8",
                            success: function(data) {
                                var tab1 = $("#tabNot");
                                var notss = data.data.data;
                                for (var i = 0; i < notss.length; i++) {
                                    var notice = notss[i];
                                    var listItem = listItm1cd.clone();
                                    listItem.css('display', ''); //清楚隐藏
                                    listItem.find("#noticeTitle").attr("title", notice.conference.title);
                                    if (parseInt(notice.conference.type / 100) == 1) {
                                        listItem.find("#noticeTitle").html('<a href="../noticeDetail/toDetail.action?noticeId=' + notice._id + '" target="_blank" >' + notice.conference.title + '</a>');
                                    } else {
                                        listItem.find("#noticeTitle").html('<a href="../noticeDetail/toMeeting.action?noticeId=' + notice._id + '" target="_blank" >' + notice.conference.title + '</a>');
                                    }
                                    listItem.find("#updateTime").html(notice.updateTime);
                                    listItem.find("#notName").html(notice.conference.meetTypeName);
                                    listItem.find("#sendCount").html(notice.sendCount);
                                    if (notice.state == 0) {
                                        listItem.find("#state").html('<span style="color:red;">未阅</span>');
                                    } else {
                                        listItem.find("#state").html('已阅');
                                    }
                                    tab1.append(listItem);
                                }
                                findNotice(10 - notss.length);
                            }
                        });
                    }

                    //我的学习
                    $.ajax({
                        type: "post",
                        async: false,
                        url: "../study/queryStudyList.action",
                        data: {
                            'page': 1,
                            'size': 6,
                            'type|integer': 1
                        },
                        contentType: "application/x-www-form-urlencoded; charset=utf-8",
                        success: function(data) {
                            getShopCustomesInfo(data.data);
                        }
                    });

                    function getShopCustomesInfo(data) {
                        var listItm1 = $("#voidItm"); //通知公告
                        listItm1.remove();
                        var tab1 = $("#voidTabl");
                        for (var i = 0; i < data.length; i++) {
                            var listItem = listItm1.clone();
                            listItem.css('display', ''); //清楚隐藏
                            var stu = data[i];
                            listItem.find("a").attr('href', "../study/toStudyau.action?studyId=" + stu._id);
                            listItem.find("a").attr('target', "_blank");
                            //var titileurl='<a href="../study/toStudyau.action?studyId='+stu._id+'" target="_blank" style="color:#393939;">'+stu.title+'</a>';
                            listItem.find("img").attr('src', stu.coverUrl);
                            listItem.find(".word").html(stu.title);
                            tab1.append(listItem);
                        }
                    }
                    finTenantConf();
                    /**
                     *  获取当租户对 三会一课 的处理方式                     
                     */
                    function finTenantConf() {
                        //获取当前租户对三会一课的配置信息
                        $.get(_ctxPath + "/conference/tenant/findTConf.action", {
                            "type": 1
                        }, function(data) {
                            if (data.data.mode == 101 || data.data.mode == 102) {
                                finConferTypes();
                                findConferdetail()
                            } else {
                                findNotice(10);
                                finmeetingTypes();
                            }
                        })
                    }

                    function finmeetingTypes() {
                        //支部组织生活
                        $.ajax({
                            type: "post",
                            async: false,
                            url: "../notice/meetingTypes.action",
                            contentType: "application/x-www-form-urlencoded; charset=utf-8",
                            success: function(data) {
                                var listItm1s = $("#notssItem");
                                listItm1s.remove();
                                var tab1 = $("#recent-tab");
                                var tbl = true;
                                for (var i = 0; i < data.length; i++) {
                                    var meet = data[i];
                                    if (meet.type == 1) {
                                        var listItems = listItm1s.clone();
                                        listItems.css('display', ''); //清楚隐藏
                                        getlistli(meet._id, tbl);
                                        if (tbl) {
                                            tbl = false;
                                        } else {
                                            listItems.removeClass("active");
                                        }
                                        listItems.find("a").html(meet.name);
                                        listItems.find("a").attr('href', "#" + meet._id);
                                        tab1.append(listItems);
                                    }
                                }
                            }
                        });
                    }

                    function finConferTypes() {
                        //支部组织生活
                        $.ajax({
                            type: "post",
                            async: false,
                            url: _ctxPath + "/conference/type/findTypes.action",
                            data: {
                                type: 1
                            },
                            contentType: "application/x-www-form-urlencoded; charset=utf-8",
                            success: function(data) {
                                if (data.success) {
                                    data = data.data;
                                    var listItm1s = $("#notssItem");
                                    listItm1s.remove();
                                    var tab1 = $("#recent-tab");
                                    var tbl = true;
                                    for (var i = 0; i < data.length; i++) {
                                        var meet = data[i];
                                        if (meet.type == 1) {
                                            var listItems = listItm1s.clone();
                                            listItems.css('display', ''); //清楚隐藏
                                            findConfer(meet._id, tbl);
                                            if (tbl) {
                                                tbl = false;
                                            } else {
                                                listItems.removeClass("active");
                                            }
                                            listItems.find("a").html(meet.name);
                                            listItems.find("a").attr('href', "#" + meet._id);
                                            tab1.append(listItems);
                                        }
                                    }
                                } else {
                                    layer.alert(data.message);
                                }
                            }
                        });
                    }


                    function getlistli(obj, bl) {
                        var bgTable = $("#bgTable");
                        //支部组织生活
                        $.ajax({
                            type: "post",
                            async: false,
                            url: "../notice/noticeMeetDetail.action",
                            data: {
                                'page': 1,
                                'size': 10,
                                'meetId': obj,
                                'forBumenId': bumId
                            },
                            contentType: "application/x-www-form-urlencoded; charset=utf-8",
                            success: function(data) {
                                var notices = data.data;
                                var tabl = "";
                                tabl += "<div id=\"" + obj + "\" class=\"tab-pane";
                                if (bl) {
                                    tabl += " active ";
                                }
                                tabl += "\">";
                                tabl += "<div class=\"widget-body\">";
                                tabl += "<div class=\"widget-main no-padding\">";
                                tabl += "<div class=\"dialogs\" id=\"diaid\">";
                                var bool = true;
                                for (var it = 0; it < notices.length; it++) {
                                    var notice = notices[it];
                                    var sthtml = "";
                                    sthtml += "<div id=\"dialItem\" class=\"itemdiv dialogdiv";
                                    if (bool) {
                                        sthtml += " specH ";
                                        bool = false;
                                    }
                                    sthtml += "\">";
                                    sthtml += "<div class=\"user\">";
                                    sthtml += "<img src=\"${ctxPath}/modulepc/img/redD.png\"/>";
                                    sthtml += "</div>";
                                    sthtml += "<div class=\"body\">";
                                    sthtml += "<div class=\"time\">";
                                    sthtml += "<i class=\"ace-icon fa fa-clock-o\"></i>";
                                    sthtml += "<span class=\"timeS\">" + notice.attendtimeFormat + "</span>";
                                    sthtml += "</div>";
                                    sthtml += "<div class=\"name\">";
                                    sthtml += "<i class=\"ace-icon fa fa-caret-right\"></i>";
                                    sthtml += "<a target=\"_blank\" href=\"../noticeDetail/toMeeting.action?noticeId=" + notice._id + "\">" + notice.title + "</a>";
                                    sthtml += "</div>";
                                    sthtml += "<div style='margin-left: -2px;'><i class=\"ace-icon fa iconfont icon-ddian\"></i><span class='pdzi'>" + notice.address + "</span></div>";
                                    sthtml += "<div class=\"text\">";
                                    var strs = new Array(); //定义一数组 
                                    try {
                                        if (Date.parse(new Date()) > notice.attendtime) {
                                            strs = notice.tolReach.split("/"); //字符分割 
                                            sthtml += "<span>实到人数</span><span class=\"onTime\">" + strs[0] + "人</span>";
                                            sthtml += "<span>应到人数</span><span class=\"onTime\">" + strs[1] + "人</span>";
                                        } else {
                                            strs = notice.tolRedaer.split("/"); //字符分割 
                                            sthtml += "<span>已阅</span><span class=\"onTime\">" + strs[0] + "人</span>";
                                            sthtml += "<span>未阅</span><span class=\"onTime\">" + (strs[1] - strs[0]) + "人</span>";
                                        }
                                    } catch (e) {
                                        // TODO: handle exception
                                    }
                                    sthtml += "</div>";
                                    sthtml += "</div>";
                                    sthtml += "</div>";
                                    tabl += sthtml;
                                }
                                if (notices.length < 1) {
                                    tabl += "<br/><span style='text-align: center;height:30px;display:block;margin:0 auto;'>暂无数据</span>";
                                }
                                tabl += "</div>";
                                tabl += "</div>";
                                tabl += "</div>";
                                tabl += "</div>";
                                bgTable.append(tabl);
                            }
                        });
                    }

                    function findConfer(obj, bl) {
                        var bgTable = $("#bgTable");
                        //支部组织生活
                        $.ajax({
                            type: "post",
                            async: false,
                            url: _ctxPath + "/conference/queryLook.action",
                            data: {
                                'page': 1,
                                'size': 20,
                                'meetType': obj,
                            },
                            contentType: "application/x-www-form-urlencoded; charset=utf-8",
                            success: function(data) {
                                if (data.success) {
                                    var notices = data.data.data;
                                    var tabl = "";
                                    tabl += "<div id=\"" + obj + "\" class=\"tab-pane";
                                    if (bl) {
                                        tabl += " active ";
                                    }
                                    tabl += "\">";
                                    tabl += "<div class=\"widget-body\">";
                                    tabl += "<div class=\"widget-main no-padding\">";
                                    tabl += "<div class=\"dialogs\" id=\"diaid\">";
                                    var bool = true;
                                    for (var it = 0; it < notices.length; it++) {
                                        var notice = notices[it];
                                        var sthtml = "";
                                        sthtml += "<div id=\"dialItem\" class=\"itemdiv dialogdiv";
                                        if (bool) {
                                            sthtml += " specH ";
                                            bool = false;
                                        }
                                        sthtml += "\">";
                                        sthtml += "<div class=\"user\">";
                                        sthtml += "<img src=\"${ctxPath}/modulepc/img/redD.png\"/>";
                                        sthtml += "</div>";
                                        sthtml += "<div class=\"body\">";
                                        sthtml += "<div class=\"time\">";
                                        sthtml += "<i class=\"ace-icon fa fa-clock-o\"></i>";
                                        sthtml += "<span class=\"timeS\">" + notice.formatAttendtime + "</span>";
                                        sthtml += "</div>";
                                        sthtml += "<div class=\"name\">";
                                        sthtml += "<i class=\"ace-icon fa fa-caret-right\"></i>";
                                        sthtml += "<a target=\"_blank\" href=\"../noticeDetail/toMeeting.action?noticeId=" + notice._id + "\">" + notice.title + "</a>";
                                        sthtml += "</div>";
                                        sthtml += "<div style='margin-left: -2px;'><i class=\"ace-icon fa iconfont icon-ddian\"></i><span class='pdzi'>" + notice.address + "</span></div>";
                                        sthtml += "<div class=\"text\">";
                                        var strs = new Array(); //定义一数组 
                                        try {
                                            if (Date.parse(new Date()) > notice.attendtime) {
                                                strs = notice.tolReach.split("/"); //字符分割 
                                                sthtml += "<span>实到人数</span><span class=\"onTime\">" + strs[0] + "人</span>";
                                                sthtml += "<span>应到人数</span><span class=\"onTime\">" + strs[1] + "人</span>";
                                            } else {
                                                strs = notice.tolRedaer.split("/"); //字符分割 
                                                sthtml += "<span>已阅</span><span class=\"onTime\">" + strs[0] + "人</span>";
                                                sthtml += "<span>未阅</span><span class=\"onTime\">" + (strs[1] - strs[0]) + "人</span>";
                                            }
                                        } catch (e) {
                                            // TODO: handle exception
                                        }
                                        sthtml += "</div>";
                                        sthtml += "</div>";
                                        sthtml += "</div>";
                                        tabl += sthtml;
                                    }
                                    if (notices.length < 1) {
                                        tabl += "<br/><span style='text-align: center;height:30px;display:block;margin:0 auto;'>暂无数据</span>";
                                    }
                                    tabl += "</div>";
                                    tabl += "</div>";
                                    tabl += "</div>";
                                    tabl += "</div>";
                                    bgTable.append(tabl);
                                } else {
                                    layer.alert(data.message);
                                }
                            }
                        });
                    }
                    $('.dialogs,.comments').ace_scroll({
                        size: 300
                    });
                })
            </script>
        </body>

        </html>