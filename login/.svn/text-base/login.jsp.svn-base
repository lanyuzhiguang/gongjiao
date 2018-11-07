<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/modulepc/resources/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>基层e党建</title>
<link rel="stylesheet" href="${ctxPath}/modulepc/login/css/login.css"
	type="text/css" media="screen" />
<style type="text/css">
label.error {
	color: #fe7608;
}
.form-control:not(.fc-alt) {
    background-color: #FFF;
    background-image: none;
    border: 1px solid #e5e6e7;
    border-radius: 1px;
    color: inherit; 
    display: block;
    padding: 0 12px;
    -webkit-transition: border-color .15s ease-in-out 0s,box-shadow .15s ease-in-out 0s;
    transition: border-color .15s ease-in-out 0s,box-shadow .15s ease-in-out 0s;
    width: 100%;
    font-size: 14px;
}
</style>
<script src="${ctxPath}/modulepc/login/login.js" type="text/javascript"></script>
<script src="${ctxPath}/modulepc/resources/plugins/qrcodejs/qrcode.min.js"></script>
<script type="text/javascript">
	$().ready(function() {
		$("#loginFrm").validate({
			submitHandler : function(form) {
				submitForm();
			}
		});
		$("#loginBtn").click(function() {
			$("#loginFrm").submit();
		});
		if(getQueryString("accountName")!=null && getQueryString("accountPwd")!=null){
			$("#accountName").val(getQueryString("accountName"));
			$("#accountPwd").val(getQueryString("accountPwd"));
			$("#loginFrm").submit();
		}
		if('${flag}' == 9){
			alert("请用手机号登录web版系统！！");
		}
		if('${flag}' == 2){
			//示范一个公告层
			layer.open({
			  type: 1
			  ,title: "激活账号" //不显示标题栏
			  ,closeBtn: false
			  ,area: '400px;'
			  ,shade: 0.8
			  ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
			  ,resize: false
			  ,btn: ['确认激活', '稍后激活(登录需激活)']
			  ,btnAlign: 'c'
			  ,moveType: 1 //拖拽模式，0或者1
			  ,content: $("#reqwd")
			  ,yes: function(index,layero){
				    //layer.closeAll();
				    var phonebtn=$("#phone");
				    var phone=phonebtn.val();
				    var code=$("#code").val();
				    var password=$("#password").val();
				    var repassword=$("#repassword").val();
				    if($.trim(code)==""){
				    	layer.alert('请输入验证码！');
				    	return;
				    }
				    if($.trim(password) == "" || $.trim(repassword) == ""){
				    	layer.alert('请输入密码！');
				    	return;
				    }
				    if(password != repassword){
				    	layer.alert('两次密码输入的不一致，请重新输入');
				    	return;
				    }
				   	$.ajax({
			  	        type:"post",
			  	        url:"${ctxPath}/user/changePaValid.action",
			  	        data:{"phone": phone,"code": code,
							  "password": password },
			  	        dataType:"json",
			  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
			  	        success:function(data){
			  	        	if(data.status==0){
			  	        		layer.alert('账号激活失败，请重新确认信息然后再激活！');
			  	        	}else if(data.status==1){
			  	        		layer.closeAll();
			  	        		layer.alert('账号激活成功，请重新登陆！');
			  	        	}
			  	        }
				   	});
				    //alert(index);
				    //alert(layero);
			  },success: function(layero){
			    //var btn = layero.find('.layui-layer-btn');
			    //btn.find('.layui-layer-btn0').attr({
			      //href: 'http://www.layui.com/'
			    //});
			  }
			});
		}
		
		var btnGetVerificode = document.getElementById('btnGetVerificode');
		var disButn = true;
		btnGetVerificode.addEventListener('click', function(event) {
			var btnGetVer=$("#btnGetVerificode");
			var phonebtn=$("#phone");
			var phonbtn=document.getElementById('phone');
			var phone = phonbtn.value;
			var bloo = vailPhone(phone);
			if(bloo && disButn){
				btnGetVer.attr("disabled","disabled");
		  		phonebtn.attr("disabled","disabled");
				$.ajax({
		  	        type:"post",
		  	        url:"${ctxPath}/user/verifycode/" + phone + ".action",
		  	        //data:{bumenId: bumId },
		  	        dataType:"json",
		  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
		  	        success:function(data){
		  	        	layer.alert("验证码发送成功!");
		  				var c = 60;
		  				btnGetVer.text(c + '秒');
		  				var si = setInterval(function() {
		  					c--;
		  					if(c > 0) {
		  						btnGetVer.text(c + '秒');
		  					} else {
		  						btnGetVer.text('获取验证码');
		  						btnGetVer.attr("disabled",false);
		  						phonebtn.attr("disabled",false);
		  						clearInterval(si);
		  					}
		  				}, 1000);
		  	        }
				}); 
			}
			
		});
		
	});
</script>

