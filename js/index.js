(function () {
    /*左边菜单点击切换内容并且设置状态改变*/
    // 新闻
    var zixunLi=$(".zixunLi li");
    for(var i=0;i<zixunLi.length;i++){
        $($(zixunLi[i]).find("a")).click(function () {
            $(".nav-list li").removeClass("active");
            $(this).parent().addClass("active");
            var _src=$(this).attr("data-html");
            $("iframe").attr("src",_src);
        })
    }
    //学习
    var studyLi=$(".studyLi li");
    for(var i=0;i<studyLi.length;i++){
        $($(studyLi[i]).find("a")).click(function () {
            $(".nav-list li").removeClass("active");
            $(this).parent().addClass("active");
            var _src=$(this).attr("data-html");
            $("iframe").attr("src",_src);
        })
    }
    //互动
    var HudLi=$(".HudLi li");
    for(var i=0;i<HudLi.length;i++){
        $($(HudLi[i]).find("a")).click(function () {
            $(".nav-list li").removeClass("active");
            $(this).parent().addClass("active");
            var _src=$(this).attr("data-html");
            $("iframe").attr("src",_src);
        })
    }
    //管理
    var ManageLi=$(".ManageLi");
    for(var i=0;i<ManageLi.length;i++){
            $($(ManageLi[i]).find("a")).on("click",function () {
                $(".nav-list li").removeClass("active");
                $(this).parent().addClass("active");
                var _src=$(this).attr("data-html");
                $("iframe").attr("src",_src);
            })
    }

    $(".actiList").click(function () {
        document.location.href="party.html";
    })
})();
//首页
var shouyeB=$(".shouyeB");
shouyeB.click(function (event,arg1) {
    console.log(arg1);
    if(arg1=="true"){
        $(".nav-list li").removeClass("active");
        $(this).parent().addClass("active");
        $("iframe").attr("src","home/resume.html");
    }else{
        $(".nav-list li").removeClass("active");
        $(this).parent().addClass("active");
        var _src=$(this).attr("data-html");
        $("iframe").attr("src",_src);
    }

});

function openAlert(msg){
	zeroModal.alert(msg);
}
function openConfirm(msg,fn){
	zeroModal.confirm(msg, function() {
        fn();
    });
}
function openSuccess(msg){
	zeroModal.success(msg);
}
function openError(msg){
	zeroModal.error(msg);
}
function closeModal(){
	zeroModal.closeAll();
}
function openLoading(type) {
    zeroModal.loading(type);
}
function openModal(title,url,width,height) {
	zeroModal.show({
        title: title,
        iframe: true,
        url: url,
        width: ""+width+"",
        height: ""+height+"",
        transition: true,
        esc:true,
    });
}