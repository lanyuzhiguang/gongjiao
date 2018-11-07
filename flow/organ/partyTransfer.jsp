<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/moduleweb/resources/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>基层e党建</title>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="../modulepc/assets/css/bootstrap.css" />
    <!-- page specific plugin styles -->
    <!-- inline styles related to this page -->
    <link href="../modulepc/css/iconfont.css" rel="stylesheet"/>
    <link rel="stylesheet" href="../modulepc/assets/css/font-awesome.css" />
    <link rel="stylesheet" href="../modulepc/assets/css/ace-fonts.css" />
    <!-- ace styles -->
    <link rel="stylesheet" href="../modulepc/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
    <!--[if lte IE 8]>
    <script src="../modulepc/assets/js/html5shiv.js"></script>
    <script src="../modulepc/assets/js/respond.js"></script>
    <![endif]-->
    <link href="../modulepc/css/index.css" rel="stylesheet"/>
    <link href="../modulepc/css/partyTransfer.css" rel="stylesheet"/>
    <link href="../moduleweb/resources/plugins/laydate/need/laydate.css"   rel="stylesheet">
    <style>
    	*{
			font-style: normal;
		}
    	.red{
    		color: red;
    	}
    	#province1,#city1,#district1{
    		margin-left: 0 !important;
    	}
		.bootstrap-select>.dropdown-toggle{
			width: 38% !important;
			z-index: 1;
			height: 20px;
		}    	
		.btn{
			color: #6a6060!important;
			text-shadow: 0 0 0 rgba(0, 0, 0, 0.25) !important;
		}
		.btn-group > .btn:first-child{
			margin: 0px 190px 2px 103px;
		}
		#kuang,#kuang1,#kuang2{
			display: inline-block !important;
		}
		.bootstrap-select.btn-group .dropdown-menu{
			min-width: 38%;
			margin: 0 48px -420px 190px;
			position: absolute;
			top: 18px;
			left: -86px;
		}
		.bootstrap-select>.btn-default:before {
		     position: absolute; 
		    top: 0;
		    right: 0;
		    appearance: media-mute-button;
		    -moz-appearance: media-mute-button;
		    -webkit-appearance: media-mute-button;
		    content: "";
		    height: calc(100% - 2px);
		    width: 30px;
		    background-color: #FFF;
		    background-position: right calc(100% - 7px);
		    background-repeat: no-repeat;
		    background-image: url(../img/select.png);
		    pointer-events: none;
		    z-index: 5;
		}
		.pull-left {
		    margin: -4px 0 0 2px;
		}
		.bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn){
			width: 124%;
			margin-left: -100px;
		}
		.bigger-120 {
		    font-size: 100% !important;
		}
		.sp1{
			display: inline-block;
			position: absolute;
			top: 0;
			left: 22%;
		}
		.sp2{
			display: inline-block;
			position: absolute;
			top: 0;
			left: 37%;
		}
		.sp3{
			margin-right:44px ;
			display: inline-block;
			position: absolute;
			top: 0;
			left: 53%;
		}
		#con{
			margin: 10px 0 10px 4px;
			position: relative;
		}
		.bootstrap-select.btn-group .dropdown-menu.inner{
			width: 124px;
		}
		.bootstrap-select>.btn-default{
			padding-top: 2px;
		}
		.dropdown-menu > li > a{
			padding: 7px 20px;
		}
		#con .ti{
			margin-right: 10px;
		}
		#sure{
			position: relative;
		}
		.sure{
			position: absolute;
			top: -2px;
			bottom: 0;
		}
		#df{
			position: relative;
		}
		input.ace.input-lg[type="radio"] + .lbl::before{
			font-size: 10px;
		    height: 16px;
		    line-height: 17px;
		    min-width: 16px;
		    top: 1px;
		    min-height: 9px;
		}
		.df{
			position: absolute;
			left: 24%;
			top: 0;
			width: 100%;
			height: 20px;
			font-size: 12px!important;
			color: #393939;
		}
	</style>
