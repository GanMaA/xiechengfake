<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>奇奇旅行</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/xiecheng_index.css">
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <script src="layui/layui.js"></script>
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/xiecheng_index.js"></script>
</head>

<body>
<!--导航栏-->
<iframe id="navIframe" name="navIframe" src="nav.html" frameborder="0" scrolling="no" ></iframe>
<!--搜索背景轮播-->
<div class="layui-carousel" style="height: 340px" id="search">
    <div carousel-item>
        <div><img src="images/xiechengIndexPic/search-bg1.jpg"></div>
        <div><img src="images/xiechengIndexPic/search-bg2.jpg"></div>
        <div><img src="images/xiechengIndexPic/search-bg3.jpg"></div>
        <div><img src="images/xiechengIndexPic/search-bg4.jpg"></div>
    </div>
</div>
<div id="searchbox" class="searchbox">
    <ul id="searchBoxUl" class="s_tab">
        <li id="nav_hotel" class="s_tab_current"><b>酒店</b></li>
        <li id="nav_flight" class="s_tab_nocurrent"><b>机票</b></li>
        <li id="nav_vacation" class="s_tab_nocurrent"><b>旅游</b></li>
        <li id="nav_package" class="s_tab_nocurrent"><b>跟团游</b></li>
        <li id="nav_free" class="s_tab_nocurrent"><b>自由行</b></li>
        <li id="nav_train" class="s_tab_nocurrent"><b>火车</b></li>
        <li id="nav_car" class="s_tab_nocurrent"><b>用车</b></li>
    </ul>
    <!--酒店搜索开始-->
    <div id="hotel" class="s_content" style="display: block">
        <p class="s_subtab_a" id="hotelSwitch">
            <a class="current" data-index="0">国内酒店</a>
            <a class="">海外酒店</a>
            <a class="">民宿</a>
            <a class="">酒店团购</a>
            <a class="">酒店+景点</a>
            <a class="">会议•团房</a>
        </p>

        <form id="chinaHotelForm" name="chinaHotelForm" method="post">
            <div class="s_item_cont">
                <div class="s_item w100">
                    目的地<input type="text" value="北京" class="w01" name="CityName" id="HD_CityName" maxlength="100" style="color:gray;">

                </div>
                <div class="city_select" style="display: none">
                    <div class="city_select_title">支持中文/拼音/简拼输入<span class="city_select_title_close">X</span></div>
                    <div class="city_select_content">
                        <div class="city_select_content_nav">
                            <ul>
                                <li class="city_current">热门</li>
                                <li>ABCD</li>
                                <li>EFGH</li>
                                <li>JKLM</li>
                                <li class="w_60">NOPQRS</li>
                                <li class="w_60">TUVWX</li>
                                <li>YZ</li>
                            </ul>
                        </div>
                        <div class="city_select_content_city">
                            <ul>
                                <li>北京</li>
                                <li>上海</li>
                                <li>天津</li>
                                <li>重庆</li>
                                <li>大连</li>
                                <li>青岛</li>
                                <li>西安</li>
                                <li>南京</li>
                                <li>苏州</li>
                                <li>杭州</li>
                                <li>厦门</li>
                                <li>成都</li>
                                <li>深圳</li>
                                <li>广州</li>
                                <li>三亚</li>
                                <li>台北</li>
                                <li>香港</li>
                                <li>济南</li>
                                <li>宁波</li>
                                <li>沈阳</li>
                                <li>武汉</li>
                                <li>郑州</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="s_item_cont">
                <div class="s_item">入住日期<input type="text" name="checkIn" class="layui-input test-item" placeholder="yyyy-MM-dd"></div>
                <div class="s_item2">退房日期<input class="layui-input test-item w170" type="text" name="checkOut" placeholder="yyyy-MM-dd"></div>
            </div>
            <div class="s_item_cont">
                <div class="s_item">房间数
                    <select id="J_roomCountList">
                        <option selected="selected" value="1">1间</option>
                        <option value="2">2间</option>
                        <option value="3">3间</option>
                        <option value="4">4间</option>
                        <option value="5">5间</option>
                        <option value="6">6间</option>
                        <option value="7">7间</option>
                        <option value="8">8间</option>
                        <option value="9">9间</option>
                        <option value="10">10间</option>
                    </select>
                </div>
                <div class="s_item2">住客数
                    <div id="J_RoomGuestInfoDiv" class="n_gst38578 J_cildNumBox n_gst38578_active">
                        <input id="J_RoomGuestInfoTxt" type="text" value="1成人" class="w170">
                        <i class="n_gst38578_tri"></i>
                        <!-- 住客数浮层 -->
                        <div id="J_cildNumSelectorBox" style="display:none;">
                            <div class="n_gst38578_p">
                                <!-- 快捷选项 -->
                                <ul class="n_gst38578_list">
                                    <li class="n_gst38578_list_opt">
                                        成人<span class="n_gst38578_age">18岁及以上</span>
                                        <span id="J_AdultCount" class="number_control">
                                            <span class="number_reduce number_disable"><i class="icon_numreduce"></i></span>
                                            <input type="text" class="number_input" value="1">
                                            <span class="number_plus"><i class="icon_numplus"></i></span></span>
                                    </li>
                                    <li class="n_gst38578_list_opt">
                                        儿童<span class="n_gst38578_age">0-17岁</span><span id="J_intelHotelChildPolicyTip" class="s_voyage_tip"></span>
                                        <span id="J_ChildCount" class="number_control">
                                            <span class="number_reduce number_disable"><i class="icon_numreduce"></i></span>
                                            <input type="text" class="number_input" value="0">
                                            <span class="number_plus"><i class="icon_numplus"></i></span></span>
                                    </li>
                                </ul>
                                <div class="n_gst38578_ft">
                                    <a id="J_RoomGuestInfoBtnOK" class="n_gst38578_btn">确定</a>
                                    <a id="J_RoomGuestInfoBtnCancel" class="n_gst38578_btncancel">取消</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="s_item_cont">
                <div class="s_item">酒店级别<select id="searchHotelLevelSelect" name="Star">
                    <option selected="selected" value="0">不限</option>
                    <option value="5">五星级/豪华</option>
                    <option value="4">四星级/高档</option>
                    <option value="3">三星级/舒适</option>
                    <option value="2">二星级以下/经济</option>
                </select>
                </div>

                <div id="hotelAddressDiv" class="s_item2">关键词
                    <input type="text" value="(选填)酒店名/地标/商圈" id="HD_TxtKeyword" name="keywordNew" class="w170 inputSel" autocomplete="on" maxlength="100" style="color: gray;">
                </div>
            </div>
            <div class="s_button_area">
                <input type="button" value="搜索" class="s_btn" title="搜索" id="HD_Btn">
            </div>
        </form>
    </div>
    <!--酒店搜索结束-->
    <!--机票搜索开始-->
    <div id="flight" class="s_content" style="width: 450px; height: 275px;display: none">
        <p class="s_subtab_a" id="flightSwitch">
            <a class="current" tag="fltDomestic">国内机票</a>
            <a class="">国际•港澳台机票</a>
            <a class="">发现低价<span class="label-en"><em>NEW</em><i class="triangle"></i></span></a>
        </p>
        <form id="FD_ChinaFlightForm" method="post" autocomplete="off" action="/showTicket">
            <div id="FD_ChinaFlightForm_content">
                <div class="s_type" id="FD_flightSubSwitch">
                    航程类型
                    <label class="index_label"><input name="flightway" type="radio" value="S" checked="checked">单程</label> &nbsp;
                    <label class="index_label"><input name="flightway" type="radio" value="D">往返</label>
                </div>
            </div>
            <div style="width: 1000px;">
                <div class="s_item_cont s_item_cont_1 s_item_cont_ex">
                    <div class="s_exchange"><a href="#">换</a></div>
                    <div class="s_item">出发城市<input type="text" name="flyCity" id="FD_StartCity" class="inputSel" style="color: gray" placeholder="中文/拼音"></div>
                    <div class="s_item2"><span id="FD_StartDateSpan">出发日期</span><input type="text" id="FD_StartDate" name="ticketDate" class="inputSel layui-input test-item" placeholder="yyyy-MM-dd"></div>
                </div>
                <div class="s_item_cont s_item_cont_1">
                    <div class="s_item">到达城市<input type="text" name="arrivedCity" id="FD_DestCity" placeholder="中文/拼音" class="inputSel"></div>
                    <div class="s_item2 s_disable" id="FD_ReturnDateDiv">返回日期<input type="text" id="FD_ReturnDate" class="inputSel layui-input test-item" placeholder="yyyy-MM-dd"></div>
                </div>
            </div>
            <div style="line-height: 28px;">
                <label class="index_label adv_inlin_item"><input id="FD_HasChild" type="checkbox" value="T">带儿童</label>
                <label class="index_label adv_inlin_item"><input id="FD_HasBaby" type="checkbox" value="T">带婴儿</label>
                <span class="class_type_selection">舱位等级<select name="ClassType" tabindex="173" id="FD_ClassLevel"><option value="">经济舱</option><option value="CF">公务/头等舱</option></select></span>
            </div>
            <a class="J_childBabyTip_2">儿童婴儿预订说明<span class="s_voyage_tip" style="margin:0;margin-top:-2px"></span></a>
            <div class="s_button_area" style="width: 100%">
                <input type="submit" tabindex="174" value="搜索机票" class="s_btn s_btn3" title="搜索机票" id="FD_StartSearch">
            </div>
        </form>
        <div class="city_select flight_leave " style="display: none">
            <div class="city_select_title">支持中文/拼音/简拼输入<span class="city_select_title_close">X</span></div>
            <div class="city_select_content">
                <div class="city_select_content_nav">
                    <ul>
                        <li class="city_current">热门</li>
                        <li>ABCD</li>
                        <li>EFGH</li>
                        <li>JKLM</li>
                        <li class="w_60">NOPQRS</li>
                        <li class="w_60">TUVWX</li>
                        <li>YZ</li>
                    </ul>
                </div>
                <div class="city_select_content_city">
                    <ul>
                        <li>北京</li>
                        <li>上海</li>
                        <li>天津</li>
                        <li>重庆</li>
                        <li>大连</li>
                        <li>青岛</li>
                        <li>西安</li>
                        <li>南京</li>
                        <li>苏州</li>
                        <li>杭州</li>
                        <li>厦门</li>
                        <li>成都</li>
                        <li>深圳</li>
                        <li>广州</li>
                        <li>三亚</li>
                        <li>台北</li>
                        <li>香港</li>
                        <li>济南</li>
                        <li>宁波</li>
                        <li>沈阳</li>
                        <li>武汉</li>
                        <li>郑州</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="city_select flight_arrive " style="display: none">
            <div class="city_select_title">支持中文/拼音/简拼输入<span class="city_select_title_close">X</span></div>
            <div class="city_select_content">
                <div class="city_select_content_nav">
                    <ul>
                        <li class="city_current">热门</li>
                        <li>ABCD</li>
                        <li>EFGH</li>
                        <li>JKLM</li>
                        <li class="w_60">NOPQRS</li>
                        <li class="w_60">TUVWX</li>
                        <li>YZ</li>
                    </ul>
                </div>
                <div class="city_select_content_city">
                    <ul>
                        <li>北京</li>
                        <li>上海</li>
                        <li>天津</li>
                        <li>重庆</li>
                        <li>大连</li>
                        <li>青岛</li>
                        <li>西安</li>
                        <li>南京</li>
                        <li>苏州</li>
                        <li>杭州</li>
                        <li>厦门</li>
                        <li>成都</li>
                        <li>深圳</li>
                        <li>广州</li>
                        <li>三亚</li>
                        <li>台北</li>
                        <li>香港</li>
                        <li>济南</li>
                        <li>宁波</li>
                        <li>沈阳</li>
                        <li>武汉</li>
                        <li>郑州</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--机票搜索结束-->
