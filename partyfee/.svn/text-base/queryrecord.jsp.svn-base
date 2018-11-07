<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/modulepc/resources/common.jsp"%>
<html>
<head>
<title></title>
<style type="text/css">
.laydate_table { 
	display: none;
}
#laydate_hms{
	display: none !important;
}
#search{
	padding: 0;
	height: 24px;
	width: 57px;
	vertical-align: -webkit-baseline-middle;
	vertical-align: baseline;
	background: #FF111E;
	margin-left: 27px;
	border-radius: 8px;
}
label{
	color: #333333;
}
	.layui-laydate .layui-this{
	background-color: #FD0101!important;
	}
	.laydate-footer-btns span:hover{
		color:#FD0101!important;
	}


	.outerD{
	width: 86%;
	margin: auto;
	margin-top:8%;
	border: 1px solid #999999;
	padding: 2rem;
	font-size: 16px;
	}
	.receipt{
	font-size: 16px;
	color: #333333;
	text-align: center;
	margin-bottom: 18px;
	}
	.ending{
	text-align: right;
	margin-top: 1rem;
	line-height: 1.5rem;
	}
	.tellDecrib{
	line-height: 3.2rem;
	}
	.hiddenD{
	display: block;
	}
	.third{
	text-indent: 1.7rem;
	}
	.timePus{
	width: 33%;
	float: left;
	margin-left: 1rem;
	}
	.timePus input{
	height: 30px;
	margin-bottom: 0;
	}
	.userN,.Year,.month,.money,.big{
	display: inline-block;
	width: 37%;
	height: 38px;
	border-bottom: 1px solid #333333;
	text-align: center;
	}
	.mask {
	position: absolute; top: 0px; filter: alpha(opacity=60); background-color: #777;
	z-index: 1002;
	opacity:0.5; -moz-opacity:0.5;
	left: 0px;
	right: 0;
	bottom: 0;
	}
	.popver{
	background: #ffffff;
	position: absolute;
	top: 15%;
	left: 17%;
	width: 60%;
	margin: 0 auto;
	display: inline-block;
	height: 500px;
	z-index: 1005;
	}
	.hid{
	display:none;
	}
	td { 
	text-align:center !important;
    }
    th { 
	text-align:center !important;
    }
	</style>