</head>
<body class="no-skin">
<!--主要内容部分-->
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12 wrapB">
                    <div class="partyTransfer">
                        <div><span>党员基本信息</span><span style="display: none;" class="edit" id="edit">修改</span></div>
                    </div>
                    <div class="peopleInfo">
                        <div>
                            <div><span class="required">*</span>姓名</div><div>${logUser.name }</div>
                        </div>
                       <div>
                           <div><span class="required">*</span>性别</div>
                           <c:if test="${logUser.gender == 0}"><div>男</div></c:if>
                           <c:if test="${logUser.gender == 1}"><div>女</div></c:if>
                       </div>
                       <div>
                           <div><span class="required">*</span>年龄</div><div id="age"></div>
                       </div>
                       <div>
                           <div><span class="required">*</span>民族</div><div>${logUser.volk }</div>
                       </div>
                       <div>
                           <div><span class="required">*</span>身份证号</div><div>${logUser.userID }</div>
                       </div>
                       <div>
                           <div><span class="required">*</span>人员类别</div><div>${logUser.postName }</div>
                       </div>
                    </div>
                    <div class="partyTransfer">
                        <div>转接信息</div>
                    </div>
                    <div class="transferList">
                        <div  class="selectR">
                            <div><span class="required">*</span>转接类型</div>
                            <div class="">
                                <div class="">
                                    <label>
                                        <input name="form-field-radio" type="radio" onclick="changTomen(1)" checked="checked" value="1" class="ace input-lg">
                                        <span class="lbl bigger-120">本组织内转</span>
                                    </label>
                                </div>
                                <div class="">
                                    <label>
                                        <input name="form-field-radio" type="radio" onclick="changTomen(2)" value="2" class="ace input-lg">
                                        <span class="lbl bigger-120">转出本组织</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    	<div id="con">
                    		<div class="">
                                <span class="tl"><i class="red">*</i>目的地区</span>
					    		<span class="sp1">
					    			<label id="province1">省</label>
									<select id="province" name="province">
										<option value="">请选择</option>
									</select>
					    		</span>
								<span class="sp2">
									<label id="city1">市</label>
									<select id="city" name="city">
										<option value="">请选择</option>
									</select>
								</span>
								<span class="sp3">
									<label id="district1">区</label>
									<select id="district" name="district">
										<option value="">请选择</option>   
									</select>
								</span>
                           </div>
	                    </div> 
	                        <div>
	                            <div><span class="required">*</span>所在支部</div><div>${logUser.bumenName }</div>
	                        </div>
	                        <div>
	                            <div><span class="required">*</span>目标党支部</div><div><input type="text" placeholder="党支部" onclick="showMenu();" value="" id="toBumen"/><!-- <a id="menuBtn" href="#" onclick="showMenu(); return false;">选择</a> --></div>
	                            <p>说明：若无法找到目的支部，请更改转接类型为转出本组织</p>
	                        </div>
	                        <div class="textB">
	                            <div><span class="required">*</span>转接原因</div>
	                            <div>
	                                <textarea rows="5" cols="30" id="opinion"></textarea>
	                            </div>
	                        </div>
	                        <div id="df">
	                            <div><span class="required">*</span>党费信息</div>
	                            <span class="df">
	                            	<div style="font-size: 13px;">缴费标准：25.85元</div>
	                            	<div style="font-size: 13px;">已缴费到：2017-01</div>
	                            </span>
	                        </div>
	                        <br />
	                        <div id="sure">
								<div><span class="required">*</span>党费确认</div>
								<i class="sure">
									<input id="sure1" type="radio" value="1" />
									<span>确认</span>
								</i>
							</div>
							<div class="textB">
	                            <div><span class="required"></span>备注</div>
	                            <div>
	                                <textarea rows="4" cols="30" id="bei"></textarea>
	                            </div>
	                       </div>
                    	</div>
                    <input type="button" id="submitB" onclick="isSubmint();" value="提交"><input id="cancelB" type="button" onclick="toList();"  value="取消">
                </div>
            	</div>
            </div>
        </div>
    </div>

