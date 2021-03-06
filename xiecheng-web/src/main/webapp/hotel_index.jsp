<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<%@ taglib uri="http://page.lanqiao.org/tag"  prefix="pager" %>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>【携程酒店】酒店预订,酒店价格查询,宾馆住宿推荐,网上订酒店 </title>
    <link href="css/hotel_index.css" rel="stylesheet">
    <link href="css/base.css" rel="stylesheet">
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script src="layui/layui.js"></script>
    <script src="js/hotel_index.js"></script>


    <script>
        layui.use('carousel', function(){
            var carousel = layui.carousel;
            //建造实例
            carousel.render({
                elem: '#search'
                ,width: '100%' //设置容器宽度
                // ,height:"340px"
                ,arrow: 'none' //始终显示箭头
                //,anim: 'updown' //切换动画方式
            });
            var carousel1 = layui.carousel;
            //建造实例
            carousel1.render({
                elem: '#search1'
                ,width: '100%' //设置容器宽度
                ,arrow: 'none' //始终显示箭头
                //,anim: 'updown' //切换动画方式
            });
        });
    </script>
</head>
<body>
<iframe  class="navtop" src="nav.html" frameborder="0" scrolling="no"></iframe>
<div class="cui_sub_nav">
    <ul id="ul_nav_hotel" style="margin-top: 15px">
        <li id="ul_c_ph_hotel_h">
            <a href="#">国内酒店</a>
        </li>
        <li><em></em></li>
        <li id="ul_c_ph_hoteli_h">
            <a href="#">海外酒店</a>
        </li>
        <li><em></em></li>
        <li id="ul_c_ph_inn_h">
            <a href="#">民宿客栈</a>
        </li>
        <li><em></em></li>
        <li id="ul_c_ph_apartment_h">
            <a href="#">海外民宿</a>
        </li>
        <li><em></em></li>
        <li id="ul_c_ph_tuan_h">
            <a href="#">团购</a>
        </li>
        <li><em></em></li>
        <li id="ul_c_ph_taocanj_h">
            <a href="#">酒店+景点</a>
        </li>
        <li><em></em></li>
        <li id="ul_c_ph_meetingroom_h">
            <a href="#">团队房•长住房</a>
        </li>
        <li><em></em></li>
        <li id="ul_c_ph_meeting_h">
            <a href="#">会议<span  style="display:none"><em>会员日</em></span></a>
        </li>
    </ul>
    <div class="cui_ico_order">
        <a   href="#"><img src="images/hotelPiC/jiudian.PNG">&nbsp;酒店订单 &gt;</a>
    </div>
