<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>奇奇旅游网支付</title>
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
        <div class="price_area"><div class="price_h" style="height: 25px; line-height: 25px; font-size: 14px">订单金额<span class="price_s" style="color: #FF8C18; margin-left: 5px; font-size: 32px;"><img src="images/nav/price_logo.png" style="">${ticket.flightPrice}</span></div></div>
        <!--订单标题-->
        <div class="order_tit"><h2>出发：${vovage.flyCity}</h2><h3>抵达：${vovage.arrivedCity}</h3></div>
        <!--提示信息-->
        <div class="tip_area">现在预授权操作</div>
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
        <form method="post" autocomplete="off" action="/insertTicket">
            <input name="userId" style="display:none" value="${ticket.userId}">
            <input name="vovageId" style="display:none" value="${ticket.vovageId}">
            <input name="vovageId" style="display:none" value="${ticket.flightPrice}">
        <div class="btn_area" style="text-align: center; "><a><button type="submit" style="width: 360px; height: 48px; background-color: #ff9c2a; border: 0; border-radius: 4px"><span style="font-size: 12px; color: white">¥</span>&nbsp;<span style="font-size: 20px; color: white">${vovage.price}，去支付</span></button></a></div>
        </form>
    </div>
    <div class="back_area">
        <a style="color: #3f92f7">< &nbsp; 返回修改订单</a>
    </div>
</div>
<!--main-end-->
</body>
</html>