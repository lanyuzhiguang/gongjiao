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
                        <div><span id="flowZt">当前状态：办理中</span></div>
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
						<div id="bmN">
                            <div><span class="required">*</span>处理部门</div><div id="bmName"></div>
                        </div>
                        <div id="bmT">
                            <div><span class="required">*</span>处理情况</div><div id="bmType"></div>
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
	var bmN=$("#bmN");
	bmN.css("display","");
	bmN.remove();
	var bmT=$("#bmT");
	bmT.css("display","");
	bmT.remove();

	var lisFlow=$("#lisFlow");
	var flT=$("#flT");
	flT.css("display","");
	flT.remove();
	
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
									//$("#userName").html(org.userName);
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
									$("#opinion").html(org.opinion);
								} else{
									var bmTs=bmT.clone();
									var flow=flT.clone();
									flow.find("#lis1").html(org.createTime);
									if (org.state==0) {
										flow.find("#lis2").html("未通过");
										bmTs.find("#bmType").html("未通过");
										flow.find("#lis6").html("无");
									} else if (org.state==1) {
										flow.find("#lis2").html("办理中");
										bmTs.find("#bmType").html("办理中");
										flow.find("#lis6").html("无");
									} else if (org.state==2) {
										flow.find("#lis2").html("已完成");
										bmTs.find("#bmType").html("已完成");
										if(org.property!=0&&org.property!=1&&org.property!=4&&org.property!=6){
											flow.find("#lis6").html("<a target='_blank' href='${ctxPath}/organParty/dowPartyPdf/"+org._id+".action'>查看</a>");
										}else{
											flow.find("#lis6").html("无");
										}
									}
									var bmNs=bmN.clone();
									flow.find("#lis3").html(org.bumenName);
									flow.find("#lis4").html(org.opinion);
									flow.find("#lis5").html(org.userName);
									bmNs.find("#bmName").html(org.bumenName);
									$(".transferList").append(bmNs);
									$(".transferList").append(bmTs);
									lisFlow.append(flow);
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
	 window.location.href="${ctxPath}/organParty/toQuery.action";
} 
getSouList();

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