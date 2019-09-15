$(function () {
    var i =5;
    layui.use('layer', function(){
        var layer = layui.layer;

        layer.open({
            type:1,
            title:false,
            content:"<div style='font-size: 20px;margin: 30px'>注册成功，页面即将在"+"<span id='time' style='color: red' >5S</span>"+"后跳转!</div>" +
                "<div style='float: right;margin-right: 50px'><button id='but' style='width: 100px;height: 30px'>立即跳转</button></div>",
            area:["300px","180px"],
            closeBtn:0,
            success: function(){
                $("#but").click(function () {
                    location.href="xiecheng_index.html"
                });
                var fn = function() {
                    $("#time").text(i+"S");
                    i--;
                };
                interval = setInterval(function(){
                    fn();
                    if(i === -1){
                        clearInterval(interval);
                        location.href="xiecheng_index.html"
                    }
                }, 1000);
            }

        })

    });
})