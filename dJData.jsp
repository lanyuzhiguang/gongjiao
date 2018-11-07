<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/modulepc/resources/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title></title>
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet"
	href="${ctxPath}/modulepc/css/materialize.min.css"
	media="screen,projection" />
<link href="${ctxPath}/modulepc/css/bootstrap.css" rel="stylesheet" />
<link href="${ctxPath}/modulepc/css/custom-styles.css" rel="stylesheet" />
<link rel="stylesheet" href="${ctxPath}/modulepc/css/dJData_pc.css">

</head>

<body>
	<div class="djDataBox">
		<div class="djDataBox_nav">
			<div class="djDataBox_left">
				<div class="djDataBox_word">“互联网+党建”大数据平台</div>
			</div>
			<div class="djDataBox_right">
				<ul>
					<li><a href="../count/todJData.action"><div>总体概览</div></a></li>
					<li><a href="../count/topartyData.action"><div>党员数据</div></a></li>
					<li><a href="../count/toplatformData.action"><div>平台数据</div></a></li>
					<li><a href="../count/toorglifeData.action"><div>组织生活</div></a></li>
				</ul>
			</div>
		</div>
		<div class="djDataBox_middle">
			<div class="djData_leftBox">
				<div class="djData_left">
					<ul>
						<li>
							<div>
								<div class="icon_bar"></div>
								<div style="display: inline-block;vertical-align: top;">
									党委：<br/><span id="committeesum" style="color: #F06418;">67</span>
								</div>
							</div>
						</li>
						<li>
							<div>
								<div class="icon_bar" style="background: #30AE80;"></div>
								<div style="display: inline-block;vertical-align: top;">
									党总支数量：<br/><span id="generalsum" style="color: #30AE80;">169</span>
								</div>
							</div>
						</li>
						<li>
							<div>
								<div class="icon_bar" style="background: #3665DD;"></div>
								<div style="display: inline-block;vertical-align: top;">
									党组织数量：<br/><span id="bumensum" style="color: #3665DD;">1472</span>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="djData_middle">
					<div class="djDataHead">
						<img src="${ctxPath}/modulepc/img/dj11.png" style="margin:auto;position: absolute;width: 52%;opacity: 0.1;left: 0;right: 0;top: 0;bottom: 0;"/>
						<div class="zuzhiN">
							<span>党支部数量</span><br/><span><span class="numPerson" id="branchsum">1236</span></span>
						</div>
						<div class="dangyN">
							<span>党员数量</span><br/><span><span class="numPerson" id="usersum">25415</span></span>
						</div>
						<div class="diTu"></div>
					</div>
				</div>
			</div>
			<div class="djData_right">
				<div class="djData_top">
					<ul>
						<li id="one"><div class="selectED">党组织排名</div></li>
						<li id="two"><div>党员排名</div></li>
					</ul>
				</div>
				<div class="djData_List" id="djData_List1">
					<table>
						<thead>
							<tr>
								<th></th>
								<th>党组织名称</th>
								<th>积分</th>
							</tr>
						</thead>
						<tbody class="ranK" id="bumenrank">
							<tr>
								<td><div>1</div></td>
								<td><div>中共阿尔山林业局金江沟林场机关支部委员会</div></td>
								<td><div>11473</div></td>
							</tr>
							<tr>
								<td><div>2</div></td>
								<td><div>中共内蒙古甘河林业局贮木场生产二队支部委员会</div></td>
								<td><div>10356</div></td>
							</tr>
							<tr>
								<td><div>3</div></td>
								<td><div>中共大杨树林业局护林防火办公室灭火队支部委员会</div></td>
								<td><div>7209</div></td>
							</tr>
							<tr>
								<td><div>4</div></td>
								<td><div>中共克一河林业局机械运修处机关支部委员会</div></td>
								<td><div>4542</div></td>
							</tr>
							<tr>
								<td><div>5</div></td>
								<td><div>中共阿尔山林业局直属机关第三支部委员会</div></td>
								<td><div>4267</div></td>
							</tr>
							<tr>
								<td><div>6</div></td>
								<td><div>中共得耳布尔林业局康达岭管护林场机关支部委员会</div></td>
								<td><div>3557</div></td>
							</tr>
							<tr>
								<td><div>7</div></td>
								<td><div>中共得耳布尔林业局康达岭管护林场第二支部</div></td>
								<td><div>2761</div></td>
							</tr>
							<tr>
								<td><div>8</div></td>
								<td><div>中共金河林业局贮木场机关支部委员会</div></td>
								<td><div>2552</div></td>
							</tr>
							<tr>
								<td><div>9</div></td>
								<td><div>中共金河林业局贮木场生产检验队支部委员会</div></td>
								<td><div>2106</div></td>
							</tr>
							<tr>
								<td><div>10</div></td>
								<td><div>中共莫尔道嘎林业局机关第十二支部委员会</div></td>
								<td><div>1973</div></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="djData_List hid" id="djData_List2">
					<table>
						<thead>
							<tr>
								<th></th>
								<th>党员姓名</th>
								<th>积分</th>
							</tr>
						</thead>
						<tbody class="ranK" id="userrank">
							<tr>
								<td><div>1</div></td>
								<td><div>王玉霞</div></td>
								<td><div>104070</div></td>
							</tr>
							<tr>
								<td><div>2</div></td>
								<td><div>黄赵静</div></td>
								<td><div>89998</div></td>
							</tr>
							<tr>
								<td><div>3</div></td>
								<td><div>姚晓磊</div></td>
								<td><div>80295</div></td>
							</tr>
							<tr>
								<td><div>4</div></td>
								<td><div>刘伟</div></td>
								<td><div>66903</div></td>
							</tr>
							<tr>
								<td><div>5</div></td>
								<td><div>刘贤全</div></td>
								<td><div>41403</div></td>
							</tr>
							<tr>
								<td><div>6</div></td>
								<td><div>王伟东</div></td>
								<td><div>41274</div></td>
							</tr>
							<tr>
								<td><div>7</div></td>
								<td><div>王国瑞</div></td>
								<td><div>40289</div></td>
							</tr>
							<tr>
								<td><div>8</div></td>
								<td><div>魏鑫鹏</div></td>
								<td><div>30900</div></td>
							</tr>
							<tr>
								<td><div>9</div></td>
								<td><div>鄂丽明</div></td>
								<td><div>20139</div></td>
							</tr>
							<tr>
								<td><div>10</div></td>
								<td><div>王和平</div></td>
								<td><div>18896</div></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="djDataBox_footer">
			<div class="dj_left">
				<div class="dj_Head">
					<div>发展党员情况</div>
				</div>
				<div class="dj_body">
					<ul>
						<li>
							<div>
								<div class="card-panel text-center">
									<div class="easypiechart" id="easypiechart-blue"
										data-percent="80">
										<div class="num" id="partysum">25173</div>
										<span class="percent" id="ppartysum">99%</span>
									</div>

								</div>
							</div>
							<div>正式党员</div>
						</li>
						<li>
							<div>
								<div class="card-panel text-center">
									<div class="easypiechart" id="easypiechart-red"
										data-percent="1">
										<div class="num" id="propartysum">242</div>
										<span class="percent" id="ppropartysum">1%</span>
									</div>
								</div>
							</div>
							<div>预备党员</div>
						</li>
						<li>
							<div>
								<div class="card-panel text-center">
									<div class="easypiechart" id="easypiechart-teal"
										data-percent="0">
										<div class="num" id="devpartysum">0</div>
										<span class="percent" id="pdevpartysum">0</span>
									</div>
								</div>
							</div>
							<div>发展对象</div>
						</li>
						<li>
							<div>
								<div class="card-panel text-center">
									<div class="easypiechart" id="easypiechart-zi" data-percent="0">
										<div class="num" id="positivesum">0</div>
										<span class="percent" id="ppositivesum">0</span>
									</div>
								</div>
							</div>
							<div>积极分子</div>
						</li>
						<li>
							<div>
								<div class="card-panel text-center">
									<div class="easypiechart" id="easypiechart-orange"
										data-percent="0">
										<div class="num" id="application">0</div>
										<span class="percent" id="papplication">0</span>
									</div>
								</div>
							</div>
							<div>申请入党</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="dj_right">
				<div class="dj_right_head">原创热度排行</div>
				<div class="dj_right_List">
					<table>
						<tbody class="ranK" id="hotnews">
							<tr>
								<td><div>1</div></td>
								<td><div>阿尔山林业局局直机关第八党支部召开学习贯彻...</div></td>
								<td><img src="${ctxPath}/modulepc/img/dj5.png"><span>824</span></td>
							</tr>
							<tr>
								<td><div>2</div></td>
								<td><div>甘河林业局机关第二党支部换届选举</div></td>
								<td><img src="${ctxPath}/modulepc/img/dj5.png"><span>754</span></td>
							</tr>
							<tr>
								<td><div>3</div></td>
								<td><div>重温入党誓词 集体诵读党章——金河林业局...</div></td>
								<td><img src="${ctxPath}/modulepc/img/dj5.png"><span>702</span></td>
							</tr>
							<tr>
								<td><div>4</div></td>
								<td><div>甘河林业局机关第四党支部召开“做品德...</div></td>
								<td><img src="${ctxPath}/modulepc/img/dj5.png"><span>625</span></td>
							</tr>
							<tr>
								<td><div>5</div></td>
								<td><div>大杨树林业局库莫林场家庭经济户喜获丰收</div></td>
								<td><img src="${ctxPath}/modulepc/img/dj5.png"><span>589</span></td>
							</tr>
						</tbody>
					</table>
					<div class="bottomSum">
						<div>
							<span class="one">累计收入原创资讯： </span><span class="number"
								id="originalsum"></span>
						</div>
						<div>
							<span class="two">累计浏览量： </span><span class="number" id="pageviews"></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="${ctxPath}/modulepc/js/jquery-1.10.2.js"></script>
