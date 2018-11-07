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
    <style type="text/css">
    .partyTransfer > div span:last-child {
	    float: left;
	    padding-right: 20px;
	}
	.partyTransfer > div button{
	    float: right;
	    margin-right: 10px;
	}
	.flow_tb{
		background: #f8f8f8;
	}
	.table{
		margin-left: 1.1rem;
		width: 98%;
		text-align: center;
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
                        <div>
                        	<span id="flowZt">当前状态：办理中</span>
                        	<button type="button" id="backr" style="display: none;" class="btn btn-primary btn-sm">退回</button>
                        	<button type="button" id="conduct" style="display: none;" class="btn btn-primary btn-sm">办理</button>
                        </div>
                    </div>
                    <div class="partyTransfer">
                        <div><span>组织转接状态跟踪</span></div>
                    </div>
                    <div class="flow_tb">
                       	<table class="table">
                        	<thead>
                        		<tr>
                        		 <th style="text-align: center;">时间</th>
                        		 <th style="text-align: center;">处理状态</th>
                        		 <th style="text-align: center;">处理单位</th>
                        		 <th style="text-align: center;">处理意见</th>
                        		 <th style="text-align: center;">操作人</th>
                        		 <th style="text-align: center;">介绍信</th>
								</tr>
                        	</thead>
                        	<tbody id="lisFlow">
                        		<tr id="flT" style="display: none;">
                        			<td id="lis1"></td>
                        			<td id="lis2"></td>
                        			<td id="lis3"></td>
                        			<td id="lis4"></td>
                        			<td id="lis5"></td>
                        			<td id="lis6"></td>
                        		</tr>
                        	</tbody>
                        </table>
                     </div>
                    <div class="partyTransfer">
                        <div><span>党员基本信息</span></div>
                    </div>
                    <div class="peopleInfo">
                        <div>
                            <div><span class="required">*</span>姓名</div><div id="uname"></div>
                        </div>
                       <div>
                           <div><span class="required">*</span>性别</div>
                           <div id="ugender">男</div>
                       </div>
                       <div>
                           <div><span class="required">*</span>年龄</div><div id="uage"></div>
                       </div>
                       <div>
                           <div><span class="required">*</span>民族</div><div id="uvolk"></div>
                       </div>
                       <div>
                           <div><span class="required">*</span>身份证号</div><div id="uuserID"></div>
                       </div>
                       <div>
                           <div><span class="required">*</span>人员类别</div><div id="utype"></div>
                       </div>
                    </div>
                    <div class="partyTransfer">
                        <div>转接信息</div>
                    </div>
                    <div class="transferList">
                        <div>
                            <div><span class="required">*</span>转接类型</div><div id="type"></div>
                        </div>
                        <div>
                            <div><span class="required">*</span>所在支部</div><div id="bumenName"></div>
                        </div>
                        <div>
                            <div><span class="required">*</span>目标党支部</div><div id="toBumenName"></div>
                        </div>
                        <div class="textB">
                            <div><span class="required">*</span>转接原因</div>
                            <div>
                                <div rows="5" cols="30" id="opinion"></div>
                            </div>
                        </div>
						<div>
                            <div><span class="required">*</span>党费信息</div>
                            <div id="df">
                            		<div style="font-size: 13px;">缴费标准：25.85元</div>
	                            	<div style="font-size: 13px;">已缴费到：2017-01</div>
                            </div>
                        </div>
                        <div>
                            <div><span class="required">*</span>备注</div><div id="remarks"></div>
                        </div>
                </div>
                <input type="button" id="submitB" onclick="toList();" value="返回">
            </div>
        </div>
    </div>
</div>
</div>
<div id="menuContent" class="menuContent" style="display:none; position: absolute;background-color: #f0f6e4;">
		<div id="bumen"></div>
</div>

<form id="searchForm" method="post" class="form-horizontal" style="display: none;">
	<input id="flowUUid" name="flowUUid" type="text" class="form-control" value="${flowUUid }">
</form>

<script type="text/javascript">

	var lisFlow=$("#lisFlow");
	var flT=$("#flT");
	flT.css("display","");
	flT.remove();

	var _id,property,orgType,toBumenName="";
	var adint=$("#adint");
	
	var index="";
$().ready(function() {
	//执行一个laydate实例
	laydate.render({
		elem: '#paymentDateStr' //指定元素
	});
	
	$("#conduct").click(function(){//办理
		var area = [ '526px','480px'];
		if(orgType==2&&toBumenName==""){
			$("#adint #toBumenName").removeAttr("readonly");//转出时用户可以填写下一个党委名称
		}
		$("#state").val(2);
		if(property==4){
			$(".a1").css("display","none");
		}else{
			$(".a1").css("display","");
		}
		if(property!=7){
			$(".a10").css("display","none");
		}else{
			$(".a10").css("display","");
		}
		if(property!=1){
			$(".a2").css("display","none");
		}else{
			$(".a2").css("display","");
		}
		if(property!=2){
			area = [ '526px','380px'];
			if(property==2 || property==3 || property==5 || property==7){
				$(".a4").css("display","");
				$(".a5").css("display","");
			}else{
				area = [ '526px','280px'];
				$(".a4").css("display","none");
				$(".a5").css("display","none");
			}
			$(".a6").css("display","none");
			$(".a7").css("display","none");
			$(".a8").css("display","none");
			$(".a9").css("display","none");
		}else{
			$(".a4").css("display","");
			$(".a5").css("display","");
			$(".a6").css("display","");
			$(".a7").css("display","");
			$(".a8").css("display","");
			$(".a9").css("display","");
		}
		
		index=layer.open({
			type: 1,
			  shadeClose: true,//点击遮罩关闭层
			  area : area,
			  offset: '30px',
			  content: $('#adint'),
			  scrollbar: false
			});
	});
	$("#backr").click(function(){//退回
		$("#state").val(0);
		//退回时隐藏部分控件
		$(".a10").css("display","none");
		$(".a1").css("display","none");
		$(".a2").css("display","none");
		$(".a4").css("display","none");
		$(".a5").css("display","none");
		$(".a6").css("display","none");
		$(".a7").css("display","none");
		$(".a8").css("display","none");
		$(".a9").css("display","none");
		index=layer.open({
			  type: 1,
			  shadeClose: true,//点击遮罩关闭层
			  area : [ '526px','228px'],
			  offset: '100px',
			  content: $('#adint'),
			  scrollbar: false
			});
	});

	$("#adint").validate({
		submitHandler : function(form) {
			//$.shade.show();
			$("#adint").enable();
			//form.submit(); 提交信息
			//loading层
			var index = parent.layer.load(1, {
				  shade: [0.1,'#fff'] //0.1透明度的白色背景
				});
				$.ajax({
			    	url:"${ctxPath}/organParty/upAditinOrgan.action",
			    	type:"post",
			    	data:$('#adint').serialize(),
			    	dataType:"json",
			    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
			        success:function(data) {
			        	parent.layer.close(index); 
			        	if (data) {
							if(data.success){
								document.location.href = _ctxPath + "/organParty/toQuerya.action";
							} else{
								parent.layer.alert(data.message);
							}
						} else{
							parent.layer.alert("信息提交失败！");
						}
			        },
					error:function(e){
						parent.layer.close(index); 
						parent.layer.alert("信息提交失败！");
	                }
				});
		}
	});
	
});
	
	/*****
	 * 提交用户申请转接的信息
	 */
	function getSouList(){
		$.ajax({
	    	url:"${ctxPath}/organParty/queryOrganUUid.action",
	    	type:"post",
	    	data:{flowUUid:'${flowUUid }'},
	    	dataType:"json",
	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
	        success:function(data) {
	        	if (data) {
					if(data.success){
						var list=data.data;
						if (list.length>0) {
							for (var i=0;i<list.length;i++) {
								var org=list[i];
								if (i==0) {
									if (org.type==1) {
										$("#type").html("转接申请");
									}
									$("#createTime").html(org.createTimeFormatData);
									if (org.orgType==1) {
										$("#orgType").html("系统内转接");
									} else if(org.orgType==2){
										$("#orgType").html("转出系统外");
									}
									if (org.state==0) {
										$("#flowZt").html("当前状态：未通过");
									} else if (org.state==1) {
										$("#flowZt").html("当前状态：办理中");
									} else if (org.state==2) {
										$("#flowZt").html("当前状态：已完成");
									}
									$("#bumenName").html(org.bumenName);
									$("#toBumenName").html(org.toBumenName);
									if(org.toBumenName==undefined||org.toBumenName==null){
										toBumenName="";
									}else{
										toBumenName=org.toBumenName;
									}
									$("#opinion").html(org.opinion);
									$("#remarks").html(org.remarks);
									if(org.isSubPeyment==1){
										$("#df").html("<div>缴费标准："+org.payment+"元</div><div>已缴费到："+org.paymentDate+"</div>");
										isSubPeyment=1;
									}else{
										isSubPeyment=0;
										$("#df").html("<div>无缴费记录</div>");
									}
									/***用户信息***/
									$("#uname").html(org.applyUserName);
									if(org.applyGender==1){
										$("#ugender").html("女");
									}else{
										$("#ugender").html("男");
									}
									$("#uage").html(org.applyAge);
									$("#uvolk").html(org.applyVolk);
									$("#uuserID").html(org.applyUserID);
									$("#utype").html(org.applyTypeName);
								} else{
									var flow=flT.clone();
									flow.find("#lis1").html(org.createTime);
									if (org.state==0) {
										flow.find("#lis2").html("未通过");
										flow.find("#lis6").html("无");
									} else if (org.state==1) {
										flow.find("#lis2").html("办理中");
										flow.find("#lis6").html("无");
									} else if (org.state==2) {
										flow.find("#lis2").html("已完成");
										if(org.property!=0&&org.property!=1&&org.property!=4&&org.property!=6){//支部 个人 统一党委内部转接均不需要介绍信
											flow.find("#lis6").html("<a target='_blank' href='${ctxPath}/organParty/dowPartyPdf/"+org._id+".action'>查看</a>");
										}else{
											flow.find("#lis6").html("无");
										}
									}
									flow.find("#lis3").html(org.bumenName);
									flow.find("#lis4").html(org.opinion);
									flow.find("#lis5").html(org.userName);
									lisFlow.append(flow);
									if(i==list.length-1&&org.state==1&&org.nextId!="end"){//判断最后一条 且 状态为办理中 切不是最后一条
										property=org.property;
										_id=org._id;
										/***初始化值**/
										$("#_id").val(org._id);
										$("#adint #toBumenName").val(org.toBumenName);
										$("#property").val(org.property);
										$("#orgParId").val(org._id);
										getIsAdit(org.bumenId);
									}
								}
							}
						} else{
							$(".transferList").html("");
						}
					} else{
						parent.layer.alert(data.message);
					}
				} else{
					parent.layer.alert("信息获取失败！");
				}
	        }
		});
	}


	
function changTomen(i){
	toBuType=i;
}

function toList(){
	 window.location.href="${ctxPath}/organParty/toQuerya.action";
} 
getSouList();

/* $("#age").html(jsGetAge('${logUser.formtBirthday }'));*/

/*根据出生日期算出年龄*/
/*function jsGetAge(strBirthday){       
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
} */
/****
 * 根据
 */
function getIsAdit(bumenId){
	$.ajax({
    	url:"${ctxPath}/organParty/isAdit.action",
    	type:"post",
    	data:{bumenId:bumenId},
    	dataType:"json",
    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success:function(data) {
			if(data){//判断是否为正常数据返回
				if(data.success){//判断是否有审核权限
					$("#backr").css("display","");
					$("#conduct").css("display","");
				}else{
					$("#backr").css("display","none");
					$("#conduct").css("display","none");
				}
			}else{
				$("#backr").css("display","none");
				$("#conduct").css("display","none");
			}
        }
    });
}

</script>
</body>
<form class="form-horizontal" id="adint" style="display: none;">
	<input type="hidden" id="_id" name="_id"><!-- 流程信息表id -->
	<input type="hidden" id="orgParId" name="orgParId"><!-- 流程信息表id -->
	<input type="hidden" id="property" name="property"><!-- 当前流程的属性 -->
	<input type="hidden" id="state" name="state"><!-- 0：退回  2：办理 -->
	<div class="form-group col-sm-11 a1">
		<label class="col-sm-4 control-label">关系转往</label>
		<div class="col-sm-8">
			<div class="fg-line">
				<input id="toBumenName" name="toBumenName" readonly="readonly" type="text" class="form-control" required>
			</div>
		</div>
	</div>
	<div class="form-group col-sm-11 a2">
		<label class="col-sm-4 control-label">党费确认</label>
		<div class="col-sm-8">
			<label class="col-sm-4 control-label">缴费标准</label>
			<div class="col-sm-6">
				<div class="fg-line">
					<input id="payment" name="payment" type="text" class="form-control" required>
				</div>
			</div>
			<label class="col-sm-4 control-label">已缴费到</label>
			<div class="col-sm-6">
				<div class="fg-line">
					<input id="paymentDateStr" name="paymentDateStr" type="text" class="form-control" required>
				</div>
			</div>
		</div>
	</div>	
	<div class="form-group col-sm-11 a3">
		<label class="col-sm-4 control-label">本级意见</label>
		<div class="col-sm-8">
			<div class="fg-line">
				<textarea id="opinion" rows="4" name="opinion" class="form-control" required></textarea>
			</div>
		</div>
	</div>
	
	<div class="form-group col-sm-11 a4">
		<label class="col-sm-4 control-label">介绍信编号</label>
		<div class="col-sm-8">
			<div class="fg-line">
				<input id="referNumber" name="referNumber" type="text" class="form-control" required>
			</div>
		</div>
	</div>
	<div class="form-group col-sm-11 a5">
		<label class="col-sm-4 control-label">有效期</label>
		<div class="col-sm-5">
			<div class="fg-line">
				<input id="vilDay" name="vilDay" value="0" type="text" class="form-control" required>
			</div>
		</div>
		<label class="col-sm-1 control-label">天</label>
	</div>
	<div class="form-group col-sm-11 a10">
		<label class="col-sm-4 control-label">联系电话</label>
		<div class="col-sm-8">
			<div class="fg-line">
				<input id="partToPhone" name="partToPhone" type="text" class="form-control" required>
			</div>
		</div>
	</div>
	<div class="form-group col-sm-11 a6">
		<label class="col-sm-4 control-label">党委地址</label>
		<div class="col-sm-8">
			<div class="fg-line">
				<textarea  id="partAdress" name="partAdress" class="form-control" required></textarea>
			</div>
		</div>
	</div>
	<div class="form-group col-sm-11 a7">
		<label class="col-sm-4 control-label">联系电话</label>
		<div class="col-sm-8">
			<div class="fg-line">
				<input id="partPhone" name="partPhone" type="text" class="form-control" required>
			</div>
		</div>
	</div>
	<div class="form-group col-sm-11 a8">
		<label class="col-sm-4 control-label">传真</label>
		<div class="col-sm-8">
			<div class="fg-line">
				<input id="partFax" name="partFax" type="text" class="form-control" required>
			</div>
		</div>
	</div>
	<div class="form-group col-sm-11 a9">
		<label class="col-sm-4 control-label">邮编</label>
		<div class="col-sm-8">
			<div class="fg-line">
				<input id="zipCode" name="zipCode" type="text" class="form-control" required>
			</div>
		</div>
	</div>
	<div class="form-group col-sm-11">
		<div class="col-sm-4 control-label"></div>
		<div class="col-sm-2 control-label">
			<button type="submit" class="btn btn-primary btn-sm">确定</button>
		</div>
		<div class="col-sm-2 control-label">
			<button onclick="layer.close(index);" type="button" class="btn btn-primary btn-sm">取消</button>
		</div>
	</div>
</form>
</html>