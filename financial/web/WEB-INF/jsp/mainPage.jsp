<%--
  Created by IntelliJ IDEA.
  User: 42958
  Date: 2018/2/24
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>沪深理财-网贷投资理财</title>
    <link rel="stylesheet" href="../../statics/css/zhu.css">
    <script type="text/javascript" src="../../statics/js/jquery.min.js"></script>
    <script type="text/javascript" src="../../statics/js/jquery.easyui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="http://www.java1234.com/">
    <script type="text/javascript" src="../../statics/js/counter.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
        var longWidth=80;
        var shortWidth=longWidth;
        $(".span_shree").animate({
            width:shortWidth+"px"
        },'slow');
    </script>

</head>
<body>
<!--客服-->
<div ng-hide="isLoginPage" class="top-global-wrapper">
    <div class="top-content">
        <div class="tel">
            <i class="global-topphone"></i>
            <b>客服热线：<span class="ng-binding">021-80339858</span> (周一至周五 09:00-18:00）</b>
            <div class="appCode"><i class="global-topwechat"></i>
                <div>
                    <img src="../../statics/images/wechat.png">
                    <p>扫一扫<br>关注官方微信</p>
                </div>
            </div>
        </div>
        <div class="top-nav">
            <!--<a href="{{a|webIE8}}main/home" target="_blank">首页</a><span class="verLine">|</span>-->
            <a class="pad12" href="/inviteFriends" target="_blank"><i class="global-gift"></i>邀请有礼</a><span class="verLine pad12">|</span>
            <a class="pad12 padR0" href="/main/guide" target="_blank">新手指引</a><span>|</span>
            <a class="pad12 padR0" href="/main/jt2/help?menuName=help" target="_blank">帮助中心</a><span>|</span>
            <div class="appCode pad12" style="margin-right: -4px;"><a href="/downloadApp"><i>APP下载</i></a>
                <div>
                    <img src="../../statics/images/app.png">
                    <p>手机客户端<br>APP下载</p>
                </div>
            </div>
            <!--<span>|</span>-->
            <!--<a ng-if="!(a | isRegister).register" href="/dl" class="register">　登录</a>-->
            <!-- ngIf: (a | isRegister).register -->

            <!-- ngIf: (a | isRegister).register -->
            <!-- ngIf: (a | isRegister).register -->
            <a ng-show="(a | isRegister).register" ng-click="userOut()" href="#" class="top-quit ng-hide" style="">退出</a>
        </div>
    </div>
</div>
<!--沪深理财-->
<div class="globalheader-wrapper">
    <div class="globalheader-wrap">
        <div ng-click="$state.go('main.home');" class="logo-wrap">
            <img class="logo" src="../../statics/images/logo.png">

        </div>
        <div class="nav-box" ng-show="!noMenu">
            <div>
                <ul>
                    <li><a ng-class="{true: 'active'}[activeNav == 'home']" ng-click="activeNav='home'" href="/main/home" class="active">首页</a></li>
                    <li><a ng-class="{true: 'active'}[activeNav == 'bill']" ng-click="activeNav='bill'" href="/main/bankBillList">我要理财</a></li>
                    <li ng-show="exclusiveUser == 2" class="ng-hide"><a ng-class="{true: 'active'}[activeNav == 'enfu']" ng-click="activeNav='enfu'" href="/main/enfu">专属产品</a></li>
                    <li ng-show="exclusiveUser == 1" class="ng-hide"><a ng-class="{true: 'active'}[activeNav == 'exclusivePro']" ng-click="activeNav='exclusivePro'" href="/main/exclusiveBillList">专属产品</a></li>
                    <li><a ng-class="{true: 'active'}[activeNav == 'help']" ng-click="activeNav='help'" href="/main/guarantee">安全保障</a></li>
                    <li><a ng-class="{true: 'active'}[activeNav == 'actcenter']" ng-click="activeNav='actcenter'" href="/main/actcenter">活动中心</a></li>
                    <li class="account"><a ng-class="{true: 'active'}[activeNav == 'new']" ng-click="activeNav='new'" href="/main/jt/GSJJ?menuName=GSJJ">信息披露</a></li>
                </ul>
                <div class="nologin ng-scope" ng-if="!(a | isRegister).register">
                    <a href="${pageContext.request.contextPath}/loginController/gotoLogin" class="login">登录</a>
                    <a href="${pageContext.request.contextPath}/registerController/gotoRegister" class="register">注册送大礼</a>
                </div>
            </div>
        </div>

        <!-- 绑卡（无头部菜单） -->
        <div class="nonav ng-hide" ng-show="!rechargePros &amp;&amp; noMenu">
            <img src="/images/bindcard/bindcarBar.png" ng-show="investInfo" class="ng-hide">
        </div>

        <!-- 完成充值（无头部菜单） -->
        <div class="nonav ng-hide" ng-show="!fullProcess &amp;&amp; rechargePros &amp;&amp; noMenu">
            <img src="/images/bill/rechargePros.png">
        </div>

        <!-- 完成投资（无头部菜单） -->
        <div class="nonav ng-hide" ng-show="fullProcess &amp;&amp; noMenu">
            <img ng-show="fullProcess" src="/images/bill/fullProcess.png" class="ng-hide">
            <img ng-show="!fullProcess" src="/images/bill/rechargePros.png" class="">
        </div>

    </div>
</div>
<!--轮播图-->
<div class="home-banner">
    <div class="banner-box">
        <div class="hello-box login-false">
            <div class="login my-box">
                <!-- ngIf: user.realName != undefined -->
                <!-- ngIf: user.realName == undefined --><div ng-if="user.realName == undefined" class="hello ng-binding ng-scope">欢迎您，*****！</div><!-- end ngIf: user.realName == undefined -->
                <div class="my-info">
                    <div class="my-account">
                        <span ng-show="showBalance" class="balance">账户余额：<b class="ng-binding"></b>元</span>
                    </div>
                    <div class="account-tip">近30天共有<b class="ng-binding"></b>笔待收收益</div>
                </div>
                <a href="/main/myAccount/accountHome" class="hello-btn">我的账户</a>
                <div class="operate"><a href="" ng-click="userOut('userOut')" class="quit">安全退出</a></div>
            </div>
            <div class="nologin my-box nologin">
                <!-- <div class="hello">预期最高年化收益<strong><i>可达</i><span>13</span>%</strong></div> -->
                <div class="hello welcome">
                    <!--<i>——</i>&nbsp;&nbsp;欢迎加入沪深理财&nbsp;&nbsp;<i>——</i>-->
                    <i>历史年化收益率</i>
                    <h2><span>6</span>% &nbsp;~&nbsp;<span>12</span>%</h2>
                </div>

                <a href="${pageContext.request.contextPath}/registerController/gotoRegister" class="register" style="width: 214px!important;">注册领288红包</a>
                <!-- <i ng-if="!(a | isRegister).register" class="home-icon"></i> -->
                <div class="operate">
                    已有账号？<a href="${pageContext.request.contextPath}/loginController/gotoLogin" class="">立即登录</a></div>
            </div>
        </div>
    </div>
    <div class="banner-img">
        <!-- <my-banner></my-banner> -->
        <div class="swiper-container swiper-container-h ng-isolate-scope swiper-container-horizontal" style="width:100%;height:350px;width:100%;height:350px;" banner="banner">
            <div class="swiper-wrapper ng-scope" style="transform: translate3d(-3540px, 0px, 0px); transition-duration: 0ms;">
                <div class="swiper-slide swiper-slide-duplicate" style="background: url(../../statics/images/20171107505c9327-e0b0-4642-9977-f49fee40e6e1.png) center top no-repeat; width: 1180px;" data-swiper-slide-index="4">
                    <a target="_blank" href="https://hushenlc.cn/creditRating"></a>
                </div>
                <div class="swiper-slide" style="background: url(../../statics/images/201802030cd5b78b-b4a0-4310-b96e-3be0693cc94e.png) center top no-repeat; width: 1180px;" data-swiper-slide-index="0">
                    <a target="_blank" href="https://hushenlc.cn/chunjie2018"></a>
                </div>
                <div class="swiper-slide swiper-slide-prev" style="background: url(../../statics/images/201712045fbc987b-7194-4ea6-bae8-a4f5e66dda2f.png) center top no-repeat; width: 1180px;" data-swiper-slide-index="1">
                    <a target="_blank" href="https://hushenlc.cn/inviteFriends"></a>
                </div>
                <div class="swiper-slide swiper-slide-active" style="background: url(../../statics/images/201801318b418773-c469-4c35-a35e-d378d6880618.png) center top no-repeat; width: 1180px;" data-swiper-slide-index="2">
                    <a target="_blank" href="http://hushenlc.cn/conference"></a>
                </div>
                <div class="swiper-slide swiper-slide-next" style="background: url(../../statics/images/20171116d45e4541-91a0-44b7-b224-08873a06b596.png) center top no-repeat; width: 1180px;" data-swiper-slide-index="3">
                    <a target="_blank" href="https://hushenlc.cn/main/jt/GGXQ?newId=137&amp;t=2"></a>
                </div>
                <div class="swiper-slide" style="background: url(../../statics/images/20171107505c9327-e0b0-4642-9977-f49fee40e6e1.png) center top no-repeat; width: 1180px;" data-swiper-slide-index="4">
                    <a target="_blank" href="https://hushenlc.cn/creditRating"></a>
                </div>
                <div class="swiper-slide swiper-slide-duplicate" style="background: url(../../statics/images/201802030cd5b78b-b4a0-4310-b96e-3be0693cc94e.png) center top no-repeat; width: 1180px;" data-swiper-slide-index="0">
                    <a target="_blank" href="https://hushenlc.cn/chunjie2018"></a>
                </div>
            </div>
            <div class="swiper-pagination trigger-wrap">
                <div class="trigger-box swiper-pagination-h swiper-pagination-clickable swiper-pagination-bullets">
                    <span class="swiper-pagination-bullet">新年礼</span>
                    <span class="swiper-pagination-bullet">邀请送话费</span>
                    <span class="swiper-pagination-bullet swiper-pagination-bullet-active">战略合作发布会</span>
                    <span class="swiper-pagination-bullet">银行存管</span>
                    <span class="swiper-pagination-bullet">AA+信用评级</span>
                </div>
            </div>
            <div class="button-box">
                <div class="swiper-button-next btn-next"></div>
                <div class="swiper-button-prev btn-prev"></div>
            </div>
        </div>
        <!-- <div class="trigger-wrap"><div class="trigger-box"></div></div> -->
    </div>
</div>
<!--公告栏-->
<div class="notice-wrapper">
    <div class="notice-box">
            <span class="noticet">最新公告
            <i class="home-tip"></i>
            </span>
        <div class="con"><a href="#">${后端程序员插入最新一条公告内容}</a></div>
        <p><a href="#">更多>></a></p>
    </div>
</div>
<!--公告栏以下-->
<div class="home-content-wrapper">
    <div class="feature-wrap">
        <div class="platformData">
            <ul>
                <li>平台数据</li>
                <li>
                    累计投资金额
                    <span>
                            ￥
                        <h2 class="timr currency count-title" id="count-number">

                            ${platformData.cumulative_investment}

                        </h2>
                            元
                        </span>
                </li>
                <li>
                    已为用户赚取利益
                    <span>
                            ￥
                            <h2 class="timr currency count-title" id="count-number2">${platformData.profit}</h2>
                            元
                        </span>
                </li>
                <li>
                    平台用户
                    <span>
                            <h2 class="timr currency count-title" id="count-number3">${platformData.platform_use}</h2>
                            人
                        </span>
                </li>
            </ul>
        </div>
        <div class="feature-list">
            <div class="feature-box">
                <ul>
                    <li>
                        <p class="img ng-scope">
                            <img src="../../statics/images/newyear1.png">
                        </p>
                        <div>
                            <span>实力雄厚</span>
                            <p>实缴1亿注册资金</p>
                        </div>
                    </li>
                    <li>
                        <p class="img ng-scope">
                            <img src="../../statics/images/newyear2.png">
                        </p>
                        <div>
                            <span>风险保障</span>
                            <p>精准风控优先垫付</p>
                        </div>
                    </li>
                    <li>
                        <p class="img ng-scope">
                            <img src="../../statics/images/newyear3.png">
                        </p>
                        <div>
                            <span>银行存管</span>
                            <p>正式签约存管协议</p>
                        </div>
                    </li>
                    <li>
                        <p class="img ng-scope">
                            <img src="../../statics/images/newyear4.png">
                        </p>
                        <div>
                            <span>合规经营</span>
                            <p>专业级律法支持</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="feature-ad cursor-pointer border0 video">
            <img src="../../statics/images/video.png">
        </div>
    </div>
</div>
<!--新手区到合作公告-->
<div class="pro-wrapper">
    <!--新手到精准理财-->
    <div class="pro-wrap">
        <div class="promod phone-promod">
            <div class="data border0">
                <div class="inner">
                    <div class="caption">
                        <div>
                            <img src="../../statics/images/newIco.png">
                            <i>新手专区</i>
                            实现理财第一桶金
                        </div>
                    </div>
                    <div class="innerCnt">
                        <div class="redPacket">
                            <img src="../../statics/images/redPacket.png">
                        </div>
                        <div class="info">
                            <div class="title ng-binding">
                                ${noviceType.pro_type}第${noviceType.stage}期
                                <span class="txt">可用新手红包</span>
                            </div>
                            <table class="list">
                                <tbody>
                                <tr>
                                    <td width="37%" class="rate">
                                        <strong class="ng-binding">${noviceType.pro_pro}</strong>

                                    </td>
                                    <td width="33%">
                                        <strong class="ng-binding">${noviceType.pro_day}</strong>
                                        天
                                    </td>
                                    <td width="33%">
                                        <div class="toInvest">
                                            <a class="invest-btn">立即抢购</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="bot">
                                    <td width="30%">
                                        <p>历史年化收益率</p>
                                    </td>
                                    <td width="37%">
                                        <p>投资期限</p>
                                    </td>
                                    <td idthw="33%">
                                        <p>${noviceType.pro_fi}</p>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="inner">
                    <div class="caption">
                        <div>
                            <img src="../../statics/images/hotIco.png">
                            <i>热门活动</i>
                            期期送好礼
                        </div>
                    </div>
                   <%-- <div class="innerCnt act ng-scope">
                        <div class="redPacket margin0">
                            <img src="../../statics/images/20180122acc0bdd1-a4d7-4833-bdfb-40748d1a006a.png">
                        </div>
                        <div class="info">
                            <div class="title">
                                ${huShenMark.pro_type}
                                <span class="txt intro">投资白拿京东卡</span>
                            </div>
                            <table class="list">
                                <tbody>
                                <tr>
                                    <td width="37%" class="rate">
                                        <strong class="ng-binding">${huShenMark.pro_pro}</strong>
                                    </td>
                                    <td width="33%">
                                        <strong class="ng-binding">${huShenMark.pro_day}</strong>
                                        天
                                    </td>
                                    <td width="33%">
                                        <div class="toInvest">
                                            <a class="invest-btn">立即预约</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="bot">
                                    <td width="30%">
                                        <p>历史年化收益率</p>
                                    </td>
                                    <td width="37%">
                                        <p>投资期限</p>
                                    </td>
                                    <td idthw="33%">
                                        <p>${huShenMark.pro_fi}</p>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
        <!--理财-->
        <div class="promod backff">
            <div class="side side-last">
                <h2>精选理财</h2>
                <p>定期投资</p>
                <p>分散投标</p>
                <a href="#">查看更多</a>
                <p class="packet"></p>
            </div>
            <div class="data">
                <div class="product-wrap">
                    <div class="product">
                        <table>
                            <tbody>
                            <tr>
                                <td class="ng-scope">
                                    <div class="cuowei mode pull-left">
                                        <div class="top ng-binding">
                                            ${huShen30.pro_type}${huShen30.pro_day}第${huShen30.stage}期
                                            <div class="platformDis ng-binding">
                                                平台贴息${huShen30.platform_discount}%
                                            </div>
                                        </div>
                                        <div class="data">
                                                <span>
                                                    <b class="ng-binding>">${huShen30.pro_pro}</b>
                                                    <i class="ng-binding ng-scope">+${huShen30.platform_discount}%</i>
                                                </span>
                                            <p>历史年化收益率</p>
                                        </div>
                                        <div class="percentage-box homepercent">
                                            <div class="percentage homeper">
                                                <span style="width: 7%" id="span_shree"></span>
                                            </div>
                                        </div>
                                        <div class="deadline">
                                            <p>期限<b class="ng-binding">${huShen30.pro_day}</b>天</p>
                                        </div>
                                        <div class="toInvest">
                                            <a class="invest-btn ng-binding">立即投资</a>
                                        </div>
                                    </div>
                                </td>
                                <td class="ng-scope">
                                    <!--复制-->
                                    <div class="cuowei mode pull-left">
                                        <div class="top ng-binding">
                                            ${huShen60.pro_type}${huShen360.pro_day}第${huShen60.stage}期
                                            <div class="platformDis ng-binding">
                                                平台贴息${huShen60.platform_discount}%
                                            </div>
                                        </div>
                                        <div class="data">
                                                <span>
                                                    <b class="ng-binding>">${huShen60.pro_pro}</b>
                                                    <i class="ng-binding ng-scope">+${huShen60.platform_discount}%</i>
                                                </span>
                                            <p>历史年化收益率</p>
                                        </div>
                                        <div class="percentage-box homepercent">
                                            <div class="percentage homeper">
                                                <span style="width: 7%" id="span30"></span>
                                            </div>
                                        </div>
                                        <div class="deadline">
                                            <p>期限<b class="ng-binding">${huShen60.pro_day}</b>天</p>
                                        </div>
                                        <div class="toInvest">
                                            <a class="invest-btn ng-binding">立即投资</a>
                                        </div>
                                    </div>
                                </td>
                                <td class="ng-scope">
                                    <div class="cuowei mode pull-left">
                                        <div class="top ng-binding">
                                            ${huShen90.pro_type}${huShen90.pro_day}第${huShen90.stage}期
                                            <div class="platformDis ng-binding">
                                                平台贴息${huShen90.platform_discount}%
                                            </div>
                                        </div>
                                        <div class="data">
                                                <span>
                                                    <b class="ng-binding>">${huShen90.pro_pro}</b>
                                                    <i class="ng-binding ng-scope">+${huShen90.platform_discount}%</i>
                                                </span>
                                            <p>历史年化收益率</p>
                                        </div>
                                        <div class="percentage-box homepercent">
                                            <div class="percentage homeper">
                                                <span style="width: 7%"></span>
                                            </div>
                                        </div>
                                        <div class="deadline">
                                            <p>期限<b class="ng-binding">${huShen90.pro_day}</b>天</p>
                                        </div>
                                        <div class="toInvest">
                                            <a class="invest-btn ng-binding">立即投资</a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--年度新锐-->
    <div class="pro-banner">
        <a class="item" href="#">
            <img src="../../statics/images/zx.png">
            <a class="item" href="#">
                <img src="../../statics/images/hlw.png">
            </a>
            <a class="item" href="#">
                <img src="../../statics/images/racd.png">
            </a>
        </a>
    </div>
    <!--新闻-->
    <div class="news-wrap">
        <div class="news-con">
            <div class="news tips">
                <div class="title">
                    <a class="more" href="#">更多>></a>
                    <span>网站公告</span>
                </div>
                <div class="con">
                    <ul>
                        <li class="ng-scope">
                            <span class="ng-binding">$日期</span>
                            <a class="nh-binding" href="#">$第一条公告</a>
                        </li>
                        <li class="ng-scope">
                            <span class="ng-binding">$日期</span>
                            <a class="nh-binding" href="#">$第二条公告</a>
                        </li>
                        <li class="ng-scope">
                            <span class="ng-binding">$日期</span>
                            <a class="nh-binding" href="#">$第三条公告</a>
                        </li>
                        <li class="ng-scope">
                            <span class="ng-binding">$日期</span>
                            <a class="nh-binding" href="#">$第四条公告</a>
                        </li>
                        <li class="ng-scope">
                            <span class="ng-binding">$日期</span>
                            <a class="nh-binding" href="#">$第五条公告</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="news">
                <div class="title">
                    <a href="#" class="more">更多>></a>
                    <span>媒体动态</span>
                </div>
                <div class="con my-swiper-container ng-isolate-scope">
                    <div class="pics swiper-container-news swiper-container-horizontal">
                    </div>
                    <ul class="ng-scope">
                        <li class="active">
                            <i class="home-dot"></i>
                            <a href="#">第一条</a>
                        </li>
                        <li class="active">
                            <i class="home-dot"></i>
                            <a href="#">第2条</a>
                        </li>
                        <li class="active">
                            <i class="home-dot"></i>
                            <a href="#">第3条</a>
                        </li>
                        <li class="active">
                            <i class="home-dot"></i>
                            <a href="#">第4条</a>
                        </li>
                        <li class="active">
                            <i class="home-dot"></i>
                            <a href="#">第5条</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--合作机构-->
    <div class="partners">
        <div class="partner-title">
            <span>合作机构</span>
        </div>
        <div class="partner-box">
            <ul class="partner-list">
                <li class="partner-box-item">
                    <img src="../../statics/images/01.png">
                </li>
                <li class="partner-box-item">
                    <img src="../../statics/images/02.png">
                </li>
                <li class="partner-box-item">
                    <img src="../../statics/images/03.png">
                </li>
                <li class="partner-box-item">
                    <img src="../../statics/images/04.png">
                </li>
                <li class="partner-box-item">
                    <img src="../../statics/images/05.png">
                </li>
                <li class="partner-box-item">
                    <img src="../../statics/images/06.png">
                </li>
                <li class="partner-box-item">
                    <img src="../../statics/images/07.png">
                </li>
                <li class="partner-box-item">
                    <img src="../../statics/images/08.png">
                </li>
                <li class="partner-box-item">
                    <img src="../../statics/images/09.png">
                </li>
                <li class="partner-box-item">
                    <img src="../../statics/images/010.png">
                </li>
            </ul>
        </div>
    </div>
</div>
<div id="footer">
    <div class="footer-wrapper">
        <div class="foot-wrap">
            <div class="foot-nav">
                <div class="nav-mod">
                    <p>信息劈了</p>
                    <ul>
                        <li>
                            <a href="#">公司简介</a>
                        </li>
                        <li>
                            <a href="#">联系我们</a>
                        </li>
                        <li>
                            <a href="#">安全保障</a>
                        </li>
                    </ul>
                </div>
                <div class="nav-mod">
                    <p>帮助中心</p>
                    <ul>
                        <li>
                            <a href="#">常见问题</a>
                        </li>
                        <li>
                            <a href="#">新手指引</a>
                        </li>
                        <li>
                            <a href="#">法律保障</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="foot-code">
                <div class="mode">
                    <div class="box">
                        <!--二维码-->
                        <img src="../../statics/images/appcode.png" width="100%" height="100%">
                    </div>
                    <p>手机客户端<br/>APP下载</p>
                </div>
                <div class="mode">
                    <div class="box">
                        <!--二维码-->
                        <img src="../../statics/images/appcode.png" width="100%" height="100%">
                    </div>
                    <p>扫一扫<br/>关注官方微信</p>
                </div>
            </div>
            <div class="contact-wrap">
                <div class="title">
                    <p>客服热线</p>
                </div>
                <strong class="ng-binding">021-80888888</strong>
                <span class="serviceTime">
                        周一到周五 09:30-18:30
                    </span>
                <div class="footerqq">
                    <div class="ico qqblue">
                        <a href="#" >
                            <span class="text">客服QQ</span>
                        </a>
                    </div>
                    <div class="ico emailblue">
                        <span class="text">客服邮箱</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="right-wrapper">
        <div class="foot-right">
            <ul>
                <li>
                    <a class="sperad-partners" href="#">
                        <img src="../../statics/images/gsh.png">
                    </a>
                </li>
                <li>
                    <a class="sperad-partners" href="#">
                        <img src="../../statics/images/jbao.png">
                    </a>
                </li>
                <li>
                    <a class="sperad-partners" href="#">
                        <img src="../../statics/images/zxin.png">
                    </a>
                </li>
                <li>
                    <a class="sperad-partners" href="#">
                        <img src="../../statics/images/pay.png">
                    </a>
                </li>
                <li>
                    <a class="sperad-partners" href="#">
                        <img src="../../statics/images/aliyun.png">
                    </a>
                </li>
            </ul>
            <div class="right-text">
                <p class="ng-binding">粤ICP备17064674号-1 Copyright © 2017深圳前海云轩互联网金融服务有限公司v1.0.0</p>
                <p>温馨提示：市场有风险，投资需谨慎</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
