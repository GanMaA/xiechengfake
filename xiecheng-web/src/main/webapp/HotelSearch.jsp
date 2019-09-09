<%--
  Created by IntelliJ IDEA.
  User: 悟空
  Date: 2019/9/8
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>酒店搜索</title>
    <link href="css/base.css" rel="stylesheet">
    <link href="css/HotelSearch.css" rel="stylesheet">
</head>
<body>
<div class="crumbsBar">
    <div>
        <a>全部结果</a>
        <strong><i>〉</i>“{{searchInfo}}”</strong>
        <!--            <strong><i>〉</i>“{{searchInfo}}”</strong>-->
    </div>
</div>
<div class="selector" style="background-color:#cccccc;">
    <div class="line_1px"></div>
    <div class="s_brand">
        <div class="s_key " style="height: 64px"><strong style="line-height: 30px; padding-left: 10px" >品牌：</strong></div>
        <div class="s_value height64">
            <ul>
                <li v-for="(brandInfo, index) in brandInfoList" style="margin-right: 5px"><a v-on:click="brandClick(brandInfo.brandId)"><img :src="brandInfo.brandLogoUrl"></a></li>
            </ul>
            <a class="sl_e_more" >更多<i>∨</i></a>
            <a class="sl_e_more" ><i style="font-size: 20px ; margin-left: -3px">+</i>多选</a>
        </div>
    </div>
    <div class="line_1px"></div>
    <div class="s_category" v-for="(cateTwoInfo, pindex) in cateTwoInfoList">
        <div class="s_key"><strong style="line-height: 30px; padding-left: 10px">不限</strong></div>
        <div class="s_value">
            <ul>
                <li v-for="(cateThreeInfo, cindex) in cateThreeInfoListArr[pindex]"><a v-on:click="cateThreeClick(cateThreeInfo.categoryId)">{{cateThreeInfo.categoryName}}</a></li>
            </ul>
            <a class="sl_e_more" style="margin-top: 5px">更多<i>∨</i></a>
            <a class="sl_e_more" style="margin-top: 5px"><i style="font-size: 20px ; margin-left: -3px">+</i>多选</a>
        </div>
        <div class="line_1px"></div>
    </div>
    <div class="s_senior">
        <div class="s_key"><span style="line-height: 30px; padding-left: 10px">高级选项：</span></div>
        <div class="s_value">
            <a>不限</a>
            <a>版型<i>∨</i></a>
            <a>适用人群<i>∨</i></a>
            <a>更多<i>∨</i></a>
        </div>
    </div>
    <div class="line_1px"></div>
</div>
</body>
</html>
