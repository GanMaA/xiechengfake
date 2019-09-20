<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>机票订单填写页</title>
    <link href="css/hotel_orderInput.css" rel="stylesheet">
    <link rel="stylesheet" href="css/flightbook.css">
</head>
<body>
<!--头部开始-->
<div id="order_head">
    <div id="order_head_body">
        <div class="head_logo">
            <img src="images/nav/c_logo2013_2x.png" style="width: 126px; height: 50px">
            <a target="_blank" href="hotel_index.html" ></a>
            </img>
            <div class="logo_blanket"></div>
        </div>
        <div class="head_guide">
            <span style="color: #0066CC">尊敬的会员</span>
            <a href="" style="text-decoration: none; color: black">客服中心</a>
        </div>
    </div>
</div>
<!--头部结束-->
<!--主体开始-->

<div id="order_body">
    <div id="order_body_main">
        <!--tips-->
        <div class="tips" style="height: auto">
            <p style="color: #2EB000"><img src="images/nav/Light.png" style="margin-right: 10px"><span style="font-size: 16px; vertical-align: middle; font-family: 'Microsoft YaHei',SimSun,sans-serif; font-weight: bold; position: relative; top: -12px;">反正你血赚</span></p>
        </div>
        <!--mod_book-->
        <form method="post" autocomplete="off" action="/payTicket">
        <div class="mod_book">
            <div class="mod_book_tit">乘客<a style="float: right; position: relative; top: 2px; margin-left: 15px; font-family: SimSun; color: #999; font-weight: normal; font-size: 12px" target="_blank">帮助</a></div>
            <div class="my_book_bd">
                <div class="leftinput">
                        <div class="book_div"><span class="book_span">姓名</span><input class="form-input" placeholder="姓名，请与登机证件姓名保持一致"></div>
                        <div class="book_div"><span class="book_span">身份证</span><input class="form-input" placeholder="登机身份证号"></div>
                        <div class="book_div"><span class="book_span">手机号</span><input class="form-input" placeholder="乘机人手机号码（选填"></div>
                </div>
                <div class="rightwuyou"><div class="wuyou"></div></div>
            </div>
            <div class="mod_book_tit">联系人</div>
            <div class="my_book_bd">
                <div class="book_div"><input class="form-input" placeholder="15160550136"></div>
            </div>
            <footer>
                <div class="book_next">
                        <input name="userId" style="display:none" value="${ticket.userId}">
                        <input name="vovageId" style="display:none" value="${ticket.vovageId}">
                        <button class="btn_main" type="submit">下一步，支付</button>
                </div>
            </footer>
        </div>
        </form>
    </div>
<!--    右边-->
    <div id="order_body_aside">
        <div class="Info_box box_top"><span class="box_text">当前航程:</span>
            <div class="box_text_end">
                <span><fmt:formatDate value="${vovage.ticketDate}" pattern="MM-dd"/></span><span>${vovage.flyCity}</span>→<span>${vovage.arrivedCity}</span><br>
                <span style="float: left"><fmt:formatDate value="${vovage.flyTime}" pattern="HH:mm"/></span>
                <span style="float: right"><fmt:formatDate value="${vovage.arrivedTime}" pattern="HH:mm"/></span>
            </div></div>
        <div class="Info_box">
            <a style="font-size: 20px; color: #0066cc; text-decoration: none; margin-bottom: 5px">奇奇旅游</a>
            <div class="more_info">
                <p class="info_addr">你可以信赖的旅行助手</p>
                <p class="info_roomname" style="margin-bottom: 15px">不添加任何额外收费</p>
<%--                <table class="info_t" cellpadding="0" cellspacing="0">--%>
<%--                    <tr><th>认证</th><td>11小组</td></tr>--%>
<%--                </table>--%>
            </div>
        </div>
        <div class="Info_box box_bottom"><div class="total-price"><span id="J_totalPrice"><dfn>¥</dfn>${vovage.price}</span></div></div>
    </div>

</div>
<!--主题结束-->
</body>
</html>