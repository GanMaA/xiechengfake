$(function () {
    //切换搜索内容
    $("#searchBoxUl li").click(function () {
        $(this).parent().children().removeClass("s_tab_current");
        $(this).addClass("s_tab_current");
        var n = $(this).parent().children().index(this);
        $("#searchbox").children().css("display","none");
        $("#searchbox").children().eq(0).css("display","block");
        $("#searchbox").children().eq(n+1).css("display","block");
    });
    //酒店人员填写
    $("#J_RoomGuestInfoTxt").click(function () {
        $("#J_cildNumSelectorBox").css("display","block");
    });
    $("#J_RoomGuestInfoBtnOK").click(function () {
        var adult_count = $("#J_AdultCount").children().eq(1).val();
        var child_count = $("#J_ChildCount").children().eq(1).val();
        var text = adult_count+"成人";
        if(child_count>0) text+= " "+child_count+"儿童";
        $("#J_RoomGuestInfoTxt").val(text);
        $("#J_cildNumSelectorBox").css("display","none");
    });
    $("#J_RoomGuestInfoBtnCancel").click(function () {
        $("#J_cildNumSelectorBox").css("display","none");
    });
    $("#J_AdultCount").children().eq(0).click(function () {
        var adultCount = $(this).next().val();
        if(adultCount>1){
            adultCount--;
        }
        if(adultCount===1) $(this).addClass("number_disable");
        $(this).next().val(adultCount);
    });
    $("#J_AdultCount").children().eq(2).click(function () {
        $(this).prev().prev().removeClass("number_disable");
        var adultCount = $(this).prev().val();
        adultCount++;
        $(this).prev().val(adultCount);
    });
    $("#J_ChildCount").children().eq(0).click(function () {
        var adultCount = $(this).next().val();
        if(adultCount>0){
            adultCount--;
        }
        if(adultCount===0) $(this).addClass("number_disable");
        $(this).next().val(adultCount);
    });
    $("#J_ChildCount").children().eq(2).click(function () {
        $(this).prev().prev().removeClass("number_disable");
        var adultCount = $(this).prev().val();
        adultCount++;
        $(this).prev().val(adultCount);
    });

    //城市选择
    $(document).click(function () {
        $(".city_select").hide();
    });
    $(".city_select").click(function (e) {
        e.stopPropagation();
    });
    $(".city_select_title_close").click(function () {
        $(".city_select").hide();
    })
    //酒店城市选择
    $("#HD_CityName").click(function (e) {
        $(this).parent().next().css("display","block");
        e.stopPropagation();
    });
    $("#chinaHotelForm").find(".city_select").find("ul li").click(function () {
        $("#HD_CityName").val($(this).html());
        $(".city_select").hide();
    })
    //酒店城市选择结束

    //飞机离开城市选择
    $("#FD_StartCity").click(function (e) {
        $(".flight_leave").css("display","block");
        e.stopPropagation();
    })
    $(".flight_leave").find("ul li").click(function () {
        $("#FD_StartCity").val($(this).html());
        $(".city_select").hide();
    });
    //飞机离开城市选择结束
    //飞机到达
    $("#FD_DestCity").click(function (e) {
        $(".flight_arrive").css("display","block");
        e.stopPropagation();
    })
    $(".flight_arrive").find("ul li").click(function () {
        $("#FD_DestCity").val($(this).html());
        $(".city_select").hide();
    })


});

<!--轮播-->
layui.use('carousel', function(){
    var carousel = layui.carousel;
    //建造实例
    carousel.render({
        elem: '#search'
        ,width: '100%' //设置容器宽度
        ,height:"340px"
        ,arrow: 'none' //始终显示箭头
        //,anim: 'updown' //切换动画方式
    });
});
<!--日期-->
layui.use('laydate', function(){
    var laydate = layui.laydate;
    //执行一个laydate实例
    $('.test-item').each(function() {
        laydate.render({
            elem: this, //指定元素
            trigger: 'click',
            mark: {
                '2019-9-13': '中秋',
                '2019-10-1': '国庆'
            }
        });
    })
});