<div id="menuContent" class="menuContent" style="display:none; position: absolute;background-color: #f0f6e4;">
		<div id="bumen"></div>
</div>
		
<script type="text/javascript">

var bumenId='${logUser.bumenId }',//当前所在的部门id （处理当前申请的部门，如果是 起点则为提出申请的用户的部门id）
	bumenName='${logUser.bumenName }',//转接时处理的人所在部门名称
	toBuType=1,//默认组织关系转接为 系统内
	toBumenId,//如果为起点则为目标部门id 如果为办理部门则为办理之后的下一级办理部门id（均为目标部门id）
	toBumenName,//如果为起点则为目标部门名称 如果为办理部门则为办理之后的下一级办理部门名称（均为目标部门名称）
	payment,
	paymentDateStr;

	var isSubPeyment=0;//是否已有缴费记录  0：没有 1:有
	
$().ready(function() {
	$("#bumen").tree({
	    onClick : clk,
	    idKey : "_id",
	    pIdKey : "parentId",
	    nameKey : "name",
	    nodeHandler : function(n) {
	        if (n._id == "0") // 展开根节点
	            n.open = true;
	    }
	});
	$.post('${ctxPath}/feerecord/queryByUserId.action',{},
		function(data, status) {
		if(data){
			$(".df").html("<div>缴费标准："+data.payable+"元</div><div>已缴费到："+data.monthtime+"</div>");
			payment=data.payable;
			paymentDateStr=data.monthtime;
			isSubPeyment=1;
		}else{
			isSubPeyment=0;
			$(".df").html("<div>无缴费记录</div>");
		}
	});
	
	var bName = '';
	$('#sendBumen').click(function () {
	    if(bumenIds.length<=0)  {
	        toastr.error("请选择部门");
		}
		var userNames = '';
	    if(!userNames) {
	        userNames +=bumenNames.join(',');
	    }
	    $("#userIds").val('');
	    $("#userNames").val(userNames);
	    $("#nams").val(userNames);
	    var bIds = '';
	    if(!bIds) {
	        bIds +=bumenIds.join(',');
	    }
	    $("#bIds").val(bIds);
	    bName = userNames;
	});
	function getBumenIds(node,bumenIds,bumenNames) {
	    if(!node.children) {
	        return;
	    }
	    for(var i=0;i<node.children.length;i++) {
	        bumenIds.push(node.children[i]._id);
	        bumenNames.push(node.children[i].name);
	        getBumenIds(node.children[i],bumenIds,bumenNames);
	    }
	}
	var bumenIds=[];
	var bumenNames=[];
	// 默认选择parentId指定节点
	var treeObj = $.fn.zTree.getZTreeObj("bumen");
	treeObj.selectNode(treeObj.getNodeByParam("_id",
	    "${param.parentId}"));
	function clk(e, treeId, node) {
	    if(node.children=='undefined'||node.children==null||node.children.length==0){
	    	toBumenId=node._id;
	    	toBumenName=node.name;
	    	$("#toBumen").val(toBumenName);
		}
	}
	 
	$.post(
			'${ctxPath}/division/queryProvince.action',
			{},
			function(data, status) {
				var c = $("#province")[0];
				for (var i = 0; i < data.length; i++) {
					var d = data[i];
					var option = new Option(d.name, d._id);
					option.tmp = d._id;
					c.options[c.options.length] = option;
					if (data.length === 1 || (fillmaps && fillmaps.tenant && fillmaps.tenant.country == d.name)) {
						option.selected = true;
						$(c).trigger('change');
					}
				
				}
				$('#province').selectpicker(
						'refresh');
			});

$("#province")
	.change(
			function() {
				var t = $("#province")[0];
				var v = t.options[t.selectedIndex];
				if (v && v.tmp) {
					$
							.post(
									'${ctxPath}/division/queryCity.action',
									{
										provinceId : v.tmp
									},
									function(
											data,
											status) {
										var c = $("#city")[0], ds = [];
										c.options.length = 1;
										for (var i = 0; i < data.length; i++) {
											var d = data[i];
											var option = new Option(
													d.name,
													d._id);
											option.tmp = d._id;
											c.options[c.options.length] = option;
											if (fillmaps
													&& fillmaps.tenant
													&& fillmaps.tenant.city == d.name) {
												option.selected = true;
												$(
														c)
														.trigger(
																'change');
											} else if (addressComponents
													&& addressComponents.city == d.name) {
												option.selected = true;
												$(
														c)
														.trigger(
																'change');
											}
											if(d.name==city){
											option.selected = true;
											$(c).trigger('change');}
										}
										$(
												'#city')
												.selectpicker(
														'refresh');
									});
				} else {
					$("#city")[0].options.length = 1;
					$('#city').selectpicker(
							'refresh');
				}
			});
$("#city")
	.change(
			function() {
				var t = $("#city")[0];
				var v = t.options[t.selectedIndex];
				if (v && v.tmp) {
					$
							.post(
									'${ctxPath}/division/queryDistrict.action',
									{
										cityId : v.tmp
									},
									function(
											data,
											status) {
										var c = $("#district")[0], ds = [];
										c.options.length = 1;
										for (var i = 0; i < data.length; i++) {
											var d = data[i];
											var option = new Option(
													d.name,
													d._id);
											option.tmp = d._id;
											c.options[c.options.length] = option;
											if (fillmaps
													&& fillmaps.tenant
													&& fillmaps.tenant.district == d.name) {
												option.selected = true;
												$(
														c)
														.trigger(
																'change');
											} else if (addressComponents
													&& addressComponents.district == d.name) {
												option.selected = true;
												$(
														c)
														.trigger(
																'change');
											}
											if(d.name==district){
											option.selected = true;
											}
										}
										$(
												'#district')
												.selectpicker(
														'refresh');
									});
				} else {
					$('#district')
							.selectpicker(
									'refresh');
				}
			});
	
});

