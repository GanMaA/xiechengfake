//酒店介绍
$(function(){
    $("#alarmClose").click(function () {
        $(this).parent().hide();
    })
    var E = window.wangEditor;
    //这里的id为<div id="editor">中的id.
    var editor = new E('#editor_title','#editor_content');
    // 配置服务器端地址,也就是servlet的请求路径，不带项目路径，前面没有/
    //editor.customConfig.uploadImgServer = 'uploadFile';
    editor.customConfig.menus = [
        'head',  // 标题
        'bold',  // 粗体
        'fontSize',  // 字号
        'fontName',  // 字体
        'italic',  // 斜体
        //'underline',  // 下划线
        //'strikeThrough',  // 删除线
        'foreColor',  // 文字颜色
        'backColor'  // 背景颜色
        // 'link',  // 插入链接
        // 'list',  // 列表
        // 'justify',  // 对齐方式
        // 'quote',  // 引用
        // 'emoticon',  // 表情
        // 'image',  // 插入图片
        // //'table',  // 表格
        // //'video',  // 插入视频
        // //'code',  // 插入代码
        // 'undo',  // 撤销
        // 'redo'  // 重复
    ]
    editor.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        $("#hotelIntro").val(html);
    }
    //创建编辑器
    editor.create();

});
//集团介绍
$(function(){
    var Q = window.wangEditor;
    //这里的id为<div id="editor">中的id.
    var editor = new Q('#Group_title','#Group_content');
    // 配置服务器端地址,也就是servlet的请求路径，不带项目路径，前面没有/
    //editor.customConfig.uploadImgServer = 'uploadFile';
    editor.customConfig.menus = [
        'head',  // 标题
        'bold',  // 粗体
        'fontSize',  // 字号
        'fontName',  // 字体
        'italic' // 斜体
    ]
    editor.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        $("#groupIntro").val(html);
    }
    //创建编辑器
    editor.create();

});
//酒店添加回执
$(function () {
  if($("#msg").val()==="success"){
      $("#my-alert span").text("添加成功");
      $("#my-alert").show();
      $("#msg").val("");
  }else if($("#msg").val()==="false"){
      $("#my-alert span").text("添加失败");
      $("#my-alert").show();
      $("#msg").val("");
  }
});

$(function () {
    //获取省市
    var proVue = new Vue({
        el: ".areaId",
        data: {
            provinceList: []
        }
    });
    $.ajax({
        url: "/getProvince",
        type: "post",
        dataType: "json",
        success: function (data) {
            proVue.provinceList = data;
        }
    });


});
//    酒店删除
function deleteHotel(){
  if(confirm("确认删除该酒店？")){
      alert("已删除");
  }

}

