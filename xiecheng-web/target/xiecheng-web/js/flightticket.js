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
            $("#bd-left-bar").css("top", scroH +89+ "px");
        }
        else{
            $(".float_top").fadeOut(500);
            $("#bd-left-bar").css("top", "308px");
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
    var current=document.getElementById("start_date").placeholder
    $(".current").children().eq(0).text(current)
    //查询表格信息

})