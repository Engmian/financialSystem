<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/6
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <script type="text/javascript" src="../../statics/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.8.3.min.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/register.css">
    <title>注册页面</title>
    <script type="text/javascript">

        $(document).ready(function () {
            $("#getCode").click(function () {
                var uPhone=$("#uPhone").val();
                if(uPhone == null || uPhone==""){
                    $("#uPhone").focus();
                } else {
                    $.ajax({
                        "url"       : "gotoSendCode",//要提交的路径
                        "Type"	 	: "post",//提交方式
                        "data"	 	: "uPhone="+uPhone,//发送到服务器的数据
                        "dataType"  : "text",//指定返回的数据格式
                        "success" 	: function (data) {
                        },//响应成功后要执行代码
                        "error"		: function() { //请求失败后要执行代码
                            $("#codeMiss").html("短信验证码错误！");
                        }
                    })
                }
            })
            $("#uPhone").blur(function() {
                var uPhone = this.value;
                if (uPhone == null || uPhone == "") {
                    $("#nameDiv").html("*用户名不能为空！");
                    $("#submit").attr("disabled",true);
                } else if (!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(uPhone))){
                    $("#nameDiv").html("*请输入正确手机号码");
                    $("#submit").attr("disabled",true);
                }
                else {
                    /* $.ajax({
                        "url"       : "userServlet",   //要提交的URL路径
                        "type"      : "POST",          //发送请求的方式
                        "data"      : "name="+name,    //要发送到服务器的数据
                        "success"   : callBack         //响应成功后要执行的代码
                    }); */
                    $.post("${pageContext.request.contextPath}/ajaxController/testUphone", "uPhone="+uPhone, callBack);
                    //响应成功时的回调函数
                    function callBack(data) {
                        if (data == "true") {
                            $("#nameDiv").html("*该手机已被使用！");
                            $("#submit").attr("disabled",true);
                        }else {
                            $("#nameDiv").html("");
                            $("#submit").removeAttr("disabled");
                            $("#submit").css("background-color","blue");
                        }
                    }//end of callBack()
                }
            });
        })
    </script>
