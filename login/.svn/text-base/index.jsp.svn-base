<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ include file="/modulepc/resources/common.jsp"%>
        <%@ include file="/modulepc/common/report.jsp"%>
            <!-- 举报功能引入 -->
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
                <meta charset="utf-8" />
                <title></title>
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
                <link href="${ctxPath}/modulepc/css/index.css" rel="stylesheet" />
                <script src="${ctxPath}/modulepc/resources/js/zeroModal.min.js"></script>
                <link href="${ctxPath}/modulepc/css/zeroModal.css" rel="stylesheet" />
            </head>

            <body class="no-skin myBody" style="overflow: auto;">
                <div id="navbar" class="navbar navbar-default">
                    <script type="text/javascript">
                        try {
                            ace.settings.check('navbar', 'fixed')
                        } catch (e) {}
                    </script>
                    <div class="navbar-container" id="navbar-container">
                        <!--头部-->
                        <!--闭合菜单列表按钮-->
                        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
                        <div class="navbar-header pull-left">
                            <a href="#" class="navbar-brand">
                                <small>
                 <c:if test="${user.tenantName == null||user.tenantName==''}">
                                                                   基层e党建
                 </c:if>   
                 <c:if test="${user.tenantName != null&&user.tenantName!=''}">
                   ${user.tenantName}
                 </c:if>     
                </small>
                            </a>
                        </div>
                        <div class="navbar-buttons navbar-header pull-right" role="navigation">
                            <ul class="nav ace-nav">
                                <li class="purple" style="display: none;">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false" onclick="toUrl('${ctxPath}/systemMessage/toMessage.action')">
                                        <i class="ace-icon fa fa-bell"></i>
                                        <span class="badge badge-important" id="num"></span>
                                    </a>

                                    <ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                                        <li class="dropdown-header">
                                            <i class="ace-icon fa fa-exclamation-triangle"></i> 您的消息
                                        </li>

                                        <li class="dropdown-content ace-scroll" style="position: relative;">
                                            <div class="scroll-track">
                                                <div class="scroll-bar"></div>
                                            </div>
                                            <div class="scroll-content">
                                                <ul class="dropdown-menu dropdown-navbar navbar-pink">
                                                    <li>
                                                        <a href="#">
                                                            <div class="clearfix">
                                                                <span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														个人新消息
													</span>
                                                                <span class="pull-right badge badge-info" id="num0"></span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="dropdown-content ace-scroll" style="position: relative;">
                                            <div class="scroll-track">
                                                <div class="scroll-bar"></div>
                                            </div>
                                            <div class="scroll-content">
                                                <ul class="dropdown-menu dropdown-navbar navbar-pink">
                                                    <li>
                                                        <a href="#">
                                                            <div class="clearfix">
                                                                <span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														群体新消息
													</span>
                                                                <span class="pull-right badge badge-info" id="num1"></span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="dropdown-content ace-scroll" style="position: relative;">
                                            <div class="scroll-track">
                                                <div class="scroll-bar"></div>
                                            </div>
                                            <div class="scroll-content">
                                                <ul class="dropdown-menu dropdown-navbar navbar-pink">
                                                    <li>
                                                        <a href="#">
                                                            <div class="clearfix">
                                                                <span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														动态新提示
													</span>
                                                                <span class="pull-right badge badge-info" id="num2"></span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </li>

                                <li class="grey">
                                    <a href="logout.action">退出</a>
                                    <!-- <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="ace-icon fa icon-shezhi iconfont"></i>
                        
                    </a> -->

                                    <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                                        <li class="dropdown-header">
                                            <i class="ace-icon fa fa-check"></i> 设置
                                        </li>

                                        <li class="dropdown-content ace-scroll" style="position: relative;">
                                            <div class="scroll-track" style="display: none;">
                                                <div class="scroll-bar"></div>
                                            </div>
                                            <div class="scroll-content" style="max-height: 200px;">
                                                <ul class="dropdown-menu dropdown-navbar">
                                                    <li>
                                                        设置内容
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="main-container" id="main-container">
                    <script type="text/javascript">
                        try {
                            ace.settings.check('main-container', 'fixed')
                        } catch (e) {}
                    </script>
                    <!--侧边内容-->
                    <div id="sidebar" class="sidebar responsive">
                        <script type="text/javascript">
                            try {
                                ace.settings.check('sidebar', 'fixed')
                            } catch (e) {}
                        </script>
                        <!--侧边用户信息栏-->
                        <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                            <div class="sidebar-shortcuts-large info" id="sidebar-shortcuts-large" style="overflow: hidden;">
                                <div class="imgBox">
                                    <c:if test="${user.avatar == null||user.avatar==''}">
                                        <c:if test="${user.tenantId != '5416928080940976859'}">
                                            <img src="${ctxPath}/modulepc/img/rehead.png" style="width: 50px;height: 50px;">
                                        </c:if>
                                        <c:if test="${user.tenantId == '5416928080940976859'}">
                                            <img src="${ctxPath}/modulepc/img/rehead1.png" style="width: 50px;height: 50px;">
                                        </c:if>
                                    </c:if>

                                    <c:if test="${user.avatar!=null&&user.avatar!=''}">
                                        <img src="${qiniuImageHost}${user.avatar}" style="float: left;">
                                    </c:if>

                                </div>
                                <div style="float: left;padding-left: 10px;width:70%;margin-top: 12px;line-height: normal;">
                                    <div>${user.name}</div>
                                    <div>
                                        <span class="Dy"><!-- 0:群众 1:积极分子  2:发展对象3:预备党员 4:正式党员 5:入党申请人 -->
                    	<c:if test="${user.type == 0}">群众</c:if>
                    	<c:if test="${user.type == 1}">积极分子</c:if>
                    	<c:if test="${user.type == 2}">发展对象</c:if>
                    	<c:if test="${user.type == 3}">预备党员</c:if>
                    	<c:if test="${user.type == 4}">正式党员</c:if>
                    	<c:if test="${user.type == 5}">入党申请人</c:if>
                    </span>
                                        <!-- <span class="Dage">党龄: 6年</span> -->
                                    </div>

                                    <div class="zhiB" title="${user.bumenName}">${user.bumenName}</div>
                                </div>
                            </div>
                        </div>
                        <!--侧边菜单列表栏-->
                        <ul class="nav nav-list">
                            <li class="active">
                                <a class="shouyeB" href="javascript:;" data-html="home.action">
                                    <i class="menu-icon fa icon-shouye iconfont shouye"></i>
                                    <span class="menu-text topP">首页</span>
                                </a>
                                <b class="arrow"></b>
                            </li>
                            <li class="">
                                <a href="#" class="dropdown-toggle">
                                    <i class="menu-icon fa icon-xinwen xinwen iconfont"></i>
                                    <span class="menu-text" style="vertical-align: middle">
                        新闻
                    </span>
                                    <b class="arrow fa fa-angle-down"></b>
                                </a>
                                <b class="arrow"></b>
                                <ul class="submenu zixunLi">
                                    <c:if test="${user.userrole.newsAuditing == 'newsAuditing' && tenant.hasAuditing == 1}">
                                        <li class="">
                                            <a data-html="../news/toQuery.action">
                                                <i class="menu-icon fa fa-caret-right"></i> 新闻审核
                                            </a>
                                            <b class="arrow"></b>
                                        </li>
                                    </c:if>

                                    <c:if test="${tenant.hasNews != 1}">
                                        <!-- 如果租户没有开通新闻资源库的服务 -->
                                        <c:forEach items="${newsCategorys}" var="newsCategory">
                                            <c:if test="${fn:length(newsCategorys) > 0}">
                                                <c:if test="${newsCategory.islib != 1}">
                                                    <!-- 没有开通则仅显示非资源库新闻栏目 -->
                                                    <li class="">
                                                        <a data-html="${ctxPath}/news/toNews.action?categoryId=${newsCategory._id}&&islib=${newsCategory.islib}">
                                                            <i class="menu-icon fa fa-caret-right"></i> ${newsCategory.name}
                                                        </a>
                                                        <b class="arrow"></b>
                                                    </li>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${tenant.hasNews == 1}">
                                        <!-- 如果开通了新闻资源库服务 -->
                                        <c:forEach items="${newsCategorys}" var="newsCategory">
                                            <c:if test="${fn:length(newsCategorys) > 0}">
                                                <c:if test="${newsCategory.islib != 1}">
                                                    <!-- 用户新闻栏目 -->
                                                    <li class="">
                                                        <a data-html="${ctxPath}/news/toNews.action?categoryId=${newsCategory._id}&&islib=${newsCategory.islib}">
                                                            <i class="menu-icon fa fa-caret-right"></i> ${newsCategory.name}
                                                        </a>
                                                        <b class="arrow"></b>
                                                    </li>
                                                </c:if>
                                                <c:if test="${newsCategory.islib == 1}">
                                                    <!-- 资源库新闻栏目 -->
                                                    <li class="">
                                                        <a data-html="${ctxPath}/news/toNews.action?categoryId=${newsCategory._id}&&islib=${newsCategory.islib}">
                                                            <i class="menu-icon fa fa-caret-right"></i> ${newsCategory.name}
                                                        </a>
                                                        <b class="arrow"></b>
                                                    </li>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>

                                </ul>
                            </li>
                            <li class="">
                                <a href="#" class="dropdown-toggle">
                                    <i class="menu-icon fa icon-xuexi iconfont "></i>
                                    <span class="menu-text">学习</span>
                                    <b class="arrow fa fa-angle-down"></b>
                                </a>
                                <b class="arrow"></b>
                                <ul class="submenu  studyLi">
                                    <c:if test="${user.tenantId != '5416928080940976859'}">
                                        <li class="">
                                            <a href="javascript:;" data-html="${ctxPath}/study/tocatelist.action">
                                                <i class="menu-icon fa fa-caret-right"></i> 系列课程
                                            </a>
                                            <b class="arrow"></b>
                                        </li>
                                    </c:if>
                                    <li class="">
                                        <a href="javascript:;" data-html="${ctxPath}/study/toList.action?studytype=1">
                                            <i class="menu-icon fa fa-caret-right"></i> 视频
                                        </a>
                                        <b class="arrow"></b>
                                    </li>
                                    <li class="">
                                        <a href="javascript:;" data-html="${ctxPath}/study/toList.action?studytype=2">
                                            <i class="menu-icon fa fa-caret-right"></i> 音频
                                        </a>
                                        <b class="arrow"></b>
                                    </li>
                                    <!--li class="">
                        <a href="javascript:;" data-html="../study/toStudy.action">
                            <i class="menu-icon fa fa-caret-right"></i>
                            学习
                        </a>
                        <b class="arrow"></b>
                    </li-->
                                    <li class="">
                                        <a href="javascript:;" data-html="${ctxPath}/study/toList.action?studytype=3">
                                            <i class="menu-icon fa fa-caret-right"></i> 文档
                                        </a>
                                        <b class="arrow"></b>
                                    </li>
                                    <!--  
                    <li class="">
                        <a href="javascript:;" data-html="../study/toList.action?studytype=4">
                            <i class="menu-icon fa fa-caret-right"></i>
                            考试
                        </a>
                        <b class="arrow"></b>
                    </li>
               -->
                                    <li class="">
                                        <a href="javascript:;" data-html="${ctxPath}/study/gained/toList.action">
                                            <i class="menu-icon fa fa-caret-right"></i> 心得
                                        </a>
                                        <b class="arrow"></b>
                                    </li>
                                </ul>
                            </li>

                            <li class="">
                                <a href="#" class="dropdown-toggle">
                                    <i class="menu-icon fa icon-hudongxian iconfont"></i>
                                    <span class="menu-text"> 互动</span>
                                    <b class="arrow fa fa-angle-down"></b>
                                </a>
                                <b class="arrow"></b>
                                <ul class="submenu  HudLi">
                                    <li class="">
                                        <a href="javascript:;" data-html="${ctxPath}/group/toList.action">
                                            <i class="menu-icon fa fa-caret-right"></i> 互动消息
                                        </a>
                                        <b class="arrow"></b>
                                    </li>
                                    <li class="">
                                        <a href="javascript:;" data-html="${ctxPath}/group/togroupList.action">
                                            <i class="menu-icon fa fa-caret-right"></i> 全部群组
                                        </a>
                                        <b class="arrow"></b>
                                    </li>
                                </ul>
                            </li>
                            <c:if test="${user.tenantId != '7233956329901959'}">
                                <li class="" style="display:none;">
                                    <a href="#" class="dropdown-toggle">
                                        <i class="menu-icon fa icon-hudongxian iconfont"></i>
                                        <span class="menu-text"> 组织生活</span>
                                        <b class="arrow fa fa-angle-down"></b>
                                    </a>
                                    <b class="arrow"></b>
                                    <ul class="submenu  HudLi">
                                        <li class="">
                                            <a href="javascript:;" data-html="${ctxPath}/modulepc/conferActivities/threeclass/pcmyjoin.html">
                                                <i class="menu-icon fa fa-caret-right"></i> 三会一课
                                            </a>
                                            <b class="arrow"></b>
                                        </li>
                                        <li class="">
                                            <a href="javascript:;" data-html="${ctxPath}/modulepc/conferActivities/othermeet/pcmyjoin.html">
                                                <i class="menu-icon fa fa-caret-right"></i> 其他会议
                                            </a>
                                            <b class="arrow"></b>
                                        </li>
                                    </ul>
                                </li>
                            </c:if>
                            <li class="">
                                <a href="#" class="dropdown-toggle">
                                    <i class="menu-icon fa icon-guanli iconfont guanli"></i>
                                    <c:if test="${user.tenantId != '7233956329901959'}">
                                        <span class="menu-text" style="    vertical-align: middle;">管理 </span>
                                    </c:if>
                                    <c:if test="${user.tenantId == '7233956329901959'}">
                                        <span class="menu-text" style="    vertical-align: middle;">工作 </span>
                                    </c:if>
                                    <b class="arrow fa fa-angle-down"></b>
                                </a>
                                <b class="arrow"></b>
                                <ul class="submenu  ManageLi">

                                    <li class="">
                                        <a href="javascript:;" data-html="${ctxPath}/manage/mailbox/toquery.action">
                                            <i class="menu-icon fa fa-caret-right"></i> 书记信箱
                                        </a>
                                        <b class="arrow"></b>
                                    </li>

                                    <li class="">
                                        <a href="javascript:;" data-html="${ctxPath}/noticeDetail/toList.action">
                                            <i class="menu-icon fa fa-caret-right"></i> 通知公告
                                        </a>
                                        <b class="arrow"></b>
                                    </li>
                                    <c:if test="${user.tenantId == '947705827245406783'}">
                                        <li class="">
                                            <a href="javascript:;" data-html="${ctxPath}/modulepc/partymap/map.html" target="_blank">
                                                <i class="menu-icon fa fa-caret-right"></i> 组织地图
                                            </a>
                                            <b class="arrow"></b>
                                        </li>
                                    </c:if>

                                    <li class="" style="">
                                        <a href="javascript:;" data-html="${ctxPath}/noticeDetail/toOrgaList.action">
                                            <i class="menu-icon fa fa-caret-right"></i> 组织生活
                                        </a>
                                        <b class="arrow"></b>
                                    </li>

                                    <!--<ul class="submenu Message">-->
                                    <!--<li class="">-->
                                    <!--<a href="javascript:;" class="dropdown-toggle" data-html="PublishInform.html">-->
                                    <!--<i class="menu-icon fa fa-caret-right"></i>-->
                                    <!--发布通知-->
                                    <!--</a>-->
                                    <!--<b class="arrow"></b>-->
                                    <!--</li>-->
                                    <!--</ulmanage/bumen/findBumens>-->
                                    <li class="">
                                        <a href="javascript:;" data-html="${ctxPath}/manage/bumen/toList.action">
                                            <i class="menu-icon fa fa-caret-right"></i> 支部动态
                                        </a>
                                        <b class="arrow"></b>
                                    </li>
                                    <c:if test="${user.tenantId != '5416928080940976859'}">
                                        <c:if test="${user.userrole.adfee == 'adfee'}">
                                            <li class="">
                                                <a href="javascript:;" data-html="${ctxPath}/feerecord/toQuerya.action">
                                                    <i class="menu-icon fa fa-caret-right"></i> 党费缴纳管理
                                                </a>
                                                <b class="arrow"></b>
                                            </li>
                                        </c:if>
                                        <li class="">
                                            <a href="javascript:;" data-html="${ctxPath}/feerecord/toQuery.action">
                                                <i class="menu-icon fa fa-caret-right"></i> 党费缴纳
                                            </a>
                                            <b class="arrow"></b>
                                        </li>
                                        <c:if test="${user.tenantId != '7233956329901959'}">
                                            <li class="">
                                                <a href="javascript:;" data-html="${ctxPath}/manage/activity/toList.action">
                                                    <i class="menu-icon fa fa-caret-right"></i> 活动列表
                                                </a>
                                                <b class="arrow"></b>
                                            </li>
                                        </c:if>

                                        <li class="">
                                            <a href="javascript:;" data-html="${ctxPath}/organParty/toQuery.action">
                                                <i class="menu-icon fa fa-caret-right"></i> 党组织转接申请
                                            </a>
                                            <b class="arrow"></b>
                                        </li>
                                    </c:if>
                                    <c:if test="${user.tenantId == '7043656873635103160'}">
                                    </c:if>
                                </ul>
                            </li>

                            <!--  <c:if test="${user.userrole.adparty == 'adparty'}"> 
             <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa icon-guanli iconfont guanli" ></i>
                    <span class="menu-text"> 党组织及党员管理</span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>
                <ul class="submenu  HudLi">
                    <li class="">
                        <a href="javascript:;" data-html="${ctxPath}/bumen/toQuery.action?parentId=0">
                            <i class="menu-icon fa fa-caret-right"></i>
                            党组织管理
                        </a>
                        <b class="arrow"></b>
                    </li>
                    <li class="">
                        <a href="javascript:;" data-html="${ctxPath}/basic/user/toPartyQuery.action">
                            <i class="menu-icon fa fa-caret-right"></i>
                            党员管理
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>
            </c:if>
            
             <c:if test="${user.userrole.adunite == 'adunite'}"> 
             <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa icon-guanli iconfont guanli" ></i>
                    <span class="menu-text"> 组织机构及用户管理</span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>
                <ul class="submenu  HudLi">
                    <li class="">
                        <a href="javascript:;" data-html="${ctxPath}/adminunit/toQuery.action?parentId=0">
                            <i class="menu-icon fa fa-caret-right"></i>
                           组织机构管理
                        </a>
                        <b class="arrow"></b>
                    </li>
                    <li class="">
                        <a href="javascript:;" data-html="${ctxPath}/basic/adminUser/toQuery.action">
                            <i class="menu-icon fa fa-caret-right"></i>
                            用户管理
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>
            </c:if>
            -->
                            <c:if test="${user.tenantId != '5416928080940976859'}">
                                <c:if test="${user.userrole.Transoforganrelations == 'Transoforganrelations' || user.userrole.InPartyOrganization == 'InPartyOrganization'}">
                                    <li class="">
                                        <a href="#" class="dropdown-toggle">
                                            <i class="menu-icon"><img style="width: 1.65rem;height:auto"  src="${ctxPath}/modulepc/login/images/relation.png"></i>
                                            <span class="menu-text"> 党组织关系转接</span>
                                            <b class="arrow fa fa-angle-down"></b>
                                        </a>
                                        <b class="arrow"></b>
                                        <ul class="submenu  HudLi">
                                            <c:if test="${user.userrole.Transoforganrelations == 'Transoforganrelations'}">
                                                <li class="">
                                                    <a href="javascript:;" data-html="${ctxPath}/organParty/toQuerya.action">
                                                        <i class="menu-icon fa fa-caret-right"></i> 党组织关系转接办理
                                                    </a>
                                                    <b class="arrow"></b>
                                                </li>
                                            </c:if>
                                            <c:if test="${user.userrole.InPartyOrganization == 'InPartyOrganization'}">
                                                <li class="">
                                                    <a href="javascript:;" data-html="${ctxPath}/organParty/toQueryIn.action">
                                                        <i class="menu-icon fa fa-caret-right"></i> 系统外转入信息填报
                                                    </a>
                                                    <b class="arrow"></b>
                                                </li>
                                            </c:if>
                                        </ul>
                                    </li>
                                </c:if>
                            </c:if>
                            <c:if test="${user.tenantId != '5416928080940976859'}">
                                <li class="">
                                    <a href="#" class="dropdown-toggle">
                                        <i class="menu-icon"><img style="width: 1.65rem;height:auto"  src="${ctxPath}/modulepc/login/images/partyMemberDeveloper.png"></i>
                                        <span class="menu-text"> 党员发展</span>
                                        <b class="arrow fa fa-angle-down"></b>
                                    </a>
                                    <b class="arrow"></b>
                                    <ul class="submenu  HudLi">
                                        <c:if test="${user.type == 0}">
                                            <li class="">
                                                <a href="javascript:;" data-html="${ctxPath}/modulepc/partyDeveloping/applyforEnter.html">
                                                    <i class="menu-icon fa fa-caret-right"></i> 申请入党
                                                </a>
                                                <b class="arrow"></b>
                                            </li>
                                        </c:if>
                                        <c:if test="${user.type != 0}">
                                            <li class="">
                                                <a href="javascript:;" data-html="${ctxPath}/modulepc/partyDeveloping/developingObj4.html">
                                                    <i class="menu-icon fa fa-caret-right"></i> 我的入党历程
                                                </a>
                                                <b class="arrow"></b>
                                            </li>
                                        </c:if>
                                        <li class="" id="aditi" <c:if test="${user.userrole.DPartyMemberAdmin != 'DPartyMemberAdmin'}"> style="display: none;"</c:if> >
                            <a href="javascript:;" data-html="${ctxPath}/modulepc/partyDeveloping/joinPartyApplyer.html?toPag=0">
                                <i class="menu-icon fa fa-caret-right"></i> 发展党员管理
                            </a>
                            <b class="arrow"></b>
                            </li>
                            <li class="" <c:if test="${user.userrole.DPartyMemberAudit != 'DPartyMemberAudit'}">style="display: none;"</c:if>>
                                <a href="javascript:;" data-html="${ctxPath}/modulepc/partyDeveloping/joinPartyApplyer.html?toPag=5">
                                    <i class="menu-icon fa fa-caret-right"></i> 发展党员审批
                                </a>
                                <b class="arrow"></b>
                            </li>
                            <c:if test="${user.userrole.DPartyMemberStatistics == 'DPartyMemberStatistics'}">
                                <li class="">
                                    <a href="javascript:;" data-html="${ctxPath}/modulepc/partyDeveloping/prepareTransferFormal.html">
                                        <i class="menu-icon fa fa-caret-right"></i> 发展党员统计
                                    </a>
                                    <b class="arrow"></b>
                                </li>
                            </c:if>
                            </ul>
                            </li>
                            </c:if>
                            <c:if test="${
           			user.tenantId == '246556928683101080' 
           			||user.tenantId == '3539099714986067517'
           			||user.tenantId == '3853983858039474260'
           			||user.tenantId == '7043656873635103160'
           			}">
                                <li class="" style="">
                                    <a href="#" class="dropdown-toggle">
                                        <i class="menu-icon"><img style="width: 1.65rem;height:auto"  src="${ctxPath}/modulepc/login/images/partyCheckicon.png"></i>
                                        <span class="menu-text"> 党建考核</span>
                                        <b class="arrow fa fa-angle-down"></b>
                                    </a>
                                    <b class="arrow"></b>
                                    <ul class="submenu  HudLi">
                                        <c:if test="${user.userrole.PartyCheckAdmin == 'PartyCheckAdmin'}">
                                            <li class="">
                                                <a href="javascript:;" data-html="${ctxPath}/modulepc/partyCheck/rulesofCheck.html">
                                                    <i class="menu-icon fa fa-caret-right"></i> 考核规则设置
                                                </a>
                                                <b class="arrow"></b>
                                            </li>
                                            <%-- <li class="">
                        <a href="javascript:;" data-html="${ctxPath}/modulepc/partyCheck/checkStatic.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                          考核统计
                        </a>
                        <b class="arrow"></b>
                    </li> --%>
                                        </c:if>
                                        <li class="">
                                            <a href="javascript:;" data-html="${ctxPath}/modulepc/partyCheck/checkScore.html">
                                                <i class="menu-icon fa fa-caret-right"></i> 考核评分
                                            </a>
                                            <b class="arrow"></b>
                                        </li>
                                        <li class="">
                                            <a href="javascript:;" data-html="${ctxPath}/modulepc/partyCheck/resultsofcheck.html">
                                                <i class="menu-icon fa fa-caret-right"></i> 考核结果查询
                                            </a>
                                            <b class="arrow"></b>
                                        </li>
                                        <c:if test="${user.userrole.PartyCheckAdmin == 'PartyCheckAdmin'}">
                                            <li class="">
                                                <a href="javascript:;" data-html="${ctxPath}/modulepc/partyCheck/checkFillRecord.html">
                                                    <i class="menu-icon fa fa-caret-right"></i> 考核填报
                                                </a>
                                                <b class="arrow"></b>
                                            </li>
                                        </c:if>
                                    </ul>
                                </li>
                            </c:if>
                            <%--民主测评功能，张良修改，begin,20181031--%>
                                <!-- user.tenantId == '246556928683101080'
           			||user.tenantId == '3539099714986067517'
           			||user.tenantId == '3853983858039474260'
           			|| 
            	目前仅让测试时租户test内用户能够看到
            -->
                                <c:if test="${
           			user.tenantId == '7043656873635103160' || user.tenantId == '67176969929902824596650'
           			}">
                                    <li class="">
                                        <a href="#" class="dropdown-toggle">
                                            <i class="menu-icon"><img style="width: 1.65rem;height:auto"  src="${ctxPath}/modulepc/login/images/partyCheckicon.png"></i>
                                            <span class="menu-text"> 民主测评</span>
                                            <b class="arrow fa fa-angle-down"></b>
                                        </a>
                                        <b class="arrow"></b>
                                        <ul class="submenu  HudLi">
                                            <c:if test="${user.userrole.PartyCheckAdmin == 'PartyCheckAdmin'}">
                                                <li class="">
                                                    <a href="javascript:;" data-html="${ctxPath}/modulepc/partyCheck/chackGroup/rulesofCheck.html">
                                                        <i class="menu-icon fa fa-caret-right"></i> 考核规则设置
                                                    </a>
                                                    <b class="arrow"></b>
                                                </li>
                                                <li class="">
                                                    <a href="javascript:;" data-html="${ctxPath}/modulepc/partyCheck/chackGroup/checkStatic.html">
                                                        <i class="menu-icon fa fa-caret-right"></i> 考核统计
                                                    </a>
                                                    <b class="arrow"></b>
                                                </li>
                                            </c:if>
                                            <li class="">
                                                <a href="javascript:;" data-html="${ctxPath}/modulepc/partyCheck/chackGroup/checkScore.html">
                                                    <i class="menu-icon fa fa-caret-right"></i> 考核评分
                                                </a>
                                                <b class="arrow"></b>
                                            </li>
                                            <li class="" style="display:none;">
                                                <!-- 民主测评的数据与逻辑使该功能属于无意义的存在所以隐藏该功能 -->
                                                <a href="javascript:;" data-html="${ctxPath}/modulepc/partyCheck/chackGroup/resultsofcheck.html">
                                                    <i class="menu-icon fa fa-caret-right"></i> 考核结果查询
                                                </a>
                                                <b class="arrow"></b>
                                            </li>
                                            <c:if test="${user.userrole.PartyCheckAdmin == 'PartyCheckAdmin'}">
                                                <li class="">
                                                    <a href="javascript:;" data-html="${ctxPath}/modulepc/partyCheck/chackGroup/checkFillRecord.html">
                                                        <i class="menu-icon fa fa-caret-right"></i> 考核填报
                                                    </a>
                                                    <b class="arrow"></b>
                                                </li>
                                            </c:if>
                                        </ul>
                                    </li>
                                </c:if>
                                <%--民主测评功能，张良修改，end,20181031--%>
                                    <c:if test="${user.tenantId != '5416928080940976859'}">
                                        <c:if test="${user.userrole.PlanWorkType == 'PlanWorkType' 
            || user.userrole.PlanWorkInput == 'PlanWorkInput' || user.userrole.PlanWorkFilll == 'PlanWorkFilll'
            || user.userrole.PlanWorkStatis == 'PlanWorkStatis'}">
                                            <li class="">
                                                <a href="#" class="dropdown-toggle">
                                                    <i class="menu-icon"><img style="width: 1.65rem;height:auto"   src="${ctxPath}/modulepc/login/images/workManage.png"></i>
                                                    <span class="menu-text"> 计划管理</span>
                                                    <b class="arrow fa fa-angle-down"></b>
                                                </a>
                                                <b class="arrow"></b>
                                                <ul class="submenu  HudLi">
                                                    <c:if test="${user.userrole.PlanWorkType == 'PlanWorkType' }">
                                                        <li class="">
                                                            <a href="javascript:;" data-html="${ctxPath}/modulepc/workManage/taskKindManage.html">
                                                                <i class="menu-icon fa fa-caret-right"></i> 任务类型管理
                                                            </a>
                                                            <b class="arrow"></b>
                                                        </li>
                                                    </c:if>
                                                    <c:if test="${user.userrole.PlanWorkInput == 'PlanWorkInput' }">
                                                        <li class="">
                                                            <a href="javascript:;" data-html="${ctxPath}/modulepc/workManage/EntryPlan.html">
                                                                <i class="menu-icon fa fa-caret-right"></i> 录入计划
                                                            </a>
                                                            <b class="arrow"></b>
                                                        </li>
                                                    </c:if>
                                                    <c:if test="${user.userrole.PlanWorkFilll == 'PlanWorkFilll' }">
                                                        <li class="">
                                                            <a href="javascript:;" data-html="${ctxPath}/modulepc/workManage/organizationPlanFill.html">
                                                                <i class="menu-icon fa fa-caret-right"></i> 组织计划
                                                            </a>
                                                            <b class="arrow"></b>
                                                        </li>
                                                    </c:if>
                                                    <c:if test="${user.userrole.PlanWorkStatis == 'PlanWorkStatis'}">
                                                        <li class="">
                                                            <a href="javascript:;" data-html="${ctxPath}/modulepc/workManage/statistics.html">
                                                                <i class="menu-icon fa fa-caret-right"></i> 统计汇总
                                                            </a>
                                                            <b class="arrow"></b>
                                                        </li>
                                                    </c:if>
                                                </ul>
                                            </li>
                                        </c:if>
                                    </c:if>
                                    <!-- <li>
            <a href="javascript:openMoniFrom(1,1,1);">
            <i class="menu-icon fa icon-jubao iconfont"></i>
            <span class="menu-text">举报</span>
            </a>
            <b class="arrow"></b>
            </li> -->
                        </ul>
                        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
                            <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
                        </div>
                        <script type="text/javascript">
                            try {
                                ace.settings.check('sidebar', 'collapsed')
                            } catch (e) {}
                        </script>
                    </div>
                    <!--主要内容部分-->
                    <div class="main-content" style="height:100vh;">
                        <iframe id="mainFrame" src="home.action" frameborder="0" style="border:0px;" height="95%"></iframe>
                    </div>
                </div>

                <!--[if !IE]> -->
                <script type="text/javascript">
                    window.jQuery || document.write("<script src='${ctxPath}/modulepc/assets/js/jquery.js'>" + "<" + "/script>");
                </script>
                <!-- <![endif]-->
                <!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='${ctxPath}/modulepc/assets/js/jquery1x.js'>"+"<"+"/script>");
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
                <!-- ace scripts -->
                <!--右上角的消息-->
                <script src="${ctxPath}/modulepc/assets/js/ace/elements.scroller.js"></script>
                <script src="${ctxPath}/modulepc/assets/js/ace/elements.wysiwyg.js"></script>
                <script src="${ctxPath}/modulepc/assets/js/ace/ace.js"></script>
                <!--控制左侧的菜单-->
                <script src="${ctxPath}/modulepc/assets/js/ace/ace.sidebar.js"></script>
                <script src="${ctxPath}/modulepc/js/index.js"></script>
                <script type="text/javascript">
                    if (loginbj == 'huateng') {
                        document.title = "华腾党建云";
                    } else {
                        document.title = "基层e党建";
                    }

                    function toUrl(url) {
                        var frame = document.getElementById("mainFrame");
                        frame.src = url;
                    }
                    var num = 0,
                        num0 = 0,
                        num1 = 0,
                        num2 = 0;

                    function getlongin() { //获取通知信息
                        $.ajax({
                            type: "post",
                            url: "${ctxPath}/systemMessage/sysMessageNum.action",
                            dataType: "json",
                            data: {
                                num: num,
                                num0: num0,
                                num1: num1,
                                num2: num2
                            },
                            contentType: "application/x-www-form-urlencoded; charset=utf-8",
                            success: function(data) {
                                if (data) { //对返回的数据进行处理
                                    $("#num").html(data.num); //赋值
                                    $("#num0").html(data.num0);
                                    $("#num1").html(data.num1);
                                    $("#num2").html(data.num2);
                                    num = data.num; //全局变量修改
                                    num0 = data.num0;
                                    num1 = data.num1;
                                    num2 = data.num2;
                                    //console.log(num+"****"+num0+"****"+num1+"****"+num2);
                                }
                                getlongin(); //再次获取信息
                            }
                        });
                    }
                    //	window.onload=function(){
                    //		getlongin();
                    //	}
                </script>
            </body>

            </html>