</div>
<!--历史记录-->
<div class="hotel-history">
    <!--隐藏历史图标-->
    <div class="toogel-bar"><a class="toogel-btn"><i></i></a></div>
    <div class="history-contain">
        <!--历史标题-->
        <div class="history-title">
            <span class="history-title-left"><b></b>浏览历史</span>
            <span class="history-title-right"><a>清除历史</a><span></span></span>
        </div>
        <!--历史item-->
        <div class="history-item">
            <ul>
                <li>
                    <a>
                        <div class="history-item-left"><i class="ico"></i></div>
                        <div class="history-item-right">
                            <div class="history-item-right-name">北京酒店</div>
                            <div class="history-item-right-info">2019-09-10至2019-09-11</div>
                            <div class="history-item-right-info"></div>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--主题内容-->
<div class="container">
    <div class="mod">
        <div class="mod-hd">
            <span class="mod-current">热门<i class="i-show"></i></span>
            <span>特价旅游<i></i><b><em>HOT</em><em class="triangle"></em></b></span>
            <span>出境游<i></i></span>
            <span>境内游<i></i></span>
            <span>周边游<i></i></span>
            <span>邮轮<i></i></span>
            <span>门票<i></i></span>
            <span>当地玩乐<i></i><b><em>HOT</em><em class="triangle"></em></b></span>
            <span>主题游<i></i></span>
            <span>高端游<i></i></span>
        </div>
        <div class="product">
            <!--头部-->
            <div class="product-hd">
                <ul class="inner-tabs-nav">
                    <li class="active"><a>境内</a></li>
                    <li><a>日本</a></li>
                    <li><a>东南亚</a></li>
                    <li><a>欧洲</a></li>
                    <li><a>美洲</a></li>
                    <li><a>奥中东非</a></li>
                </ul>
            </div>
            <!--具体产品-->
            <div class="product-bd">
                <div class="inner-tab-scroll-wrap">
                    <div class="inner-tab-scroll-list">
                        <div class="product-item product-item_complex"><a>
                            <div><img src="images/xiechengIndexPic/product-bd1.jpg"></div>
                            <div class="tag-wrap"><span class=" tag_saleNum">月销53200笔</span></div>
                            <div class="item-msg"><p class="item-name">北京</p><p class="item-info"><span class="price"><dfn>¥</dfn>1113<i class="price_info">/人起</i></span></p></div>
                        </a></div>

                        <div class="product-item  product-item_complex"><a>
                            <div class="item-thumbnail"><img src="images/xiechengIndexPic/product-bg2.jpg">
                            <div class="tag-wrap"><span class=" tag_saleNum">月销39500笔</span></div></div>
                            <div class="item-msg"><p class="item-name">三亚</p><p class="item-info"><span class="price"><dfn>¥</dfn>891<i class="price_info">/人起</i></span></p></div>
                        </a></div>

                        <div class="product-item product-item_complex"><a>
                            <div><img src="images/xiechengIndexPic/product-bd1.jpg"></div>
                            <div class="tag-wrap"><span class=" tag_saleNum">月销53200笔</span></div>
                            <div class="item-msg"><p class="item-name">北京</p><p class="item-info"><span class="price"><dfn>¥</dfn>1113<i class="price_info">/人起</i></span></p></div>
                        </a></div>

                        <div class="product-item  product-item_complex"><a>
                            <div class="item-thumbnail"><img src="images/xiechengIndexPic/product-bg2.jpg">
                                <div class="tag-wrap"><span class=" tag_saleNum">月销39500笔</span></div></div>
                            <div class="item-msg"><p class="item-name">三亚</p><p class="item-info"><span class="price"><dfn>¥</dfn>891<i class="price_info">/人起</i></span></p></div>
                        </a></div>

                        <div class="product-item product-item_complex"><a>
                            <div><img src="images/xiechengIndexPic/product-bd1.jpg"></div>
                            <div class="tag-wrap"><span class=" tag_saleNum">月销53200笔</span></div>
                            <div class="item-msg"><p class="item-name">北京</p><p class="item-info"><span class="price"><dfn>¥</dfn>1113<i class="price_info">/人起</i></span></p></div>
                        </a></div>

                        <div class="product-item  product-item_complex"><a>
                            <div class="item-thumbnail"><img src="images/xiechengIndexPic/product-bg2.jpg">
                                <div class="tag-wrap"><span class=" tag_saleNum">月销39500笔</span></div></div>
                            <div class="item-msg"><p class="item-name">三亚</p><p class="item-info"><span class="price"><dfn>¥</dfn>891<i class="price_info">/人起</i></span></p></div>
                        </a></div>

                        <div class="product-item product-item_complex"><a>
                            <div><img src="images/xiechengIndexPic/product-bd1.jpg"></div>
                            <div class="tag-wrap"><span class=" tag_saleNum">月销53200笔</span></div>
                            <div class="item-msg"><p class="item-name">北京</p><p class="item-info"><span class="price"><dfn>¥</dfn>1113<i class="price_info">/人起</i></span></p></div>
                        </a></div>

                        <div class="product-item  product-item_complex"><a>
                            <div class="item-thumbnail"><img src="images/xiechengIndexPic/product-bg2.jpg">
                                <div class="tag-wrap"><span class=" tag_saleNum">月销39500笔</span></div></div>
                            <div class="item-msg"><p class="item-name">三亚</p><p class="item-info"><span class="price"><dfn>¥</dfn>891<i class="price_info">/人起</i></span></p></div>
                        </a></div>
                </div>
            </div>
                <div class="extra-item"><a><img src="images/xiechengIndexPic/product-bg-extra.jpg"></a></div>
            </div>

        </div>
    </div>
    <!--酒店-->
    <div class="mod hotel">
        <div class="mod-hd"><span class="mod-current">海外酒店<i class="i-show"></i></span><span>海外民宿+短租<i></i></span><span>国内酒店<i></i></span><span>酒店+景点<i></i></span><span>客栈民宿<i></i></span><span>团购<i></i></span></div>
        <div class="mod-bd">
            <div class="mod-bd-panel hotel-internal">
                <div class="entrance">
                    <d1 class="keyword-log">
                        <dt>促销</dt>
                        <dd><span class="entrance-item" title="睡遍全世界—新加坡国家馆"><a>睡遍全世界—新加坡国家馆</a></span></dd>
                        <dd><span class="entrance-item" title="睡遍全世界—日本国家馆"><a>睡遍全世界—日本国家馆</a></span></dd>
                        <dd><span class="entrance-item" title="睡遍全世界—澳大利亚站"><a>睡遍全世界—澳大利亚站</a></span></dd>
                        <dd><span class="entrance-item" title="睡遍全世界—新加坡国家馆"><a>睡遍全世界—新加坡国家馆</a></span></dd>
                        <dd><span class="entrance-item" title="暑期亲子游世界"><a>暑期亲子游世界</a></span></dd>
                    </d1>
                    <dl class="keyword-log">
                        <dt>发现酒店</dt>
                        <dd><span class="entrance-item" title="突尼斯酒店推荐"><a>突尼斯酒店推荐</a></span></dd>
                        <dd><span class="entrance-item" title="玻利维亚乌尤尼酒店推荐"><a>玻利维亚乌尤尼酒店推荐</a></span></dd>
                        <dd><span class="entrance-item" title="苏梅岛巴安达灵洲际度假酒店"><a>苏梅岛巴安达灵洲际度假酒店</a></span></dd>
                        <dd><span class="entrance-item" title="奥地利巴德伊舍酒店推荐"><a>奥地利巴德伊舍酒店推荐</a></span></dd>
                    </dl>
                </div>
                <div class="product hotel-product">
                    <div class="product-hd">
                        <ul class="inner-tabs-nav">
                            <li class="active"><a>热门城市</a></li>
                            <li><a>都市购物</a></li>
                            <li><a>海岛休闲</a></li>
                            <li><a>旅游胜地</a></li>
                        </ul>
                    </div>
                    <div class="product-bd">
                        <div class="inner-tab-panel active">
                            <div class="product-item product-item_complex" title="新加坡"><a>
                                <div class="item-thumbnail"><img src="images/xiechengIndexPic/hotel-product-bd1.jpg" alt="新加坡"></div>
                                <div class="item-msg"><p class="item-name">新加坡</p><p class="item-num">686家酒店</p><p class="item-info"><span class="price"><dfn>¥</dfn>70<i class="price_info">起</i></span></p></div>
                            </a></div>
                            <div class="product-item product-item_complex" title="曼谷"><a>
                                <div class="item-thumbnail"><img src="images/xiechengIndexPic/hotel-product-bd2.jpg" alt="曼谷"></div>
                                <div class="item-msg"><p class="item-name">曼谷</p><p class="item-num">3745家酒店</p><p class="item-info"><span class="price"><dfn>¥</dfn>18<i class="price_info">起</i></span></p></div>
                            </a></div>
                            <div class="product-item product-item_complex" title="东京"><a>
                                <div class="item-thumbnail"><img src="images/xiechengIndexPic/hotel-product-bd3.jpg" alt="东京"></div>
                                <div class="item-msg"><p class="item-name">东京</p><p class="item-num">3345家酒店</p><p class="item-info"><span class="price"><dfn>¥</dfn>121<i class="price_info">起</i></span></p></div>
                            </a></div>
                            <div class="product-item product-item_complex" title="吉隆坡"><a>
                                <div class="item-thumbnail"><img src="images/xiechengIndexPic/hotel-product-bd4.jpg" alt="吉隆坡"></div>
                                <div class="item-msg"><p class="item-name">吉隆坡</p><p class="item-num">2332家酒店</p><p class="item-info"><span class="price"><dfn>¥</dfn>27<i class="price_info">起</i></span></p></div>
                                </a></div>
                            <div class="product-item product-item_complex" title="大阪"><a>
                                <div class="item-thumbnail"><img src="images/xiechengIndexPic/hotel-product-bd5.jpg" alt="大阪"></div>
                                <div class="item-msg"><p class="item-name">大阪</p><p class="item-num">3475家酒店</p><p class="item-info"><span class="price"><dfn>¥</dfn>44<i class="price_info">起</i></span></p></div>
                            </a></div>
                            <div class="product-item product-item_complex" title="普吉岛"><a>
                                <div class="item-thumbnail"><img src="images/xiechengIndexPic/hotel-product-bd6.jpg" alt="普吉岛"></div>
                                <div class="item-msg"><p class="item-name">普吉岛</p><p class="item-num">4989家酒店</p><p class="item-info"><span class="price"><dfn>¥</dfn>41<i class="price_info">起</i></span></p></div></a></div>

                        </div>
                        <div class="hotel-extra-item" title="泰国免落地签证费啦！"><a>
                            <p class="extra-thumbnail"><img src="images/xiechengIndexPic/hotel-extra.jpg" alt="泰国免落地签证费啦！"></p><p class="extra-text">泰国免落地签证费啦！</p>
                        </a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--机票-->
    <div class="mod flightC">
        <div class="mod-hd">
            <span class="mod-current">国际•港澳台特价机票<i class="i-show"></i></span>
            <span>国内特价机票<i></i></span>
        </div>
        <div class="product">
            <div class="product-hd">
                <ul class="inner-tabs-nav">
                    <li class="active"><a>热门往返</a></li>
                    <li><a>亚洲</a></li>
                    <li><a>欧洲</a></li>
                    <li><a>美洲</a></li>
                    <li><a>非洲</a></li>
                </ul>
            </div>
            <div class="product-bd">
                <div class="inner-tab-panel active">
                    <div class="product-item"><a><p class="item-name">上海 <i class="icon icon-round"></i> 纽约</p><p class="item-info"><span class="date">9月14日 - 9月21日</span></p><p class="item-info"><span class="price"><dfn>¥</dfn>66<i class="price_info">起</i></span><span class="button  button-yellow">立抢</span></p></a></div>
                    <div class="product-item"><a><p class="item-name">上海 <i class="icon icon-round"></i> 洛杉矶</p><p class="item-info"><span class="date">9月10日 - 9月17日</span></p><p class="item-info"><span class="price"><dfn>¥</dfn>250<i class="price_info">起</i></span><span class="button  button-yellow">立抢</span></p></a></div>
                    <div class="product-item"><a><p class="item-name">上海 <i class="icon icon-round"></i> 香港</p><p class="item-info"><span class="date">9月14日 - 9月21日</span></p><p class="item-info"><span class="price"><dfn>¥</dfn>299<i class="price_info">起</i></span><span class="button  button-yellow">立抢</span></p></a></div>
                    <div class="product-item"><a><p class="item-name">上海 <i class="icon icon-round"></i> 澳门</p><p class="item-info"><span class="date">9月13日 - 9月20日</span></p><p class="item-info"><span class="price"><dfn>¥</dfn>364<i class="price_info">起</i></span><span class="button  button-yellow">立抢</span></p></a></div>
                    <div class="product-item"><a><p class="item-name">上海 <i class="icon icon-round"></i> 台北</p><p class="item-info"><span class="date">9月16日 - 9月23日</span></p><p class="item-info"><span class="price"><dfn>¥</dfn>395<i class="price_info">起</i></span><span class="button  button-yellow">立抢</span></p></a></div>
                    <div class="product-item"><a><p class="item-name">上海 <i class="icon icon-round"></i> 曼谷</p><p class="item-info"><span class="date">9月11日 - 9月18日</span></p><p class="item-info"><span class="price"><dfn>¥</dfn>498<i class="price_info">起</i></span><span class="button  button-yellow">立抢</span></p></a></div>
                    <div class="product-item"><a><p class="item-name">上海 <i class="icon icon-round"></i> 胡志明市</p><p class="item-info"><span class="date">9月13日 - 9月20日</span></p><p class="item-info"><span class="price"><dfn>¥</dfn>500<i class="price_info">起</i></span><span class="button  button-yellow">立抢</span></p></a></div>
                    <div class="product-item"><a><p class="item-name">上海 <i class="icon icon-round"></i> 首尔</p><p class="item-info"><span class="date">9月11日 - 9月18日</span></p><p class="item-info"><span class="price"><dfn>¥</dfn>590<i class="price_info">起</i></span><span class="button  button-yellow">立抢</span></p></a></div>
                    <div class="product-item"><a><p class="item-name">上海 <i class="icon icon-round"></i> 名古屋</p><p class="item-info"><span class="date">9月11日 - 9月18日</span></p><p class="item-info"><span class="price"><dfn>¥</dfn>745<i class="price_info">起</i></span><span class="button  button-yellow">立抢</span></p></a></div>
                    <div class="product-item"><a><p class="item-name">上海 <i class="icon icon-round"></i> 新加坡</p><p class="item-info"><span class="date">9月13日 - 9月20日</span></p><p class="item-info"><span class="price"><dfn>¥</dfn>900<i class="price_info">起</i></span><span class="button  button-yellow">立抢</span></p></a></div>
                    <div class="product-item"><a><p class="item-name">上海 <i class="icon icon-round"></i> 吉隆坡</p><p class="item-info"><span class="date">9月13日 - 9月20日</span></p><p class="item-info"><span class="price"><dfn>¥</dfn>905<i class="price_info">起</i></span><span class="button  button-yellow">立抢</span></p></a></div>
                    <div class="product-item"><a><p class="item-name">上海 <i class="icon icon-round"></i> 釜山</p><p class="item-info"><span class="date">9月13日 - 9月20日</span></p><p class="item-info"><span class="price"><dfn>¥</dfn>910<i class="price_info">起</i></span><span class="button  button-yellow">立抢</span></p></a></div>
                </div>
                <div class="extra-item" title="惠飞选国航"><a><p class="extra-thumbnail"><img src="//images4.c-ctrip.com/target/60010q000000gsgjnAD29.jpg" alt="惠飞选国航"></p></a></div>
            </div>
        </div>
    </div>
    <!--租车-->
    <div class="mod car">
        <div class="mod-hd">
            <span class="mod-current">境外租车<i class="i-show"></i></span>
            <span>境外接送机<i></i></span>
            <span>国内租车<i></i></span>
            <span>国内接送机<i></i></span>
            <span>日租包车<i></i></span>
        </div>
        <div class="mod-bd">
            <div class="mod-bd-panel">
                <div class="entrance">
                    <dl class="keyword-short">
                        <dt>热门城市</dt>
                        <dd><span class="entrance-item" title="洛杉矶"><a>洛杉矶</a><span class="icon_hot"></span></span>
                        <span class="entrance-item" title="旧金山"><a>旧金山</a><span class="icon_hot"></span></span>
                        <span class="entrance-item" title="墨尔本"><a>墨尔本</a></span>
                        <span class="entrance-item" title="纽约"><a>纽约</a></span>
                        <span class="entrance-item" title="曼谷"><a>曼谷</a></span>
                        <span class="entrance-item" title="基督城"><a>基督城</a><span class="icon_hot"></span></span>
                        <span class="entrance-item" title="普吉岛"><a>普吉岛</a><span class="icon_hot"></span></span>
                        <span class="entrance-item" title="温哥华"><a>温哥华</a></span><span class="entrance-item" title="悉尼"><a>悉尼</a></span>
                        <span class="entrance-item" title="奥克兰"><a>奥克兰</a><span class="icon_hot"></span></span>
                        <span class="entrance-item" title="拉斯维加斯"><a>拉斯维加斯</a></span>
                        <span class="entrance-item" title="西雅图"><a>西雅图</a></span>
                        <span class="entrance-item" title="伦敦"><a>伦敦</a></span>
                        <span class="entrance-item" title="法兰克福"><a>法兰克福</a></span>
                        <span class="entrance-item" title="多伦多"><a>多伦多</a></span>
                        <span class="entrance-item" title="巴黎"><a>巴黎</a></span>
                        <span class="entrance-item" title="迪拜"><a>迪拜</a></span>
                        </dd>
                    </dl>
                </div>
                <div class="product">
                    <!--头部-->
                    <div class="product-hd">
                        <ul class="inner-tabs-nav">
                            <li class="active"><a>小型轿车</a></li>
                            <li><a>中型轿车</a></li>
                            <li><a>大型轿车</a></li>
                            <li><a>高档轿车</a></li>
                            <li><a>中型SUV</a></li>
                            <li><a>标准SUV</a></li>
                            <li><a>全尺寸SUV</a></li>
                            <li class="dropdown-li">
                                <div class="dropdown"><a class="dropdown-toggle dropdown-toggle_border">更多<span class="caret"></span></a>
                                    <div class="dropdown-cont">
                                        <div class="dropdown-menu-list"><a>厢式旅行车</a><a>酷炫车型</a></div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="product-bd">
                        <div class="inner-tab-panel">
                            <div class="product-item" title="美国 洛杉矶"><a><p class="item-thumbnail"><img src="//pic.c-ctrip.com/car/osd/online/vehicle_new/Ford_Fiesta.png" alt="美国 洛杉矶"></p><p class="item-name">美国 洛杉矶</p><p class="item-info"><span class="price"><dfn>¥</dfn>164<i class="price_info">起</i></span><span class="item-type">自驾梦幻1号公路</span></p></a></div>
                            <div class="product-item" title="加拿大 温哥华"><a ><p class="item-thumbnail"><img src="//pic.c-ctrip.com/car/osd/online/vehicle_new/Kia_Rio.png" alt="加拿大 温哥华"></p><p class="item-name">加拿大 温哥华</p><p class="item-info"><span class="price"><dfn>¥</dfn>107<i class="price_info">起</i></span><span class="item-type">环游如画温哥华岛</span></p></a></div>
                            <div class="product-item" title="澳大利亚 墨尔本"><a><p class="item-thumbnail"><img src="//pic.c-ctrip.com/car/osd/online/vehicle_new/Toyota_Corolla.png" alt="澳大利亚 墨尔本"></p><p class="item-name">澳大利亚 墨尔本</p><p class="item-info"><span class="price"><dfn>¥</dfn>68<i class="price_info">起</i></span><span class="item-type">大洋路绝美海岸线</span></p></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--玩乐-->
    <div class="mod play">
        <div class="mod-hd">
            <span class="mod-current">当地玩乐 • 出境<i class="i-show"></i></span>
            <span>当地玩乐 • 境内<i></i></span>
        </div>
        <div class="mod-bd">
            <div class="play-panel">
                <div class="entrance">
                    <dl class="keyword-short"><dt>热门目的地</dt><dd><span class="entrance-item" title="普吉岛"><a>普吉岛</a></span><span class="entrance-item" title="曼谷"><a>曼谷</a></span><span class="entrance-item" title="东京"><a>东京</a></span><span class="entrance-item" title="清迈"><a>清迈</a></span><span class="entrance-item" title="香港"><a>香港</a></span><span class="entrance-item" title="芽庄"><a>芽庄</a></span><span class="entrance-item" title="巴厘岛"><a>巴厘岛</a></span><span class="entrance-item" title="沙巴"><a >沙巴</a></span><span class="entrance-item" title="大阪"><a>大阪</a></span><span class="entrance-item" title="岘港"><a>岘港</a></span><span class="entrance-item" title="迪拜"><a>迪拜</a></span><span class="entrance-item" title="澳门"><a>澳门</a></span><span class="entrance-item" title="墨尔本"><a>墨尔本</a></span><span class="entrance-item" title="冲绳"><a>冲绳</a></span><span class="entrance-item" title="悉尼"><a>悉尼</a></span><span class="entrance-item" title="新加坡"><a>新加坡</a></span><span class="entrance-item" title="暹粒"><a>暹粒</a></span><span class="entrance-item" title="台北"><a>台北</a></span></dd></dl>
                </div>
                <div class="play-product">
                    <!--头部-->
                    <div class="product-hd">
                        <ul class="inner-tabs-nav">
                            <li class="active"><a>一日游</a></li>
                            <li><a>演出/赛事</a></li>
                            <li><a>交通接驳</a></li>
                            <li><a>当地美食</a></li>
                            <li><a>游船观光</a></li>
                            <li><a>SPA水疗</a></li>
                            <li><a>特色实验</a></li>
                        </ul>
                    </div>
                    <div class="play-product-bd">
                        <div class="play-innnertab-pannel">
                            <div class="play-product-item">
                                <a href="http://huodong.ctrip.com/activity/10266457.html#ctm_ref=ssc_hp_ply_sni_pro_1" target="_blank"><p class="item-thumbnail"><img src="https://dimg04.c-ctrip.com/images/350p1600000109qx2C354_C_280_158.jpg" alt="【携程专线】+冲绳县万座毛+古宇利岛+冲绳美丽海水族馆一日游【多地发车赠水族馆票中文导】"></p><p class="item-name">【携程专线】+冲绳县万座毛+古宇利岛+冲绳美丽海水族馆一日游【多地发车赠水族馆票中文导】</p><p class="item-info"><span class="price"><dfn>¥</dfn>229<i class="price_info">起</i></span><span class="item-type">日本·冲绳</span></p></a>
                            </div>
                            <div class="play-product-item"><a><p class="item-thumbnail"><img src="https://dimg06.c-ctrip.com/images/350l0n000000ec6k84D0F_C_280_158.jpg" alt="清莱白庙+黑庙+清莱蓝庙一日游【可选超稳奔驰大巴/9人VIP 升级旅拍】"></p><p class="item-name">清莱白庙+黑庙+清莱蓝庙一日游【可选超稳奔驰大巴/9人VIP 升级旅拍】</p><p class="item-info"><span class="price"><dfn>¥</dfn>138<i class="price_info">起</i></span><span class="item-type">泰国·清迈</span></p></a></div>
                            <div class="play-product-item"><a><p class="item-thumbnail"><img src="https://dimg04.c-ctrip.com/images/350b10000000pm2zgA5CF_C_280_158.jpg" alt="曼谷丹嫩沙多水上集市+美功铁道市场一日游【上门接送/睡醒出发/大皇宫/安帕瓦VIP】"></p><p class="item-name">曼谷丹嫩沙多水上集市+美功铁道市场一日游【上门接送/睡醒出发/大皇宫/安帕瓦VIP】</p><p class="item-info"><span class="price"><dfn>¥</dfn>9<i class="price_info">起</i></span><span class="item-type">泰国·曼谷</span></p></a></div>
                            <div class="play-product-item"><a><p class="item-thumbnail"><img src="https://dimg04.c-ctrip.com/images/350i10000000pfzsaB933_C_280_158.jpg" alt="越南岘港巴拿山+佛手桥+往返缆车一日游【可选专车接送+导游+可选城堡自助餐+火车】"></p><p class="item-name">越南岘港巴拿山+佛手桥+往返缆车一日游【可选专车接送+导游+可选城堡自助餐+火车】</p><p class="item-info"><span class="price"><dfn>¥</dfn>223<i class="price_info">起</i></span><span class="item-type">越南·岘港</span></p></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--全球购-->
    <div class="mod shopping">
        <div class="mod-hd">
            <span class="mod-current">全球购<i class="i-show"></i></span>
        </div>
        <div class="mod-bd">
            <div class="shopping-panel">
                <div class="entrance">
                    <dl class="keyword-short"><dt>热门目的地</dt><dd><span class="entrance-item" title="香港"><a>香港</a><span class="icon_hot"></span></span><span class="entrance-item" title="澳门"><a>澳门</a></span><span class="entrance-item" title="日本"><a>日本</a><span class="icon_hot"></span></span><span class="entrance-item" title="阿联酋"><a>阿联酋</a></span><span class="entrance-item" title="法国"><a>法国</a></span><span class="entrance-item" title="英国"><a>英国</a></span><span class="entrance-item" title="西班牙"><a>西班牙</a></span><span class="entrance-item" title="马来西亚"><a>马来西亚</a><span class="icon_hot"></span></span><span class="entrance-item" title="新加坡"><a>新加坡</a></span><span class="entrance-item" title="美国"><a>美国</a></span><span class="entrance-item" title="韩国"><a>韩国</a></span><span class="entrance-item" title="澳大利亚"><a>澳大利亚</a></span><span class="entrance-item" title="泰国"><a>泰国</a></span><span class="entrance-item" title="新西兰"><a>新西兰</a></span><span class="entrance-item" title="意大利"><a>意大利</a></span></dd></dl>
                </div>
                <div class="shopping-product">
                    <!--头部-->
                    <div class="product-hd">
                        <ul class="inner-tabs-nav">
                            <li class="active"><a>热门商户</a></li>
                            <li><a>新店首选</a></li>
                            <li><a>奢品大牌</a></li>
                            <li><a>口碑推荐</a></li>
                            <li><a>综合商场</a></li>
                        </ul>
                    </div>
                    <div class="shopping-product-bd">
                        <div class="shopping-innnertab-pannel">
                            <div class="shopping-product-item">
                                <a><p class="item-thumbnail"><img src="//images4.c-ctrip.com/target/zd0d0i00000097qa9955E_C_570_285.jpg" alt="DFS旗下T广场（香港广东道店） DFS T Galleria（Hong Kong Canton Road）"></p><p class="item-name">DFS旗下T广场（香港广东道店） DFS T Galleria（Hong Kong Canton Road）</p><p class="item-info"><span class="item-label"><span class="tag_orange_empty">返现</span></span><span class="item-type">中国 • 香港</span></p></a>
                            </div>
                            <div class="shopping-product-item">
                                <a><p class="item-thumbnail"><img src="//images4.c-ctrip.com/target/zd0d0f0000007ckfk0B0C_C_570_285.jpg" alt="迪拜国际机场T2航站楼（抵达厅2号免税店） T2 Arrivals Shop 2"></p><p class="item-name">迪拜国际机场T2航站楼（抵达厅2号免税店） T2 Arrivals Shop 2</p><p class="item-info"><span class="item-label"><span class="tag_yellow_empty">促销</span></span><span class="item-type">阿联酋 • 迪拜</span></p></a>
                            </div>
                            <div class="shopping-product-item">
                                <a><p class="item-thumbnail"><img src="//images4.c-ctrip.com/target/zd0w0j000000b7c8g09C8_C_570_285.jpg" alt="高岛屋（新宿店） Takashimaya（Shinjuku Store）"></p><p class="item-name">高岛屋（新宿店） Takashimaya（Shinjuku Store）</p><p class="item-info"><span class="item-label"><span class="tag_orange_empty">返现</span></span><span class="item-type">日本 • 东京</span></p></a>
                            </div>
                            <div class="shopping-product-item">
                                <a><p class="item-thumbnail"><img src="//images4.c-ctrip.com/target/zd0d080000003hpvb9BBA_C_570_285.jpg" alt="日上免税行（上海浦东国际机场T1航站楼店） SUNRISE DUTY FREE（Shanghai Pudong International Airport T1）"></p><p class="item-name">日上免税行（上海浦东国际机场T1航站楼店） SUNRISE DUTY FREE（Shanghai Pudong International Airport T1）</p><p class="item-info"><span class="item-label"><span class="tag_yellow_empty">促销</span></span><span class="item-type">中国 • 上海</span></p></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--旅游攻略-->
    <div class="mod guid">
        <div class="mod-hd">
            <span class="mod-current">目的地攻略<i class="i-show"></i></span>
            <span>旅游旗舰店<i></i></span>
        </div>
        <div class="mod-bd">
            <div class="guid-panel">
                <div class="entrance">
                    <dl class="keyword-long"><dt>当季推荐</dt><dd><span class="entrance-item" title="圣托里尼：永恒的蓝白世界"><a>圣托里尼：永恒的蓝白世界</a></span></dd><dd><span class="entrance-item" title="哥本哈根：走进安徒生的童话世界"><a>哥本哈根：走进安徒生的童话世界</a></span></dd><dd><span class="entrance-item" title="圣彼得堡：风光迤逦的北方威尼斯"><a>圣彼得堡：风光迤逦的北方威尼斯</a></span></dd><dd><span class="entrance-item" title="清迈：文艺清新的泰北明珠"><a>清迈：文艺清新的泰北明珠</a></span></dd><dd><span class="entrance-item" title="柏林：啤酒相约猪肘"><a>柏林：啤酒相约猪肘</a></span></dd></dl>
                </div>
            </div>
            <div class="guid-product">
                <!--头部-->
                <div class="product-hd">
                    <ul class="inner-tabs-nav">
                        <li class="active"><a>氢气球专栏</a></li>
                        <li><a>旅行正当时</a></li>
                        <li><a>看海悠悠乐</a></li>
                        <li><a>教你买买买</a></li>
                    </ul>
                </div>
                <div class="guid-product-bd">
                    <div class="guid-innnertab-pannel">
                        <div class="guid-product-item">
                            <a><p class="item-thumbnail"><img src="https://dimg06.c-ctrip.com/images/100k0w000000kgkgfC8BA_R_220_160.jpg" alt="特工王牌的终极度假地"></p><div class="item-overlay"><p class="item-name">特工王牌的终极度假地</p><p class="item-info" style="display:none"></p><p class="iefix-bg"></p></div></a>
                        </div>
                        <div class="guid-product-item">
                            <a><p class="item-thumbnail"><img src="https://dimg02.c-ctrip.com/images/100e0w000000kfb626E83_R_220_160.jpg" alt="三亚防坑指南"></p><div class="item-overlay"><p class="item-name">三亚防坑指南</p><p class="item-info" style="display: none;"></p><p class="iefix-bg"></p></div></a>
                        </div>
                        <div class="guid-product-item">
                            <a><p class="item-thumbnail"><img src="https://dimg01.c-ctrip.com/images/100m0w000000kuq4eB05F_R_220_160.jpg" alt="谁去澳门带手信还买猪肉脯啊！"></p><div class="item-overlay"><p class="item-name">谁去澳门带手信还买猪肉脯啊！</p><p class="item-info" style="display:none"></p><p class="iefix-bg"></p></div></a>
                        </div>
                        <div class="guid-product-item">
                            <a><p class="item-thumbnail"><img src="https://dimg04.c-ctrip.com/images/10030v000000k4kfb4E3C_R_220_160.jpg" alt="万塔之国缅甸"></p><div class="item-overlay"><p class="item-name">万塔之国缅甸</p><p class="item-info" style="display:none"></p><p class="iefix-bg"></p></div></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--旅行服务-->
    <div class="mod vas">
        <div class="mod-hd">
            <span class="mod-current">旅行服务<i class="i-show"></i></span>
        </div>
        <div class="mod-bd-travel">
            <div class="" style="width:1210px;margin-left:-10px;">
                <!-- 出境WIFI -->
                <div class="supply-box">
                    <div class="supply-hd" style="cursor:pointer">
                        <div class="supply-img">
                            <span class="img-wifi"><i></i></span>
                        </div>
                        <div class="supply-cont">
                            <p class="supply-title">出境WiFi</p>
                            <div class="supply-intro">
                                <p>全球出境WiFi租赁</p>
                                <p>流量不限、多人共享、携带便捷、低价信号强</p>
                            </div>
                        </div>
                    </div>
                    <div class="supply-bd">
                        <ul class="supply-list col-4">
                            <li><a class="supply-item"><i class="icon icon-place"><img src="//pic.c-ctrip.com/index/v3.0/supply_icon.png"></i>日本</a></li>
                            <li><a class="supply-item"><i class="icon icon-place"><img src="//pic.c-ctrip.com/index/v3.0/supply_icon.png"></i>韩国</a></li>
                            <li><a class="supply-item"><i class="icon icon-place"><img src="//pic.c-ctrip.com/index/v3.0/supply_icon.png"></i>欧洲通用</a></li>
                            <li><a class="supply-item"><img src="//pic.c-ctrip.com/index/v3.0/supply_icon.png"></i>更多</a></li>
                        </ul>
                    </div>
                </div>

                <!-- 签证 -->
                <div class="supply-box">
                    <div class="supply-hd" style="cursor:pointer" onclick="window.open('http://vacations.ctrip.com/visa#ctm_ref=ssc_hp_ts_visa_txt_1','_blank');">
                        <div class="supply-img">
                            <span class="img-visa"><i></i></span>
                        </div>
                        <div class="supply-cont">
                            <p class="supply-title">签证</p>
                            <div class="supply-intro">
                                <p>在材料制作完成前均可申请订单全额退款</p>
                                <p>服务优质，方便快捷，诚信可靠，出签率高</p>
                            </div>
                        </div>
                    </div>
                    <div class="supply-bd">
                        <ul class="supply-list col-4">

                            <li><a class="supply-item" href="http://vacations.ctrip.com/tours/d-japan-100041/visa/v1#ctm_ref=ssc_hp_ts_visa_txt_2" target="_blank"><i class="icon"><img src="//pic.c-ctrip.com/vacation_v2/visa/24-japan.png"></i>日本</a></li>

                            <li><a class="supply-item" href="http://vacations.ctrip.com/tours/d-southkorea-100042/visa/v1#ctm_ref=ssc_hp_ts_visa_txt_2" target="_blank"><i class="icon"><img src="//pic.c-ctrip.com/vacation_v2/visa/24-korea.png"></i>韩国</a></li>

                            <li><a class="supply-item" href="http://vacations.ctrip.com/tours/d-unitedstates-100047/visa/v1#ctm_ref=ssc_hp_ts_visa_txt_2" target="_blank"><i class="icon"><img src="//pic.c-ctrip.com/vacation_v2/visa/24-USA.png"></i>美国</a></li>

                            <li><a class="supply-item" href="http://vacations.ctrip.com/tours/d-australia-100048/visa/v1#ctm_ref=ssc_hp_ts_visa_txt_2" target="_blank"><i class="icon"><img src="//pic.c-ctrip.com/vacation_v2/visa/24-Australia.png"></i>澳大利亚</a></li>

                        </ul>
                    </div>
                </div>

                <!-- 保险 -->
                <div class="supply-box">
                    <div class="supply-hd" style="cursor:pointer" onclick="window.open('http://vacations.ctrip.com/insurance#ctm_ref=ssc_hp_ts_insurer_txt_1','_blank');">
                        <div class="supply-img">
                            <span class="img-insurance"><i></i></span>
                        </div>
                        <div class="supply-cont">
                            <p class="supply-title">保险</p>
                            <div class="supply-intro">
                                <p>携程保险，安心随行</p>
                                <p>旅游定制、极速出保、便捷理赔</p>
                            </div>
                        </div>
                    </div>
                    <div class="supply-bd">
                        <ul class="supply-list col-3">

                            <li><a class="supply-item" href="http://vacations.ctrip.com/insurance/643#ctm_ref=ssc_hp_ts_insurer_txt_2" target="_blank"><i class="icon"><img src="https://pages.ctrip.com/tour/pdf1610/1.png"></i>【申根之王】</a></li>

                            <li><a class="supply-item" href="http://vacations.ctrip.com/insurance/1547#ctm_ref=ssc_hp_ts_insurer_txt_2" target="_blank"><i class="icon"><img src="https://pages.ctrip.com/tour/pdf1610/1.png"></i>【亚洲优选】</a></li>

                            <li><a class="supply-item" href="http://vacations.ctrip.com/insurance/555#ctm_ref=ssc_hp_ts_insurer_txt_2" target="_blank"><i class="icon"><img src="https://pages.ctrip.com/tour/pdf1610/1.png"></i>【境内畅游】</a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--企业商旅-->
    <div class="mod">
        <div class="mod-hd">
            <span class="mod-current">企业商旅<i class="i-show"></i></span>
        </div>
        <div class="mod-bd-travel mod-bd-crop">
            <div class="" style="width:1210px;margin-left:-10px;">
                <div class="supply-box">
                    <div class="supply-hd">
                        <a href="http://ct.ctrip.com/crptravel/default/landing#ctm_ref=sme001#ssc_hp_sl_yd_txt_1" target="_blank">
                            <div class="supply-img">
                                <span class="img-shopping"><i></i></span>
                            </div>
                            <div class="supply-cont">
                                <p class="supply-title">差旅预订管理</p>
                                <div class="supply-intro">
                                    <p>海量差旅产品，全流程服务，智能管控，助力企业差旅降本提效！</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="supply-box">
                    <div class="supply-hd">
                        <a href="http://ct.ctrip.com/platform/introduce/settlement#ctm_ref=sme002#ssc_hp_sl_js_txt_1" target="_blank">
                            <div class="supply-img">
                                <span class="img-dianzi"><i></i></span>
                            </div>
                            <div class="supply-cont">
                                <p class="supply-title">公对公结算</p>
                                <div class="supply-intro">
                                    <p>公司账户支付，自助对账、统一开票、配送，员工出差免垫资，免报销！</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="supply-box">
                    <div class="supply-hd">
                        <a href="http://ct.ctrip.com/crptravel/introduce#ctm_ref=sme003#ctm=ssc_hp_sl_cl_txt_1" target="_blank">
                            <div class="supply-img">
                                <span class="img-charts"><i></i></span>
                            </div>
                            <div class="supply-cont">
                                <p class="supply-title">在线差旅报告</p>
                                <div class="supply-intro">
                                    <p>多维度差旅报告，量化管控差旅费用，商旅大数据指导企业优化差旅政策！</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--主数据区域-->
    <div class="mod indices">
        <div class="mod-hd">
            <div class="part partInfo">
                <div class="part-hd">合作优惠 <a href="http://cards.ctrip.com/" class="part-hd-right">更多</a></div>
                <div class="part-bd">
                    <ul>
                        <li><a rel="nofollow" title="光大信用卡约惠旅游季">光大信用卡约惠旅游季</a></li>
                        <li><a rel="nofollow" title="上海建行指定龙卡专享">上海建行指定龙卡专享</a></li>
                    </ul>
                </div>
            </div>
            <div class="part partner">
                <div class="part-hd">合作伙伴</div>
                <div class="part-bd">
                    <ul>
                        <li><a rel="nofollow" title="HHtravel" class="partner_hh"></a></li>
                        <li><a rel="nofollow" title="铁友网" class="partner_lp"></a></li>
                        <li><a rel="nofollow" title="途风网" class="partner_sg"></a></li>
                        <li><a rel="nofollow" title="途家网" class="partner_tj"></a></li>
                        <li><a rel="nofollow" title="永安旅游" class="partner_ya"></a></li>
                        <li><a rel="nofollow" title="易游网" class="partner_yy"></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="mod-bd">
            <dl class="indices-nav">
                <dt>携程导航</dt>
                <dd><a>酒店预订</a></dd>
                <dd><a>海外酒店</a></dd>
                <dd><a>特价机票</a></dd>
                <dd><a>国际机票</a></dd>
                <dd><a>旅游线路</a></dd>
                <dd><a>景点门票</a></dd>
                <dd><a>旅游攻略</a></dd>
                <dd><a>火车票</a></dd>
                <dd><a>酒店团购</a></dd>
                <dd><a>邮轮</a></dd>
                <dd><a>周末游</a></dd>
                <dd><a>签证</a></dd>
                <dd><a>租车</a></dd>
                <dd><a>目的地榜单</a></dd>
                <dd><a>欧铁通票</a></dd>
                <dd><a>自由行</a></dd>
                <dd><a>会议旅游</a></dd>
                <dd><a>客栈民宿</a></dd>
                <dd><a>礼品卡</a></dd>
                <dd><a>团队游</a></dd>
                <dd><a>企业商旅</a></dd>
                <dd><a>查看全部</a></dd>
            </dl>
            <div class="indices-line"></div>
            <dl class="indices-hot">
                <dt>酒店预订</dt>
                <dd><a>城市酒店</a></dd>
                <dd><a>国家酒店</a></dd>
                <dd><a>北京酒店</a></dd>
                <dd><a>上海酒店</a></dd>
                <dd><a>广州酒店</a></dd>
                <dd><a>成都酒店</a></dd>
                <dd><a>杭州酒店</a></dd>
                <dd><a>西安酒店</a></dd>
                <dd><a>新加坡酒店</a></dd>
                <dd><a>迪拜酒店</a></dd>
                <dd><a>泰国酒店</a></dd>
                <dd><a>韩国酒店</a></dd>
                <dd><a>马尔代夫酒店</a></dd>
                <dd><a>法国酒店</a></dd>
                <dd><a>7天连锁酒店</a></dd>
                <dd><a>如家快捷酒店</a></dd>
                <dd><a>汉庭酒店</a></dd>
                <dd><a>锦江之星酒店</a></dd>
                <dd><a>希尔顿酒店</a></dd>
                <dd><a>速8酒店</a></dd>
                <dd><a>酒店品牌</a></dd>
                <dd><a>酒店地标</a></dd>
                <dd><a>热门酒店</a></dd>
                <dd><a>广东酒店</a></dd>
                <dd><a>上海酒店团购</a></dd>
                <dd><a>北京酒店团购</a></dd>
                <dd><a>杭州酒店团购</a></dd>
                <dd><a>广州酒店团购</a></dd>
                <dd><a>深圳酒店团购</a></dd>
                <dd><a>南京酒店团购</a></dd>
                <dd><a>成都酒店团购</a></dd>
                <dd><a>厦门酒店团购</a></dd>
                <dd><a>大连酒店团购</a></dd>
                <dd><a>青岛酒店团购</a></dd>
                <dd><a>三亚酒店团购</a></dd>
                <dd><a>沈阳酒店团购</a></dd>
            </dl>
            <div class="indices-line"></div>
            <dl class="indices-hot">
                <dt>特价机票</dt>
                <dd><a>上海机票</a></dd>
                <dd><a>北京机票</a></dd>
                <dd><a>广州机票</a></dd>
                <dd><a>深圳机票</a></dd>
                <dd><a>重庆机票</a></dd>
                <dd><a>成都机票</a></dd>
                <dd><a>昆明机票</a></dd>
                <dd><a>厦门机票</a></dd>
                <dd><a>三亚机票</a></dd>
                <dd><a>杭州机票</a></dd>
                <dd><a>春秋航空</a></dd>
                <dd><a>东方航空</a></dd>
                <dd><a>南方航空</a></dd>
                <dd><a>中国国航</a></dd>
                <dd><a>海南航空</a></dd>
                <dd><a>厦门航空</a></dd>
                <dd><a>山东航空</a></dd>
                <dd><a>吉祥航空</a></dd>
                <dd><a>首都航空</a></dd>
                <dd><a>低价订阅</a></dd>
                <dd><a>打折机票</a></dd>
                <dd><a>机票地图</a></dd>
                <dd><a>机票排行榜</a></dd>
                <dd><a>机场大全</a></dd>
            </dl>
            <div class="indices-line"></div>
            <dl class="indices-hot">
                <dt>旅游度假</dt>
                <dd><a>国内旅游攻略</a></dd>
                <dd><a>出境旅游攻略</a></dd>
                <dd><a>马尔代夫旅游</a></dd>
                <dd><a>普吉岛旅游</a></dd>
                <dd><a>巴厘岛旅游</a></dd>
                <dd><a>济州岛旅游</a></dd>
                <dd><a>日本旅游</a></dd>
                <dd><a>新加坡旅游</a></dd>
                <dd><a>澳大利亚旅游</a></dd>
                <dd><a>迪拜旅游</a></dd>
                <dd><a>柬埔寨旅游</a></dd>
                <dd><a>英国旅游</a></dd>
                <dd><a>法国旅游</a></dd>
                <dd><a>清迈旅游</a></dd>
                <dd><a>黄山旅游</a></dd>
                <dd><a>北京旅游</a></dd>
                <dd><a>上海旅游</a></dd>
                <dd><a>杭州旅游</a></dd>
                <dd><a>苏州旅游</a></dd>
                <dd><a>成都旅游</a></dd>
                <dd><a>桂林旅游</a></dd>
                <dd><a>九寨沟旅游</a></dd>
                <dd><a>三亚旅游</a></dd>
                <dd><a>丽江旅游</a></dd>
                <dd><a>青岛旅游</a></dd>
                <dd><a>香港旅游</a></dd>
                <dd><a>澳门旅游</a></dd>
                <dd><a>台湾旅游</a></dd>
                <dd><a>票价查询</a></dd>
                <dd><a>代售点</a></dd>
                <dd><a>预售期</a></dd>
                <dd><a>余票查询</a></dd>
                <dd><a>火车站</a></dd>
                <dd><a>时刻表</a></dd>
            </dl>
            <div class="indices-line"></div>
            <dl class="indices-hot">
                <dt>攻略指南</dt>
                <dd><a>攻略社区</a></dd>
                <dd><a>旅游攻略</a></dd>
                <dd><a>旅行游记</a></dd>
                <dd><a>旅游问答</a></dd>
                <dd><a>周末旅游</a></dd>
                <dd><a>攻略下载</a></dd>
                <dd><a>天气预报</a></dd>
                <dd><a>旅游资讯</a></dd>
                <dd><a>旅游榜单</a></dd>
                <dd><a>旅游专题</a></dd>
                <dd><a>地图大全</a></dd>
                <dd><a>Travel Guide</a></dd>
                <dd><a>企业商旅</a></dd>
                <dd><a>中小企业差旅</a></dd>
                <dd><a>商旅签证</a></dd>
                <dd><a>RFP通道</a></dd>
            </dl>
            <div class="indices-line"></div>
            <dl class="indices-hot">
                <dt>快速入口</dt>
                <dd><a>团购导航</a></dd>
                <dd><a>门票导航</a></dd>
                <dd><a>客栈管理系统</a></dd>
                <dd><a>精选目的地</a></dd>
                <dd><a>中小企业差旅</a></dd>
                <dd><a>存款证明</a></dd>
                <dd><a>携程主题曲</a></dd>
                <dd><a>航班时刻表</a></dd>
                <dd><a>火车时刻表</a></dd>
                <dd><a>汽车时刻表</a></dd>
                <dd class="seo-lanList">
                </dd>
            </dl>
        </div>
    </div>