</head>
<body>
	<div class="logo" >
		<%-- <img src="${ctxPath }/moduleweb/login/images/logo.png"
			class="img-responsive"> --%>
			客户端平台
	</div>
	<div class="login_wrapper">
			<h1>
				基层e党建
			</h1>
		<div class="wrapper">
		
			<ul id="myTab" class="nav nav-tabs">
				<li class="active">
					<a href="#home" data-toggle="tab">
						 账号登录
					</a>
				</li>
				<li><a href="#ios" data-toggle="tab">扫描登录</a></li>
				<%-- <div class="scanBox">
					<img src="${ctxPath}/modulepc/login/images/sacn.png">
				</div> --%>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="home">
					<form class="form-horizontal" id="loginFrm" method="post">
						<div class="form-group form-group-sm">
							<img src="${ctxPath}/modulepc/login/images/user.png"><input type="text" id="accountName"
								name="accountName" class="form-control" placeholder="请输入用户名"
								minlength="1" maxlength="20" required>
						</div>
						<div class="form-group form-group-sm">
							<img src="${ctxPath}/modulepc/login/images/pass.png"> <input type="password" id="accountPwd"
								minlength="1" maxlength="20" name="accountPwd"
								class="form-control" placeholder="请输入密码" required>
						</div>
						<%--<div class="form-group form-group-sm login_tip">
							<div class="pull-left">
								<input type="checkbox" checked> 记住密码
							</div>
							<div class="pull-right">
								<a href="#" class="forget">忘记密码?</a>
							</div>
							<div class="clearfix"></div>
						</div> --%>
						<div class="form-group form-group-sm">
							<button id="loginBtn" type="submit"
								class="btn btn-warning btn-block btn-sm">登 录</button>
						</div>
					</form>
				</div>
				<div class="tab-pane fade" id="ios">
					<div class="form-group">
						<div id="qrcode" ></div>
						<div class="tips">请打开APP扫描二维码进行登录</div>
					</div>
				</div>
			</div>
			
			<!-- <div class="way">输入账号密码登录</div> -->
			
		</div>
		<div class="form-horizontal" id="reqwd" style="display: none;">
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">手机号码</label>
				<div class="col-sm-8">
					<div class="fg-line">
						<input type="text" class="form-control " id=phone name="phone" /> 
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">验证码</label>
				<div class="col-sm-5">
					<div class="fg-line">
						<input type="text" class="form-control " id=code name="code" /> 
					</div>
				</div>
				<div class="col-sm-3">
					<button id="btnGetVerificode" type="submit" class="btn btn-warning btn-block">获取验证码</button>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">输入新密码</label>
				<div class="col-sm-8">
					<div class="fg-line">
						<input type="password" class="form-control " id=password name="password" /> 
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">确认新密码</label>
				<div class="col-sm-8">
					<div class="fg-line">
						<input type="password" class="form-control " id="repassword" name="repassword"  /> 
					</div>
				</div>
			</div>
			<div class="hr-line-dashed"></div>
		</div>
	</div>
</body>
<script type="text/javascript">
//验证手机号
function vailPhone(phone){
  var flag = false;
  var message = "";
  var myreg = /^(((13[0-9]{1})|(14[0-9]{1})|(17[0]{1})|(15[0-3]{1})|(15[5-9]{1})|(18[0-9]{1}))+\d{8})$/;       
  if(phone == ''){
    message = "手机号码不能为空！";
  }else if(phone.length !=11){
    message = "请输入有效的手机号码！";
  }else if(!myreg.test(phone)){
    message = "请输入有效的手机号码！";
  }else{
      flag = true;
  }
  return flag;
}

var qrcode = new QRCode(document.getElementById("qrcode"), {
	width : 150,
	height : 150
});
var stdate=new Date().getTime();

/*****
 * 获取二维码需要的数据
 */
function getQRcode(){
	$.ajax({
		type:"post",
		url:"${ctxPath}/r/user/qQcode/obtainQRcode",
		data:{type: 1 },
		dataType:"json",
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		success:function(data){
			var qr=data.data;
			qrcode.makeCode(qr);
			getlongin(qr);
		}
	});
}
getQRcode();

function getUrlPre(name,url) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	var r = url.match(reg);
	if(r != null)
		return r[2];
	return null;
}

function getlongin(url){
	var id=getUrlPre("id",url);
	$.ajax({
		   type:"post",
		   url:"${ctxPath}/r/user/qQcode/querById/"+id,
		   dataType:"json",
		   contentType: "application/x-www-form-urlencoded; charset=utf-8",
		   success:function(data){
			  if(data){
				  if (data.success) {
						var qr=data.data;
						$("#accountName").val(qr.phone);
						$("#accountPwd").val(qr.password);
						submitForm();
						toastr.success("扫描成功，正在尝试登录，请稍等！");
					} else {
						//toastr.error(data.message);
						getQRcode();
					}
			  }else{
				  //toastr.error("扫描登录失败");
				  getQRcode();
			}
		}
	});
}
function getQueryString(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	var r = window.location.search.substr(1).match(reg);
	if(r != null)
		return decodeURI(r[2]);
	return null;
}
/* function reAllStr(str) {
	var e = new RegExp("[<>{}\\[\\];\\&]", "g");
	words = str.replace(e,"");
	return words;
} */
</script>
</html>
