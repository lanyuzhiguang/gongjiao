<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <style type="text/css">
    .fg-line input {height:auto!important}
    .fg-line {bottom:10px;}
    .report-title{padding-left: 14px;padding-right: 34px;color: #343434;padding-bottom: 8px;line-height: 22px;}
    .report-font{font-family:"苹方";font-size:14px;}
    .repor-rdi{margin-right:8px!important;}
    </style>
</head>
<body>
<form action="" id="monitor" style="display: none;">
	<input type="hidden" id="type" name="type" value="">
	<input type="hidden" id="typeId" name="typeId" value="">
	<div class="form-group">
		<div class="report-title report-font">
			感谢您举报不良的内容，以便我们更及时及精准地对信息进行处理。
		</div>
		<div class="report-title report-font">
			请选择举报该内容的原因：
		</div>
	<div>
		<div style="padding-left: 15px;">
			<div id="monList">
			</div>
			<div >
				<label style="float: left;" onclick="iscked();"><input class="report-font repor-rdi" checked="checked" type="radio" id="monitorId" name="monitorId" value="0">其他</label>
				<div class="col-sm-9">
					<div class="fg-line">
						<input type="text" name="montName" id="montName" class="form-control" placeholder="请填写原因！">
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</form>
</body>

<script type="text/javascript">
function iscked(){
	if($("input[name='monitorId']:checked").val()==0){
		$("#montName").attr("readOnly",false);
	}else{
		$("#montName").attr("readOnly",true);
	}
}

/*****
 * 举报原因信息
 */
function getQRcode(){
	$.ajax({
	   type:"post",
	   url:"${ctxPath}/MonFilter/queryAll.action",
	   dataType:"json",
	   contentType: "application/x-www-form-urlencoded; charset=utf-8",
	   success:function(data){
		   var qr=data.data;
		   //<label class="col-sm-12"><input type="radio" id="monitorId" name="monitorId"  value="0">其他</label>
		   for(var i=0;i<qr.length;i++){
			   $("#monList").append('<label onclick="iscked();"><input type="radio" class="report-font repor-rdi" id="monitorId" name="monitorId"  value="'+qr[i]._id+'">'+qr[i].name+'</label><br>');
		   }
	   }
	});
}
getQRcode();
/*****
 * type 举报的类型 	monitId举报的原因 	typeId举报信息对应分类的id
 */
function openMoniFrom(type,typeId){
	$("#type").val(type);
	$("#typeId").val(typeId);
	var index=layer.open({
		type : 1,
		title : "举报",
		//offset: 't',
		area : [ '426px','428px'],
		shadeClose : true,
		closeBtn : 1,
		content : $("#monitor"),
		btn: ['提交','取消'],
		yes: function(index, layero){
		    	//loading层
				var indx = layer.load(1, {
				  shade: [0.7,'#fff'] //0.1透明度的白色背景
				});
		    	$.ajax({
		  	        type:"post",
		  	        url:_ctxPath+"/report/upsert.action",
		  	      	data:$('#monitor').serialize(),
		  	        dataType:"json",
		  	    	contentType: "application/x-www-form-urlencoded; charset=utf-8",
		  	        success:function(data){
		  	        	if(data){
		  	        		if (data.success) {
								toastr.success("操作成功");
							} else {
								toastr.error(data.message);
							}
		  	        	}else{
		  	        		toastr.error("操作失败");
		  	        	}
		  	        	layer.close(indx);
		  	        	layer.close(index);
		  	        }
				});
		    
		  }
	});
}

</script>