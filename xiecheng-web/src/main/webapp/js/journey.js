var index=0;
var timeOut=null;
var picArray= new Array("images/journey/ad01.jpg","images/journey/ad02.jpg","images/journey/ad03.jpg","images/journey/ad04.jpg","images/journey/ad05.jpg","images/journey/ad06.jpg")

$(function () {
    //显示出发点
    $("#start_choose").click(
        function () {
            $(this).find("dd").toggle();
        }
    )
    //全部产品
    $(".allproduct").hover(
        function () {
            $(this).find("dd").toggle();
        }
    )
    $(".search_txt").focus(
        function () {
            $(".input_tip_box").toggle();
        }
    )
    //搜索提示
    $(".search_txt").blur(function () {
            $(".input_tip_box").toggle();
        }
    )
    //    图片轮换
    timeOut=setTimeout(changePic,3000);
    $(".roll_box").children().eq(0).click(function () {
        index=0;
        clearTimeout(timeOut);
        changePic();

    })
    $(".roll_box").children().eq(0).click(function () {
        index=0;
        changePic();

    })
    $(".roll_box").children().eq(1).click(function () {
        index=1;
        changePic();

    })
    $(".roll_box").children().eq(2).click(function () {
        index=2;
        changePic();

    })
    //    主题游
    $(".choose_them").hover(function () {

            $(".side_jmp").toggle();
            $(this).find("li").eq(0).attr("class","cur");
        },function () {
            $(".side_jmp").toggle();
            $(this).find("li").eq(0).attr("class","");
        }
    )
})
function changePic() {
    if(index===picArray.length) index=0;
    $(".roll_box").children().eq(index).css("background-color","white");
    $(".roll_box").children().eq(index-1).css("background-color","#666666");
    $(".roll_img img").attr("src",picArray[index]);
    index++;
    setTimeout(changePic,3000);
}