<script src="${ctxPath}/modulepc/js/easypiechart.js"></script>
<script src="${ctxPath}/modulepc/js/easypiechart-data.js"></script>
<script src="${ctxPath}/modulepc/js/jquery.chart.min.js"></script>

<script>
	$(function() {
		var ranK = $(".ranK");
		for (var j = 0; j < ranK.length; j++) {
			for (var i = 0; i < 3; i++) {
				$($($(ranK[j]).find("tr").get(i)).find("td").get(0)).addClass(
						"addMark");
			}

		}

		$("#one").click(function() {
			$(".djData_top ul li div").removeClass("selectED");
			$("#one div").addClass("selectED");
			$(".djData_List").addClass("hid");
			$("#djData_List1").removeClass("hid");
		});
		$("#two").click(function() {
			$(".djData_top ul li div").removeClass("selectED");
			$("#two div").addClass("selectED");
			$(".djData_List").addClass("hid");
			$("#djData_List2").removeClass("hid");
		});
		ss();
	})

	function ss() {
		//党员信息统计
		$.ajax({
			type : "post",
			url : "../count/usercount.action",
			dataType : "json",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			success : function(data) {
				//$("#easypiechart-blue").attr("data-percent","50");
				$("#easypiechart-blue").data('easyPieChart').update(
						data.ppartysum); //党员数量 
				$("#easypiechart-red").data('easyPieChart').update(
						data.ppropartysum); //预备党员
				$("#easypiechart-zi").data('easyPieChart').update(
						data.ppositivesum);//  积极分子
				$("#easypiechart-teal").data('easyPieChart').update(
						data.devpartysum); //发展对象
				$("#easypiechart-orange").data('easyPieChart').update(
						data.application); //申请入党
				$("#ppartysum").text(data.ppartysum + "%");//党员数量
				$("#ppropartysum").text(data.ppropartysum + "%");//预备党员
				$("#ppositivesum").text(data.ppositivesum + "%");//积极分子
				$("#pdevpartysum").text(data.pdevpartysum + "%");//发展对象
				$("#papplication").text(data.papplication + "%");//申请入党
				$("#partysum").text(data.partysum + "人");//党员数量
				$("#propartysum").text(data.propartysum + "人");//预备党员
				$("#positivesum").text(data.positivesum + "人");//积极分子
				$("#devpartysum").text(data.devpartysum + "人");//发展对象
				$("#application").text(data.application + "人");//申请入党

			}
		});
		//热度排行
		var ns = "";
		$
				.ajax({
					type : "post",
					url : "../count/findhotNewsByCategoryId.action",
					data : {
						'page' : 1,
						'size' : 5,
						'categoryId' : 'All'
					},
					success : function(data) {
						var date = data.data;
						$
								.each(
										date,
										function(v, o) {
											var i = v + 1;
											var ti = o.title;
											if (ti.length > 20) {
												ti = ti.substring(0, 19)
														+ "...";
											}
											ns += "<tr ><td class='addMark'><div>"
													+ i
													+ "</div></td>"
													+ "<td title='"+o.title+"'><div>"
													+ ti
													+ "</div></td><td><img src='${ctxPath}/modulepc/img/dj5.png'><span>"
													+ o.times
													+ "</span></td></tr>";
										});

						if (data.size > 0) {
							$("#hotnews").html(ns);
						} else {
							$("#hotnews")
									.html(
											"<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
						}
					}
				});
		//部门积分排名
		var bs = "";
		$
				.ajax({
					type : "post",
					url : "../count/scoreRankingBumen.action",
					dataType : "json",
					contentType : "application/x-www-form-urlencoded; charset=utf-8",
					success : function(data) {
						$.each(data, function(v, o) {
							var i = v + 1;
							var ti = o.name;
							if (ti.length > 21) {
								ti = ti.substring(0, 20) + "...";
							}
							bs += "<tr ><td class='addMark'><div>" + i
									+ "</div></td>" + "<td title='"+o.name+"'><div>" + ti
									+ "</div></td><td><div>" + o.avgScore
									+ "</div></td></tr>";
						});

						if (data.length > 0) {
							$("#bumenrank").html(bs);
						} else {
							$("#bumenrank")
									.html(
											"<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
						}
					}
				});
		//个人积分排名
		var as = "";
		$
				.ajax({
					type : "post",
					url : "../count/scoreRankingUser.action",
					dataType : "json",
					contentType : "application/x-www-form-urlencoded; charset=utf-8",
					success : function(data) {

						$.each(data, function(v, o) {
							var i = v + 1;
							as += "<tr><td class='addMark'><div>" + i
									+ "</div></td>" + "<td><div>" + o.name
									+ "</div></td><td><div>" + o.scoreTotal
									+ "</div></td></tr>";
						});

						if (data.length > 0) {
							$("#userrank").html(as);
						} else {
							$("#userrank")
									.html(
											"<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
						}

					}
				});
		//原创信息统计
		$.ajax({
			type : "post",
			url : "../count/originalsum.action",
			dataType : "json",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			success : function(data) {
				$("#pageviews").text(data.pageviews + "人次");
				$("#originalsum").text(data.newscount + "篇");//原创数量

			}
		});
		//部门信息统计
		$.ajax({
			type : "post",
			url : "../count/count.action",
			dataType : "json",
			async : false,
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			success : function(data) {

				$("#bumensum").text(data.bumensum);//党组织数量
				$("#usersum").text(data.partysum);//党员数量
				$("#generalsum").text(data.generalsum);//党总支数量
				$("#committeesum").text(data.committeesum);//党委数量
				$("#branchsum").text(data.branchsum);//支部数量
			}
		});

	}
</script>
</html>
