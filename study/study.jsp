<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/modulepc/resources/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
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
    <link href="${ctxPath}/modulepc/css/study.css" rel="stylesheet"/>
</head>

<body class="no-skin">
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <!--<div class="row">-->
                <!--<div class="col-xs-12" id="contentStudy">-->
                    <!--&lt;!&ndash;<div class="branchTit_1"><i class="icon iconfont icon-bi"></i>我的学习<span class="more">查看更多></span></div>&ndash;&gt;-->
                    <!--<div class="widget-header widget-header-flat mystu">-->
                        <!--<h4 class="widget-title lighter branchTit_1">-->
                            <!--<i class="ace-icon fa  iconfont icon-zhuanti"></i>-->
                            <!--专题学习-->
                        <!--</h4>-->

                        <!--<div class="widget-toolbar">-->
                            <!--<a href="#" class="More">-->
                                <!--查看更多-->
                                <!--<i class="ace-icon fa fa-chevron-right"></i>-->
                            <!--</a>-->
                        <!--</div>-->
                    <!--</div>-->
                    <!--<div class="row">-->
                        <!--<div class="col-sm-12 list_" >-->
                            <!--<ul>-->
                                <!--<li>-->
                                    <!--<a href="javascript:;">-->
                                        <!--<img src="${ctxPath}/modulepc/img/test.jpg">-->
                                        <!--<div class="word">-->
                                            <!--能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办-->
                                        <!--</div>-->
                                        <!--<div class="classT"><span class="stued">已学习80%</span><span class="lesson">共12课时</span></div>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li>-->
                                    <!--<a href="javascript:;">-->
                                        <!--<img src="${ctxPath}/modulepc/img/test.jpg">-->
                                        <!--<div class="word">-->
                                            <!--能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办-->
                                        <!--</div>-->
                                        <!--<div class="classT"><span class="stued">已学习80%</span><span class="lesson">共12课时</span></div>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li>-->
                                    <!--<a href="javascript:;">-->
                                        <!--<img src="${ctxPath}/modulepc/img/test.jpg">-->
                                        <!--<div class="word">-->
                                            <!--能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办-->
                                        <!--</div>-->
                                        <!--<div class="classT"><span class="stued">已学习80%</span><span class="lesson">共12课时</span></div>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li>-->
                                    <!--<a href="javascript:;">-->
                                        <!--<img src="${ctxPath}/modulepc/img/test.jpg">-->
                                        <!--<div class="word">-->
                                            <!--能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办-->
                                        <!--</div>-->
                                        <!--<div class="classT"><span class="stued">已学习80%</span><span class="lesson">共12课时</span></div>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li>-->
                                    <!--<a href="javascript:;">-->
                                        <!--<img src="${ctxPath}/modulepc/img/test.jpg">-->
                                        <!--<div class="word">-->
                                            <!--能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办-->
                                        <!--</div>-->
                                        <!--<div class="classT"><span class="stued">已学习80%</span><span class="lesson">共12课时</span></div>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li>-->
                                    <!--<a href="javascript:;">-->
                                        <!--<img src="${ctxPath}/modulepc/img/test.jpg">-->
                                        <!--<div class="word">-->
                                            <!--能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办-->
                                        <!--</div>-->
                                        <!--<div class="classT"><span class="stued">已学习80%</span><span class="lesson">共12课时</span></div>-->
                                    <!--</a>-->
                                <!--</li>-->
                            <!--</ul>-->
                        <!--</div>-->
                    <!--</div>-->
                <!--</div>-->
            <!--</div>-->
            <!--分割线-->
            <!--<div class="hr hr32 hr-dotted line_"></div>-->
            <div class="row">
                <div class="col-xs-12" id="contentVideo">
                    <!--<div class="branchTit_1"><i class="icon iconfont icon-bi"></i>我的学习<span class="more">查看更多></span></div>-->
                    <div class="widget-header widget-header-flat mystu">
                        <h4 class="widget-title lighter branchTit_1">
                            <i class="ace-icon fa  iconfont icon-shipin"></i>
                            视频学习
                        </h4>

                        <div class="widget-toolbar">
                            <a href="#" class="More">
                                查看更多
                                <i class="ace-icon fa fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 list_" >
                            <ul>
                                <li>
                                    <a href="javascript:;">
                                        <img src="${ctxPath}/modulepc/img/test.jpg">
                                        <div class="word">
                                            能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <img src="${ctxPath}/modulepc/img/test.jpg">
                                        <div class="word">
                                            能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <img src="${ctxPath}/modulepc/img/test.jpg">
                                        <div class="word">
                                            能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <img src="${ctxPath}/modulepc/img/test.jpg">
                                        <div class="word">
                                            能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <img src="${ctxPath}/modulepc/img/test.jpg">
                                        <div class="word">
                                            能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <img src="${ctxPath}/modulepc/img/test.jpg">
                                        <div class="word">
                                            能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办
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
            <div class="row">
                <div class="col-xs-12" id="contentAudio">
                    <!--<div class="branchTit_1"><i class="icon iconfont icon-bi"></i>我的学习<span class="more">查看更多></span></div>-->
                    <div class="widget-header widget-header-flat mystu qxl">
                        <h4 class="widget-title lighter branchTit_1">
                            <i class="ace-icon fa  iconfont icon-yinpin"></i>
                            音频学习
                        </h4>

                        <div class="widget-toolbar">
                            <a href="#" class="More">
                                查看更多
                                <i class="ace-icon fa fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 tableB">
                            <table border="0">
                                <tr>
                                    <td><a><i class="ace-icon fa icon-yinpin1  iconfont"></i>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a><i class="ace-icon fa icon-yinpin1  iconfont"></i>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a><i class="ace-icon fa icon-yinpin1  iconfont"></i>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a><i class="ace-icon fa icon-yinpin1  iconfont"></i>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a><i class="ace-icon fa icon-yinpin1  iconfont"></i>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a><i class="ace-icon fa icon-yinpin1  iconfont"></i>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a><i class="ace-icon fa icon-yinpin1  iconfont"></i>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a><i class="ace-icon fa icon-yinpin1  iconfont"></i>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a><i class="ace-icon fa icon-yinpin1  iconfont"></i>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a><i class="ace-icon fa icon-yinpin1  iconfont"></i>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!--分割线-->
            <!--<div class="hr hr32 hr-dotted line_"></div>-->
            <div class="row" style="margin-top: 20px;">
                <div class="col-xs-12" id="contentDocument">
                    <!--<div class="branchTit_1"><i class="icon iconfont icon-bi"></i>我的学习<span class="more">查看更多></span></div>-->
                    <div class="widget-header widget-header-flat mystu qxl">
                        <h4 class="widget-title lighter branchTit_1">
                            <i class="ace-icon fa  iconfont icon-wendang"></i>
                            文档阅读
                        </h4>

                        <div class="widget-toolbar">
                            <a href="#" class="More">
                                查看更多
                                <i class="ace-icon fa fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 tableB">
                            <table border="0">
                                <tr>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!--分割线-->
            <!--<div class="hr hr32 hr-dotted line_"></div>-->
            <div class="row" style="margin-top: 20px;">
                <div class="col-xs-12" id="contentExam">
                    <!--<div class="branchTit_1"><i class="icon iconfont icon-bi"></i>我的学习<span class="more">查看更多></span></div>-->
                    <div class="widget-header widget-header-flat mystu qxl">
                        <h4 class="widget-title lighter branchTit_1">
                            <i class="ace-icon fa  iconfont icon-kaoshi"></i>
                            考试
                        </h4>

                        <div class="widget-toolbar">
                            <a href="#" class="More">
                                查看更多
                                <i class="ace-icon fa fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 tableB">
                            <table border="0">
                                <tr>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                </tr>
                                <tr>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                    <td><a>标题标题标题标题标题标题标题标题</a></td>
                                </tr>

                            </table>
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

<script type="text/javascript">
    jQuery(function($) {
        <!--控制表格第一个td变点点方法-->
        $("tr:even").css({"background":"#fafafa"});
        $("tr:odd").css({"background":"#F5F5F5"});
        var oTr=$("tr");
        for(var i=0;i<oTr.length;i++){
            $(oTr[i]).find("td").eq(3).css({"color":"#f4834b"});
            $(oTr[i]).find("td").eq(0).addClass("changeDot");
            var oTdFirst=$(oTr[i]).find("td").eq(0).text();
            $(oTr[i]).find("td").eq(0).attr("title",oTdFirst);
        }
    })
</script>
</body>
</html>