function showMenu() {
	if(toBuType==1){
		var cityObj = $("#toBumen");
		var cityOffset = $("#toBumen").offset();
		$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");

		$("body").bind("mousedown", onBodyDown);
	}
}
function hideMenu() {
	$("#menuContent").fadeOut("fast");
	$("body").unbind("mousedown", onBodyDown);
}
function onBodyDown(event) {
	if (!(event.target.id == "menuBtn" || event.target.id == "toBumen" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
		hideMenu();
	}
}


/*****
 * 提交用户申请转接的信息
 */
function submint(){
	var opinion=$("#opinion").val();
	if($.trim(opinion) == "") {parent.layer.alert("请填转接原因");return;}
	if(toBuType==1){
		if($.trim(toBumenId) == "") {
			parent.layer.alert("请填选择目的部门或者选择'转出系统外'!");
			return;
		}else if ($.trim(toBumenName) == "") {
			parent.layer.alert("请填选择目的部门或者选择'转出系统外'!");
			return;
		}
	}else if(toBuType==2){
		toBumenName=$("#toBumen").val();
		if ($.trim(toBumenName) == "") {
			parent.layer.alert("请填写目的支部名称!");
			return;
		}else{
			toBumenId=null;
		}
	}else{
		parent.layer.alert("请选择转出类型!");
		return;
	}

	var provinceName=$("#province").find("option:selected").text();//获取省名称
	var province=$("#province ").val();//获取省id
	var cityName=$("#city").find("option:selected").text();//获取市名称
	var city=$("#city ").val();//获取市id
	var districtName=$("#district").find("option:selected").text();//获取区名称
	var district=$("#district ").val();//获取区id
	if($.trim(province) == "") {
		parent.layer.alert("请选择省份");
		return;
	}
	if($.trim(city) == "") {
		parent.layer.alert("请选择地级市");
		return;
	}
	if($.trim(district) == "") {
		parent.layer.alert("请选择地区");
		return;
	}
	if(bumenId==toBumenId){
		parent.layer.alert("您就在当前支部中请确认您是否转接支部!");
		return;
	}
	if($("#sure1").is(":checked") == false) {
		parent.layer.alert("请确认缴费信息!");
		return;
	}
	
	console.log(provinceName+"*****"+cityName+"*****"+districtName+"*****"+district+"----"+city+"----"+province);
	parent.layer.confirm('提交后组织转接申请将无法修改与删除是否确定提交？',{title:"提示"}, function(index) {
		$.ajax({
	    	url:"${ctxPath}/organParty/upOrgan.action",
	    	type:"post",
	    	data:{'type':1 //当前流程类型 
				,'upperId':"start" //流程起点（启动新流程）
					,'bumenName':bumenName
					,'orgType':toBuType //转接类型
					,'toBumenId':toBumenId //目的部门id
					,'toBumenName':toBumenName //目的部门名称
					,'opinion':opinion, //转接原因
					
					"payment": payment,
					"paymentDateStr": paymentDateStr,
					"isSubPeyment":isSubPeyment,//是否已经缴费过
					"isPayment": $("#sure1").is(":checked") ? 1 : 0,//缴费确认
					"remarks": $("#bei").val(),//备注
					//省市区
					"provinceName": provinceName,
					"province": province,
					"cityName": cityName,
					"city": city,
					"districtName": districtName,
					"district": district
				},
	    	dataType:"json",
	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
	        success:function(data) {
	        	if(data.success){
		        	parent.layer.alert("组织转接申请信息提交成功！");
		        	toList();
	        	}else{
	        		parent.layer.alert(data.message);
	        	}
	        }
		});
	});
}

function isSubmint(){
	$.ajax({
    	url:"${ctxPath}/organParty/judgeOrgan.action",
    	type:"post",
    	dataType:"json",
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data) {
        	if(data){
				if (data.success) {
					submint();
				} else{
					parent.layer.alert("还有未完成的流程，请在列表中查看");
				}
			}else{
				parent.layer.alert("数据获取异常！");
			}
        }
	});
	
}

