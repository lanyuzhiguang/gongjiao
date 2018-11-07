function getFun(url,data,callback){
	$.ajax({
		type:"get",
		url: _ctxPath + url,
		xhrFields: {				
            withCredentials: true	
        },							
        crossDomain: true,
		dataType: "json",
		data: data,
		success: callback
	});
}
function postFun(url,data,callback){
	$.ajax({
		type:"post",
		url: _ctxPath + url,
		xhrFields: {				
            withCredentials: true	
        },							
        crossDomain: true,
		dataType: "json",
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		data: data,
		success: callback
	});
}

