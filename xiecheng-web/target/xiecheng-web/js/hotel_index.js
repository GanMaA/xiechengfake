$(function () {

    //初始化地址框为隐藏状态
    $(".pop_box_city").hide();
    //初始化住宿人数选择框
    $(".n_gst_p").hide();
    //初始化话大图为隐藏状态
    $(".bg_big").hide();
    //初始化地址输入框的地址选择框为隐藏状态
    $(".addressNmae1").hide();
    //初始化帮助消息框为隐藏状态
    $(".helpmessage").hide();



    //点击地址选择框中的地址，将该地址写入到目的地输入框中
    $(".cityName").children().click(function () {
        // alert($(this).html());
        $("input[name='addressName']").val($(this).html());
        // alert(1);
        $(".addressNmae1").hide();
    });

    //当地址输入框或得焦点时显示地址选择框
    $("input[name='addressName']").focus(function () {
        $(".addressNmae1").show();
    });
    //当地址输入框或得焦点时显示地址选择框
    // $("input[name='addressName']").blur(function () {
    //     $(".addressNmae1").hide();
    // });
    //点击地址输入框的X按钮隐藏地址选择框
    $(".a_close").click(function () {
        $(".addressNmae1").hide();
    });

    //鼠标点击到？是显示帮助信息事件
    $(".help").click(function () {
        if ($(".helpmessage").is(":hidden")) {
            $(".helpmessage").show();
        }else {
            $(".helpmessage").hide();
        }
    });
    //点击住宿人数输入框选这人数时
    $("input[name='peopleNum']").click(function () {
        if($(".n_gst_p").is(":hidden")){
            $(".n_gst_p").show();
        }else {
            $(".n_gst_p").hide();
        }
    });
    //点击住宿人数输入框选里的减号按钮
    $("input[name='sub']").click(function () {
        if ($(this).next().val()>0){
        $(this).next().val(parseInt($(this).next().val())-1);
        }
    });
    //点击住宿人数输入框选里的加号按钮
    $("input[name='add']").click(function () {
        $(this).prev().val(parseInt($(this).prev().val())+1);
    });
    //点击确定按钮时，将人数选择框中的值写入住宿框
    $("input[name='determine']").click(function () {
        $("input[name='peopleNum']").val($("input[name='num1']").val()+"成人"+$("input[name='num2']").val()+"儿童");
        $(".n_gst_p").hide();
    });
    //点击取消按钮时，隐藏人数输入框
    $("input[name='cancel']").click(function () {
        $(".n_gst_p").hide();
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
    //点击选择更多地址
    $(".pop_box_city1").children().click(function () {
        alert($(this).html());
        window.location.href='/getHotelnfo?addressName='+$(this).html();
        $(".hotsold_city_list1").children().eq(6).children().html($(this).html())
        $(".pop_box_city").hide()
    });
//    点击热门酒店栏的地址将地址发生到后台
    $(".hotsold_city_list1").children().children().click(function () {
        if ($(this).html()!="更多<b></b>"&&$(this).html()!=" ") {
            addressName = $(this).html();
            alert(addressName);
            window.location.href='/getHotelnfo?addressName='+$(this).html();
        }
    })
});