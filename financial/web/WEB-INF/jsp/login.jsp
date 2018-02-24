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
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/login.css">
    <title>沪深理财-用户登录</title>
</head>
<body>
    <!--头部-->
    <div style="display: inline-block;width: 150px;height:50px;margin-top: 20px;
         margin-left: 150px;"><img src="${pageContext.request.contextPath}/statics/images/logo.png" style="display:inline-block;height: 40px;width:150px;"></div>&nbsp;
    <div style="display:inline-block;margin-top: -500px;margin-left: 0px"><span style="color: darkgrey;font-size: 15px">|&nbsp;国资100%控股</span></div>
    <!--登录部分-->
    <div id="aa">
        <div id="bb">
            <div id="cc">
                <div style="width: 40px;height: 1px;background-color: #999999; float: left;margin-top: 40px;"></div><div id="dd" style="margin-left: 5px">会员登录</div>
            </div>
            <div style="width: 275px;height: 1px;background-color: #999999; float: right;margin-top: -30px"></div>
            <div id="ee">
                <form action="getLogin" method="post">
                    <div style="display: inline-block;margin-top: 10px;margin-left: 60px">
                        <input type="text" name="uPhone" placeholder="请输入手机号码" style="width: 300px;height: 30px;color: dimgray;border: 1px darkgray solid" >
                    </div>
                    <!-- 当用户账号或密码错误时，此处需要提示用户账号密码错误，后台提示已传到页面，麻烦前端处理一下提示格式 -->
                    <%--<div style="font-size: 10px;color: red">${prompt}</div>--%>
                    <div style="display: inline-block;margin-top:30px;margin-left: 60px">
                        <input type="password" name="uPwd" placeholder="请输入密码"  style="width: 300px;height: 30px;color: dimgray;border: 1px darkgray solid" >
                    </div>
                    <div style="display: inline-block;margin-top: 30px;margin-left: 60px;">
                        <input type="submit" value="登录" style="color:white;text-align: center;font-size: 18px;background-color:silver;width: 300px;height: 40px;border: none">
                    </div>
                </form>
                <div style="margin-left: 60px; margin-top: 30px"><span style="color: #999999;font-size: 14px">没有账号？</span> <a href="${pageContext.request.contextPath}/registerController/gotoRegister" style="color: #007aff;font-size: 14px">快速注册</a> <span style="color: #999999;font-size: 14px">|</span> <a href="#" style="color: #007aff;font-size: 14px">忘记密码</a></div>
            </div>
        </div>
    </div>
    <!--底部-->
    <div id="ff">
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

    <div id="gg">
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

    <div id="hh">
        <p style="font-size: 20px;margin-left: 70px;color: gray">客服热线</p>
        <p style="font-size: 40px;color: #3288e6;margin-left: 70px;">021-80339858</p>
        <p style="font-size: 10px;color:gray;margin-left: 70px;">周一至周五 09:00-18:00</p>
    </div>

    <div>
        <img src="${pageContext.request.contextPath}/statics/images/2.png">
    </div>
</body>
</html>
