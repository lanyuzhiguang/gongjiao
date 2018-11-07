
    var mask='<div class="mask hid" id="mask"></div>';
    var poperBox="";

    function initPoper(title,content,submitFn){
        changeTitle(title,content);
        $("body").append(mask);
        $("body").append(poperBox);
        //flag是true 确定和取消两个按钮，flag是false 只有确定按钮 , flag没传就是一个确定按钮
        $("#mask").removeClass("hid");
        $("#poper").removeClass("hid");
        $("#mask").click(function () {
            $(this).addClass("hid");
            $("#poper").addClass("hid");
        });
        $(".onlySure").click(function () {
            if(submitFn){
                submitFn();
                $("#mask").addClass("hid");
                $("#poper").addClass("hid");
            }else{
                $("#mask").addClass("hid");
                $("#poper").addClass("hid");
            }
        });
        $(".onlyCancel").click(function () {
            $("#mask").addClass("hid");
            $("#poper").addClass("hid");
        });
        $(".onlyClose").click(function () {
            $("#mask").addClass("hid");
            $("#poper").addClass("hid");
        })
    }
    function changeTitle(title,content) {
        poperBox = ' <div class="popBox hid" id="poper">\n' +
            '    <div class="popB_Top">\n' +
            '    <span class="addW" id="title">' + title + '</span><span class="close onlyClose"  id="close"><img src="../img/close.png"></span>\n' +
            '    </div>\n' +
            '    <div class="popB_bottom">\n' +
            '    <div id="content">' + content + '</div>\n' +
            '</div>\n' +
            '<div class="btnList" id="twoB"><input type="button" id="sure" class="onlySure" value="确定"><input type="button" id="cancel" class="onlyCancel" value="取消"></div>\n' +
            ' </div>';

    }





