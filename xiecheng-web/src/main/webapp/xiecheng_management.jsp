<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="v-bind" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://page.way2a.com/tag" prefix="pager" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>携程后台管理</title>
    <link rel="stylesheet" href="css/management.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/wangEditor.min.js"></script>
    <script src="js/xiecheng_management.js"></script>
    <script src="js/vue.min.js"></script>
</head>
<body>
<div class="top">
    <div class="text-primary  top_headInfo" ><h2>京东商城后台管理系统</h2></div>
</div>
<div class="content">
    <div><input type="hidden" value="${msg}" id="msg"></div>
    <div id="my-alert" class="alert-danger showAlarm" style="width:200px;height:50px;display: none">
        <span style="font-size: 18px"></span>
        <a class="pull-right" id="alarmClose" style="margin-right: 10px">X</a>
    </div>
    <div class="pull-left content_left">
        <ul class="nav nav-pills nav-stacked" style="background-color: #ffffff">
            <li class="active">
                <a href="#">酒店管理</a>
                <ul class="nav nav-stacked " id="proCalAdm">
                    <li><a href="#FindHotel" data-toggle="tab" id="findHotel-nav">酒店查询</a></li>
                    <li ><a href="#AddHotel" data-toggle="tab">添加酒店</a></li>
                    <li><a href="#HotelInfo" data-toggle="tab">酒店信息</a></li>
                    <li><a href="#HotelBedKind" data-toggle="tab">酒店房型</a></li>
                    <li><a href="#HotelPic" data-toggle="tab">酒店图片</a></li>
                </ul>
            </li>
            <li class="active"><a href="#">商品管理</a></li>
            <ul class="nav nav-stacked " id="proAdm">
                <li><a href="#proAdm1" data-toggle="tab">商品添加</a></li>
                <li><a href="#proAdm2" data-toggle="tab">商品删除</a></li>
                <li><a href="#proAdm3" data-toggle="tab">商品修改</a></li>
                <li><a href="#proAdm4" data-toggle="tab">商品查询</a></li>
            </ul>
            <li class="active"><a href="#">订单管理</a></li>
            <ul class="nav nav-stacked " id="orderAdm">
                <li><a href="#orderAdm1" data-toggle="tab">查看订单</a></li>
                <li><a href="#orderAdm2" data-toggle="tab">修改订单</a></li>
            </ul>
            <li class="active"><a href="#">用户管理</a></li>
        </ul>
    </div>
    <div class="pull-left content_right">
        <div class="content_right_top">
            <ul class="breadcrumb">
                <li><a href="#">首页</a></li>
                <li><a href="#">商品种类管理</a></li>
            </ul>
        </div>
        <!--右侧展示-->
        <div class="content_right_con">
            <div class="tab-content">
                <!--管理酒店-->

                <!--添加酒店-->
                <div class="tab-pane " id="AddHotel">
                    <form enctype="multipart/form-data" method="post" action="/insertHotelInfo">
                    <div style="margin: 20px auto;width: 500px">
                        <div>
                             <span class="hotel_span">酒店名称:</span>
                            <input type="text" name="hotelName" style="margin-left: 4px">
                        </div>
                        <div>
                        <span class="hotel_span">酒店星级:</span>
                        <select name="hotelLevel" style="margin-left: 4px">
                            <option value="1" selected>1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select><br>
                        </div>

                        <div>
                            <span class="hotel_span">酒店地址:</span>
                            <select name="areaId" style="margin-left: 4px" class="areaId">
                                <option v-for="pro in provinceList" v-bind:value="pro.areaId">{{pro.areaName}}</option>
                            </select><br>
                        </div>

                        <div>
                            <span class="hotel_span">酒店精度:</span>
                            <input type="text" name="longitude" style="margin-left: 4px">
                        </div>
                        <div>
                            <span class="hotel_span">酒店纬度:</span>
                            <input type="text" name="latitude" style="margin-left: 4px">
                        </div>
                        <div>
                            <span class="hotel_span">详细地址:</span>
                            <input type="text" name="areaDetail" style="margin-left: 4px">
                        </div>

                        <div><span class="hotel_span">酒店图片:</span>
                        <input type="file" style="margin-left: 100px" name="hotelMainPic">
                        </div>

                        <div><span class="hotel_span">酒店介绍:</span>
                            <div style="margin-left: 30px">
                                <div id="editor_content" class="text"></div>
                            </div>
                            <textarea id="hotelIntro" class="hidden" name="introduce"></textarea>
                        </div>

                        <div>
                            <span class="hotel_span">所属集团:</span>
                            <input name="groupName" type="text">
                        </div>
                        <div><span class="hotel_span">集团介绍:</span>
                            <div style="margin-left: 30px">
                                <div id="Group_content" class="text"></div>
                            </div>
                            <textarea id="groupIntro" class="hidden" name="groupIntro"></textarea>
                        </div>
                        <div style="margin: 20px auto;width: 140px">
                            <input style="width: 80px" type="submit" value="添加酒店">
                        </div>

                    </div>
                    </form>