</head>
<body class="gray-bg">
	<div class="container">
		<div class="card">
			<div class="card-body card-padding">
			<div class="my-titlebar">
						<a
							href="${ctxPath}/login/home.action"
							class="btn-link"> <i class="fa fa-angle-double-left"></i>返回
						</a>
							缴费记录
					</div>
				<form id="searchForm" method="get" class="form-horizontal">
					<div class="form-group">
					<div class="col-sm-5 col-sm-offset-1" style="margin-left: 6px;">
						<div class="input-group fg-float">
						<div class="fg-line">
							<label >选择时间
								<input style="width:18%" type="text" id="yeartime" value="" name="yeartime" >
								
								<!--  <input style="width:13%" type="text" id="month" value="">-->
								<button id="search" class="btn btn-primary" type="submit">查询</button>
							</label>
						</div>
						</div>
					</div>
					</div>
				</form>
				<div class="jqGrid_wrapper" >
					<table id="groupTable"></table>
				</div>
				       <div class="col-sm-12">
									<div class="col-sm-12">
										<div class="col-sm-2">合计：  &nbsp;&nbsp;<span id="butime"></span></div>
										<div class="col-sm-3">本年度应缴： &nbsp; ￥  &nbsp;  <span id="totalPayable"></span>    </div>
										<div class="col-sm-3">本年度实缴： &nbsp; ￥ &nbsp;  <span id="totalPaid"></span>  </div>
							 
							        </div>
					   </div>
			</div>
		</div>
	</div>
	<!--遮罩-->
	<div class="mask hid" ></div>
	<!--弹出的凭证浮层-->
	<div class="popver hid" style="background: #ffffff;">
		<div class="cerWrap">
			<div class="outerD">
				<p class="receipt">党费收据</p>
				<div class="tellDecrib">
					兹收到<span class="userN"></span>同志交来<span class="Year"></span>年<span class="month"></span>月党费￥<span class="money"></span>(大写)<span class="big"></span>。
				</div>
				<div class="ending">
					<p>经手人:<span class="handleName"></span></p>
					<p>日期:<span class="paymenttime"></span></p>
					<p class="bumenName"></p>
				</div>
		</div>
	</div>

	</div>
	<script src="${ctxPath}/modulepc/resources/plugins/laydate/layui.js" type="text/javascript" ></script>
	<script src="${ctxPath}/modulepc/resources/plugins/laydate/laydate.min.js"></script>
	<script type="text/javascript">
		//var manageType;
		$().ready(

						function() {
							//执行一个laydate实例
							layui.laydate.render({
							elem: '#yeartime', //指定元素
							type: 'year',
							value: new Date()
							});
							$("#searchForm").submit(function() {
								$("#groupTable").reloadGrid({
									postData : $("#searchForm").formobj()
								});
								 infor();
								return false;
							});
							   function infor(){
					            	 $.ajax({
					            	      type:"post",
					            	      async:false,
					            	      url:"querydate.action",
					            	      data:$("#searchForm").formobj(),
					            	      success:function(data){
					            	    	  $("#totalPayable").text(data.totalPayable);
					            	    	  $("#totalPaid").text(data.totalPaid);
					            	      }
					            	  });
					            }
							$("#groupTable")
									.grid(
											{
												url : _ctxPath
														+ "/feerecord/query.action",
												postData : $("#searchForm")
														.formobj(),
												shrinkToFit : false,
												colNames : [ "月份", "应缴党费", "实缴党费","缴纳时间","经手人","查看凭证"],
												colModel : [
														
														{
															name : "monthtime",
															index : "monthtime",
															align : "center",
															width : 180
														},
														{
															name : "payable",
															index : "payable",
															align : "center",
															width : 180
														},
														{
															name : "paid",
															index : "paid",
															align : "center",
															width : 180
														},
														{
															name : "paymenttime",
															index : "paymenttime",
															align : "center",
															width : 180
														},
														{
															name : "handleName",
															index : "handleName",
															align : "center",
															width : 170
														},
														{

															name : "_id",
															index : "_id",
															align : "center",
															width : 150,
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																var v = "";
																if (rowObject.status == 0 ) { //|| rowObject.valid == -1
																		v += "还未缴纳本月党费！";
																		
																	} else if (rowObject.status == 1) {
																		//v += "<a href='javascript:pingzh("+rowObject.userName+","+rowObject.bumenName+")'  class='m-r-10' >缴费凭证</a>";
																		v += "<a href='javascript:void(0);' onclick=\"pingzh('"+rowObject.userName+"','"+rowObject.bumenName+"','"+rowObject.monthtime+"','"+rowObject.handleName+"','"+rowObject.paymenttime+"','"+rowObject.paid+"')\">缴费凭证</a>"
																	} 
																return v;
															}
														}
														
														]
											});

									$(".mask").click(function(){
										$(".mask").addClass("hid");
										$(".popver").addClass("hid");
									})

						});
		
		//凭证弹框
		function pingzh(userName,bumenName,monthtime,handleName,paymenttime,paid){
			var y=monthtime.substring(0,4);
			var m=monthtime.substr(-2);
			$(".userN").text(userName);
			$(".Year").text(y);
			$(".month").text(m);
			$(".money").text(paid);
			$(".big").text(digitUppercase(paid));
			$(".handleName").text(handleName);
			$(".paymenttime").text(paymenttime);
			$(".bumenName").text(bumenName);
			$(".mask").removeClass("hid");
			$(".popver").removeClass("hid");
		};
	var digitUppercase = function(n) {
	var fraction = ['角', '分'];
	var digit = [
	'零', '壹', '贰', '叁', '肆',
	'伍', '陆', '柒', '捌', '玖'
	];
	var unit = [
	['元', '万', '亿'],
	['', '拾', '佰', '仟']
	];
	var head = n < 0 ? '欠' : '';
	n = Math.abs(n);
	var s = '';
	for(var i = 0; i < fraction.length; i++) {
	s += (digit[Math.floor(n * 10 * Math.pow(10, i)) % 10] + fraction[i]).replace(/零./, '');
	}
	s = s;//||整;
	n = Math.floor(n);
	for(var i = 0; i < unit[0].length && n > 0; i++) {
	var p = '';
	for(var j = 0; j < unit[1].length && n > 0; j++) {
	p = digit[n % 10] + unit[1][j] + p;
	n = Math.floor(n / 10);
	}
	s = p.replace(/(零.)*零$/, '').replace(/^$/, '零') + unit[0][i] + s;
	}
	return head + s.replace(/(零.)*零元/, '元')
	//						.replace(/(零.)+/g, '零')
	//						.replace(/^整$/, '零元整');
	};

	$(function(){

	       /* var start = {
	            elem: '#gte:monthtime|date', //选择ID为START的input
	            format: 'YYYY', //自动生成的时间格式
	            min: '2017', //设定最小日期为当前日期
	            max: laydate.now(), //最大日期
	            istime: true, //必须填入时间
	            istoday: false,  //是否是当天
	            start: laydate.now(0,"YYYY"),  //设置开始时间为当前时间
	            choose: function(datas){
	                 end.min = datas; //开始日选好后，重置结束日的最小日期
	                 end.start = datas //将结束日的初始值设定为开始日
	            }
	        };
	        var end = {
	            elem: '#lte:createTime|date',
	            format: 'YYYY-MM',
	            min: '2017-07-01 23:59:59',
	            max: laydate.now(),
	            istime: true,
	            istoday: false,
	            start: laydate.now(0,"YYYY-MM-DD hh:mm:ss"),
	            choose: function(datas){
	                start.max = datas; //结束日选好后，重置开始日的最大日期
	            }
	        };
	        laydate(start);
	        laydate(end);  */
	        })  
	</script>
</body>
</html>
