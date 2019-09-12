$(function () {

    //初始化地址框为隐藏状态
    $(".pop_box_city").hide();
    //初始化话大图为隐藏状态
    $(".bg_big").hide();
    //初始化地址输入框的地址选择框为隐藏状态
    $(".addressNmae1").hide();
    //初始化帮助消息框为隐藏状态
    $(".helpmessage").hide();

    //当地址输入框或得焦点时显示地址选择框
    $("input[name='addressName']").focus(function () {
        $(".addressNmae1").show();
    });
    //当地址输入框失去焦点时隐藏地址选择框
    $("input[name='addressName']").blur(function () {
        $(".addressNmae1").hide();
    });
    //点击地址输入框的X按钮隐藏地址选择框
    $(".a_close").click(function () {
        $(".addressNmae1").hide();
    });

    //鼠标移动到？是显示帮助信息事件
    $(".help").click(function () {
        if ($(".helpmessage").is(":hidden")) {
            $(".helpmessage").show();
        }else {
            $(".helpmessage").hide();
        }

    });


    //更多按钮点击事件，更多地址的显示和隐藏
    $(".gengduo").click(function () {
        if ($(".pop_box_city").is(":hidden")){
            $(".pop_box_city").show();
        } else {
            $(".pop_box_city").hide()
        }
    });
    //更多地址框关闭按钮的点击事件，点击X隐藏
    $(".c_close").click(function () {
        $(".pop_box_city").hide();
    });



    //热门酒店图片的大图的显示和隐藏
    // //悬停到目标上
    $(".hotel_pic1").mouseover(function () {
        if ($(".bg_big").is(":hidden")){
            $(".bg_big").show();
        } else {
            $(".bg_big").hide();
        }

    })
});