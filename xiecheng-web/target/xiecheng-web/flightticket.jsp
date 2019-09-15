
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>机票详情页</title>
    <link rel="stylesheet" href="static/css/base.css">
    
    <link rel="stylesheet" href="static/css/flightticket.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/flightticket.js"></script>
    <script src="layui/layui.js"></script>
</head>
<body>
<iframe src="nav.html" class="navtop" frameborder="0" scrolling="no"></iframe>
<div id="body">
    <div id="main">
        <div id="head">
            <div class="search_form">
                <select>
                    <option>单程</option>
                    <option>往返</option>
                    <option>多程</option>
                </select>
                <div class="ico ico1"><i></i><input placeholder="666"></div>
                <div class="ico ico2"><a></a></div>
                <div class="ico ico3"><i></i><input placeholder="666"></div>
                <div class="ico ico4"><i></i><input class="test-item" id="start_date" placeholder="2019-9-2"></div>
                <div class="ico ico5"><i></i><input class="test-item" placeholder="666" ></div>
                <a class="btn_search">重新搜索</a>
                <a class="btn_search">没有高级搜索</a>
            </div>
            <div class="search_text">没有历史查询</div>
        </div>
        <div id="base-bd">
            <div id="left">
                <div id="bd-left-hd">
                    筛选<span>(共X条航班信息)</span><button id="delete">清除全部</button>
                </div>
                <div id="bd-left-bar">
                    <div class="bar">直飞/经停
                        <div class="bar-filter-select">
                            <li class="bar-filter-option" >
                                <label><input type="checkbox" name="ddateType" value="fly"><span>直飞</span>
                                    <span class="base_price02"><dfn>¥</dfn>298.5</span></label>
                            </li>
                            <li class="bar-filter-option" >
                                <label><input type="checkbox" name="ddateType" value="stay"><span>经停</span>
                                    <span class="base_price02"><dfn>¥</dfn>398</span></label>
                            </li>
                        </div>
                    </div>
                    <div></div>
                    <!--                        <div class="bar"><ul class="bar-filter-echo"><li class="echo-item">直飞<a class="close">×</a></li></ul></div>-->
                    <div class="bar">起飞时段
                        <div class="bar-filter-select">
                            <li class="bar-filter-option" >
                                <label><input type="checkbox" name="ddateType" value="MO"><span>上午(6-12点)</span>
                                    <span class="base_price02"><dfn>¥</dfn>298.5</span></label>
                            </li>
                            <li class="bar-filter-option" >
                                <label><input type="checkbox" name="ddateType" value="AF"><span>下午(12-18点)</span>
                                    <span class="base_price02"><dfn>¥</dfn>398</span></label>
                            </li>
                            <li class="bar-filter-option" >
                                <label><input type="checkbox" name="ddateType" value="EV"><span>晚上(18-24点)</span>
                                    <span class="base_price02"><dfn>¥</dfn>349</span></label>
                            </li>
                        </div>
                    </div>
                    <div class="bar">舱位</div>
                </div>
            </div>

            <div id="right">
                <div class="bd-right-top">
                    <div class="st"><div class="jiantou jiantou1"></div></div>
                    <div class="other"><span class="date">9-8&nbsp;周日</span><br><dfn>¥</dfn><span class="price">600</span></div>
                    <div class="current"><span class="date">9-9&nbsp;周一</span><br><dfn>¥</dfn><span class="price">600</span></div>
                    <div class="other">b</div>
                    <div class="other">b</div>
                    <div class="other">b</div>
                    <div class="st"><div class="jiantou jiantou2"></div></div>
                </div>
                <div class="bd-right-msgtop">
                    <ul class="sort-guideline">
                        <li class="default-sort">航班信息</li>
                        <li class="sort"><a>起飞时间<i class="ico "></i></a></li>
                        <li class="sort"><a>到达时间<i class="ico ico-reverse"></i></a></li>
                        <li class="sort"><a>准点率<i class="ico "></i></a></li>
                        <li class="sort"><a></a></li>
                        <li class="default-sort2"><a>价格<i class="ico "></i></a></li>
                    </ul>
                    <a class="government-btn" href="javascript:;" data-ubt="c_armydisabled_click">伤残军警通道</a>
                </div>
                <div class="bd-right-msg">
                    <div class="msg-1">
                        航班
                    </div>
                    <div class="msg-2">
                        <span>出发时间</span>
                    </div>
                    <div class="msg-3">

                    </div>
                    <div class="msg-4">
                        <span>到达时间</span>
                    </div>
                    <div class="msg-5">
                        <span>准点率</span>
                    </div>
                    <div class="msg-6">
                        <dfn>¥</dfn><span>价格</span>起
                    </div>
                    <div class="msg-7">
                        <button>订票</button>
                    </div>
                </div>
                <div class="bd-right-msg"></div>
            </div>
        </div>
    </div>
</div>
<div class="float_top">
    <div class="float">
        <div class="search_boxbox"><div class="search_box">
            <span class="box_text">正在查询:</span><a class="box_text">修改</a>
        </div></div>
        <div class="bd-right-top">
            <div class="st"><div class="jiantou jiantou1"></div></div>
            <div class="other"><span class="date">9-8&nbsp;周日</span><br><dfn>¥</dfn><span class="price">600</span></div>
            <div class="current"><span class="date">9-9&nbsp;周一</span><br><dfn>¥</dfn><span class="price">600</span></div>
            <div class="other">b</div>
            <div class="other">b</div>
            <div class="other">b</div>
            <div class="st"><div class="jiantou jiantou2"></div></div>
        </div>
        <div class="bd-right-msgtop">
            <ul class="sort-guideline">
                <li class="default-sort">航班信息</li>
                <li class="sort"><a>起飞时间<i class="ico "></i></a></li>
                <li class="sort"><a>到达时间<i class="ico ico-reverse"></i></a></li>
                <li class="sort"><a>准点率<i class="ico "></i></a></li>
                <li class="sort"><a></a></li>
                <li class="default-sort2"><a>价格<i class="ico "></i></a></li>
            </ul>
            <a class="government-btn" href="javascript:;" data-ubt="c_armydisabled_click">伤残军警通道</a>
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
