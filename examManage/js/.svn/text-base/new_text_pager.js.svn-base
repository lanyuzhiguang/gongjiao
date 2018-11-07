var path = _ctxPath;
function getQueryString(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	var r = window.location.search.substr(1).match(reg);
	if (r != null)
		return decodeURI(r[2]);
	return null;
}

//获取地址栏参数
function GetQueryString(name){
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	var r = window.location.search.substr(1).match(reg);
	if(r!=null)return  decodeURI(r[2]); return null;
};
var editType = GetQueryString("edit");
//调用日历插件
$("#datetimeStart").datetimepicker({
	format: 'yyyy-mm-dd hh:ii',
	minView:'hour',
	language: 'zh-CN',
	autoclose:true
}).on("click",function(){
	$("#datetimeStart").datetimepicker("setEndDate",$("#datetimeEnd").val())
});
$("#datetimeEnd").datetimepicker({
	format: 'yyyy-mm-dd hh:ii',
	minView:'hour',
	language: 'zh-CN',
	autoclose:true,
	startDate:new Date()
}).on("click",function(){
	$("#datetimeEnd").datetimepicker("setStartDate",$("#datetimeStart").val());
	$("#datetimeEnd").datetimepicker("setStartDate",new Date());
});

//设置分数操作
//.,.,.,.
$(".singleElectionFraction,.multiSelectionFraction,.judgmentProblemFraction,.completionFraction,.missedElectionFraction").on("input propertychange",function(){
	var re = /([0-9]+\.[0-9]{1})[0-9]*/,
	a = $(this).val();
	$(this).val($(this).val().replace(re,"$1"));
});
$(".singleElection,.multiSelection,.judgmentProblem,.completion").on("input propertychange",function(){
	settingScoreFun();
	var totalScore = ($(".singleElection").val() * $(".singleElectionFraction").val()) + ($(".multiSelection").val() * $(".multiSelectionFraction").val()) + ($(".completion").val() * $(".completionFraction").val()) + ($(".judgmentProblem").val() * $(".judgmentProblemFraction").val());
	totalScore = totalScore.toFixed(1);
	$(".totalScore").text(String(totalScore));
})
function settingScoreFun(){
	if ($(".singleElection").val() == 0) {
		$(".singleElectionFraction").attr("readonly","readonly");
	} else{
		$(".singleElectionFraction").removeAttr("readonly");
	}
	if ($(".multiSelection").val() == 0) {
		$(".multiSelectionFraction").attr("readonly","readonly");
	} else{
		$(".multiSelectionFraction").removeAttr("readonly");
	}
	if ($(".judgmentProblem").val() == 0) {
		$(".judgmentProblemFraction").attr("readonly","readonly");
	} else{
		$(".judgmentProblemFraction").removeAttr("readonly");
	}
	if ($(".completion").val() == 0) {
		$(".completionFraction").attr("readonly","readonly");
	} else{
		$(".completionFraction").removeAttr("readonly");
	}
}

$("#datetimeRelease").datetimepicker({
	format: 'yyyy-mm-dd hh:ii',
	minView:'hour',
	language: 'zh-CN',
	autoclose:true
}).on("click",function(){
	$("#datetimeRelease").datetimepicker("setStartDate",$("#datetimeStart").val());
	$("#datetimeRelease").datetimepicker("setEndDate",$("#datetimeEnd").val());
});
//漏选得分限制
function maxFun(){
//  	if (parseInt($(".missedElectionFraction").val()) >= parseInt($(".multiSelectionFraction").val())) {
//  		$(".missedElectionFraction").val($(".multiSelectionFraction").val())
//  	} else {
//  		$(".missedElectionFraction").val($(".missedElectionFraction").val())
//  	}
}
$(".qualified").on("input propertychange",function(){
//  	if (parseInt($(this).val()) >= parseInt($(".currentTotalScore").text())) {
//  		$(this).val(parseInt($(".currentTotalScore").text()));
//  	}
})
var subjectNumArr = [];
var subjectTypeArr = [];
var choseQuestionBank = [];
var qbsingleElection = 0,
qbmultiSelection = 0,
qbcompletion = 0,
qbjudgmentProblem = 0;
var examStrs;
var quest;
var disorder;
//乱序
$(".disorder input").off("click").on("click",function(){
	if ($(this).parent().parent().attr("disorder") == 0) {
		$(this).parent().parent().attr("disorder","1");
	} else{
		$(this).parent().parent().attr("disorder","0");
	}
})
textPargerType();
function textPargerType(){
	if ($(".selectlist").val() == "自定义选题") {
		$(".custom").show();
		$(".random").hide();
		allQuestionBank();
		$(".selectlist").attr("title","1");
		quest = $(".subjectNumText").text();
		$(".altogether").hide();
		$(".operationAttr").attr("readonly","readonly");
	} else if($(".selectlist").val() == "后台随机选题"){
		$(".custom").hide();
		$(".random").show();
		allQuestionBank(1);
		$(".selectlist").attr("title","2");
		quest = $(".rdsubjectNumText").text();
		$(".altogether").show();
		$(".operationAttr").removeAttr("readonly");
	}
}
//新建试题模式
//  	if ($(this).val() == "自定义选题") {
//  		$(".custom").show();
//  		$(".random").hide();
//  		allQuestionBank();
//  		$(this).attr("title","1");
//  		quest = $(".subjectNumText").text();
//  		$(".altogether").hide();
//  		$(".operationAttr").attr("readonly","readonly");
//  	} else{
//  		$(".custom").hide();
//  		$(".random").show();
//  		allQuestionBank(1);
//  		$(this).attr("title","2");
//  		quest = $(".rdsubjectNumText").text();
//  		$(".altogether").show();
//  		$(".operationAttr").removeAttr("readonly");
//  	}