function changTomen(i){
	toBuType=i;
}

function toList(){
	 window.location.href="${ctxPath}/organParty/toQuery.action.action";
} 

$("#age").html(jsGetAge('${logUser.formtBirthday }'));

/*根据出生日期算出年龄*/
function jsGetAge(strBirthday){       
    var returnAge;
    var strBirthdayArr=strBirthday.split("-");
    var birthYear = strBirthdayArr[0];
    var birthMonth = strBirthdayArr[1];
    var birthDay = strBirthdayArr[2];
    
    d = new Date();
    var nowYear = d.getFullYear();
    var nowMonth = d.getMonth() + 1;
    var nowDay = d.getDate();
    
    if(nowYear == birthYear){
        returnAge = 0;//同年 则为0岁
    } else{
        var ageDiff = nowYear - birthYear ; //年之差
        if(ageDiff > 0){
            if(nowMonth == birthMonth) {
                var dayDiff = nowDay - birthDay;//日之差
                if(dayDiff < 0){
                    returnAge = ageDiff - 1;
                }
                else{
                    returnAge = ageDiff ;
                }
            }else{
                var monthDiff = nowMonth - birthMonth;//月之差
                if(monthDiff < 0) {
                    returnAge = ageDiff - 1;
                }
                else{
                    returnAge = ageDiff ;
                }
            }
        }else{
            returnAge = -1;//返回-1 表示出生日期输入错误 晚于今天
        }
    }
    return returnAge;//返回周岁年龄
}

</script>
</body>
</html>