</div>
<!--底部-->
<div class="bottom">
<div class="mod footer">
    <dl class="footer-item advantage">
        <dt>为什么选择携程</dt>
        <dd>
            <div class="advan-item advan-server">
                <div class="advan-img">
                    <i class="icon icon-server"></i>
                </div>
                <div class="advan-text">
                    <p class="advan-title">放心的服务</p>
                    <p>领先的服务标准 独创的保障体系</p>
                </div>
            </div>
            <div class="advan-item advan-price">
                <div class="advan-img">
                    <i class="icon icon-price"></i>
                </div>
                <div class="advan-text">
                    <p class="advan-title">放心的价格</p>
                    <p>具竞争力的价格 无任何隐形费用</p>
                </div>
            </div>
            <a class="block-link" target="_blank" href="http://pages.ctrip.com/commerce/promote/201409/other/xcfw/index1.html"></a>
        </dd>
    </dl>
    <dl class="footer-item travel_info">
        <dt>旅游资讯</dt>
        <dd class="ft-link-item">
            <a>宾馆索引</a>
        </dd>
        <dd class="ft-link-item">
            <a>攻略索引</a>
        </dd>
        <dd class="ft-link-item">
            <a>机票索引</a>
        </dd>
        <dd class="ft-link-item">
            <a>网站导航</a>
        </dd>
        <dd class="ft-link-item">
            <a>旅游索引</a>
        </dd>
        <dd class="ft-link-item">
            <a>火车票索引</a>
        </dd>
        <dd class="ft-link-item">
            <a>邮轮索引</a>
        </dd>
        <dd class="ft-link-item">
            <a>企业差旅索引</a>
        </dd>
        <dd class="ft-link-item">
            <a>用车索引</a>
        </dd>
    </dl>
    <dl class="footer-item join_in">
        <dt>加盟合作</dt>
        <dd class="ft-link-item">
            <a>分销联盟</a>
        </dd>
        <dd class="ft-link-item">
            <a>友情链接</a>
        </dd>
        <dd class="ft-link-item">
            <a>广告业务</a>
        </dd>
        <dd class="ft-link-item">
            <a>企业礼品卡采购</a>
        </dd>
        <dd class="ft-link-item">
            <a>保险代理</a>
        </dd>
        <dd class="ft-link-item">
            <a>代理合作</a>
        </dd>
        <dd class="ft-link-item">
            <a>酒店加盟</a>
        </dd>
        <dd style="width:100px;margin-right:-15px;" class="ft-link-item">
            <a>目的地及景区合作</a>
        </dd>
        <dd class="ft-link-item">
            <a>智慧旅游</a>
        </dd>
        <dd class="ft-link-item">
            <a>更多加盟合作</a>
        </dd>
    </dl>
    <dl class="footer-item about_ctrip">
        <dt>关于携程</dt>
        <dd class="ft-link-item">
            <a href="http://pages.ctrip.com/public/ctripab/abctrip.htm" rel="nofollow">关于携程</a>
        </dd>
        <dd class="ft-link-item ft-link-item_drop">
            <div class="dropdown" id="Chot">
                <a href="javascript:void(0);" class="dropdown-toggle dropdown-toggle_border" onmouseover="document.getElementById('Chot').className= 'dropdown open';" onmouseout="document.getElementById('Chot').className= 'dropdown';">携程热点<span class="caret"></span></a>
                <div class="dropdown-cont">
                    <div class="dropdown-news" onmouseover="document.getElementById('Chot').className= 'dropdown open';" onmouseout="document.getElementById('Chot').className= 'dropdown';">
                        <p class="drop-news-item">
                            <a rel="nofollow" title="携程公布2018年全年财报 净利达55亿元">携程公布2018年全年财报 净利达55亿元</a>
                        </p>
                        <p class="drop-news-item">
                            <a rel="nofollow" title="上海市委书记李强调研携程">上海市委书记李强调研携程</a>
                        </p>
                        <p class="drop-news-item">
                            <a rel="nofollow" title="携程全球首个目的地服务中心落地普吉岛">携程全球首个目的地服务中心落地普吉岛</a>
                        </p>
                        <p class="drop-news-item">
                            <a>更多</a>
                        </p>
                    </div>
                </div>
            </div>
        </dd>
        <dd class="ft-link-item">
            <a>联系我们</a>
        </dd>
        <dd class="ft-link-item">
            <a>诚聘英才</a>
        </dd>
        <dd class="ft-link-item">
            <a>旅游度假资质</a>
        </dd>
        <dd class="ft-link-item">
            <a>企业公民</a>
        </dd>
        <dd class="ft-link-item">
            <a>用户协议</a>
        </dd>
        <dd class="ft-link-item">
            <a>隐私政策</a>
        </dd>
        <dd class="ft-link-item">
            <a>营业执照</a>
        </dd>
        <dd class="ft-link-item">
            <a>安全中心</a>
        </dd>
        <dd class="ft-link-item">
            <a>携程信用卡</a>
        </dd>
        <dd class="ft-link-item">
            <a>知识产权</a>
        </dd>
    </dl>
    <dl class="footer-item wechat_code">
        <dt>微信公众号</dt>
        <dd class="ft-link-item">
            <span class="code-wechat"><img src="images/xiechengIndexPic/er_ctrip_wechat.jpg" alt=""></span>
            <p class="wechat_text">扫一扫,领旅行福利</p>
        </dd>
    </dl>