$(".selectlist").on("change",function(){
	$(".singleElection,.singleElectionFraction,.multiSelection,.multiSelectionFraction,.completion,.completionFraction,.judgmentProblem,.judgmentProblemFraction").val("0");
	$(".totalScore").text("0")
	subjectNumArr = [];
	subjectTypeArr = [];
	choseQuestionBank = [];
	qbsingleElection = 0;
	qbmultiSelection = 0;
	qbcompletion = 0;
	qbjudgmentProblem = 0;
	$(".altogetherNum:eq(0)").text("0");
	$(".altogetherNum:eq(1)").text("0");
	$(".altogetherNum:eq(2)").text("0");
	$(".altogetherNum:eq(3)").text("0");
	$(".branchSetting input").attr("readonly","readonly");
	textPargerType();
})
//编辑操作
//	if (editType == "1") {
//		var _id = GetQueryString("id");
//		$.ajax({
//			type:"get",
//			url:path+"/web/examPaper/findById.do",
//			dataType:"jsonp",
//			data:{paperId:_id},
//			jsonp: "callback",
//			callback:"messages",
//			success:function(editData){
//				var editData = editData.data[0];
//				if (editData.mode = "1") {
//					$(".selectlist").val("自定义选题");
//				}else{
//					$(".selectlist").val("后台随机选题");
//				}
//				subjectNumArr = editData.examId;
//				textPargerType();
//			}
//		});
//	}
//输入分数限制
$(".singleElectionFraction,.multiSelectionFraction,.completionFraction,.judgmentProblemFraction,.missedElectionFraction").on("input",function(){
	$(this).val($(this).val() >= 0 ? $(this).val() : 0);
})
$(".singleElectionFraction,.multiSelectionFraction,.completionFraction,.judgmentProblemFraction,.missedElectionFraction").on("change",function(){
	if ($(this).val() == "") {
		$(this).val(0);
	}
	if ($(".multiSelectionFraction").val() == 0) {
		$(".missedElectionFraction").attr("readonly","readonly");
	} else{
		$(".missedElectionFraction").removeAttr("readonly");
	}
})
$("article .tabArticleContent:eq(0),footer .btnTab:eq(0)").show()
$(".btnTab .next").on("click",function(){
	$(".article_header p:eq(1)").addClass("active").siblings().removeClass("active");
	$("article .tabArticleContent:eq(1)").show().siblings().hide();
	$("footer .btnTab:eq(1)").show().siblings().hide();
	$(".article_header:eq(0)").show();
})
$(".btnTab .prev").on("click",function(){
	$(".article_header p:eq(0)").addClass("active").siblings().removeClass("active");
	$("article .tabArticleContent:eq(0)").show().siblings().hide();
	$("footer .btnTab:eq(0)").show().siblings().hide();
	$(".article_header:eq(0)").show();
})
var mySwiper = new Swiper('.tabtitleBox',{
	mode: 'horizontal',
	slidesPerView : 7,
	autoplay: true,
	observer: true,
	freeMode : true,
	observeParents: true
})
allclass();
function allclass(){
	$.ajax({
		type:"get",
		url:path+"pc/examClassificationPc/queryClassification.action",
		dataType:"json",
		success:function(data){
			var data = data.data;
			var tabtitleHtml = '<div class="swiper-slide active"><a href="javascript:;">全部</a></div>';
			for (var a = 0;a<data.length;a++) {
				tabtitleHtml += '<div class="swiper-slide" id="'+data[a]._id+'"><a href="javascript:;">'+data[a].name+'</a></div>';
			}
			$(".tabtitle").html(tabtitleHtml);
			$(".custom .tabtitle div.swiper-slide").off("click").on("click",function(){
				$(this).addClass("active").siblings().removeClass("active");
				if ($(this).text() == "全部") {
					allQuestionBank();
				} else{
					classQuestionBank($(this).attr("id"));
				}
			});
			$(".random .tabtitle div.swiper-slide").off("click").on("click",function(){
				$(this).addClass("active").siblings().removeClass("active");
				if ($(this).text() == "全部") {
					allQuestionBank(1);
				} else{
					classQuestionBank($(this).attr("id"),1);
				}
			})
		}
	});
}
function classQuestionBank(examLabelId,choice){
	$.ajax({
		type:"get",
		url:path+"pc/managementQuestionBankPc/findAllBankByClassifId.action",
		dataType:"json",
		data:{
			examLabelId:examLabelId
		},
		success:function(data){
			var data = data.data;
			var conItemAsideHtml = '<p class="bgc">题库名称</p><ul class="list-group conItemAside">';
			var randomtableBoxHtml = '<table class="table"><tr class="bgc"><th class="col-xs-3">题库名称</th><th class="col-xs-3">单选题(道)</th><th class="col-xs-2">多选题(道)</th><th class="col-xs-2">填空题(道)</th><th class="col-xs-2">判断题(道)</th></tr>';
			for (var b = 0;b<data.length;b++) {
				conItemAsideHtml += '<li class="list-group-item" id="'+data[b]._id+'">'+data[b].name+'</li>';
				randomtableBoxHtml += '<tr id="'+data[b]._id+'"><td><div class="checkbox checkbox-info"><input id="checkboxes'+b+'" class="styled" type="checkbox"><label for="checkboxes'+b+'">'+data[b].name+'</label></div></td><td>'+data[b].singleElection+'</td><td>'+data[b].multiSelection+'</td><td>'+data[b].fillAVacancy+'</td><td>'+data[b].judge+'</td></tr>';
			}
			if (data.length == 0) {
				if (choice == 1) {
					$(".randomtableBox").html("<p style='padding-left:8px;'>暂无题库</p>");
				} else{
					$(".conItemAsideBox").html("<p style='padding-left:8px;'>暂无题库</p>");
					$(".tableBox").html("<p style='padding-left:8px;'>暂无题目</p>");
				}
			} else{
				if (choice == 1) {
					$(".randomtableBox").html(randomtableBoxHtml+"</table>");
				} else{
					$(".conItemAsideBox").html(conItemAsideHtml+"</ul>");
					textPagerFun($(".conItemAside .list-group-item:eq(0)").attr("id"),page);
				}
			}
			$(".conItemAside .list-group-item:eq(0)").addClass("active");
			$(".conItemAside .list-group-item").off("click").on("click",function(){
				$(this).addClass("active").siblings().removeClass("active");
				textPagerFun($(this).attr("id"),page);
			});
			$(".randomtableBox tr[id] input").off("click").on("click",function(){
				if ($(this).attr("checked") == undefined) {
					$(this).attr("checked","true");
					$(this).next().addClass("labelin").removeClass("labelout");
					$(this).next().addClass("labele").removeClass("labeler");
					qbsingleElection += parseInt($(this).parent().parent().next().text());
					qbmultiSelection += parseInt($(this).parent().parent().next().next().text());
					qbcompletion += parseInt($(this).parent().parent().next().next().next().text());
					qbjudgmentProblem += parseInt($(this).parent().parent().next().next().next().next().text());
					if ($(this).attr("checked") == "checked"&&choseQuestionBank.indexOf($(this).parent().parent().parent().attr("id")) == -1) {
						choseQuestionBank.push($(this).parent().parent().parent().attr("id"));
					}
					$(".altogetherNum:eq(0)").text(qbsingleElection);
					$(".altogetherNum:eq(1)").text(qbmultiSelection);
					$(".altogetherNum:eq(2)").text(qbcompletion);
					$(".altogetherNum:eq(3)").text(qbjudgmentProblem);
				} else if($(this).attr("checked") == "checked"){
					$(this).removeAttr("checked");
					$(this).next().addClass("labelout").removeClass("labelin");
					$(this).next().addClass("labeler").removeClass("labele");
					qbsingleElection -= parseInt($(this).parent().parent().next().text());
					qbmultiSelection -= parseInt($(this).parent().parent().next().next().text());
					qbcompletion -= parseInt($(this).parent().parent().next().next().next().text());
					qbjudgmentProblem -= parseInt($(this).parent().parent().next().next().next().next().text());
					for(var arrn = 0;arrn<choseQuestionBank.length;arrn++){
						if (choseQuestionBank[arrn] == $(this).parent().parent().parent().attr("id")) {
							choseQuestionBank.splice(arrn,1);
						}
					}
					$(".altogetherNum:eq(0)").text(qbsingleElection);
					$(".altogetherNum:eq(1)").text(qbmultiSelection);
					$(".altogetherNum:eq(2)").text(qbcompletion);
					$(".altogetherNum:eq(3)").text(qbjudgmentProblem);
				}
				$(".rdsubjectNumText").text(qbsingleElection + qbmultiSelection + qbcompletion + qbjudgmentProblem);
				var ztotal = parseInt($(".singleElection").val()) + parseInt($(".multiSelection").val()) + parseInt($(".judgmentProblem").val()) + parseInt($(".completion").val())
				quest = ztotal;
				examStrs = choseQuestionBank.join(',');
				settingScoreFun();
			})
			var totalScore = ($(".singleElection").val() * $(".singleElectionFraction").val()) + ($(".multiSelection").val() * $(".multiSelectionFraction").val()) + ($(".completion").val() * $(".completionFraction").val()) + ($(".judgmentProblem").val() * $(".judgmentProblemFraction").val());
			totalScore = totalScore.toFixed(1);
			$(".totalScore").text(String(totalScore));
			$(".currentTotalScore").text($(".totalScore").text());
			$('.singleElectionFraction,.multiSelectionFraction,.completionFraction,.judgmentProblemFraction,.missedElectionFraction').on('input propertychange', function() {  
				var totalScore = ($(".singleElection").val() * $(".singleElectionFraction").val()) + ($(".multiSelection").val() * $(".multiSelectionFraction").val()) + ($(".completion").val() * $(".completionFraction").val()) + ($(".judgmentProblem").val() * $(".judgmentProblemFraction").val());
				totalScore = totalScore.toFixed(1);
				$(".totalScore").text(String(totalScore));
				$(".currentTotalScore").text($(".totalScore").text());
				maxFun();
			});
			//题目同步选择操作
			$.each($(".randomtableBox tr[id] input"),function(){
				if (choseQuestionBank.length == 0) {
					$(".randomtableBox tr[id] input").removeAttr("checked");
					$(".randomtableBox tr[id] input").next().addClass("labelout").removeClass("labelin");
					$(".randomtableBox tr[id] input").next().addClass("labeler").removeClass("labele");
				} else{
					for(var arrn = 0;arrn<choseQuestionBank.length;arrn++){
						if (choseQuestionBank[arrn] == $(this).parent().parent().parent().attr("id")) {
							$(this).attr("checked","true");
							$(this).next().addClass("labelin").removeClass("labelout");
							$(this).next().addClass("labele").removeClass("labeler");
						}
					}
				}
			})
		}
	});
}
allQuestionBank();
allQuestionBank(1);
function allQuestionBank(choice){
	$.ajax({
		type:"get",
		url:path+"pc/managementQuestionBankPc/findBankByDiffCondition.action",
		dataType:"json",
		data:{
			type:1
		},
		success:function(data){
			var data = data.data;
			var conItemAsideHtml = '<p class="bgc">题库名称</p><ul class="list-group conItemAside">';
			var randomtableBoxHtml = '<table class="table"><tr class="bgc"><th class="col-xs-3">题库名称</th><th class="col-xs-3">单选题(道)</th><th class="col-xs-2">多选题(道)</th><th class="col-xs-2">填空题(道)</th><th class="col-xs-2">判断题(道)</th></tr>';
			for (var b = 0;b<data.length;b++) {
				conItemAsideHtml += '<li class="list-group-item" id="'+data[b]._id+'">'+data[b].name+'</li>';
				randomtableBoxHtml += '<tr id="'+data[b]._id+'"><td><div class="checkbox checkbox-info"><input id="checkboxes'+b+'" class="styled" type="checkbox"><label for="checkboxes'+b+'">'+data[b].name+'</label></div></td><td>'+data[b].singleElection+'</td><td>'+data[b].multiSelection+'</td><td>'+data[b].fillAVacancy+'</td><td>'+data[b].judge+'</td></tr>';
			}
			if (data.length == 0) {
				if (choice == 1) {
					$(".randomtableBox").html("<p style='padding-left:8px;'>暂无题库</p>");
				} else{
					$(".conItemAsideBox").html("<p style='padding-left:8px;'>暂无题库</p>");
					$(".tableBox").html("<p style='padding-left:8px;'>暂无题目</p>");
				}
			} else{
				if (choice == 1) {
					$(".randomtableBox").html(randomtableBoxHtml+"</table>");
				} else{
					$(".conItemAsideBox").html(conItemAsideHtml+"</ul>");
					$(".conItemAside .list-group-item:eq(0)").addClass("active");
					textPagerFun($(".conItemAside .list-group-item:eq(0)").attr("id"),page);
					$(".conItemAside .list-group-item").off("click").on("click",function(){
						$(this).addClass("active").siblings().removeClass("active");
						textPagerFun($(this).attr("id"),page);
					});
				}
			}
			$(".randomtableBox tr[id] input").off("click").on("click",function(){
				if ($(this).attr("checked") == undefined) {
					$(this).attr("checked","true");
					$(this).next().addClass("labelin").removeClass("labelout");
					$(this).next().addClass("labele").removeClass("labeler");
					qbsingleElection += parseInt($(this).parent().parent().next().text());
					qbmultiSelection += parseInt($(this).parent().parent().next().next().text());
					qbcompletion += parseInt($(this).parent().parent().next().next().next().text());
					qbjudgmentProblem += parseInt($(this).parent().parent().next().next().next().next().text());
					if ($(this).attr("checked") == "checked"&&choseQuestionBank.indexOf($(this).parent().parent().parent().attr("id")) == -1) {
						choseQuestionBank.push($(this).parent().parent().parent().attr("id"));
					}
					$(".altogetherNum:eq(0)").text(qbsingleElection);
					$(".altogetherNum:eq(1)").text(qbmultiSelection);
					$(".altogetherNum:eq(2)").text(qbcompletion);
					$(".altogetherNum:eq(3)").text(qbjudgmentProblem);
				} else if($(this).attr("checked") == "checked"){
					$(this).removeAttr("checked");
					$(this).next().addClass("labelout").removeClass("labelin");
					$(this).next().addClass("labeler").removeClass("labele");
					qbsingleElection -= parseInt($(this).parent().parent().next().text());
					qbmultiSelection -= parseInt($(this).parent().parent().next().next().text());
					qbcompletion -= parseInt($(this).parent().parent().next().next().next().text());
					qbjudgmentProblem -= parseInt($(this).parent().parent().next().next().next().next().text());
					for(var arrn = 0;arrn<choseQuestionBank.length;arrn++){
						if (choseQuestionBank[arrn] == $(this).parent().parent().parent().attr("id")) {
							choseQuestionBank.splice(arrn,1);
						}
					}
					$(".altogetherNum:eq(0)").text(qbsingleElection);
					$(".altogetherNum:eq(1)").text(qbmultiSelection);
					$(".altogetherNum:eq(2)").text(qbcompletion);
					$(".altogetherNum:eq(3)").text(qbjudgmentProblem);
				}
				$(".rdsubjectNumText").text(qbsingleElection + qbmultiSelection + qbcompletion + qbjudgmentProblem);
				var ztotal = parseInt($(".singleElection").val()) + parseInt($(".multiSelection").val()) + parseInt($(".judgmentProblem").val()) + parseInt($(".completion").val());
				quest = ztotal;
				examStrs = choseQuestionBank.join(',');
				settingScoreFun();
			})
			var totalScore = ($(".singleElection").val() * $(".singleElectionFraction").val()) + ($(".multiSelection").val() * $(".multiSelectionFraction").val()) + ($(".completion").val() * $(".completionFraction").val()) + ($(".judgmentProblem").val() * $(".judgmentProblemFraction").val());
			totalScore = totalScore.toFixed(1);
			$(".totalScore").text(String(totalScore));
			$(".currentTotalScore").text($(".totalScore").text());
			$('.singleElectionFraction,.multiSelectionFraction,.completionFraction,.judgmentProblemFraction,.missedElectionFraction').on('input propertychange', function() {  
				var totalScore = ($(".singleElection").val() * $(".singleElectionFraction").val()) + ($(".multiSelection").val() * $(".multiSelectionFraction").val()) + ($(".completion").val() * $(".completionFraction").val()) + ($(".judgmentProblem").val() * $(".judgmentProblemFraction").val());
				totalScore = totalScore.toFixed(1);
				$(".totalScore").text(String(totalScore));
				$(".currentTotalScore").text($(".totalScore").text());
				maxFun();
			});
			//题目同步选择操作
			$.each($(".randomtableBox tr[id] input"),function(){
				if (choseQuestionBank.length == 0) {
					$(".randomtableBox tr[id] input").removeAttr("checked");
					$(".randomtableBox tr[id] input").next().addClass("labelout").removeClass("labelin");
					$(".randomtableBox tr[id] input").next().addClass("labeler").removeClass("labele");
				} else{
					for(var arrn = 0;arrn<choseQuestionBank.length;arrn++){
						if (choseQuestionBank[arrn] == $(this).parent().parent().parent().attr("id")) {
							$(this).attr("checked","true");
							$(this).next().addClass("labelin").removeClass("labelout");
							$(this).next().addClass("labele").removeClass("labeler");
						}
					}
				}
			})
		}
	});
}
var page = 1;
function textPagerFun(textPageBankId,page){
	$.ajax({
		type:"get",
		url:path+"pc/examQuestionsPc/findAllExamQuestions.action",
		dataType:"json",
		data:{
			bankId:textPageBankId,
			page:page,
			size:10
		},
		success:function(textDatas){
			var textData = textDatas.data;
			if (textData.length == 0) {
				$(".tableBox").html("<p style='padding-left:8px;'>暂无题目</p>");
			} else{
				var tableBoxHtml = '<table class="table"><tr class="bgc"><th class="col-xs-8"><div class="checkbox checkbox-info"><input id="checkboxed" class="styled" type="checkbox"><label for="checkboxed" style="font-weight:bold;">题目标题</label></div></th><th class="col-xs-4">题型</th></tr>';
				for (var c = 0;c<textData.length;c++) {
					tableBoxHtml += '<tr id="'+textData[c]._id+'" parentId="'+textPageBankId+'"><td><div class="checkbox checkbox-info"><input id="checkbox'+c+'" class="styled" type="checkbox"><label for="checkbox'+c+'"><p>'+textData[c].title+'</p></label></div></td><td type="'+textData[c].type+'"></td></tr>';
				}
				$(".tableBox").html(tableBoxHtml);
				$.each($(".table td[type]"), function(index) {
					if ($(this).attr("type")==1) {
						$(this).text("单选题");
					} else if($(this).attr("type")==2){
						$(this).text("多选题");
					} else if($(this).attr("type")==3){
						$(this).text("填空题");
					} else if($(this).attr("type")==4){
						$(this).text("判断题");
					}
				});
				$(".bgc input").off("click").on("click",function(){
					if ($(this).attr("checked") == undefined) {
						$(this).attr("checked","true");
						$(this).next().addClass("labelin").removeClass("labelout");
						$(this).next().removeClass("labeler").addClass("labele");
						$("tr[id] input").attr("checked","true");
						$("tr[id] input").next().addClass("labelin").removeClass("labelout");
						$("tr[id] input").next().removeClass("labeler").addClass("labele");
						$.each($(".tableBox tr[id] input"), function(index) {
							if ($(this).attr("checked") == "checked"&&subjectNumArr.indexOf($(this).parent().parent().parent().attr("id")) == -1) {
								subjectNumArr.push($(this).parent().parent().parent().attr("id"));
								subjectTypeArr.push($(this).parent().parent().next().attr("type"));
							}
						});
					} else if($(this).attr("checked") == "checked") {
						$(this).removeAttr("checked");
						$(this).next().addClass("labelout").removeClass("labelin");
						$(this).next().addClass("labeler").removeClass("labele");
						$("tr[id] input").removeAttr("checked");
						$("tr[id] input").next().addClass("labelout").removeClass("labelin");
						$("tr[id] input").next().addClass("labeler").removeClass("labele");
						$.each($(".tableBox tr[id] input"), function(index) {
							if ($(this).attr("checked") == undefined) {
								for(var arrn = 0;arrn<subjectNumArr.length;arrn++){
									if (subjectNumArr[arrn] == $(this).parent().parent().parent().attr("id")) {
										subjectNumArr.splice(arrn,1);
										subjectTypeArr.splice(arrn,1);
									}
								}
							}
						});
					}
					examStrs = subjectNumArr.join(',');
					$(".subjectNumText").text(subjectNumArr.length);
					quest = $(".subjectNumText").text();
					var singleElection = 0,
					multiSelection = 0,
					completion = 0,
					judgmentProblem = 0;
					if (subjectTypeArr.length == 0) {
						$(".singleElection").val(0);
						$(".multiSelection").val(0);
						$(".completion").val(0);
						$(".judgmentProblem").val(0);
					} else{
						for(var subnum = 0;subnum<subjectTypeArr.length;subnum++){
							if (subjectTypeArr[subnum] == 1) {
								singleElection++;
							} else if(subjectTypeArr[subnum] == 2) {
								multiSelection++;
							} else if(subjectTypeArr[subnum] == 3) {
								completion++;
							} else if(subjectTypeArr[subnum] == 4) {
								judgmentProblem++;
							}
						}
						$(".singleElection").val(singleElection);
						$(".multiSelection").val(multiSelection);
						$(".completion").val(completion);
						$(".judgmentProblem").val(judgmentProblem);
					}
					settingScoreFun();
					var totalScore = ($(".singleElection").val() * $(".singleElectionFraction").val()) + ($(".multiSelection").val() * $(".multiSelectionFraction").val()) + ($(".completion").val() * $(".completionFraction").val()) + ($(".judgmentProblem").val() * $(".judgmentProblemFraction").val());
					totalScore = totalScore.toFixed(1);
					$(".totalScore").text(String(totalScore));
					$(".currentTotalScore").text($(".totalScore").text());
					$('.singleElectionFraction,.multiSelectionFraction,.completionFraction,.judgmentProblemFraction,.missedElectionFraction').on('input propertychange', function() {  
						var totalScore = ($(".singleElection").val() * $(".singleElectionFraction").val()) + ($(".multiSelection").val() * $(".multiSelectionFraction").val()) + ($(".completion").val() * $(".completionFraction").val()) + ($(".judgmentProblem").val() * $(".judgmentProblemFraction").val());
						totalScore = totalScore.toFixed(1);
						$(".totalScore").text(String(totalScore));
						$(".currentTotalScore").text($(".totalScore").text());
						maxFun();
					});
				});
				$(".tableBox tr[id] input").off("click").on("click",function(){
					if ($(this).attr("checked") == undefined) {
						$(this).attr("checked","true");
						$(this).next().addClass("labelin").removeClass("labelout");
						$(this).next().removeClass("labeler").addClass("labele");
						$.each($(".tableBox tr[id] input"), function(index) {
							if ($(this).attr("checked") == "checked"&&subjectNumArr.indexOf($(this).parent().parent().parent().attr("id")) == -1) {
								subjectNumArr.push($(this).parent().parent().parent().attr("id"));
								subjectTypeArr.push($(this).parent().parent().next().attr("type"));
							}
						});
					} else if($(this).attr("checked") == "checked") {
						$(this).removeAttr("checked");
						$(this).next().addClass("labelout").removeClass("labelin");
						$(this).next().addClass("labeler").removeClass("labele");
						$(".bgc input").removeAttr("checked");
						$(".bgc input").next().addClass("labelout").removeClass("labelin");
						$(".bgc input").next().addClass("labeler").removeClass("labele");
						
						$.each($(".tableBox tr[id] input"), function(index) {
							if ($(this).attr("checked") == undefined) {
								for(var arrn = 0;arrn<subjectNumArr.length;arrn++){
									if (subjectNumArr[arrn] == $(this).parent().parent().parent().attr("id")) {
										subjectNumArr.splice(arrn,1);
										subjectTypeArr.splice(arrn,1);
									}
								}
							}
						});
					}
					examStrs = subjectNumArr.join(',');
					$(".subjectNumText").text(subjectNumArr.length);
					quest = $(".subjectNumText").text();
//						quest = $(".rdsubjectNumText").text();
					var singleElection = 0,
					multiSelection = 0,
					completion = 0,
					judgmentProblem = 0;
					if (subjectTypeArr.length == 0) {
						$(".singleElection").val(0);
						$(".multiSelection").val(0);
						$(".completion").val(0);
						$(".judgmentProblem").val(0);
					} else{
						for(var subnum = 0;subnum<subjectTypeArr.length;subnum++){
							if (subjectTypeArr[subnum] == 1) {
								singleElection++;
							} else if(subjectTypeArr[subnum] == 2) {
								multiSelection++;
							} else if(subjectTypeArr[subnum] == 3) {
								completion++;
							} else if(subjectTypeArr[subnum] == 4) {
								judgmentProblem++;
							}
						}
						$(".singleElection").val(singleElection);
						$(".multiSelection").val(multiSelection);
						$(".completion").val(completion);
						$(".judgmentProblem").val(judgmentProblem);
					}
					settingScoreFun();
					var totalScore = ($(".singleElection").val() * $(".singleElectionFraction").val()) + ($(".multiSelection").val() * $(".multiSelectionFraction").val()) + ($(".completion").val() * $(".completionFraction").val()) + ($(".judgmentProblem").val() * $(".judgmentProblemFraction").val());
					totalScore = totalScore.toFixed(1);
					$(".totalScore").text(String(totalScore));
					$(".currentTotalScore").text($(".totalScore").text());
					$('.singleElectionFraction,.multiSelectionFraction,.completionFraction,.judgmentProblemFraction,.missedElectionFraction').on('input propertychange', function() {  
						var totalScore = ($(".singleElection").val() * $(".singleElectionFraction").val()) + ($(".multiSelection").val() * $(".multiSelectionFraction").val()) + ($(".completion").val() * $(".completionFraction").val()) + ($(".judgmentProblem").val() * $(".judgmentProblemFraction").val());
						totalScore = totalScore.toFixed(1);
						$(".totalScore").text(String(totalScore));
						$(".currentTotalScore").text($(".totalScore").text());
						maxFun();
					});
				})
				//题目同步选择操作
				$.each($(".tableBox tr[id] input"),function(){
					if (subjectNumArr.length == 0) {
						$(".tableBox tr[id] input").removeAttr("checked");
						$(".tableBox tr[id] input").next().addClass("labelout").removeClass("labelin");
						$(".tableBox tr[id] input").next().addClass("labeler").removeClass("labele");
					} else{
						for(var arrn = 0;arrn<subjectNumArr.length;arrn++){
							if (subjectNumArr[arrn] == $(this).parent().parent().parent().attr("id")) {
								$(this).attr("checked","true");
								$(this).next().addClass("labelin").removeClass("labelout");
								$(this).next().addClass("labele").removeClass("labeler");
							}
						}
					}
				})
				//分页
				$(".navfooter").html('<nav class="navi" aria-label="Page navigation"><ul class="pagination paginationLists" id="paginationLists"></ul></nav>');
				$('#paginationLists').bootstrapPaginator({
					currentPage: textDatas.page,//当前的请求页面。
					totalPages: textDatas.pages,//一共多少页。
					size:"normal",//应该是页眉的大小。
					bootstrapMajorVersion: 3,//bootstrap的版本要求。
					alignment:"right",
					numberOfPages:10,//一页列出多少数据。
					itemTexts: function (type, page, current) {//如下的代码是将页眉显示的中文显示我们自定义的中文。
						switch (type) {
						case "prev": return "上一页";
						case "next": return "下一页";
						case "page": return page;
						}
					}
				});
				$("#paginationLists a").off("click").on("click",function(){
					if ($(this).text() == "下一页") {
						if (page >= textDatas.pages) {
							page = textDatas.pages;
						} else{
							page++;
						}
						textPagerFun(textPageBankId,page)
					} else if($(this).text() == "上一页") {
						if (page <= 1) {
							page = 1;
						} else{
							page--;
						}
						textPagerFun(textPageBankId,page);
					} else{
						page = $(this).text();
						textPagerFun(textPageBankId,page);
					}
				})
			}
		}
	});
}
function subjectNum(checkedTrue){
	$.each(checkedTrue, function(index) {
		console.log(checkedTrue.attr("checked"))
		if (checkedTrue.attr("checked") == "checked") {
			subjectNumArr.push(checkedTrue.parent().parent().parent().attr("id"));
		}
	});
}
//ztree树状图
var userArr = [];
$(".scope,.plus").on("click",function(){
	$.ajax({
		type: "GET",
		url:path+"pc/examPaperPc/bumenAndUserTreeByCode.action",
		dataType:"json",
		success:function(data){
			var zNodes = data;
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		}
	})
})
var setting = {
	check: {
		enable: true
	},
	data: {
		simpleData: {
			enable: true
		}
	},
	callback: {
		onCheck: onCheck
	}
};
var zNodes =[];
var code;
var clearFlag = false;
function onCheck(e, treeId, treeNode) {
	count();
	if (clearFlag) {
		setCheck();
	}
}
function setCheck() {
	var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
	py = $("#py").attr("checked")? "p":"",
			sy = $("#sy").attr("checked")? "s":"",
					pn = $("#pn").attr("checked")? "p":"",
							sn = $("#sn").attr("checked")? "s":"",
									type = { "Y":py + sy, "N":pn + sn};
	zTree.setting.check.chkboxType = type;
	showCode('setting.check.chkboxType = { "Y" : "' + type.Y + '", "N" : "' + type.N + '" };');
}
function count() {
	var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
	checkCount = zTree.getCheckedNodes(true),
	nocheckCount = zTree.getCheckedNodes(false),
	changeCount = zTree.getChangeCheckedNodes();
}
function showCode(str) {
	if (!code) code = $("#code");
	code.empty();
	code.append("<li>"+str+"</li>");
}
//
$(".newBuild").off("click").on("click",function(){
	var scopeText = '';
	userArr = [];
	for (var a = 0;a<$.fn.zTree.getZTreeObj("treeDemo").getCheckedNodes(true).length;a++) {
		if ($.fn.zTree.getZTreeObj("treeDemo").getCheckedNodes(true)[a].isParent != true) {
			userArr.push($.fn.zTree.getZTreeObj("treeDemo").getCheckedNodes(true)[a].id);
			scopeText += $.fn.zTree.getZTreeObj("treeDemo").getCheckedNodes(true)[a].name+',';
		}
	}
	$(".scope").val(scopeText);
})
//是否显示用时
$("#showtime").on("click",function(){
	if ($(this).attr("showTime") == 0) {
		$(this).attr("showTime","1");
	} else{
		$(this).attr("showTime","0");
	}
	
})
$("#push").on("click",function(){
	if ($(this).attr("isPush") == 0) {
		$(this).attr("isPush","1");
	} else{
		$(this).attr("isPush","0");
	}
})
//定时发布
$("#checkboxd").on("click",function(){
	if ($(this).attr("isTiming") == 0) {
		$(this).attr("isTiming","1");
		$(".releaseTime").show();
	} else{
		$(this).attr("isTiming","0");
		$(".releaseTime").hide();
	}
})
//隐藏弹窗
$(".promptSure,.close").on("click",function(){
	$(".prompt").fadeOut();
})
//发布
$(".release").off("click").on("click",function(){
//			console.log($(".qualified").val());
//			console.log($(".currentTotalScore").text());
	var singleElectionSum = $(".selectlist").val() == "自定义选题" ? "":$(".altogetherNum:eq(0)").text();
	var multiSelectionSum = $(".selectlist").val() == "自定义选题" ? "":$(".altogetherNum:eq(1)").text();
	var fillAVacancySum = $(".selectlist").val() == "自定义选题" ? "":$(".altogetherNum:eq(3)").text();
	var judgeSum = $(".selectlist").val() == "自定义选题" ? "":$(".altogetherNum:eq(2)").text();
	var datetimeRelease = $("#datetimeRelease").val() == "" ? "":$("#datetimeRelease").val()+":00"
			if ($(".subjectNumText").text() == "0"&&$(".rdsubjectNumText").text() == "0") {
				$(".prompt").fadeIn();
				$(".promptText").text("请选择题目！");
			} else if($(".totalScore").text() == "0") {
				$(".prompt").fadeIn();
				$(".promptText").text("请添加题目分数！");
			} else if($(".title").val() == ""){
				$(".prompt").fadeIn();
				$(".promptText").text("请填写试卷标题！");
			} else if($("#datetimeStart").val() == ""||$("#datetimeEnd").val() == ""){
				$(".prompt").fadeIn();
				$(".promptText").text("请选择试卷有效期！");
			} else if($(".timeLength").val() == ""){
				$(".prompt").fadeIn();
				$(".promptText").text("请填写答题时长！");
			} else if($(".qualified").val() == ""){
				$(".prompt").fadeIn();
				$(".promptText").text("请填写合格分时！");
			} else if(parseInt($(".qualified").val()) > parseInt($(".currentTotalScore").text())){
				$(".prompt").fadeIn();
				$(".promptText").text("试卷合格分不能大于试卷总分！");
			} else if($(".scope").val() == ""){
				$(".prompt").fadeIn();
				$(".promptText").text("请填选择考试范围！");
			} else {
				var ztotal = parseInt($(".singleElection").val()) + parseInt($(".multiSelection").val()) + parseInt($(".judgmentProblem").val()) + parseInt($(".completion").val())
				quest = ztotal;
				$.ajax({
					type: "post",
					url:path+"pc/examPaperPc/upsert.action",
					dataType:"json",
					data:{
						title:$(".title").val(),
						mode:$(".selectlist").attr("title"),
						examStrs:examStrs,
						quest:quest,
						singleElectionSum:singleElectionSum,//单选题总数
						multiSelectionSum:multiSelectionSum,//多选题总数
						fillAVacancySum:fillAVacancySum,//填空题总数
						judgeSum:judgeSum,//判断题总数
						singleElection:$(".singleElection").val(),//单选题数量
						singleFraction:$(".singleElectionFraction").val(),
						multiSelection:$(".multiSelection").val(),//多选题数量
						multiFraction:$(".multiSelectionFraction").val(),
						missingFraction:$(".missedElectionFraction").val(),
						fillAVacancy:$(".completion").val(),//填空题数量
						fillFraction:$(".completionFraction").val(),
						judge:$(".judgmentProblem").val(),//判断题数量
						judgeFraction:$(".judgmentProblemFraction").val(),
						disorder:$(".disorder").attr("disorder"),
						starValidity:$("#datetimeStart").val()+":00",
						endValidity:$("#datetimeEnd").val()+":00",
						answerTime:$(".timeLength").val(),
						qualfraction:$(".qualified").val(),
						about:$(".about").val(),
						showTime:$("#showtime").attr("showTime"),
						isPush:$("#push").attr("isPush"),
						userId:userArr.join(","),
						isTiming:$("#checkboxd").attr("isTiming"),
						timDate:datetimeRelease
					},
					success:function(data){
						location.href = "test_paper.html";
					}
				});
			}
})
//})