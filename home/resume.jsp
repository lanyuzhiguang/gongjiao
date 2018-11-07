<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/chosen.css" />
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
    <link rel="stylesheet" href="${ctxPath}/modulepc/assets/css/bootstrap-editable.css" />
    <link href="${ctxPath}/modulepc/css/index.css" rel="stylesheet"/>
    <link href="${ctxPath}/modulepc/css/resume.css" rel="stylesheet"/>
</head>

<body class="no-skin">
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12 outW">
                    <div class="col-sm-8 rightB">
                        <div class="resum">个人简历</div>
                        <!--分割线-->
                        <div class="hr hr32 hr-dotted line_"></div>

                        <div class="widget-header widget-header-flat mystu">
                            <h4 class="widget-title lighter branchTit_1">
                                基本信息
                            </h4>

                            <div class="widget-toolbar" id="ck1" style="display: ;">
                                <a href="#" class="More" onclick="cksour1();">
                                    <i class="ace-icon  icon-bianji iconfont"></i>编辑
                                </a>
                            </div>
                        </div>
                        <div class="formT">
                            <div class="row" >
                                <div class="col-xs-12">
                                    <div class="col-xs-9">
                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 姓名 </label>

                                                <div class="col-sm-8">
                                                    <div class="fg-line">
														<input id="name" name="name" type="text" class="form-control" value=""
															minlength="2" maxlength="50" disabled="disabled" required>
													</div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-2 control-label no-padding-right" for="form-field-2">性别</label>

                                                <div class="col-sm-8">
                                                	<select disabled="disabled" class="chosen-select form-control" id="gender"
															name="gender" >
															<option value="0">男</option>
															<option value="1">女</option>
														</select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label no-padding-right" for="form-field-3">出生日期</label>

                                                <div class="col-sm-8">
													<input id="birthday" name="birthday" disabled="disabled"
														class="laydate-icon form-control layer-date" placeholder="" value="1950-01-01"
														data-mask="9999-99-99"
														laydate="{start:'${currentDate } 00:00:00',min:'1950-01-01 00:00:00',format : 'YYYY-MM-DD'}">
												</div>
                                            </div>
                                            <div class="form-group" id="sub1" style="display: none;">
												<div class="col-sm-12 col-sm-offset-2">
													<button onclick="submint1();" class="btn btn-primary" type="button">保存</button>
													<button onclick="ckreset1();" id="cancelBtn" class="btn bgm-gray m-l-20" type="button">取消</button>
												</div>
											</div>
                                        </form>
                                    </div>
                                    <div class="col-xs-3 topH">
                                            <div class="col-sm-10 topH" >
												<div style="width: 150px; height: 150px;" class="f-left">
													<img id="avatarimg"  class="editable img-responsive" />
												</div>
												<div class="f-left" style="width: 120px; padding-top: 10px;display: none;" id="img1">
													<button type="button" class="btn bgm-teal btn-block comp" style="background-color: #009688 !important;border: 0px;"
														comp="type:'fileupload',previewImgId:'avatarimg',valueId:'avatar'">选择上传图片</button>
												</div>
											</div>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <div class="widget-header widget-header-flat mystu">
                            <h4 class="widget-title lighter branchTit_1">
                                补充信息
                            </h4>

                            <div class="widget-toolbar" id="ck2" style="display: ;">
                                <a href="#" class="More" onclick="cksour2();">
                                    <i class="ace-icon  icon-bianji iconfont"></i>编辑
                                </a>
                            </div>
                        </div>
                        <div class="formT">
                            <div class="row" >
                                <div class="col-xs-12">
                                    <div class="col-xs-9">
                                        <form class="form-horizontal" role="form" id="from1">
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 民族 </label>
                                                <div class="col-sm-8">
                                                    <select class="chosen-select form-control" id="volk" disabled="disabled"
														name="volk" data-placeholder="请选择民族！">
														<option value="">请选择</option>
														<option value="汉族">汉族</option>
														<option value="蒙古族">蒙古族</option>
														<option value="回族">回族</option>
														<option value="藏族">藏族</option>
														<option value="维吾尔族">维吾尔族</option>
														<option value="苗族">苗族</option>
														<option value="彝族">彝族</option>
														<option value="壮族">壮族</option>
														<option value="布依族">布依族</option>
														<option value="朝鲜族">朝鲜族</option>
														<option value="满族">满族</option>
														<option value="侗族">侗族</option>
														<option value="瑶族">瑶族</option>
														<option value="白族">白族</option>
														<option value="土家族">土家族</option>
														<option value="哈尼族">哈尼族</option>
														<option value="哈萨克族">哈萨克族</option>
														<option value="傣族">傣族</option>
														<option value="黎族">黎族</option>
														<option value="傈僳族">傈僳族</option>
														<option value="佤族">佤族</option>
														<option value="畲族">畲族</option>
														<option value="高山族">高山族</option>
														<option value="拉祜族">拉祜族</option>
														<option value="水族">水族</option>
														<option value="东乡族">东乡族</option>
														<option value="纳西族">纳西族</option>
														<option value="景颇族">景颇族</option>
														<option value="柯尔克孜族">柯尔克孜族</option>
														<option value="土族">土族</option>
														<option value="达斡尔族">达斡尔族</option>
														<option value="仫佬族">仫佬族</option>
														<option value="羌族">羌族</option>
														<option value="布朗族">布朗族</option>
														<option value="撒拉族">撒拉族</option>
														<option value="毛南族">毛南族</option>
														<option value="仡佬族">仡佬族</option>
														<option value="锡伯族">锡伯族</option>
														<option value="阿昌族">阿昌族</option>
														<option value="普米族">普米族</option>
														<option value="塔吉克族">塔吉克族</option>
														<option value="怒族">怒族</option>
														<option value="乌孜别克族">乌孜别克族</option>
														<option value="俄罗斯族">俄罗斯族</option>
														<option value="鄂温克族">鄂温克族</option>
														<option value="德昂族">德昂族</option>
														<option value="保安族">保安族</option>
														<option value="裕固族">裕固族</option>
														<option value="京族">京族</option>
														<option value="塔塔尔族">塔塔尔族</option>
														<option value="独龙族">独龙族</option>
														<option value="鄂伦春族">鄂伦春族</option>
														<option value="赫哲族">赫哲族</option>
														<option value="门巴族">门巴族</option>
														<option value="珞巴族">珞巴族</option>
														<option value="基诺族">基诺族</option>
														<option value="其他族">其他族</option>
														<option value="外国血统">外国血统</option>
														<option value="外国民族">外国民族</option>
													</select>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-2 control-label no-padding-right" for="form-field-2">入党时间</label>

                                                <div class="col-sm-8">
                                                    <input id="regParty" name="regParty"
														class="laydate-icon form-control layer-date" placeholder="" disabled="disabled"
														data-mask="9999-99-99"
														laydate="{start:'${currentDate } 00:00:00',min:'1921-07-01 00:00:00',format : 'YYYY-MM-DD'}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 毕业院校 </label>

                                                <div class="col-sm-8">
                                                   <input disabled="disabled" id="academy" name="academy" type="text" class="form-control" minlength="2" maxlength="50" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-2 control-label no-padding-right" for="form-field-2">学历情况</label>

                                                <div class="col-sm-8">
                                                    <select class="chosen-select form-control" id="education" disabled="disabled"
															name="education" >
															<option value="">请选择</option>
															<option value="博士研究生">博士研究生</option>
															<option value="硕士研究生">硕士研究生</option>
															<option value="硕士生班">硕士生班</option>
															<option value="中央党校研究生">中央党校研究生</option>
															<option value="省（区、市）委党校研究生">省（区、市）委党校研究生</option>
															<option value="大学">大学</option>
															<option value="大专">大专</option>
															<option value="大学普通班">大学普通班</option>
															<option value="第二学士学位班">第二学士学位班</option>
															<option value="中央党校大学">中央党校大学</option>
															<option value="省（区、市）委党校大学">省（区、市）委党校大学 </option>
															<option value="中央党校大专">中央党校大专</option>
															<option value="省（区、市）委党校大专">省（区、市）委党校大专</option>
															<option value="中等专科">中等专科</option>
															<option value="职业高中">职业高中</option>
															<option value="技工学校">技工学校 </option>
															<option value="普通高中">普通高中</option>
															<option value="初中">初中</option>
															<option value="小学">小学</option>
															<option value="其他">其他</option>
														</select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label no-padding-right" for="form-field-3">职业类型</label>

                                                <div class="col-sm-8">
                                                    <select class="chosen-select form-control" id="oneJob" disabled="disabled"
														name="oneJob" >
														<option value="">请选择</option>
														<option value="公务员">公务员</option>
														<option value="参照公务员法管理的工作人员">参照公务员法管理的工作人员</option>
														<option value="事业单位管理岗位">事业单位管理岗位</option>
														<option value="事业单位专业技术岗位">事业单位专业技术岗位</option>
														<option value="公有经济控制企业管理岗位">公有经济控制企业管理岗位</option>
														<option value="公有经济控制企业专业技术岗位">公有经济控制企业专业技术岗位</option>
														<option value="非公有经济控制企业管理岗位">非公有经济控制企业管理岗位</option>
														<option value="非公有经济控制企业专业技术岗位">非公有经济控制企业专业技术岗位</option>
														<option value="民办非企业管理岗位">民办非企业管理岗位</option>
														<option value="民办非企业专业技术岗位">民办非企业专业技术岗位</option>
														<option value="公有经济控制单位工勤岗位">公有经济控制单位工勤岗位</option>
														<option value="非公有企业工勤岗位">非公有企业工勤岗位</option>
														<option value="民办非企业工勤岗位">民办非企业工勤岗位</option>
														<option value="机关单位工勤岗位">机关单位工勤岗位</option>
														<option value="事业单位工勤岗位">事业单位工勤岗位</option>
														<option value="农牧渔业生产人员">农牧渔业生产人员</option>
														<option value="乡村医生">乡村医生</option>
														<option value="外出务工经商人员">外出务工经商人员</option>
														<option value="其他农牧渔民">其他农牧渔民</option>
														<option value="解放军、武警">解放军、武警</option>
														<option value="研究生毕业年级学生">研究生毕业年级学生</option>
														<option value="研究生一年级学生">研究生一年级学生</option>
														<option value="研究生其他年级学生">研究生其他年级学生</option>
														<option value="大学本科毕业年级学生">大学本科毕业年级学生</option>
														<option value="大学本科一年级学生">大学本科一年级学生</option>
														<option value="大学本科其他年级学生">大学本科其他年级学生</option>
														<option value="大学专科毕业年级学生">大学专科毕业年级学生</option>
														<option value="大学专科一年级学生">大学专科一年级学生</option>
														<option value="大学专科其他年级学生">大学专科其他年级学生</option>
														<option value="中等专业学校学生">中等专业学校学生</option>
														<option value="高中学生">高中学生</option>
														<option value="技工学校学生">技工学校学生</option>
														<option value="离休干部">离休干部</option>
														<option value="退休人员">退休人员</option>
														<option value="退职人员">退职人员</option>
														<option value="内部退养职工">内部退养职工</option>
														<option value="大学生村官">大学生村官</option>
														<option value="社区工作人员">社区工作人员</option>
														<option value="停薪留职人员">停薪留职人员</option>
														<option value="个体工商户中的从业人员">个体工商户中的从业人员</option>
														<option value="自由职业人员">自由职业人员</option>
														<option value="（转业）待安置、学生毕业未就业的人员">（转业）待安置、学生毕业未就业的人员</option>
														<option value="公派或因私出国、出境逾期未归的人员">公派或因私出国、出境逾期未归的人员</option>
														<option value="改革后不再保留原机关干部身份，党组织关系仍保留在原单位的人员">改革后不再保留原机关干部身份，党组织关系仍保留在原单位的人员</option>
														<option value="企业破产后，领取保险金或被辞退的职工中未重新就业的人员">企业破产后，领取保险金或被辞退的职工中未重新就业的人员</option>
														<option value="由于各种原因，已经离开本人的生产、工作岗位，并已不在本单位从事其他工作，但仍与单位保留劳动关系的职工（不包括内部退养职工）">
														由于各种原因，已经离开本人的生产、工作岗位，并已不在本单位从事其他工作，但仍与单位保留劳动关系的职工（不包括内部退养职工）
														</option>
														<option value="党组织关系在人才（劳动）服务中心，不明职业的人员">党组织关系在人才（劳动）服务中心，不明职业的人员</option>
														<option value="其他从业人员">其他从业人员</option>
														<option value="其他无业人员">其他无业人员</option>
													</select>
                                                </div>
                                            </div>
                                            <div class="form-group" id="sub2" style="display: none;">
												<div class="col-sm-12 col-sm-offset-2">
													<button onclick="submint2();" class="btn btn-primary" type="button">保存</button>
													<button onclick="ckreset2();" id="cancelBtn" class="btn bgm-gray m-l-20" type="button">取消</button>
												</div>
											</div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 hotTopice">
                        <div class="hotT">
                            <div class="rank " style="margin-top: 12px;">
                                <div class="branchTitl"  >个人简历完整度</div>
                                <div class="floatTip">
                                    <div class="ziL"></div>
                                    <div class="progress pos-rel" data-percent="66%">
                                        <div class="progress-bar" style="width:66%;"></div>
                                    </div>
                                </div>
                                <div class="integrity">
                                    <div>
                                        <i id="avats" class="icon-tongguo iconfont"></i>个人头像
                                    </div>
                                    <div>
                                        <i id="s1" class="icon-weitongguo iconfont"></i>基本信息
                                    </div>
                                    <div>
                                        <i id="s2" class="icon-weitongguo iconfont"></i>补充信息
                                    </div>
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
<script src="${ctxPath}/modulepc/assets/js/chosen.jquery.js"></script>
<script src="${ctxPath}/modulepc/assets/js/bootstrap.js"></script>
<!--[if lte IE 8]>
<script src="${ctxPath}/modulepc/assets/js/excanvas.js"></script>
<![endif]-->
<script src="${ctxPath}/modulepc/assets/js/ace/ace.js"></script>
<script src="${ctxPath}/modulepc/assets/js/ace/elements.fileinput.js"></script>
<script>
    $(function () {
    	/* $(".chosen-select").chosen().change(function(){
    	    //do something...
    	}); */
    	
    	
    	
        $(".changH").on('click', function(){
            var modal =
                '<div class="modal fade">\
                  <div class="modal-dialog">\
                   <div class="modal-content">\
                    <div class="modal-header">\
                        <button type="button" class="close" data-dismiss="modal">&times;</button>\
                        <h4 class="blue">更换头像</h4>\
                    </div>\
                    \
                    <form class="no-margin">\
                     <div class="modal-body">\
                        <div class="space-4"></div>\
                        <div style="width:75%;margin-left:12%;"><input type="file" name="file-input" /></div>\
                     </div>\
                    \
                     <div class="modal-footer center">\
                        <button type="submit" class="btn btn-sm btn-success"><i class="ace-icon fa fa-check"></i> 确定</button>\
                        <button type="button" class="btn btn-sm" data-dismiss="modal"><i class="ace-icon fa fa-times"></i> 取消</button>\
                     </div>\
                    </form>\
                  </div>\
                 </div>\
                </div>';


            var modal = $(modal);
            modal.modal("show").on("hidden", function(){
                modal.remove();
            });

            var working = false;

            var form = modal.find('form:eq(0)');
            var file = form.find('input[type=file]').eq(0);
            file.ace_file_input({
                style:'well',
                btn_choose:'点击选择头像',
                btn_change:null,
                no_icon:'ace-icon fa fa-picture-o',
                thumbnail:'small',
                before_remove: function() {
                    //don't remove/reset files while being uploaded
                    return !working;
                },
                allowExt: ['jpg', 'jpeg', 'png', 'gif'],
                allowMime: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
            });

            form.on('submit', function(){
                if(!file.data('ace_input_files')) return false;

                file.ace_file_input('disable');
                form.find('button').attr('disabled', 'disabled');
                form.find('.modal-body').append("<div class='center'><i class='ace-icon fa fa-spinner fa-spin bigger-150 orange'></i></div>");

                var deferred = new $.Deferred;
                working = true;
                deferred.done(function() {
                    form.find('button').removeAttr('disabled');
                    form.find('input[type=file]').ace_file_input('enable');
                    form.find('.modal-body > :last-child').remove();

                    modal.modal("hide");

                    var thumb = file.next().find('img').data('thumb');
                    if(thumb) $('#avatar2').get(0).src = thumb;

                    working = false;
                });


                setTimeout(function(){
                    deferred.resolve();
                } , parseInt(Math.random() * 800 + 800));

                return false;
            });

        });
    })
    
    
   	/* var gender = $("#genders");
    //gender.remove();
    var item = $("item");
    var gder = gender.clone();
    gder.find("input").attr("checked",true);
 */

   // $('#my_radio').prop('checked',true);
   // $('#my_radio').attr('class','active');
   // $('#my_radio').attr('checked','checked');

    //item.html(gder);
    /*****
     *将输入的字符串str转为UTF-8编码格式
     */
    function getUtf8(str){
    	str=$.trim(str);
    	if(str!=""&&str!=null&&str!=undefined){
    		return encodeURIComponent(encodeURIComponent(str));
    	}else{
    		return "";
    	}
    }
    function fnUull(str){
    	str=$.trim(str);
    	var blo=false;
    	if(str!=""&&str!=null&&str!=undefined){
    		blo=true;
    	}
    	return blo;
    }
    /*****
     *基本信息编辑点击
     */
    function cksour1(){
    	$("#ck1").css("display","none");
    	$("#sub1").css("display","");
    	$("#img1").css("display","");
    	//去除不可修改限制
    	//$("#name").attr("disabled",false);//当前用户名
	    $("#gender").attr("disabled",false);			//性别
	    $("#gender").trigger("chosen:updated");	//更新性别选中
	    $("#birthday").attr("disabled",false);
    }
    /*****
     *补充信息编辑点击
     */
	function cksour2(){
		$("#ck2").css("display","none");
		$("#sub2").css("display","");
		//去除不可修改限制
		$("#volk").attr("disabled",false);				//民族
	    $("#volk").trigger("chosen:updated");	//更新性别选中
	    $("#regParty").attr("disabled",false);		//入党时间
	    $("#academy").attr("disabled",false); 		//毕业院校
	    $("#education").attr("disabled",false);   //学历情况
	    $("#education").trigger("chosen:updated");//更新
	    $("#oneJob").attr("disabled",false);			//职业类型
	    $("#oneJob").trigger("chosen:updated"); //更新 
    }
	/*****
     *基本信息取消点击
     */
    function ckreset1(){
    	setuser();
    	
    	$("#ck1").css("display","");
    	$("#sub1").css("display","none");
    	$("#img1").css("display","none");
    	//添加不可修改限制
    	//$("#name").attr("disabled",true);//当前用户名
	    $("#gender").attr("disabled",true);			//性别
	    $("#gender").trigger("chosen:updated");	//更新性别选中
	    $("#birthday").attr("disabled",true);
	    
    }
    /*****
     *补充信息取消点击
     */
	function ckreset2(){
		setuser();
		
		$("#ck2").css("display","");
		$("#sub2").css("display","none");
		//添加不可修改限制
		$("#volk").attr("disabled",true);				//民族
	    $("#volk").trigger("chosen:updated");	//更新性别选中
	    $("#regParty").attr("disabled",true);		//入党时间
	    $("#academy").attr("disabled",true); 		//毕业院校
	    $("#education").attr("disabled",true);   //学历情况
	    $("#education").trigger("chosen:updated");//更新
	    $("#oneJob").attr("disabled",true);			//职业类型
	    $("#oneJob").trigger("chosen:updated"); //更新 
		
    }
    
    /*****
     *基本信息修改
     */
    function submint1(){
    	var name=$("#name").val();
    	var avatar=$("#avatar").val();
    	$.ajax({
	    	url:"../user/userUpBasic.action",
	    	type:"post",
	    	data:{'name': name,'gender':$("#gender").val(),'avatar':avatar,'birthdays':$("#birthday").val()},
	    	dataType:"json",
	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
	        success:function(data) {
	        	layer.alert("基本信息修改成功！");
	        	ckreset1();//隐藏可修改部分
	        }});
    }
    /*****
     *补充信息修改
     */
	function submint2(){
    	var volk=$("#volk").val();
    	var regParty=$("#regParty").val();
    	var academy=$("#academy").val();
    	var education=$("#education").val();
    	var oneJob=$("#oneJob").val();
		$.ajax({
	    	url:"../user/userUpSupplement.action",
	    	type:"post",
	    	data:{"volk": volk,'regPartys':regParty,'academy':academy,'education':education,'oneJob':oneJob},
	    	dataType:"json",
	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
	        success:function(data) {
	        	layer.alert("补充信息修改成功！");
	        	ckreset2();//隐藏可修改部分
	        }});
    }
    
    /****
     *设置简历界面信息
     */
    function setuser(){
    	/*******
    	 *用户信息获取
    	 */
    	$.ajax({
	    	url:"../user/mine.action",
	    	type:"post",
	    	dataType:"json",
	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
	        success:function(data) {
	        	var vanc=0;//完成度
	        	$("#name").val(data.name);//当前用户名
	        	if(fnUull(data.name)){
	        		vanc=Number(vanc)+10;
	        	}
	        	//<c:if test="${user.avatar != '' }">http://oq8xhwqd8.bkt.clouddn.com/${user.avatar }</c:if>
	        	$("#gender").val(data.gender);			//性别
	        	$("#gender").trigger("chosen:updated");	//更新性别选中
	        	if(fnUull(data.gender)){
	        		vanc=Number(vanc)+10;
	        	}
	        	if(fnUull(data.avatar)){
	        		  
		        	$("#avatarimg").attr("src","http://qiniu.thdangjian.com/"+data.avatar); //avatar:"5401428323128264773.jpeg"
	        		vanc=Number(vanc)+20;
	        		$("#avats").removeClass("icon-weitongguo");
	        		$("#avats").addClass("icon-tongguo");
	        	}else{
	        		//doc.removeClass("icon-tongguo");
		    	  	//doc.addClass("icon-weitongguo");
		    	  	if(data.tenantId == '5416928080940976859')
		    	  		$("#avatarimg").attr("src","../modulepc/img/rehead1.png");
	    				  else $("#avatarimg").attr("src","../modulepc/img/rehead.png");; 
	        		 //avatar:"5401428323128264773.jpeg"
	        		$("#avats").removeClass("icon-tongguo");
	        		$("#avats").addClass("icon-weitongguo");
	        	}
	        	$("#birthday").val(data.birthday);//设置生日
	        	if(fnUull(data.avatar)){
	        		vanc=Number(vanc)+10;
	        	}
	        	/***基础信息是否填完****/
	        	if(fnUull(data.name)&&fnUull(data.gender)&&fnUull(data.birthday)){
	        		$("#s1").removeClass("icon-weitongguo");
	        		$("#s1").addClass("icon-tongguo");
	        	}else{
	        		$("#s1").removeClass("icon-tongguo");
	        		$("#s1").addClass("icon-weitongguo");
	        	}
	        	
	        	
	        	
	        	$("#volk").val(data.volk);				//民族
	        	$("#volk").trigger("chosen:updated");	//更新
	        	if(fnUull(data.volk)){
	        		vanc=Number(vanc)+10;
	        	}
	        	$("#regParty").val(data.regParty);		//入党时间
	        	if(fnUull(data.regParty)){
	        		vanc=Number(vanc)+10;
	        	}
	        	$("#academy").val(data.academy); 		//毕业院校
	        	if(fnUull(data.academy)){
	        		vanc=Number(vanc)+10;
	        	}
	        	$("#education").val(data.education);    //学历情况
	        	if(fnUull(data.education)){
	        		vanc=Number(vanc)+10;
	        	}
	        	$("#education").trigger("chosen:updated");//更新
	        	$("#oneJob").val(data.oneJob);			//职业类型
	        	if(fnUull(data.oneJob)){
	        		vanc=Number(vanc)+10;
	        	}
	        	$("#oneJob").trigger("chosen:updated"); //更新 
	        	if(fnUull(data.volk)&&fnUull(data.regParty)&&fnUull(data.academy)&&fnUull(data.education)&&fnUull(data.oneJob)){
	        		$("#s2").removeClass("icon-weitongguo");
	        		$("#s2").addClass("icon-tongguo");
	        	}else{
	        		$("#s2").removeClass("icon-tongguo");
	        		$("#s2").addClass("icon-weitongguo");
	        	}
	        	$(".floatTip").find(".ziL").text("您的个人资料已完成"+vanc+"%");
	        	/*
	        	<div class="progress pos-rel" data-percent="66%">
                                        <div class="progress-bar" style="width:66%;"></div>
                                    </div>*/
	        	$(".floatTip").find(".pos-rel").attr("data-percent",vanc+"%");
	        	$(".floatTip").find(".progress-bar").css("width",vanc+"%");
	        }});
    }
    setuser();
	$('.chosen-select').chosen();
   
</script>
</body>
</html>