</head>
    <body>
    <!--头部-->
        <div style="display: inline-block;width: 150px;height:50px;margin-top: 20px;
                 margin-left: 150px;"><img src="${pageContext.request.contextPath}/statics/images/logo.png" style="display:inline-block;height: 40px;width:150px;"></div>&nbsp;
        <div style="display:inline-block;margin-top: -500px;margin-left: 0px"><span style="color: darkgrey;font-size: 15px">|&nbsp;国资100%控股</span></div>
        <!--登录部分-->
        <div id="body">
            <div id="login-box">
                <div id="login-box-title">
                    <div style="width: 40px;height: 1px;background-color: #999999; float: left;margin-top: 40px;"></div><div id="dd" style="margin-left: 5px">会员登录</div>
                </div>
                <div style="width: 275px;height: 1px;background-color: #999999; float: right;margin-top: -30px"></div>
                <div id="login-box-text">
                    <form action="doRegister" method="post">
                        <div style="height:30px;display: inline-block;margin-top: 10px;margin-left: 60px">
                            <input type="text" name="uPhone" placeholder="请输入手机号码" style="width: 300px;height: 30px;color: dimgray;border: 1px darkgray solid" id="uPhone" >
                            <br>
                            <div id="nameDiv" style="font-size:14px;color: red;display: inline"></div>
                        </div>
                        <div style="display: inline-block;margin-top: 30px;margin-left: 60px">
                            <input type="text" name="testPerson" placeholder="请输入验证码" style="width: 200px;height: 30px;color: dimgray;border: 1px darkgray solid" >
                            <a href="javascript:void(0)" style="width: 90px;height: 30px;color: #b7d2ff" id="getCode">获取验证码</a>
                            <%--如果用户输入短信验证码错误，则此处提醒
                            <div id="codeMiss"></div>--%>
                        </div>
                        <div id="code" style="display: none"></div>
                    <div style="display: inline-block;margin-top:30px;margin-left: 60px">
                        <input type="password" name="uPwd" placeholder="请输入密码"  style="width: 300px;height: 30px;color: dimgray;border: 1px darkgray solid" >
                    </div>
                        <div style="display: inline-block;margin-top:30px;margin-left: 60px">
                            <input type="password" name="invite" placeholder="推荐人电话号码"  style="width: 300px;height: 30px;color: dimgray;border: 1px darkgray solid" >
                        </div>
                        <!-- 此处后台已传“推荐人不存在”，请前端务必调整一下格式 -->
                        <%--<div>${invite}</div>--%>
                    <div style="display: inline-block;margin-top: 30px;margin-left: 60px;">
                        <input type="submit" value="登录" id="submit" style="color:white;text-align: center;font-size: 18px;background-color:silver;width: 300px;height: 40px;border: none">
                    </div>
                    </form>
                    <div style="margin-left: 60px; margin-top: 30px"><span style="color: #999999;font-size: 14px">已经有账号?</span><span style="color: grey"> | </span> <a href="${pageContext.request.contextPath}/loginController/gotoLogin" style="color: #007aff;font-size: 14px">立即登陆</a></div>
                </div>
            </div>
        </div>
        <!--底部-->
        <div id="underground">
            <div style="display: inline-block;width: 200px;height: 250px">
                <ul style="margin-top: 30px;margin-left:15px;list-style: none;line-height: 40px">
                    <li style="font-size: 20px">信息披露</li>
                    <li><a href="#">公司简介</a> </li>
                    <li><a href="#">联系我们</a></li>
                    <li><a href="#">安全保障</a></li>
                </ul>
            </div>
            <div style="display: inline-block;width: 200px;height: 250px">
                <ul style="margin-top: 30px;margin-left:15px;list-style: none;line-height: 40px">
                    <li style="font-size: 20px">帮助中心</li>
                    <li><a href="#">常见问题</a> </li>
                    <li><a href="#">新手指引</a></li>
                    <li><a href="#">法律保障</a></li>
                </ul>
            </div>
        </div>

        <div id="underground-mesg">
            <div style="height: 250px;width: 210px;display: inline-block">
                <img src="${pageContext.request.contextPath}/statics/images/appcode.png" style="margin-left: 35px;margin-top: 30px">
                <p style="font-size: 10px;color:gray;text-align: center">手机客户端</p>
                <p style="font-size: 10px;color:gray;text-align: center">APP下载</p>
            </div>
            <div style="height: 250px;width: 210px;display: inline-block">
                <img src="${pageContext.request.contextPath}/statics/images/weichar-code.png" style="margin-left: 35px;margin-top: 30px;width: 143px;height: 143px">
                <p style="font-size: 10px;color:gray;text-align: center">扫一扫</p>
                <p style="font-size: 10px;color:gray;text-align: center">A关注官方微信</p>
            </div>
        </div>

        <div id="underground-serve">
            <p style="font-size: 20px;margin-left: 70px;color: gray">客服热线</p>
            <p style="font-size: 40px;color: #3288e6;margin-left: 70px;">021-80339858</p>
            <p style="font-size: 10px;color:gray;margin-left: 70px;">周一至周五 09:00-18:00</p>
        </div>

        <div>
            <img src="${pageContext.request.contextPath}/statics/images/2.png">
        </div>

   <script type="text/javascript">
    //获取短信点击属性
    var getCode = document.getElementById("getCode");
    var flag=120;
    //注册点击事件
    getCode.onclick=function () {
        var uPhone=$("#uPhone").val();
        if(uPhone == null || uPhone=="") {
            alert("清先输入手机号码")
            return;
        }else{
            if (flag < 120){
                return;
            }
        }
        timer();
    }
    function timer() {
        flag--;
        getCode.innerHTML=flag+"秒以后重新获取！";
        if(flag == 0){
            getCode.innerHTML="获取验证码";
            flag=120;
        }else {
            setTimeout("timer()",1000);
        }
    }
    </script>
    </body>
</html>
