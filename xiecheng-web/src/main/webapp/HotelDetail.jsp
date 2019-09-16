<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <meta charset="UTF-8">
    <title>酒店详情</title>
    <link href="css/HotelBase.css" rel="stylesheet">
    <link href="css/HotelSearch.css" rel="stylesheet">
    <link href="css/HotelDetail.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="js/easyui/demo/demo.css">
    <script type="text/javascript" src="js/easyui//jquery.min.js"></script>
    <script type="text/javascript" src="js/easyui//jquery.easyui.min.js"></script>

</head>
<body>
    <iframe class="navtop" frameborder="0" scrolling="no" src="nav.html"></iframe>
    <div class="crumbsBar">
        <div>
            <a>酒店预订</a>
            <strong><i>〉</i>杭州酒店</strong>
        </div>
    </div>

    <div class="main_detail_wrapper">
        <div class="search_part">
                <div class="line_1px" style="height: 3px; background-color: royalblue"></div>
                <ul >
                    <li class="txtCity">目的地 <input type="text"></li>
                    <li class="txtCheckIn">入住 <input type="date"></li>
                    <li class="txtCheckOut">退房 <input type="date"></li>
                    <li class="txtRoom">房间数
                        <select>
                            <option>1间</option>
                            <option>2间</option>
                            <option>3间</option>
                        </select>
                    </li>
                    <li class="txtGuestNum">住客数
                        <select>
                            <option>1人</option>
                            <option>2人</option>
                            <option>3人</option>
                        </select>
                    </li>
                    <li class="txtKeyWord">关键词 <input type="text"></li>
                    <li class="form_button"><i>搜索</i><button></button></li>
                </ul>
            </div>
        <div class="htl_info">
            <div>
                <div class="hotel_name">
                    <a class="hotel_item_name">
                        <i class="icons" > 精选 </i>
                        <strong style="margin: 0px 5px; font-size: 22px"> ${hotelInfo.hotelName}</strong>
                        <span class="hotel_strategymedal" title="携程战略合作酒店，拥有优质服务、优良品质及优惠房价，供携程会员专享预订" data-role="title"></span>
                    </a>
                    <div title="高档型" class="hotel_diamond04"></div>
                    <div class="hotel_address">
                        【
                        <a>火车城站杭州站</a><a>${hotelInfo.hotelArea.areaDetail} </a>
                        】
                        <a>地图</a>
                    </div>
                    <i class="icons icons1">休闲度假</i>
                    <i class="icons icons1">亲子酒店</i>
                    <div class="icon_list">
                        <i class="icons-facility32" style="background-position: -30px -150px;" title="公共区域免费WIFI" data-fid="120" data-role="title"></i>
                        <i class="icons-facility03" style="background-position: -60px 0;" title="停车场" data-fid="100" data-role="title"></i>
                        <i class="icons-facility13" style="background-position: 0px -60px;" title="餐厅" data-fid="1" data-role="title"></i>
                        <i class="icons-facility28" style="background-position: -90px -120px;" title="接机服务" data-fid="105" data-role="title"></i>
                        <i class="icons-facility14" style="background-position: -30px -60px;" title="健身房" data-fid="42" data-role="title"></i>
                        <i class="icons-facility16" style="background-position: -90px -60px;" title="会议室" data-fid="6" data-role="title"></i>
                    </div>
                </div>
                <div class="hotel_judge">
                    <a>
                        <span class="recommend">“早餐丰富”<br>“服务周到”</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="hotel_pic">
            <div class="hotel_pic_show1"><img style="width: 320px"  src="//dimg13.c-ctrip.com/images/200f17000001130iz5510_R_550_412.jpg"></div>
            <div class="hotel_pic_show2 "><img style="width: 250px;" src="//dimg13.c-ctrip.com/images/200u1700000112ys94F3B_R_550_412.jpg"></div>
            <div class="hotel_pic_show3"><img style="width: 105px;" src="//dimg12.c-ctrip.com/images/200b11000000qe0536D13_R_550_412.jpg"></div>
            <div class="hotel_pic_show3"></div>
            <div class="hotel_pic_show3"></div>
            <div class="hotel_pic_show3"></div>
            <div class="hotel_pic_show2"></div>
            <div class="hotel_pic_show3"></div>
            <div class="hotel_pic_show3"></div>
        </div>
        <div class="date_change_box2">
            <div class="reform_choose">
                <div class="houseCheckIn">入住<input type="date"></div>
                <div class="houseCheckOut">退房<input type="date"></div>
                <div class="houseRoomCount">
                    房间数
                    <select>
                        <option>1间</option>
                        <option>2间</option>
                        <option>3间</option>
                    </select>
                </div>
                <div class="houseGuestCount">
                    住客数
                    <select>
                        <option>1人</option>
                        <option>2人</option>
                        <option>3人</option>
                    </select>
                </div>
                <div class="reform_button"><i>重新搜索</i><button></button></div>
            </div>
            <div class="price_coupon">
                <div style="margin:20px 0;"></div>
                <div class="easyui-panel" style="padding:5px;">
                    <a href="#" class="easyui-menubutton" data-options="menu:'.mm2'">价格</a>
                    <a href="#" class="easyui-menubutton" data-options="menu:'.mm2'">优惠促销</a>
                </div>
                <div class="mm2" style="width:150px;">
                    <div>￥150以下</div>
                    <div>￥150-300</div>
                    <div>￥300-400</div>
                    <div>￥400-600</div>
                </div>
                <div class="mm2" style="width:150px;">
                    <div>天天特价</div>
                    <div>门店新客</div>
                    <div>出行特惠</div>
                    <div>开业特惠</div>
                </div>
            </div>
            <div class="sort_type">
                <div class="sort_group">
                <span class="sort_tittle">床型</span>
                <a class="sort_item">大床</a>
                <a class="sort_item">双床</a>
                <a class="sort_item">三人/家庭房</a>
                <span class="sort_tittle">早餐</span>
                <a class="sort_item">含早餐</a>
                <a class="sort_item">单份早餐</a>
                <a class="sort_item">双份早餐</a>
                <span class="sort_tittle">宽带</span>
                <a class="sort_item">免费WIFI上网</a>
                <a class="sort_item" style="margin-right: 100px">免费有线宽带</a>
                </div>
                <div class="sort_group">
                <span class="sort_tittle">支付方式</span>
                <a class="sort_item">在线付款</a>
                <a class="sort_item">到店付款</a>
                <a class="sort_item">闪住</a>
                <span class="sort_tittle">其他</span>
                <a class="sort_item">可免费取消</a>
                <a class="sort_item">携程自营</a>
                <a class="sort_item">可订</a>
                <a class="sort_item">立即确认</a>
                <a class="sort_item">可加床</a>
                <a class="sort_item">钟点房</a>
                <a class="sort_item">亲子主题房</a>
                </div>
            </div>
            <div class="room_all">
                <ul class="room_index">
                    <li class="index_col1">房型</li>
                    <li class="index_col2"></li>
                    <li class="index_col3">床型</li>
                    <li class="index_col4">早餐</li>
                    <li class="index_col5">设施服务</li>
                    <li class="index_col6">入住人数</li>
                    <li class="index_col7">政策</li>
                    <li class="index_col8">房价（含服务费）</li>
                </ul>
                <div class="room_detail">
                    <c:forEach var="hotelRoomsOne" items="${HotelRoomsOne}">
                    <ul class="hotel_${hotelRoomsOne.bedKind.bedId}">
                        <li class="index_col1 room_detail_col1">
                            <img src="//dimg10.c-ctrip.com/images/280j10000000o3lrz0973_R_130_130.jpg">
                            <a>${hotelRoomsOne.roomName}<br><span>查看详情</span></a>
                        </li>
                        <li class="index_col2 room_detail_col2">标准价</li>
                        <li class="index_col3 room_detail_col3">${hotelRoomsOne.bedKind.bedCat}</li>
                        <li class="index_col4 room_detail_col4">2份早餐</li>
                        <li class="index_col5 room_detail_col5"><span class="WIFI_free">免费</span><br><span>禁烟</span></li>
                        <li class="index_col6 room_detail_col6">2人</li>
                        <li class="index_col7 room_detail_col7"><span>免费取消</span><br><span>立即确认</span></li>
                        <li class="index_col8">￥<span class="room_price">${hotelRoomsOne.roomPrice}</span></li>
                        <li class="book_type"><a><span class="book_type_main">预定</span><span class="book_type_skin">在线支付</span></a></li>
                    </ul>
                    </c:forEach>
                    <c:forEach var="hotelRoomsTwo" items="${HotelRoomsTwo}">
                    <ul class="hotel_${hotelRoomsTwo.bedKind.bedId}">
                        <li class="index_col1 room_detail_col1">
                            <img src="//dimg10.c-ctrip.com/images/280j10000000o3lrz0973_R_130_130.jpg">
                            <a>${hotelRoomsTwo.roomName}<br><span>查看详情</span></a>
                        </li>
                        <li class="index_col2 room_detail_col2">标准价</li>
                        <li class="index_col3 room_detail_col3">${hotelRoomsTwo.bedKind.bedCat}</li>
                        <li class="index_col4 room_detail_col4">2份早餐</li>
                        <li class="index_col5 room_detail_col5"><span class="WIFI_free">免费</span><br><span>禁烟</span></li>
                        <li class="index_col6 room_detail_col6">2人</li>
                        <li class="index_col7 room_detail_col7"><span>免费取消</span><br><span>立即确认</span></li>
                        <li class="index_col8">￥<span class="room_price">${hotelRoomsTwo.roomPrice}</span></li>
                        <li class="book_type"><a><span class="book_type_main">预定</span><span class="book_type_skin">在线支付</span></a></li>
                    </ul>
                    </c:forEach>
                    <c:forEach var="hotelRoomsThree" items="${HotelRoomsThree}">
                    <ul class="hotel_${hotelRoomsThree.bedKind.bedId}">
                        <li class="index_col1 room_detail_col1">
                            <img src="//dimg10.c-ctrip.com/images/280j10000000o3lrz0973_R_130_130.jpg">
                            <a>${hotelRoomsThree.roomName}<br><span>查看详情</span></a>
                        </li>
                        <li class="index_col2 room_detail_col2">标准价</li>
                        <li class="index_col3 room_detail_col3">${hotelRoomsThree.bedKind.bedCat}</li>
                        <li class="index_col4 room_detail_col4">2份早餐</li>
                        <li class="index_col5 room_detail_col5"><span class="WIFI_free">免费</span><br><span>禁烟</span></li>
                        <li class="index_col6 room_detail_col6">2人</li>
                        <li class="index_col7 room_detail_col7"><span>免费取消</span><br><span>立即确认</span></li>
                        <li class="index_col8">￥<span class="room_price">${hotelRoomsThree.roomPrice}</span></li>
                        <li class="book_type"><a><span class="book_type_main">预定</span><span class="book_type_skin">在线支付</span></a></li>
                    </ul>
                    </c:forEach>
                </div>

            </div>
        </div>
        <div class="hotel_info_comment">
            <div class="detail_tittle">酒店介绍</div>
            <div class="special_label">
                <i class="icons icons1">休闲度假</i>
                <i class="icons icons1">亲子酒店</i>
            </div>
            <div class="htl_des">
                <p>
                    <span>2015年开业  2017年装修  236间房</span>
                    <span id="J_realContact" title="电话021-58938988 传真021-61093157">电话</span>
                    <a style="color: #0A56BB">住宿预定提供方</a>
                </p>
                <span>
                    　　维也纳酒店（上海浦东机场店）位于浦东新区川南奉公路，近晨阳路，与迪士尼直线距离约8公里，可便捷到达地铁2号线凌空路站，交通便利。酒店周围生活设施齐全，旅游资源众多，有上海新国际博览中心、迪士尼、上海野生动物园、农艺大观园、三甲港滨海旅游区等。 　　<br>&nbsp&nbsp&nbsp&nbsp维也纳酒店（上海浦东机场店）是维也纳旗下的连锁酒店，装修豪华舒适，整体风格高贵典雅。客房宽敞明亮、温馨时尚，房内布置精美，处处体现人性化的理念。 　　<br>    酒店还有宽敞停车场、休闲茶吧、宽敞会议室等，同时还为您提供精品早餐、浦东机场接机（需预约）等服务，是商务、休闲、会务的理想酒店。
                </span>
            </div>
            <div class="htl_group">所属集团</div>
            <div class="htl_group_name">维也纳(Vienna Hotels Group)</div>
            <div class="htl_group_content">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                维也纳酒店集团作为中国中档商务连锁酒店规范品牌，秉承“深睡眠，大健康”的用户核心价值，致力于为客户提供健康、舒适的高附加值产品及良好的睡眠体验，形成了“舒适典雅、健康美食、豪华品质、安全环保、音乐艺术、健康助眠”六大品牌价值体系，在管理模式、人才梯队、品牌培育、扩张发展、资本管理等方面。
                目前，维也纳酒店集团旗下已拥有10大子品牌，在全国200多个大中城市中拥有1800多家（在营及在建）分店，超过25万间客房，综合开房率超过100%，联合锦江超过1.6亿会员，并创下成立至今零安全事故的记录，现每年以新增500家以上分店的速度发展。
            </div>
            <div class="detail_tittle">酒店设施</div>
            <div id="J_htl_facilities" class="htl_info_table ">
                <table>
                    <tbody>
                    <tr data-init="1" class=""><th>网络</th><td><ul class="facility_list"><li title="客房WIFI免费" data-rank="1" class=""><i class="icons-facility32"></i>客房WIFI<span class="green">免费</span><span class="i_sign hidden">*</span></li><li title="房间内高速上网" data-rank="1" class=""><i class="icons-facility38"></i>房间内高速上网<span class="i_sign hidden">*</span></li><li title="公用区wifi免费" data-rank="1" class=""><i class="icons-facility32"></i>公用区wifi<span class="green">免费</span><span class="i_sign hidden">*</span></li></ul></td></tr><tr data-init="1" class=""><th>交通设施</th><td><ul class="facility_list"><li title="data-rank=1" class=""><i class="hidden"></i></li><li title="酒店内有私人停车场，无需预订。有可能收取费用，每日RMB30。" class="fac-long"><i class="icons-facility03"></i>有可能收取费用停车场<span class="info">酒店内有私人停车场，无需预订。有可能收取费用，每日RMB30。</span></li><span class="i_sign hidden">*</span><li title="data-rank=1" class=""><i class="hidden"></i><span class="i_sign hidden">*</span></li></ul></td></tr><tr data-init="1" class=""><th>交通服务</th><td><ul class="facility_list"><li title="穿梭机场班车免费" data-rank="1" class=""><i class="icons-facility11"></i>穿梭机场班车<span class="green">免费</span><span class="i_sign hidden">*</span></li><li title="班车服务免费" data-rank="1" class=""><i class="icons-facility25"></i>班车服务<span class="green">免费</span><span class="i_sign hidden">*</span></li><li title="接机服务免费" data-rank="1" class=""><i class="icons-facility28"></i>接机服务<span class="green">免费</span><span class="i_sign hidden">*</span></li><li title="代客泊车" data-rank="1" class=""><i class="icons-facility38"></i>代客泊车<span class="i_sign hidden">*</span></li><li title="租车服务" data-rank="1" class=""><i class="icons-facility38"></i>租车服务<span class="i_sign hidden">*</span></li><li title="叫车服务" data-rank="1" class=""><i class="icons-facility38"></i>叫车服务<span class="i_sign hidden">*</span></li></ul></td></tr><tr data-init="1" class=""><th>休闲娱乐</th><td><ul class="facility_list"><li title="棋牌室" data-rank="1" class=""><i class="icons-facility38"></i>棋牌室<span class="i_sign hidden">*</span></li><li title="KTV" data-rank="1" class=""><i class="icons-facility38"></i>KTV<span class="i_sign hidden">*</span></li><li title="乒乓球室" data-rank="1" class=""><i class="icons-facility38"></i>乒乓球室<span class="i_sign hidden">*</span></li></ul></td></tr><tr data-init="1" class=""><th>前台服务</th><td><ul class="facility_list"><li title="行李寄存免费" data-rank="1" class=""><i class="icons-facility10"></i>行李寄存<span class="green">免费</span><span class="i_sign hidden">*</span></li><li title="24小时前台" data-rank="1" class=""><i class="icons-facility17"></i>24小时前台<span class="i_sign hidden">*</span></li><li title="部分时段大堂经理" data-rank="1" class=""><i class="icons-facility38"></i>部分时段大堂经理<span class="i_sign hidden">*</span></li><li title="专职行李员" data-rank="1" class=""><i class="icons-facility38"></i>专职行李员<span class="i_sign hidden">*</span></li><li title="礼宾服务" data-rank="1" class=""><i class="icons-facility38"></i>礼宾服务<span class="i_sign hidden">*</span></li><li title="旅游票务服务" data-rank="1" class=""><i class="icons-facility38"></i>旅游票务服务<span class="i_sign hidden">*</span></li><li title="叫醒服务" data-rank="1" class=""><i class="icons-facility38"></i>叫醒服务<span class="i_sign hidden">*</span></li><li title="前台贵重物品保险柜" data-rank="1" class=""><i class="icons-facility38"></i>前台贵重物品保险柜<span class="i_sign hidden">*</span></li><li title="信用卡结算服务" data-rank="0" class="hidden"><i class="icons-facility38"></i>信用卡结算服务<span class="i_sign hidden">*</span></li><li title="一次性结账" data-rank="0" class="hidden"><i class="icons-facility38"></i>一次性结账<span class="i_sign hidden">*</span></li><li title="快速办理入住/退房手续" data-rank="0" class="hidden"><i class="icons-facility38"></i>快速办理入住/退房手续<span class="i_sign hidden">*</span></li><li title="VIP通道入住" data-rank="0" class="hidden"><i class="icons-facility38"></i>VIP通道入住<span class="i_sign hidden">*</span></li></ul></td></tr><tr data-init="0" class="hidden"><th>餐饮服务</th><td><ul class="facility_list"><li title="中餐厅" data-rank="1" class=""><i class="icons-facility30"></i>中餐厅<span class="i_sign hidden">*</span></li><li title="咖啡厅" data-rank="1" class=""><i class="icons-facility38"></i>咖啡厅<span class="i_sign hidden">*</span></li><li title="送餐服务" data-rank="1" class=""><i class="icons-facility38"></i>送餐服务<span class="i_sign hidden">*</span></li></ul></td></tr><tr data-init="0" class="hidden"><th>商务服务</th><td><ul class="facility_list"><li title="会议厅" data-rank="1" class=""><i class="icons-facility38"></i>会议厅<span class="i_sign hidden">*</span></li><li title="传真/复印" data-rank="1" class=""><i class="icons-facility38"></i>传真/复印<span class="i_sign hidden">*</span></li><li title="多功能厅" data-rank="1" class=""><i class="icons-facility38"></i>多功能厅<span class="i_sign hidden">*</span></li><li title="商务服务" data-rank="1" class=""><i class="icons-facility38"></i>商务服务<span class="i_sign hidden">*</span></li></ul></td></tr><tr data-init="0" class="hidden"><th>通用设施</th><td><ul class="facility_list"><li title="电梯" data-rank="1" class=""><i class="icons-facility38"></i>电梯<span class="i_sign hidden">*</span></li><li title="大堂吧" data-rank="1" class=""><i class="icons-facility38"></i>大堂吧<span class="i_sign hidden">*</span></li><li title="非经营性客人休息区" data-rank="1" class=""><i class="icons-facility38"></i>非经营性客人休息区<span class="i_sign hidden">*</span></li><li title="公共音响系统" data-rank="1" class=""><i class="icons-facility38"></i>公共音响系统<span class="i_sign hidden">*</span></li><li title="无烟楼层" data-rank="1" class=""><i class="icons-facility12"></i>无烟楼层<span class="i_sign hidden">*</span></li><li title="所有场所禁烟" data-rank="1" class=""><i class="icons-facility38"></i>所有场所禁烟<span class="i_sign hidden">*</span></li><li title="公共区域闭路电视监控系统" data-rank="1" class=""><i class="icons-facility38"></i>公共区域闭路电视监控系统<span class="i_sign hidden">*</span></li></ul></td></tr><tr data-init="0" class="hidden"><th>其他服务</th><td><ul class="facility_list"><li title="商场" data-rank="1" class=""><i class="icons-facility38"></i>商场<span class="i_sign hidden">*</span></li><li title="礼品廊" data-rank="1" class=""><i class="icons-facility38"></i>礼品廊<span class="i_sign hidden">*</span></li><li title="鲜花店" data-rank="1" class=""><i class="icons-facility38"></i>鲜花店<span class="i_sign hidden">*</span></li><li title="多语种服务" data-rank="1" class=""><i class="icons-facility38"></i>多语种服务<span class="i_sign hidden">*</span></li><li title="管家服务" data-rank="1" class=""><i class="icons-facility38"></i>管家服务<span class="i_sign hidden">*</span></li><li title="婚宴服务" data-rank="1" class=""><i class="icons-facility38"></i>婚宴服务<span class="i_sign hidden">*</span></li><li title="熨衣服务" data-rank="1" class=""><i class="icons-facility38"></i>熨衣服务<span class="i_sign hidden">*</span></li></ul></td></tr><tr><td colspan="2"><div class="facility_btn"><a href="javascript:;" class="show_unfold" id="J_show_unfold">全部展开</a></div><div class="facility_btn hidden"><a href="javascript:;" class="show_fold" id="J_show_fold">收起</a></div></td></tr>
                    </tbody>
                </table>
            </div>
            <div class="detail_tittle">酒店政策</div>
            <div class="">
                <table class="detail_extracontent">
                    <tbody>
                    <tr>
                        <th>入住和离店</th>
                        <td>入住时间：7:00以后&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;离店时间：14:00以前</td>
                    </tr>
                    <tr>
                        <th>儿童政策</th>
                        <td>
                            <ul class="policy_list_new">
                                <li><span class="dot">•</span>酒店允许携带儿童入住</li>
                            </ul>
                            <ul class="policy_list_new">
                                <li style="white-space:normal;"><span class="dot">•</span>不接受18岁以下客人在无监护人陪同的情况下入住</li>
                                <li style="white-space:normal;"><span class="dot">•</span>加床及儿童政策取决于您所选的房型，若超过房型限定人数，或携带儿童年龄不在政策描述范围内，可能需收取额外费用，提出的任何要求均需获得酒店的确认。</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>早餐信息</th>
                        <td>
                            <li>早餐类型：西式、中式/li>
                            <br><li>形式：自助餐</li><br>
                            <li>价格：RMB&nbsp;38/人</li>
                            <br><li><span class="t">营业时间：</span>星期一、二、三、四、五、六、日&nbsp;06:30至09:30</li>
                        </td>
                    </tr>
                    <tr>
                        <th>宠物</th>
                        <td>不可携带宠物。</td>
                    </tr>

                    <tr>
                        <th>可用支付方式</th>
                        <td>
                            <span class="card_wcat"><i></i></span>
                        </td>
                    </tr>

                    </tbody>
                </table>
            </div>
            <div class="detail_tittle" style="margin-top: 30px">客户点评</div>
            <div class="comment_sumary_box">
                <div class="comment_total_score">
                    <span class="big_c">
                        <span class="b" style="width:130px;"></span>
                    </span>
                    <span class="hotel_level">好</span>
                    <span class="score"><span class="n">4.6</span> / 5分</span>

                </div>
                <p class="real_man">点评均来自真实入住客人！</p>
                <div class="bar_score">
                    <p>环境<span class="score">4.6</span></p>
                    <p>设施<span class="score">4.6</span></p>
                    <p>服务<span class="score">4.7</span></p>
                    <p>卫生<span class="score">4.7</span></p>
                </div>

                <div class="bar_search">
                    <input class="guest_search_btn" type="button" value="搜索" >
                    <input type="text" placeholder="搜索点评关键字" class="bar_search_input inputSel" autocomplete="off" autocorrect="off" autocapitalize="off" value="" id="J_searchInput" maxlength="20">

                </div>
                <div class="comment_index">
                    <div class="bar_left">
                        <a class="tab_current" name="needTraceCode"><span id="All_Comment">全部(25)</span></a>
                        <a class="" name="needTraceCode"><span id="No_Recoment" >差评(1)</span></a>
                        <a class="" name="needTraceCode"><span id="HasImage" >有图片(0)</span></a>
                    </div>
                    <div class="bar_right">
                        <select data-type="orderby" class="select_sort" style="width:120px;">
                            <option value="2" selected="">热门排序</option>
                            <option value="1">入住时间排序</option>
                        </select>
                        <select data-type="userType" class="select_ctrip" style="width: 120px;">
                            <option value="-1" selected="">全部出游类型</option>
                            <option value="10">商务出差(18)</option>
                            <option value="40">朋友出游(1)</option>
                            <option value="70">情侣出游(1)</option>
                            <option value="30">家庭亲子(3)</option>
                            <option value="60">代人预订(1)</option>
                            <option value="0">其他(1)</option>
                        </select>
                        <select name="roomname" class="select_room" style="width:120px;">
                            <option value="" selected="">全部房型</option>
                            <option value="豪华休闲房" selected="">豪华休闲房(25)</option>
                        </select>
                    </div>
                </div>
                <div>
                    <div class="comment_block">
                        <div class="user_info">
                            <p class="head"><span class="img" data-commentcount="4" data-img-count="15" data-arrivcitycount="1" data-comhotcount="4" data-userfulcount="10" data-isuserself="False"><img src="//images4.c-ctrip.com/target/t1/headphoto/293/406/308/22631089f44a497495c005fce85f6a6f_R_100_100.jpg" onerror="this.onerror=''; this.src='//pic.c-ctrip.com/common/pic_default_avatar.jpg'" style="width:33px; height:33px;"></span></p>
                            <div class="user_info_txt">
                                <p class="name"><span>M***5</span></p>
                                <p class="level_new"></p>
                                <p class="num">点评总数&nbsp;4<br>被点有用&nbsp;10<br>上传图片&nbsp;15</p>
                            </div>
                        </div>
                        <div class="comment_info">
                            <div class="comment_tittle">
                                <span class="small_c" data-value="环境:5.0,设施:5.0,服务:5.0,卫生:5.0"><span class="b" style="width:80px;"></span></span>
                                <span class="score"><span class="comment_n">5.0</span>分</span>
                                <a class="room J_baseroom_link room_link" data-baseroomid="2608069" data-baseroomname="豪华双人房">豪华双人房</a>
                                <span class="date">2019年08月入住</span>
                                <span class="type"><i class="k_family"></i>家庭亲子</span>
                            </div>
                            <div class="J_commentDetail">
                                早餐还可以，包子，鸡蛋，豆浆，水果都有，周边有超市，对面几家小饭馆味道也还不错，酒店有接送班车去机场和迪士尼，就是去海洋世界有点麻烦，去的时候坐公交，地铁一共9块钱，回来晚上8点没公交了，打车150元，住了三天，总的来说还是值得推荐。
                            </div>
                            <div class="comment_pic">
                                <div class="pic"><img class="listimg" src="//dimg12.c-ctrip.com/images/230j15000000yb68z0244_R_150_150.jpg" data-bigimgsrc="//dimg12.c-ctrip.com/images/230j15000000yb68z0244_W_550_412.jpg" ispass="T"></div>
                                <div class="pic"><img class="listimg" src="//dimg11.c-ctrip.com/images/230h15000000yd8b979BB_R_150_150.jpg" data-bigimgsrc="//dimg11.c-ctrip.com/images/230h15000000yd8b979BB_W_550_412.jpg" ispass="T"></div>
                                <div class="pic"><img class="listimg" src="//dimg10.c-ctrip.com/images/230m15000000yl1kb2B2C_R_150_150.jpg" data-bigimgsrc="//dimg10.c-ctrip.com/images/230m15000000yl1kb2B2C_W_550_412.jpg" ispass="T"></div>
                            </div>
                            <div class="comment_bar">
                                <p class="comment_bar_info"><i class="phone"></i><span class="time">发表于2019-06-24</span></p>
                                <a class="useful">赞<span class="comment_n">(16)</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="comment_block">
                        <div class="user_info">
                            <p class="head"><span class="img" data-commentcount="4" data-img-count="15" data-arrivcitycount="1" data-comhotcount="4" data-userfulcount="10" data-isuserself="False"><img src="//images4.c-ctrip.com/target/t1/headphoto/293/406/308/22631089f44a497495c005fce85f6a6f_R_100_100.jpg" onerror="this.onerror=''; this.src='//pic.c-ctrip.com/common/pic_default_avatar.jpg'" style="width:33px; height:33px;"></span></p>
                            <div class="user_info_txt">
                                <p class="name"><span>M***5</span></p>
                                <p class="level_new"></p>
                                <p class="num">点评总数&nbsp;4<br>被点有用&nbsp;10<br>上传图片&nbsp;15</p>
                            </div>
                        </div>
                        <div class="comment_info">
                            <div class="comment_tittle">
                                <span class="small_c" data-value="环境:5.0,设施:5.0,服务:5.0,卫生:5.0"><span class="b" style="width:80px;"></span></span>
                                <span class="score"><span class="comment_n">5.0</span>分</span>
                                <a class="room J_baseroom_link room_link" data-baseroomid="2608069" data-baseroomname="豪华双人房">豪华双人房</a>
                                <span class="date">2019年08月入住</span>
                                <span class="type"><i class="k_family"></i>家庭亲子</span>
                            </div>
                            <div class="J_commentDetail">
                                早餐还可以，包子，鸡蛋，豆浆，水果都有，周边有超市，对面几家小饭馆味道也还不错，酒店有接送班车去机场和迪士尼，就是去海洋世界有点麻烦，去的时候坐公交，地铁一共9块钱，回来晚上8点没公交了，打车150元，住了三天，总的来说还是值得推荐。
                            </div>
                            <div class="comment_pic">
                                <div class="pic"><img class="listimg" src="//dimg12.c-ctrip.com/images/230j15000000yb68z0244_R_150_150.jpg" data-bigimgsrc="//dimg12.c-ctrip.com/images/230j15000000yb68z0244_W_550_412.jpg" ispass="T"></div>
                                <div class="pic"><img class="listimg" src="//dimg11.c-ctrip.com/images/230h15000000yd8b979BB_R_150_150.jpg" data-bigimgsrc="//dimg11.c-ctrip.com/images/230h15000000yd8b979BB_W_550_412.jpg" ispass="T"></div>
                                <div class="pic"><img class="listimg" src="//dimg10.c-ctrip.com/images/230m15000000yl1kb2B2C_R_150_150.jpg" data-bigimgsrc="//dimg10.c-ctrip.com/images/230m15000000yl1kb2B2C_W_550_412.jpg" ispass="T"></div>
                            </div>
                            <div class="comment_bar">
                                <p class="comment_bar_info"><i class="phone"></i><span class="time">发表于2019-06-24</span></p>
                                <a class="useful">赞<span class="comment_n">(16)</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="comment_block">
                        <div class="user_info">
                            <p class="head"><span class="img" data-commentcount="4" data-img-count="15" data-arrivcitycount="1" data-comhotcount="4" data-userfulcount="10" data-isuserself="False"><img src="//images4.c-ctrip.com/target/t1/headphoto/293/406/308/22631089f44a497495c005fce85f6a6f_R_100_100.jpg" onerror="this.onerror=''; this.src='//pic.c-ctrip.com/common/pic_default_avatar.jpg'" style="width:33px; height:33px;"></span></p>
                            <div class="user_info_txt">
                                <p class="name"><span>M***5</span></p>
                                <p class="level_new"></p>
                                <p class="num">点评总数&nbsp;4<br>被点有用&nbsp;10<br>上传图片&nbsp;15</p>
                            </div>
                        </div>
                        <div class="comment_info">
                            <div class="comment_tittle">
                                <span class="small_c" data-value="环境:5.0,设施:5.0,服务:5.0,卫生:5.0"><span class="b" style="width:80px;"></span></span>
                                <span class="score"><span class="comment_n">5.0</span>分</span>
                                <a class="room J_baseroom_link room_link" data-baseroomid="2608069" data-baseroomname="豪华双人房">豪华双人房</a>
                                <span class="date">2019年08月入住</span>
                                <span class="type"><i class="k_family"></i>家庭亲子</span>
                            </div>
                            <div class="J_commentDetail">
                                早餐还可以，包子，鸡蛋，豆浆，水果都有，周边有超市，对面几家小饭馆味道也还不错，酒店有接送班车去机场和迪士尼，就是去海洋世界有点麻烦，去的时候坐公交，地铁一共9块钱，回来晚上8点没公交了，打车150元，住了三天，总的来说还是值得推荐。
                            </div>
                            <div class="comment_pic">
                                <div class="pic"><img class="listimg" src="//dimg12.c-ctrip.com/images/230j15000000yb68z0244_R_150_150.jpg" data-bigimgsrc="//dimg12.c-ctrip.com/images/230j15000000yb68z0244_W_550_412.jpg" ispass="T"></div>
                                <div class="pic"><img class="listimg" src="//dimg11.c-ctrip.com/images/230h15000000yd8b979BB_R_150_150.jpg" data-bigimgsrc="//dimg11.c-ctrip.com/images/230h15000000yd8b979BB_W_550_412.jpg" ispass="T"></div>
                                <div class="pic"><img class="listimg" src="//dimg10.c-ctrip.com/images/230m15000000yl1kb2B2C_R_150_150.jpg" data-bigimgsrc="//dimg10.c-ctrip.com/images/230m15000000yl1kb2B2C_W_550_412.jpg" ispass="T"></div>
                            </div>
                            <div class="comment_bar">
                                <p class="comment_bar_info"><i class="phone"></i><span class="time">发表于2019-06-24</span></p>
                                <a class="useful">赞<span class="comment_n">(16)</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="page_helper" style="float: right"></div>
                </div>



            </div>
        </div>
    </div>

    <div class="base_ft">
        <p>
            <a href="http://pages.ctrip.com/public/sitemap/sitemap.htm" target="_blank" title="网站导航">网站导航</a>&nbsp;|&nbsp;<a href="http://hotels.ctrip.com/jiudian/" target="_blank" title="宾馆索引">宾馆索引</a>&nbsp;|&nbsp;<a href="http://flights.ctrip.com/booking/hot-city-flights-sitemap.html " target="_blank" title="机票索引">机票索引</a>&nbsp;|&nbsp;<a href="http://pages.ctrip.com/public/sitemap/dj.html" title="旅游索引">旅游索引</a>&nbsp;|&nbsp;<a href="http://ct.ctrip.com/crptravel/sitemap.html" title="商旅索引">商旅索引</a>&nbsp;|&nbsp;<a title="攻略索引" href="http://you.ctrip.com/sitemap/">攻略索引</a>&nbsp;|&nbsp;<a rel="nofollow" href="http://pages.ctrip.com/public/ctripab/abctrip.htm" target="_blank" title="关于携程">关于携程</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://pages.ctrip.com/commerce/promote/201201/other/qygm/index.html" title="企业公民">企业公民</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://job.ctrip.com/" title="诚聘英才">诚聘英才</a>&nbsp;|&nbsp;<a rel="nofollow" title="智慧旅游" href="http://you.ctrip.com/Intelligence.html">智慧旅游</a>&nbsp; |&nbsp;<a rel="nofollow" target="_blank" href="http://u.ctrip.com/" title="分销联盟">分销联盟</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://pages.ctrip.com/public/dlhz.htm" title="代理合作">代理合作</a>&nbsp;|&nbsp;<a target="_blank" href="http://ct.ctrip.com" title="企业商旅">企业商旅</a>&nbsp;|&nbsp;<a target="_blank" href="http://ct.ctrip.com/crptravel/default/landing" title="中小企业差旅">中小企业差旅</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://pages.ctrip.com/public/ctripad/adyw.htm" title="广告业务">广告业务</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://pages.ctrip.com/public/contact.htm" title="联系我们">联系我们</a>
        </p>
        <p>
            <a rel="nofollow" href="http://pages.c-ctrip.com/cooperation/web/cooperation.html#ctm_ref=ctr_hp_btm_coop" target="_blank">加盟合作</a>&nbsp;|&nbsp;<a rel="nofollow" href="http://join.easytrip.com/jiameng/#ctm_ref=ctr_def_btm_hsu_n_1" target="_blank" title="酒店加盟">酒店加盟</a>&nbsp;|&nbsp;<a rel="nofollow" href="http://dst.ctrip.com/">目的地及景区合作</a>&nbsp;|&nbsp;<a rel="nofollow" href="http://pages.ctrip.com/public/serve%20guideline.htm" target="_blank" title="用户协议">用户协议</a>&nbsp;|&nbsp;<a rel="nofollow" href="http://pages.ctrip.com/public/serve%20guideline.htm" target="_blank" title="隐私政策">隐私政策</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://pages.ctrip.com/public/diploma/company.htm">营业执照</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://m.ctrip.com/webapp/vacations/tour/supplier" title="旅游度假资质">旅游度假资质</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="https://insurance.ctrip.com/portal/index.aspx">保险代理</a>&nbsp;|&nbsp;<a target="_blank" href="http://pages.ctrip.com/public/link/ctrip_link.html">友情链接</a>&nbsp;|&nbsp;<a rel="nofollow" href="http://pages.ctrip.com/public/copyright.htm" id="copyright">Copyright©</a>1999-2019,&nbsp;<a href="http://www.ctrip.com/">ctrip.com</a>. All rights reserved.&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://www.miibeian.gov.cn/">ICP证：沪B2-20050130</a>
        </p>
        <p class="gns">
            <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010502002731"><img src="images/hotelPiC/ga.png" style="width: 15px">&nbsp;&nbsp;沪公网备31010502002731号</a>
        </p>
        <div class="honour_wrap">
            <a href="http://www.ca-sme.com/index.credit?action=certDetail&amp;id=40288084605466f1016057ea4cb20021" class="honour1" target="_blank" rel="nofollow"><img src="images/hotelPiC/xinyong.png" style="height: 35px"></a>&nbsp;&nbsp;<a href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20110428175405415" title="工商亮照标识" class="honour2" target="_blank" rel="nofollow"><img src="images/hotelPiC/gongshang.png" style="height: 35px"></a>&nbsp;&nbsp;<a href="http://credit.szfw.org/CX20111018000615000623.html" title="诚信认证示范企业" class="honour3" target="_blank" rel="nofollow"><img src="images/hotelPiC/chengxin.png" style="height: 35px"></a>&nbsp;&nbsp;<a href="http://www.zx110.org/" class="honour4" target="_blank" rel="nofollow" title="征信网"><img src="images/hotelPiC/shehuixinyong.png" style="height: 35px"></a>&nbsp;&nbsp;<a href="http://www.shjbzx.cn/" class="honour5" target="_blank" rel="nofollow" title="上海市互联网违法与违规信息举报中心"><img src="images/hotelPiC/weifajubao.png" style="height: 35px"></a>&nbsp;&nbsp;<a href="https://ss.knet.cn/verifyseal.dll?sn=e12061531010025926306977" class="honour6" target="_blank" rel="nofollow" title="可信网站"><img src="images/hotelPiC/shenfenyanzheng.png" style="height: 35px"></a>&nbsp;&nbsp;<a href="http://www.12377.cn/" class="honour8" title="违法和不良信息举报中心" target="_blank" rel="nofollow"><img src="images/hotelPiC/weifajubao.png" style="height: 35px"></a>
        </div>
    </div>



</body>
</html>