<!--                    <div class="pull-left" style="margin-left: 15px">-->
<!--                        <div>-->
<!--                            <span>酒店房型:</span>-->
<!--                            <div>-->
<!--                                <div>-->
<!--                                    <span>房型:</span><input type="text" style="width: 100px;height:20px" >-->
<!--                                    <span>床型:</span>-->
<!--                                    <select><option value="1" selected>单人</option>-->
<!--                                    <option value="2">双人</option>-->
<!--                                    <option value="3">三人/豪华床</option></select>-->
<!--                                    <span>价格:</span><input type="text" style="width: 100px;height:20px" >-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
                </div>
                <%--酒店查询--%>
                <div class="tab-pane active" id="FindHotel">
                    <div class="search">
                        <form>
                            <input type="search" style="margin: 5px" placeholder="酒店名称/地点"> <input type="submit" value="搜索">
                        </form>
                    </div>
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr class="tableHead text-center">
                            <th>酒店编号</th>
                            <th>酒店名称</th>
                            <th>酒店位置</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="hotelInfo" items="${pageInfo.list}">
                        <tr>
                            <td>${hotelInfo.hotelId}</td>
                            <td>${hotelInfo.hotelName}</td>
                            <td>${hotelInfo.hotelArea.china.areaName}</td>
                            <td><a href="#" onclick="deleteHotel(${hotelInfo.hotelId})">删除</a></td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="hotelPage"> <pager:page pageSize="${pageInfo.pageSize}" pageNo="1" url="/getAllHotel" totalRecord="${pageInfo.total}"/></div>
                </div>
                <%--酒店信息--%>
                <div class="tab-pane" id="HotelInfo">
                    <div class="search">
                        <form>
                            <input type="search" style="margin: 5px" placeholder="酒店编号"> <input type="button" value="搜索" id="hotelIntroSearch">
                        </form>
                    </div>
                    <form id="editHotelInfo" method="post" >

                        <div style="margin: 20px auto;width: 500px">
                            <div class="hotelInfoVue">
                            <input type="hidden" name="hotelId" v-model="hotelInfo.hotelId">
                            <div>
                                <span class="hotel_span">酒店名称:</span>
                                <input v-model="hotelInfo.hotelName" type="text" name="hotelName" style="margin-left: 4px">
                            </div>
                            <div>
                                <span class="hotel_span">酒店星级:</span>
                               <input v-model="hotelInfo.hotelLevel" type="text" name="hotelLevel">
                            </div>

                            <div>
                                <span class="hotel_span">酒店地址:</span>
                                <input type="text" v-model="hotelInfo.hotelArea.china.areaName" name="areaName">
                            </div>

                            <div>
                                <span class="hotel_span">酒店精度:</span>
                                <input v-model="hotelInfo.hotelArea.longitude" type="text" name="longitude" style="margin-left: 4px">
                            </div>
                            <div>
                                <span class="hotel_span">酒店纬度:</span>
                                <input v-model="hotelInfo.hotelArea.latitude" type="text" name="latitude" style="margin-left: 4px">
                            </div>
                            <div>
                                <span class="hotel_span">详细地址:</span>
                                <input v-model="hotelInfo.hotelArea.areaDetail" type="text" name="areaDetail" style="margin-left: 4px">
                            </div>

                            <div>
                                <span class="hotel_span">酒店图片:</span>
                                <img v-bind:src="hotelInfo.hotelPic" style="width: 50px">
                            </div>
                        </div>
                            <div><span class="hotel_span">酒店介绍:</span>
                                <div style="margin-left: 30px">
                                    <div id="hotel_info_content" class="text"></div>
                                </div>
                                <textarea  id="hotel_info_Intro" class="hidden" name="introduce"></textarea>
                            </div>
                                <div>
                                    <span class="hotel_span">所属集团:</span>
                                    <input id="hotel_info_groupName" v-model="hotelInfo.hotelGroup.groupName" name="groupName" type="text">
                                </div>
                            <div><span class="hotel_span">集团介绍:</span>
                                <div style="margin-left: 30px">
                                    <div id="Group_info_content" class="text"></div>
                                </div>
                                <textarea  id="group_info_Intro" class="hidden" name="groupIntro"></textarea>
                            </div>
                            <div style="margin: 20px auto;width: 140px">
                                <input style="width: 80px" type="button" value="修改" id="submitHotelInfo" onclick="submitHotel()">
                            </div>

                        </div>
                    </form>
                </div>
                <%--酒店房型--%>
                <div class="tab-pane" id="HotelBedKind">
                    <div class="search">
                        <form>
                            <input type="search" style="margin: 5px" placeholder="酒店编号"> <input type="button" value="搜索" id="hotelRoomSearch">
                        </form>
                    </div>
                    <%--添加酒店房型--%>
                    <div>
                        <form id="addHotelRoomKind" method="post" enctype="multipart/form-data">
                            <input type="hidden" name="hotelId" v-model="hotelId">
                            <span>床型:
                                <select v-model="hotelRoom.bedId" name="bedId">
                                <option value="">请选择</option>
                                <option value="1">大床</option>
                                <option value="2">双人</option>
                                <option value="3">三人/家庭房</option>
                                </select>
                            </span>
                            <span>房名:<input type="text" name="roomName" v-model="hotelRoom.roomName"></span>
                            <span>价格:<input type="number" name="roomPrice" v-model="hotelRoom.roomPrice"></span>
                            <span>图片:<input type="file" name="roomPicture" style="display: inline-block"></span>
                            <span><input type="button" id="addRoomBut" value="添加"></span>
                        </form>
                    </div>
                    <%--修改酒店房型--%>
                    <div>
                        <form id="editRoomKind">
                            <table class="table table-striped table-bordered table-hover" style="text-align: center">
                                <thead>
                                    <tr class="tableHead text-center">
                                        <td>编号</td>
                                        <td>床型</td>
                                        <td>房名</td>
                                        <td>价格</td>
                                        <td>图片</td>
                                        <td>操作</td>
                                    </tr>
                                </thead>
                                <tbody>
                                <tr v-for="hotelRoomLi in hotelRoomList" v-bind:id="'tr-'+hotelRoomLi.hotelRoomId">
                                    <td>{{hotelRoomLi.hotelRoomId}}</td>
                                    <td>
                                        <select name="bedId" v-model="hotelRoomLi.bedKind.bedId">
                                            <option value="">请选择</option>
                                            <option value="1">大床</option>
                                            <option value="2">双人</option>
                                            <option value="3">三人/家庭房</option>
                                         </select>
                                    </td>
                                    <td>{{hotelRoomLi.roomName}}</td>
                                    <td>{{hotelRoomLi.roomPrice}}</td>
                                    <td><img :src="hotelRoomLi.roomPic" style="height: 50px"></td>
                                    <td style="width: 150px"><button id="editHotelRoom">修改</button>  <input type="button" value="删除" id="delHotelRoom" @click="delHotelRoom(hotelRoomLi.hotelRoomId)"></td>
                                </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
                <div class="tab-pane" id="HotelPic">我是商品评价</div>
            </div>
        </div>
    </div>

</div>
</body>
</html>