</div>
<div class="base_bd">
    <!--        左侧主页-->
    <div class="index_side">
        <div class="search_box_tab">
            <div class="search_box_tab_head">
                <img src="images/hotelPiC/sousuoguoneijiudian.png">&nbsp;&nbsp;搜索国内酒店
            </div>
            <div class="search_form" >

                <div class="pkg_choose">
                    <label><input type="radio" name="hotelChoose" checked="checked" ><a href="#">酒店</a></label>
                    <label><input type="radio" name="hotelChoose"><a href="#">酒店+景点</a></label>
                    <label><input type="radio" name="hotelChoose"><a href="#">客栈民宿</a></label>
                </div>
                <form action="/getAll" method="post">
                    <table >
                        <tr>
                            <td>目的地</td>
                            <td colspan="3">
                                <input type="text" name="addressName"  value="上海">
                                <div  class="addressNmae1" >
                                <span style="color: #666666;float: left">支持中文/拼音/简拼输入</span>&nbsp;&nbsp;
                                <a href="###" class="a_close"style="font-size: 30px">×</a>&nbsp;&nbsp;&nbsp;&nbsp;<br>
                                <div class="cityname" style="float: left;margin-top: 8px">
                                    <a style="color: #0066CC;font-weight: bold" href="#">热门</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">ABCD</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">EFGH</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">JKLM</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">NOPQRS</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">TUVWX</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">YZ</a>&nbsp;&nbsp;&nbsp;&nbsp;<br/>
                                </div>
                                <hr/>
                                <div class="cityName" style="float: left">
                                    <a href="##">北京</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">上海</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">天津</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">重庆</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">大连</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">青岛</a>&nbsp;&nbsp;&nbsp;&nbsp;<br/>
                                    <a href="##">西安</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">南京</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">苏州</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">杭州</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">厦门</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">成都</a>&nbsp;&nbsp;&nbsp;&nbsp;<br/>
                                    <a href="##">深圳</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">广州</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">三亚</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">济南</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">台北</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">香港</a>&nbsp;&nbsp;&nbsp;&nbsp;<br/>
                                    <a href="##">宁波</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">沈阳</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">武汉</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">郑州</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">贵阳</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="##">宁夏</a>&nbsp;&nbsp;&nbsp;&nbsp;<br/>
                                </div>
                            </div>
                            </td>
                        </tr>
                        <tr>
                            <td>入住时间</td>
                            <td colspan="3"><input type="date"></td>
                        </tr>
                        <tr>
                            <td>退房时间</td>
                            <td colspan="3"><input type="date"></td>
                        </tr>
                        <tr>
                            <td>房间数</td>
                            <td>
                                <select style="height: 25px ;width: 60px" >
                                    <option>1间</option>
                                    <option>2间</option>
                                    <option>3间</option>
                                    <option>4间</option>
                                    <option>5间</option>
                                    <option>6间</option>
                                    <option>7间</option>
                            </select>
                            </td>
                            <td>住客数</td>
                            <td>
                                <input name="peopleNum" style="height: 25px ;width: 100px" readonly type="text" value="2成人1儿童"><b class="n_gst_tri"></b>&nbsp;&nbsp;
                                <div class="n_gst_p">
                                    <ul class="n_gst_list" style="margin-top: 10px">
                                    <li style="padding-left: 20px;padding-right: 20px" >
                                        成人&nbsp;&nbsp;<span style="font-size: 12px;color: #666666">18周岁及以上</span><span style="margin-left: 30px"><input type="button" name="sub" value="-" style="width: 20px"><input type="text" name="num1" readonly value="1" style="width: 30px;text-align: center"><input type="button" name="add" value="+" style="width: 20px"></span>
                                    </li><br/>
                                    <li style="padding: 20px 20px 20px 20px" >
                                        儿童&nbsp;&nbsp;<span style="font-size: 12px;color: #666666">0-17周岁</span><span style="margin-left: 55px"><input type="button" name="sub" value="-" style="width: 20px"><input type="text" name="num2" readonly  value="1" style="width: 30px;text-align: center"><input type="button" name="add" value="+" style="width: 20px"></span>
                                    </li>
                                </ul>
                                    <hr/>
                                    <div style="float: left;margin-bottom: 10px"><input name="determine" type="button" value="确定" style="width: 80px;margin-left: 30px;background-color: #0066cc;border-radius: 10px 10px 10px 10px"><input name="cancel" type="button" value="取消" style="width: 80px;margin-left: 30px;background-color: #0066cc;border-radius: 10px 10px 10px 10px"></div>
                                </div>
                                <div style="float: right;right: 5px">
                                <div class="help"><img src="images/hotelPiC/help.jpg" ></div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>酒店级别</td>
                            <td colspan="3" >
                                <select style="width: 250px" >
                                    <option >不限</option>
                                    <option >五星级/豪华</option>
                                    <option >四星级/高档</option>
                                    <option >三星级/舒适</option>
                                    <option >二星级及以下/经济</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>关键词</td>
                            <td colspan="3"><input type="text"   placeholder="（选填）酒店名/地标/商圈"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td colspan="4"><input type="submit" value="搜索" style="height: 33px ;width:255px;background-color: #ffb000;color: #ffffff;font-size: 20px;border-radius: 5px 5px"></td>
                        </tr>
                    </table>
                </form>
                <div class="helpmessage"><span style="color: black;font-size: 12px;font-weight: normal">18周岁及以上为成年，<br/>0-17周岁请参考各酒店的入住政策</span></div>

            </div>


            <div class="storeEnter">
                <div class="storeEnter-hd">
                    <div class="logo" ><img src="images/hotelPiC/hyatt.png"></div>
                    <div class="name">凯悦官方旗舰店
                        <span class="tag">官网</span>
                    </div>
                    <span class="btn"><a href="#">进入店铺</a></span>
                </div>
                <img src="images/hotelPiC/kaiyue.png" >
            </div>

            <div class="storeEnter">
                <div class="storeEnter-hd">
                    <div class="logo" ><img src="images/hotelPiC/yagao-logo.png"></div>
                    <div class="name">雅高酒店官方旗舰店
                        <span class="tag">官网</span>
                    </div>
                    <span class="btn"><a href="#">进入店铺</a></span>
                </div>
                <img src="images/hotelPiC/yagao.png" >
            </div>

            <div class="storeEnter">
                <div class="storeEnter-hd">
                    <div class="logo" ><img src="images/hotelPiC/jinsha_logo.png"></div>
                    <div class="name">金沙集团官方旗舰店
                        <span class="tag">官网</span>
                    </div>
                    <span class="btn"><a href="#">进入店铺</a></span>
                </div>
                <a href="#"><img src="images/hotelPiC/jinsha.png" ></a>
            </div>
            <a href="#"><img src="images/hotelPiC/xuanchuan.jpg"></a>
            <div class="find_hotel_side">
                <h4 style="color: black;margin: 0px 0px 5px">发现 · 酒店期刊</h4>
                <em  style="width: 330px;height: 1px;background-color: #666669"></em>
                <div class="fhs_bd">
                    <img src="images/hotelPiC/faxianjiudian.jpg" style="float: left;border-radius: 5px 5px 5px 5px;margin-left: 10px">
                    <div class="fhs_info">
                        <h5 style="color: black; font-size: 18px">瀚海明珠，鱼米之乡</h5>
                        <p style="color: black ;margin-top: 10px" >吉林白城酒店推荐</p>
                        <p style="color: #b2b2b2; margin-top: 10px">更新：2019.09.10</p>
                    </div>
                </div>
                <div class="btn_action">
                    <a href="#">开启发现之旅</a>
                </div>
            </div>
            <a href="#"><img src="images/hotelPiC/youluo.png" style="width: 380px"></a>
        </div>
    </div>
    <!--        主页右侧-->
    <div class="index_main"  >
        <!--搜索背景轮播-->
        <div class="layui-carousel"  id="search">
            <div carousel-item>
                <div><img src="images/hotelPiC/xiecheng1.jpg" ></div>
                <div><img src="images/hotelPiC/xiecheng2.jpg"></div>
                <div><img src="images/hotelPiC/xiecheng3.jpg"></div>
            </div>
        </div>
        <div class="nearby_htl_box">
            <div class="nearby_htl_filter">
                <a href="#" class="more">全部坐标&nbsp;></a>
                <h2>城市地标周边酒店</h2>
                <ul class="hotsold_city_list">
                    <li>
                        <a href="#">北京</a>
                        <i></i>&nbsp;&nbsp;
                    </li>
                    <li><a href="#">上海</a></li>
                    <li><a href="#">广州</a></li>
                    <li><a href="#">成都</a></li>
                    <li><a href="#">深圳</a></li>
                    <li><a href="#">杭州</a></li>
                </ul>
            </div>
            <div class="landmark_wrap">
                <div class="landmark_box">
                    <div class="landmark_section">
                        <a href="#">
                            <span class="icon"><img src="images/hotelPiC/zuobiao.png" style="margin-top: 30px;margin-left: 20px"></span><br>
                            <span style="margin-left: 10px;color: #0066CC">主题地标</span>
                        </a>
                    </div>
                    <em class="line3" ></em>
                    <div class="nearby_htl">
                        <div class="current">
                            <a href="#" style="font-size: 12px"><img src="images/hotelPiC/tubiao1.png"><br/>&nbsp;&nbsp;&nbsp;&nbsp;游乐园</a>
                        </div>
                        <div class="current">
                            <a href="#" style="font-size: 12px"><img src="images/hotelPiC/tubiao1.png"><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;景区</a>
                        </div>
                        <div class="current">
                            <a href="#" style="font-size: 12px"><img src="images/hotelPiC/ditiezhan.png"><br/>&nbsp;&nbsp;&nbsp;&nbsp;地铁站</a>
                        </div>
                        <div class="current">
                            <a href="#" style="font-size: 12px"><img src="images/hotelPiC/shangyejie.png"><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商业街</a>
                        </div>
                        <div class="current">
                            <a href="#" style="font-size: 12px">&nbsp;&nbsp;<img src="images/hotelPiC/jichang.png"><br/>&nbsp;&nbsp;机场/火车站</a>
                        </div>
                        <div class="current">
                            <a href="#" style="font-size: 12px"><img src="images/hotelPiC/yiyuan.png"><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;医院</a>
                        </div>
                        <div class="current">
                            <a href="#" style="font-size: 12px"><img src="images/hotelPiC/daxue.png"><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大学</a>
                        </div>
                    </div>
                    <div class="landmark_section">
                        <em class="line2"></em>
                        <a href="#">
                            <span class="icon"><img src="images/hotelPiC/shousuo.png" style="margin-top: 30px;margin-left: 20px"></span><br>
                            <span style="margin-left: 10px;color: #0066CC">搜索地标</span>
                        </a>
                    </div>
                </div>
                <div class="layui-carousel"  id="search1" style="margin-top: 20px">
                    <div carousel-item>
                        <div><img src="images/hotelPiC/chengshidibiaotu1.jpg" width="780px"></div>
                        <div><img src="images/hotelPiC/chengshidibiaotu2.jpg" width="780px"></div>
                        <div><img src="images/hotelPiC/chengshidibiaotu3.jpg" width="780px"></div>
                        <div><img src="images/hotelPiC/chengshidibiaotu4.jpg" width="780px"></div>
                        <div><img src="images/hotelPiC/chengshidibiaotu5.jpg" width="780px"></div>
                    </div>
                </div>
                <div class="hot_sold_box" >
                    <div  id="pop_box_city" class="pop_box_city" >
                        <div style="float: right"><a href="###" class="c_close"style="font-size: 30px">×</a></div>
                        <div class="pop_box_city1" >
                            <a href="##">长沙</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">重庆</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">大连</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">福州</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">贵阳</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">桂林</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">黄山</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">哈尔滨</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">海口</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">合肥</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">呼和浩特</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">济南</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">昆明</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">丽江</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">南昌</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">南京</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">南宁</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">宁波</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">青岛</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">三亚</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">厦门</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">沈阳</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">石家庄</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">苏州</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">台北</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">太原</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">天津</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">乌鲁木齐</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">无锡</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">武汉</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">西安</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">香港</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">阳朔</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">郑州</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">香格里拉</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">五台</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">佛山</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">龙岩</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">日照</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">拉萨</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">启东</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">绵阳</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##">唐山</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="##" >常州</a>&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
                    <div class="hot_sold_title">
                        <h2 style="color: #0066CC;float: left;font-weight: normal">热门酒店</h2>
                        <ul class="hotsold_city_list1">
                                <li>
                                <a href="#">上海</a>
                                <i></i>&nbsp;&nbsp;
                            </li>
                            <li><a href="##">北京</a></li>
                            <li><a href="##">广州</a></li>
                            <li><a href="##">成都</a></li>
                            <li><a href="##">深圳</a></li>
                            <li><a href="##">杭州</a></li>
                            <li><a href="##">长春</a></li>
                            <li><a href="###" class="gengduo">更多<b></b></a></li>
                        </ul>
                    </div>
                    <a href="#" class="reimen" ><img src="images/hotelPiC/renmenjiudian.jpg" style="float: right"></a>
                </div>
                <div class="hot_list">


                <c:forEach var="hotelInfo" items="${hotelInfoList}">
                    <ul class="searchresult_info">
                        <li class="hotel_pic">
                            <div class="hotel_pic1">
                                <img  src="${hotelInfo.hotelPic}" style="border-radius: 5px 5px 5px 5px">
                            </div>
                        </li>
                        <li class="searchresult_info_name">
                            <div><img src="images/hotelPiC/daili.jpg" style="float: left">
                                <h4 style="color: #0066CC;font-weight: normal;float: left;margin-left: 10px">${hotelInfo.hotelName}</h4>
                                <d style="color:yellow;margin-left: 10px">☆☆☆</d>
                            </div><br/>
                            <div style="font-size: 12px">虹桥地区&nbsp;&nbsp;长宁区</div>
                            <div><a>${hotelInfo.mark}分|来自568人点评</a></div>
                            <div><a href="#">“订房的时候没看床大小，一看是大床就直接定了，床在大点更好”</a></div>
                        </li>
                        <li style="width:250px "><a href="#" style="color:#ff6600 ;float: right;margin-top: 30px">￥${hotelInfo.hotelMinPrice}起</a></li>
                    </ul>
            </c:forEach>
                </div>



                <div class="hotel_brand_box">
                    <div> <h2 style="font-weight: normal;float: left">更优惠酒店集团</h2><a href="#" style="margin-left: 550px">更多》</a></div>
                    <div class="hotel_brand_package">
                        <div style="width: 15px;height: 95px;background-color: #f5f5f5;float: left"><img src="images/hotelPiC/zuojiantou.jpg" style="margin-top: 35px;margin-left: 2px"></div>
                        <div class="hotel_brand_list">
                            <marquee style="WIDTH: 100%;" onmouseover="this.stop()" onmouseout="this.start()" scrolldelay="30"direction="left">
                                <div >
                                    <a href="#"><img src="images/hotelPiC/yaduojiudian.jpg" style="margin-top: 1px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#"><img src="images/hotelPiC/haihangjiudian.jpg" style="margin-top: 1px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#"><img src="images/hotelPiC/yutingjiudian.jpg" style="margin-top: 1px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#"><img src="images/hotelPiC/shoujiajiudian.jpg" style="margin-top: 1px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#"><img src="images/hotelPiC/junlanjiudian.jpg" style="margin-top: 1px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#"><img src="images/hotelPiC/hendajiudian.jpg" style="margin-top: 1px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#"><img src="images/hotelPiC/huajinatangjiudian.jpg" style="margin-top: 1px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#"><img src="images/hotelPiC/weiyenajiudian.jpg" style="margin-top: 1px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#"><img src="images/hotelPiC/jinlinjiudian.jpg" style="margin-top: 1px"></a>
                                    <!--                                        <span style="font-size: 50px ;color: red;text-align: center">更多优惠酒店等你来</span>-->
                                </div>
                            </marquee>
                        </div>
                        <div style="width: 15px;height: 95px;background-color: #f5f5f5;float: right"><img src="images/hotelPiC/youjiantou.jpg" style="margin-top: 35px;float: right"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="float: left;margin-top: -220px;"><img src="images/hotelPiC/cuxiao.jpg" width="1165px" ></div>
    <div style="margin: auto;"><img src="images/hotelPiC/dibuxinxi.jpg" width="1165px"></div>
</div>
<hr style="width: 85%; margin:auto;size: 3px">






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