</div>
    <div class="mod copyright">
        <p class="copyright">
            <a rel="nofollow" id="copyright">Copyright©</a>1999-2019,&nbsp;<a>ctrip.com</a>. All rights reserved.&nbsp;|&nbsp;<a rel="nofollow">ICP证：沪B2-20050130</a>
        </p>
        <p class="gns">
            <a><i class="icon-gns"></i>沪公网备31010502002731号</a>
        </p>
        <p class="supervision-call">违法和不良信息举报电话021-22500846丨<a>上海市旅游网站落实诚信建设主体责任承诺书</a>
        </p>
        <div class="honour_wrap">
            <a rel="nofollow" class="honour1">信用评级</a><a title="工商亮照标识" class="honour2" target="_blank" rel="nofollow">上海工商</a><a title="诚信认证示范企业" class="honour3" target="_blank" rel="nofollow">诚信网站</a><a  class="honour4" target="_blank" rel="nofollow" title="征信网">网络社会征信网</a><a class="honour5" target="_blank" rel="nofollow" title="上海市互联网违法与违规信息举报中心">信息举报中心</a><a class="honour6" target="_blank" rel="nofollow" title="可信网站">可信网站</a><a title="违法和不良信息举报中心" class="honour8" target="_blank" rel="nofollow">违法和不良信息举报中心</a>
        </div>
        <div class="honour_wrap">
            <a class="honour10" title="信用中国" target="_blank" rel="nofollow">信用中国</a><a class="honour12" title="网上有害信息举报专区" target="_blank" rel="nofollow">网上有害信息举报专区</a><a href="http://services.ctrip.com/complaints/rights/AppealCreate.aspx" class="honour11" title="消费维权联络点" target="_blank" rel="nofollow">消费维权联络点</a><a  class="honour9" title="网购大家评" target="_blank" rel="nofollow">网购大家评</a>
        </div>
    </div>
</div>
</body>
</html>