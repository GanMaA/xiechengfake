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
        if(scroH>=250){
            $(".float_top").fadeIn(500);
            $("#bd-left-bar").css("top", scroH +89+ "px");
        }
        else{
            $(".float_top").fadeOut(500);
            $("#bd-left-bar").css("top", "308px");
        }
    });
    //给搜索栏的孩子添加类
    $(".search_form").find("input").addClass("search")
    $(".search_form").find("select").addClass("search")
    $(".search_form .ico2").next().css("margin-left","15px")
})