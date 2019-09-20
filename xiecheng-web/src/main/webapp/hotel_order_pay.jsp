<%@ page import="java.util.List" %>
<%@ page import="org.lanqiao.entity.HotelOrder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>携程旅行网支付</title>
    <link href="css/head_order_pay.css" rel="stylesheet">
    <script src="js/jquery-3.4.1.js"></script>
    <script>
        $(function () {
            $(".other").on("click",function () {
                $(".curr").removeClass("curr");

                $(this).addClass("curr");
            })
        })
    </script>
</head>


<body>
<!--head-start-->
<div id="head">
    <div id="head_bd">
        <div class="xc_logo" style="  float: left"><img src="images/nav/c_logo2013_2x.png" style="width: 120px; height: 44px;" alt="携程"></div>
        <div class="head_bd_guide" style="float: right"><span><img src="images/nav/bell.png" style="margin-right: 5px;" alt="">温馨提示</span><span><img src="images/nav/msg.png" style="margin-right: 5px;" alt="">建议与反馈</span> </div>
    </div>
</div>
<!--head-end-->
<!--main-start-->
<div id="main">
    <div id="main_area">
        <!--订单金额-->
        <%HotelOrder hotelOrder = (HotelOrder)request.getAttribute("hotelOrder");%>
        <div class="price_area"><div class="price_h" style="height: 25px; line-height: 25px; font-size: 14px">订单金额<span class="price_s" style="color: #FF8C18; margin-left: 5px; font-size: 32px;"><img src="images/nav/price_logo.png" style=""><%=hotelOrder.getPrice()%></span></div></div>
        <!--订单标题-->
        <div class="order_tit"><h2><%=hotelOrder.getHotelInfo().getHotelName()%></h2><h3> 男生六人床位房(一张床位)(仅男生入住)1间&nbsp&nbsp&nbsp&nbsp入住：<%=hotelOrder.getsDate()%>&nbsp&nbsp&nbsp&nbsp退房：<%=hotelOrder.geteDate()%>&nbsp&nbsp&nbsp&nbsp入住1晚 </h3></div>
        <!--提示信息-->
        <div class="tip_area">现在预授权操作¥<%=hotelOrder.getPrice()%>（含¥20.00，押金将在离店时退还至原账户），您即可在酒店前台快速办理入住。<br>携程会根据您的付款方式进行预授权或扣除房费，订单需等酒店或供应商确认后生效，订单确认结果以携程短信或邮件通知为准，如订单不确认将解除预授权或全额退款至您的付款账户。使用礼品卡支付将不再享受返现。</div>
    </div>
    <div id="main_pay">
        <!--方式切换-->
        <div id="tab_tit1">
            <script>
                function showDiv(str) {
                    var items = [];
                    for (var i = 0; i < 4; i++){
                        items[i] = document.getElementById("item" + i);
                        items[i].style.display = "none";
                    }
                    document.getElementById(str).style.display = "block";
                }
            </script>
            <ul>
                <li class="curr other" onclick="showDiv('item0');">微信支付</li>
                <li class="other" onclick="showDiv('item1');">储蓄卡</li>
                <li class="other" onclick="showDiv('item2');">信用卡</li>
                <li class="other" onclick="showDiv('item3');">支付宝</li>
            </ul>
        </div>
        <div id="tab_con">
            <!--微信支付-->
            <div id="item0" class="tab_item" style="text-align: center;"><img src="images/nav/wechat——pay.png" style="margin-top: 20px"><p style="font-size: 14px">点击“去支付”后，请打开手机微信的“扫一扫”，扫描二维码支付</p></div>
            <!--储蓄卡支付-->
            <div id="item1" class="hidden"><p class="cardbin_txt" style="width: 360px; margin: 0 auto; padding-top: 40px; font-size: 14px; color: #0E2644;">您暂无常用卡，请在下方添加卡片：</p><div class="card_con" style="width: 360px; margin: 0 auto; min-height: 140px; height: 140px;"><label style="top: -20px; font-size: 12px; color: #596d87">银行卡号</label><input class="input_txt1" type="text" placeholder="请输入银行卡号" style="border: none; border-bottom: 1px solid #B5CAE0; width: 100%;height: 22px;background: none;position: relative;z-index: 2;font-size: 16px;padding: 3px 0;color: #596D87;line-height: 20px;"></div></div>
            <!--信用卡支付-->
            <div id="item2" class="hidden"><p class="cardbin_txt" style="width: 360px; margin: 0 auto; padding-top: 40px; font-size: 14px; color: #0E2644;">您暂无常用卡，请在下方添加卡片：</p><div class="card_con" style="width: 360px; margin: 0 auto; min-height: 140px; height: 140px;"><label style="top: -20px; font-size: 12px; color: #596d87">银行卡号</label><input class="input_txt1" type="text" placeholder="请输入银行卡号" style="border: none; border-bottom: 1px solid #B5CAE0; width: 100%;height: 22px;background: none;position: relative;z-index: 2;font-size: 16px;padding: 3px 0;color: #596D87;line-height: 20px;"></div></div>
            <!--支付宝支付-->
            <div id="item3" class="tab_item hidden" style="text-align: center;"><img src="images/nav/ZFB.png" style="margin-top: 20px"><p style="font-size: 14px">点击“去支付”后，将跳转到支付宝页面进行付款</p></div>
        </div>
        <div class="btn_area" style="text-align: center; "><a><button style="width: 360px; height: 48px; background-color: #ff9c2a; border: 0; border-radius: 4px"><span style="font-size: 12px; color: white">¥</span>&nbsp;<span style="font-size: 20px; color: white"><%=hotelOrder.getPrice()%>，去支付</span></button></a></div>

    </div>
    <div class="back_area">
        <a style="color: #3f92f7">< &nbsp; 返回修改订单</a>
    </div>
</div>
<!--main-end-->
</body>
</html>