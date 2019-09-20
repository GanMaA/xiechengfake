$(function () {
    $(".bar").mouseover(function () {
        $(this).find(".bar-filter-select").css("display","block");
    }).mouseout(function(){
        $(this).find(".bar-filter-select").css("display","none");
    })
    $("input[type='checkbox']").click(function () {
        var temp=$(this).prop("checked");
        var temp2=$(this).parent().parent().parent().parent();
        var value=$(this).next().text();
        if(temp==true){
            temp2.after("<div class=\"bar\"><ul class=\"bar-filter-echo\"><li class=\"echo-item\"><a class=\"close\">×</a></li></ul></div>")
            temp2.next().children().children().text(value)
        }
        else {
            while (true){
                temp2=temp2.next();
                var value2=temp2.children().children().text()
                if(value2==value){
                    temp2.remove();break;
                }
            }

        }
    })
    //清楚全部筛选项
    $("button[id='delete']").click(function () {
        $(".bar-filter-echo").parent().remove();
        // $("input[type='checkbox']").css("checked","true")
        var check  =document.getElementsByTagName("input");
        for(var i  =0;i<check.length;i++) {
            var h = check[i];
            h.checked = false;
        }
        $("#screen").find("div").show()
        $("#screen_num").text($(".bd-right-msg:visible").length);
    })
    //浮动选项
    $(".other").mouseover(function () {
        $(this).css("background-color","#5d9ffb")
        $(this).children().css("color","white")
    }).mouseout(function () {
        $(this).css("background-color","white")
        $(this).children().css("color","black")
        $(this).find(".price").css("color","#f60")
    })
    //滚动浮动
    $(document).scroll(function () {
        var scroH=$(this).scrollTop();
        if(scroH>=350){
            $(".to_top").css("visibility","visible")
        }
        else {
            $(".to_top").css("visibility","hidden")
        }
        if(scroH>=250){
            $(".float_top").fadeIn(500);
            $("#bd-left-bar").css("top", scroH +100+ "px");
            // $(".why-ctrip").css("top",scroH +240+ "px")
        }
        else{
            $(".float_top").fadeOut(500);
            $("#bd-left-bar").css("top", "308px");
            // $(".why-ctrip").css("top","458px")
        }
    });
    $(".search_box a").click(function () {
        $(document).scrollTop(150)
    })
    $(".to_top").click(function () {
        $(document).scrollTop(0)
    })
    //给搜索栏的孩子添加类
    $(".search_form").find("input").addClass("search")
    $(".search_form").find("select").addClass("search")
    $(".search_form .ico2").next().css("margin-left","15px")
    //日期
    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //执行一个laydate实例
        $('.test-item').each(function() {
            var value=document.getElementById("start_date").placeholder
            laydate.render({
                elem: this, //指定元素
                value:value,
                trigger: 'click',
                mark: {
                    '2019-9-13': '中秋',
                    '2019-10-1': '国庆'
                }
            });
        })
    });
    //右边顶部当前日期
    // var current=document.getElementById("start_date").placeholder
    // $(".current").children().eq(0).text(current)

    // 筛选
    $("#screen_num").text($(".bd-right-msg:visible").length);
    $('#bd-left-bar').change(function(){    // 绑定change事件
        var MO=$(this).find("input[value='MO']").prop("checked");
        var AF=$(this).find("input[value='AF']").prop("checked");
        var EV=$(this).find("input[value='EV']").prop("checked");
        var flystart;
        var flyret;
        if(MO==true && AF==false && EV==false){
            flystart="6:00";flyret="12:00";
        }
        else if(MO==true && AF==true && EV==false){
            flystart="6:00";flyret="18:00";
        }
        else if((MO==true && AF==true && EV==true) || (MO==true && AF==false && EV==true)){
            flystart="6:00";flyret="24:00";
        }
        else if(MO==false && AF==true && EV==false){
            flystart="12:00";flyret="18:00";
        }
        else if(MO==false && AF==true && EV==true){
            flystart="12:00";flyret="24:00";
        }
        else if(MO==false && AF==false && EV==true){
            flystart="18:00";flyret="24:00";
        }
        flystart=Date.parse('2008-08-08 '+flystart);
        flyret=Date.parse('2008-08-08 '+flyret);
        var screen=$("#screen");
        $(".bd-right-msg").each(function () {
            var flytime=$(this).children().eq(1).children().eq(0).text();
            var arrived=$(this).children().eq(1).children().eq(0).text();
            flytime=Date.parse('2008-08-08 '+flytime);
            arrived=Date.parse('2008-08-08 '+arrived);
            if(flytime>=flystart && flytime<=flyret)
                $(this).show();
            else
                $(this).hide();
        })
        if(MO==false && AF==false && EV==false){
            screen.children().show();
        }
        $("#screen_num").text($(".bd-right-msg:visible").length);
    })
    // 查询最小价格
    // var min;
    // ${vovageList}
    // $(".current").children().eq(3).text()
    // bd-right-top日期生成

    // var tempDate=new Date();
    // var now = current.split('-')
    // tempDate.setMonth(now)
    // now = new Date(Number(now['0']),(Number(now['1'])-1),Number(now['2']))
    // tempDate.setDate(now.getDate()+1)
    // $(".current").prev().children().eq(0).text(tempDate);
    // alert(tempDate)
    // })

//主页城市选择
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
    //飞机离开城市选择
    $("input[name='flyCity']").click(function (e) {
        $(".flight_leave").css("display","block");
        e.stopPropagation();
    })
    $(".flight_leave").find("ul li").click(function () {
        $("input[name='flyCity']").val($(this).html());
        $(".city_select").hide();
    });
    //飞机离开城市选择结束
    //飞机到达
    $("input[name='arrivedCity']").click(function (e) {
        $(".flight_arrive").css("display","block");
        e.stopPropagation();
    })
    $(".flight_arrive").find("ul li").click(function () {
        $("input[name='arrivedCity']").val($(this).html());
        $(".city_select").hide();
    })


})