//酒店详情
//酒店介绍
$(function(){
    var W = window.wangEditor;
    //这里的id为<div id="editor">中的id.
    var editor = new W('#editor_title','#hotel_info_content');
    // 配置服务器端地址,也就是servlet的请求路径，不带项目路径，前面没有/
    //editor.customConfig.uploadImgServer = 'uploadFile';
    editor.customConfig.menus = [
        'head',  // 标题
        'bold',  // 粗体
        'fontSize',  // 字号
        'fontName',  // 字体
        'italic',  // 斜体
        //'underline',  // 下划线
        //'strikeThrough',  // 删除线
        'foreColor',  // 文字颜色
        'backColor'  // 背景颜色
        // 'link',  // 插入链接
        // 'list',  // 列表
        // 'justify',  // 对齐方式
        // 'quote',  // 引用
        // 'emoticon',  // 表情
        // 'image',  // 插入图片
        // //'table',  // 表格
        // //'video',  // 插入视频
        // //'code',  // 插入代码
        // 'undo',  // 撤销
        // 'redo'  // 重复
    ]
    editor.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        $("#hotel_info_Intro").val(html);
    }
    //创建编辑器
    editor.create();

});
//集团介绍
$(function(){
    var R= window.wangEditor;
    //这里的id为<div id="editor">中的id.
    var editor = new R('#editor_title','#Group_info_content');
    // 配置服务器端地址,也就是servlet的请求路径，不带项目路径，前面没有/
    //editor.customConfig.uploadImgServer = 'uploadFile';
    editor.customConfig.menus = [
        'head',  // 标题
        'bold',  // 粗体
        'fontSize',  // 字号
        'fontName',  // 字体
        'italic',  // 斜体
        //'underline',  // 下划线
        //'strikeThrough',  // 删除线
        'foreColor',  // 文字颜色
        'backColor'  // 背景颜色
        // 'link',  // 插入链接
        // 'list',  // 列表
        // 'justify',  // 对齐方式
        // 'quote',  // 引用
        // 'emoticon',  // 表情
        // 'image',  // 插入图片
        // //'table',  // 表格
        // //'video',  // 插入视频
        // //'code',  // 插入代码
        // 'undo',  // 撤销
        // 'redo'  // 重复
    ]
    editor.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        $("#group_info_Intro").val(html);
    }
    //创建编辑器
    editor.create();

});
//获取酒店信息
$(function () {
    var HotelInfo = new Vue({
        el:".hotelInfoVue",
        data:{
            hotelInfo:{
                "hotelId": "",
                "hotelName": "",
                "hotelLevel": "",
                "hotelMinPrice": "",
                "mark": "",
                "hotelPic": "",
                "hotelGroupId": "",
                "areaId": "",
                "hotelArea": {
                    "hotelAreaId": "",
                    "hotelId": "",
                    "areaId": "",
                    "longitude": "",
                    "latitude": "",
                    "areaDetail": "",
                    "china": {
                        "areaId": "",
                        "areaName": "",
                        "higherLevel": ""
                    }
                },
                "hotelIntroduce": {
                    "hotelIntroId": "",
                    "phone": "",
                    "license": "",
                    "introduce": "",
                    "openYear": "",
                    "hotelId": ""
                },
                "hotelGroup": {
                    "hotelGroupId": "",
                    "groupName": "",
                    "groupIntro": ""
                }
            }
        }
    });
    $("#hotelIntroSearch").click(function () {
        $.ajax({
            url:"manGetHotelInfo",
            type:"post",
            data:{"hotelId":$(this).prev().val()},
            dataType:"json",
            success:function (data) {
                HotelInfo.hotelInfo = data;
                $("#hotel_info_content").children().eq(0).html(data.hotelIntroduce.introduce);
                $("#Group_info_content").children().eq(0).html(data.hotelGroup.groupIntro);
                $("#hotel_info_groupName").val(data.hotelGroup.groupName);
            }
        })
    })


});
//更新酒店信息
function submitHotel() {
    var formData = new FormData($("#editHotelInfo")[0]);
    $.ajax({
        type:"post",
        url:"updateHotelInfo",
        data:formData,
        dataType:"text",
        contentType: false,// 告诉jQuery不要去设置Content-Type请求头
        processData: false,// 告诉jQuery不要去处理发送的数据
        success:function(data) {
            if(data==="true"){
                $("#my-alert span").text("更新成功");
                $("#my-alert").show();
            }else{
                $("#my-alert span").text("更新失败");
                $("#my-alert").show();
            }
        },
        error:function() {
            $("#my-alert span").text("更新失败");
            $("#my-alert").show();
        }
    })
}
//添加酒店房型
$(function () {
    var hotelRoomVue = new Vue({
        el:"#HotelBedKind",
        data:{
            hotelId:"",
            hotelRoomList:[],
            hotelRoom:{
                hotelRoomId:"",
                bedId:"",
                bedKind:{
                    bedId:"",
                    bedCat:""
                },
                roomName:"",
                roomPrice:"",
                roomPic:""
            }
        },
        methods:{
            delHotelRoom:function (hotelRoomId) {
                    $.ajax({
                        url:"delHotelRoom",
                        type:"post",
                        data:{"hotelRoomId":hotelRoomId},
                        dataType:"text",
                        success:function (data) {
                            if (data) {
                                $("#my-alert span").text("删除成功！");
                                $("#my-alert").show();
                                $("#tr-"+hotelRoomId).remove();
                            }
                        }
                    })


            }
        }
    });
    $("#addRoomBut").click(function () {
        var hotelRoomInfoForm = new FormData($("#addHotelRoomKind")[0]);
        $.ajax({
            type:"post",
            url:"insertHotelRoom",
            data:hotelRoomInfoForm,
            dataType:"json",
            contentType: false,// 告诉jQuery不要去设置Content-Type请求头
            processData: false,// 告诉jQuery不要去处理发送的数据
            success:function(data) {
                hotelRoomVue.hotelRoomList.push(data);
            },
            error:function() {

            }
        })
    });
    //搜索该酒店床型
    $("#hotelRoomSearch").click(function () {
        hotelRoomVue.hotelId=$(this).prev().val();
        $.ajax({
            url:"getHotelRoom",
            type:"post",
            data:{hotelId:hotelRoomVue.hotelId},
            dataType:"json",
            success:function (data) {
                hotelRoomVue.hotelRoomList=data;
            }
        })
    });

});