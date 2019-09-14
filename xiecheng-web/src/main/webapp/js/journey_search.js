$(function () {

    $(".pop_box_city").hide();
    //点击地址选择框中的地址，将该地址写入到目的地输入框中
    $(".cityName").children().click(function () {
        $(".address").html($(this).html());
        $(".pop_box_city").hide();
    });
//    点击地址选择显示热门地址选择框
    $(".chooseAddress").children().click(function () {
        if($(".pop_box_city").is(":hidden")){
            $(".pop_box_city").show();
        }else {
            $(".pop_box_city").hide();
        }

    });



    $(".productName").hide();
    //点击地址选择框中的地址，将该地址写入到目的地输入框中
    $(".productName").children().click(function () {
        $(".allProduct").html($(this).html());
        $(".productName").hide();
    });
//    点击地址选择显示热门地址选择框
    $(".allProduct").click(function () {
        if($(".productName").is(":hidden")){
            $(".productName").show();
        }else {
            $(".productName").hide();
        }

    });
})