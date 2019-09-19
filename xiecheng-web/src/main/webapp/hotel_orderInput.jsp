
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>订单填写页</title>
    <link href="css/hotel_orderInput.css" rel="stylesheet">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="layui/layui.js"></script>
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
        <div class="tips">
            <p style="color: #2EB000"><img src="images/nav/Light.png" style="margin-right: 10px"><span style="font-size: 16px; vertical-align: middle; font-family: 'Microsoft YaHei',SimSun,sans-serif; font-weight: bold; position: relative; top: -12px;">预订后将立即锁定房源</span></p>
            <p style="color: #2EB000"><img src="images/nav/Card.png" style="margin-right: 10px"><span style="font-size: 16px; vertical-align: middle; font-family: 'Microsoft YaHei',SimSun,sans-serif; font-weight: bold; position: relative; top: -12px;">支付担保费即刻锁定房源</span></p>
            <p style="color: #2EB000"><img src="images/nav/OK.png" style="margin-right: 10px"><span style="font-size: 16px; vertical-align: middle; font-family: 'Microsoft YaHei',SimSun,sans-serif; font-weight: bold; position: relative; top: -12px;">一诺千金，确保您入住无忧</span></p>
        </div>
        <!--mod_book-->
        <div class="mod_book">
            <div class="mod_book_tit">预订信息<a style="float: right; position: relative; top: 2px; margin-left: 15px; font-family: SimSun; color: #999; font-weight: normal; font-size: 12px" target="_blank">预订帮助</a></div>
            <div class="mod_book_bd">
                <div style="padding: 12px 0; background-color: #fff; border-radius: 0 0 3px 3px; height: 299px">
                    <form method="post" action="/inputInfo"><div class="mod_book_item" style="height: 48px"><span class="mod_book_item_tit">房型信息</span><div class="mod_book_item_cont"><span name = "roomName" placeholder="${hotelRoom.roomName}"></span><p><img src="images/nav/BZ.png" style="width: 16px; height: 16px">适用人群(须持对应证件入住)：持中国身份证的居民</p></div></div></form>
                </div>
                    <div class="mod_book_item r_data"><span class="mod_book_item_tit">入离日期</span>
                        <div class="mod_book_item_cont">
                            <span><input type="date">14:00之后</span>————<span><input type="date">12:00之前</span><span style="position: relative; left: 20px">共一晚</span>
                        </div>
                    </div>
                    <div class="mod_book_item r_num"><span class="mod_book_item_tit">房间数量</span>
                        <input type="number" name="points" min="1" max="10"/>
                    </div>
                    <div class="mod_book_item r_price"><span class="mod_book_item_tit">房费情况</span>
                        <table style="border: 1px solid #dae7ef; width: 147px; height: 84px; text-align: center">
                            <tr><th>09-14</th><th>09-15</th></tr>
                            <tr><td>￥68元<br>无餐食</td><td><br>无餐食</td></tr>
                        </table>
                    </div>
                </div>
            </div>

            <div class="mod_book_tit">入住信息</div>
            <div class="mod_book_bd">
                <div class="mod_book_box" style="padding: 12px 0;height: 340px">
                    <div class="mod_book_item"><span class="mod_book_item_tit">房间1</span><div class="mod_book_item_cont"><span>住客 <input type="text" style="outline-style: none; width: 200px; height: 20px; border: 0;border-bottom: 1px solid #0066CC"></span></div></div>
                    <div class="mod_book_item"><span class="mod_book_item_tit">手机号</span><div class="mod_book_item_cont"><span>中国大陆+86 <input type="text" style="outline-style: none; width: 200px; height: 20px; border: 0;border-bottom: 1px solid #0066CC"></span></div></div>
                    <div class="mod_book_item"><div class="mod_book_item_cont" style="font-size: 14px; color: #666666">预订成功后会向您发送短信通知<br>隐私无忧！酒店联系您时需通过携程加密代拨。</div></div>
                    <div class="mod_book_item"><span class="mod_book_item_tit">Email</span><div class="mod_book_item_cont"><span><input type="email" style="outline-style: none; width: 200px; height: 20px; border: 0;border-bottom: 1px solid #0066CC"></span></div></div>
                    <div class="mod_book_item"><span class="mod_book_item_tit">预计到店</span><div class="mod_book_item_cont"><span><input type="time" style="outline-style: none;"></span></div></div>
                    <div class="mod_book_item"><span class="mod_book_item_tit">更多需求</span><div class="mod_book_item_cont"><span style="font-size: 14px">如果您对房型有特殊要求，携程客服需要与酒店电话联系，确认时间会较长，请您耐心等待。</span></div></div>
                </div>
            </div>

            <div class="mod_book_tit">闪住</div>
            <div class="mod_book_bd">
                <div class="mod_book_box" style="padding: 12px 0; height: 80px">
                    <div class="mod_book_item"><span class="mod_book_item_tit"><label style="color: black; font-size: 15px"><input type="checkbox">我要闪住</label></span><span><b style="font-size: 15px">我要闪住！</b>费用提前预授权到携程，到店取房卡直接入住，离店免查房甩房卡走人。余款离店1天内返还原账户。</span></div>
                </div>
            </div>
            <div class="mod_book_tit">保险</div>
            <div class="mod_book_bd">
                <div class="mod_book_box" style="padding: 12px 0; height: 140px">
                    <div class="mod_book_item"><span class="mod_book_item_tit">出行意外险</span><div class="mod_book_item_cont" style="width: 365px"><span style="font-size: 14px; ">急病医疗、意外伤害、保额最高享80万，航班延误最高赔付￥600，保费最低至15元</span></div><div style="position: relative; left: 20px">￥8/份 X </div></div>
                    <div class="mod_book_item"><span class="mod_book_item_tit">保险种类</span>
                        <div class="mod_book_item_cont">
                            <select>
                                <option value="《华泰境内旅游保险高端款(含航延)》">《华泰境内旅游保险高端款(含航延)》</option>
                                <option value="《华泰境内旅游保险标准款(含航延)》">《华泰境内旅游保险标准款(含航延)》</option>
                            </select></div>
                    </div>
                    <div style="float: right">总计：<div style="color: red; font-weight: bold; float: right">￥0元</div></div>
                </div>
            </div>
            <div class="mod_book_tit">优惠</div>
            <div class="mod_book_bd">
                <div class="mod_book_box">
                    <div class="mod_book_item"><span class="mod_book_item_tit" style="color: black; font-size: 15px">促销优惠</span><div class="mod_book_item_cont" style="font-size: 15px">天天特价 立减¥8元<br>每日特惠 立减¥3元</div></div>
                </div>
            </div>
            <div class="mod_book_bd">
                <div class="mod_book_box">
                    <div class="mod_book_item"><span class="mod_book_item_tit" style="color: black; font-size: 15px">优惠券</span><div class="mod_book_item_cont" style="font-size: 15px">其它优惠券码，请直接输入<input type="text"><input type="button" value="确认"></div></div>
                </div>
            </div>
            <div class="mod_book_tit">报销凭证</div>
            <span style="font-size: 14px">如需要发票，可向酒店索取；如需保险发票，可致电保险公司索取（保险公司联系信息会在投保后短信通知您）。</span>

            <!--btm-tips-->
            <footer id="btm_tips">
                <p class="btm_tips_item"><strong>酒店提示：</strong><div class="notice">根据厦门市公安机关规定，中国籍旅客仅限使用身份证登记入住，16岁以下未成年人的家长携带好未成年人的身份证或《户口簿》办理登记入住（其他证件不适用），登记入住必须一人一证，未携带以上有效证件的，请到酒店属地派出所开具身份证明；（婴幼儿家长请携带好婴幼儿的出生证明及户口簿办理登记入住）。</div> </p>
                <p class="btm_tips_item"><strong>取消修改说明：</strong><div class="notice">订单提交后30分钟内可免费取消修改，若未入住或过时取消修改将收取您首日房费RMB29。携程会根据您的付款方式进行预授权或扣除房费，订单需等酒店或供应商确认后生效，订单确认结果以携程短信或邮件通知为准，如订单不确认将解除预授权或全额退款至您的付款账户。</div> </p>
                <p class="btm_tips_item"><strong>预订提示：</strong><div class="notice">订单需等酒店或供应商确认后生效，订单确认结果以携程短信或邮件通知为准。</div> </p>
                <p style="color: #0066cc; font-size: 12px">携程专业服务 全程保障>></p>
            </footer>
            <footer>
                <div class="book_next">
                    <button class="btn_main">下一步，支付</button>
                </div>
            </footer>
        </div>

    </div>
    <form method="post" action="/inputHotel">
        <div id="order_body_aside">
            <img style="width: 380px; height: 190px"></img>
            <div class="Info_box">
                <a style="font-size: 20px; color: #0066cc; text-decoration: none; margin-bottom: 5px">厦门曾厝垵8a青年旅舍</a>
                <div class="more_info">
                    <p class="info_addr">厦门 思明区 环岛路曾厝垵262号（曾厝垵）</p>
                    <p class="info_roomname" style="margin-bottom: 15px">标准间</p>
                    <table class="info_t" cellpadding="0" cellspacing="0">
                        <tr><th>床型</th><td>两张单人床</td></tr>
                        <tr><th>面积</th><td>12平方米</td></tr>
                        <tr><th>加床</th><td>不可加床</td></tr>
                        <tr><th>宽带</th><td>全部房间支持免费无线宽带上网。</td></tr>
                        <tr><th>楼层</th><td>1层</td></tr>
                        <tr><th>烟信息</th><td>可吸烟</td></tr>
                        <tr><th>人数</th><td>每间房最多入住1人</td></tr>
                    </table>
                </div>
            </div>
        </div>
    </form>
</div>

<!--主题结束-->
</body>
</html>