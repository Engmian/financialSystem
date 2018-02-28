<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'actcenter.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <link rel="stylesheet" href="../../statics/css/shang.css">
    <link rel="stylesheet" href="../../statics/css/xia.css">
    <link rel="stylesheet" href="../../statics/css/zhongactcenter.css">
</head>

<body>
<!-- uiView:  -->
<div ui-view="" class="ng-scope" style="height: 100%; width: 100%;">
    <div ng-controller="mainCtrl" class="ng-scope ng-binding">


        <!-- 欢迎栏 -->
        <common-header class="ng-scope">
            <!-- 欢迎栏 -->
            <div ng-hide="isLoginPage" class="top-global-wrapper">
                <div class="top-content">
                    <div class="tel">
                        <i class="global-topphone"></i>
                        <b>客服热线：<span class="ng-binding">021-80339858</span> (周一至周五 09:00-18:00）</b>
                        <div class="appCode"><i class="global-topwechat"></i>
                            <div>
                                <img src="images/global/wechat.png">
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
                                <img src="images/global/app.png">
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
            <!-- 欢迎栏结束 -->
        </common-header>
        <!-- 欢迎栏结束 -->

        <!-- 导航 -->
        <div class="globalheader-wrapper">
            <div class="globalheader-wrap">
                <div ng-click="$state.go('main.home');" class="logo-wrap">
                    <img class="logo" src="../../statics/images/logo.png">
                    <!-- <span></span>
                    <img class="slogo" src="/images/global/slogo.png"> -->
                    <!--<i class="global-slogo"></i>-->
                </div>
                <!-- <i class="christmaslogo"></i> -->
                <div class="nav-box" ng-show="!noMenu">
                    <div>
                        <ul>
                            <li><a ng-class="{true: 'active'}[activeNav == 'home']" ng-click="activeNav='home'" href="/main/home" class="" style="">首页</a></li>
                            <li><a ng-class="{true: 'active'}[activeNav == 'bill']" ng-click="activeNav='bill'" href="/main/bankBillList" class="" style="">我要理财</a></li>
                            <!--exclusiveUser值为2 是恩福产品-->
                            <li ng-show="exclusiveUser == 2" class="ng-hide"><a ng-class="{true: 'active'}[activeNav == 'enfu']" ng-click="activeNav='enfu'" href="/main/enfu">专属产品</a></li>
                            <!--exclusiveUser值为1 是专属用户-->
                            <li ng-show="exclusiveUser == 1" class="ng-hide"><a ng-class="{true: 'active'}[activeNav == 'exclusivePro']" ng-click="activeNav='exclusivePro'" href="/main/exclusiveBillList">专属产品</a></li>
                            <li><a ng-class="{true: 'active'}[activeNav == 'help']" ng-click="activeNav='help'" href="/main/guarantee" class="" style="">安全保障</a></li>
                            <li><a ng-class="{true: 'active'}[activeNav == 'actcenter']" ng-click="activeNav='actcenter'" href="/main/actcenter" class="active" style="">活动中心</a></li>
                            <!--<li><a ng-class="{true: 'active'}[activeNav == 'guild']" ng-click="activeNav='guild'" href="{{a|webIE8}}main/guide">新手指引</a></li>-->
                            <!--<li class="account" ng-mouseenter="xxpl=true" ng-mouseleave="xxpl=false"><a ng-class="{true: 'active'}[activeNav == 'new']" ng-click="activeNav='new'" href="{{a|webIE8}}main/jt/JSGK?menuName=JSGK"><i class="drop"></i>信息披露</a>
                                <div class="con" ng-show="xxpl">
                                    <div>
                                        <a href="{{a|webIE8}}main/jt/JSGK?menuName=JSGK">关于我们</a>
                                        <a href="{{a|webIE8}}main/jt/GSZZ">公司资质</a>
                                        <a href="{{a|webIE8}}main/jt/YYYZ">一亿验资</a>
                                        <a href="{{a|webIE8}}main/jt/GSGG">网站公告</a>
                                    </div>
                                </div>
                            </li>-->
                            <li class="account"><a ng-class="{true: 'active'}[activeNav == 'new']" ng-click="activeNav='new'" href="/main/jt/GSJJ?menuName=GSJJ" class="" style="">信息披露</a></li>
                            <!--<li><a ng-class="{true: 'active'}[activeNav == 'hswelfare']" ng-click="activeNav='hswelfare'" href="{{a|webIE8}}main/hswelfare">沪深公益</a></li>-->
                            <!--<li class="account"><a ng-class="{true: 'active'}[activeNav == 'together']" href=""><i class="drop"></i>活动专区</a><div class="con"><div><a ng-click="activeNav='together'" href="{{a|webIE8}}main/together">线上活动</a><a href="{{a|webIE8}}main/openday">开放日</a><a href="{{a|webIE8}}main/welfarelist">公益活动</a></div></div></li>-->
                            <!-- ngIf: (a | isRegister).register -->
                        </ul>
                        <!-- ngIf: !(a | isRegister).register --><div class="nologin ng-scope" ng-if="!(a | isRegister).register">
                        <a href="/dl" class="login">登录</a>
                        <a href="/zhuce" class="register">注册送大礼</a>
                    </div><!-- end ngIf: !(a | isRegister).register -->
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
        <!-- 导航结束 -->



        <!--中间容器开始-->
        <div ui-view="" class="ng-scope" style=""><!-- 活动中心 -->
            <div class="actcenter ng-scope" ng-controller="actcenterCtrl" ng-init="status=1">
                <!-- 标题 -->
                <div class="top-box clearfix">
                    <div class="left">精彩活动</div>
                    <div class="right">
                        <span ng-click="change(1)" ng-class="{1:'active',2:''}[status]" class="clickable active">正在进行</span>
                        <span class="line">|</span>
                        <span ng-click="change(2)" ng-class="{1:'',2:'active'}[status]" class="clickable">往期回顾</span>
                    </div>
                </div>





                <!-- 活动 -->
                <div class="info-box">
                    <!-- 正在进行 -->
                    <!-- ngIf: status==1 --><div class="info ng-scope" ng-if="status==1">
                    <!-- 恩弗教育 -->
                    <div class="list offline clearfix">
                        <i class="lineIcon"></i>
                        <div class="up"><img src="../../statics/images/enfuImg.png"></div>
                        <div class="down">
                            <p class="title">恩弗教育扫码送课时</p>
                            <p class="time">活动时间：2018.1.15起</p>
                            <p style="color:#ff7a22;font-size:16px;">(仅限恩弗体育用户)</p>
                        </div>
                    </div>





                    <!-- ngRepeat: info in infolist -->
                    <!--cforeach包围-->
                    <c:forEach var="acts" items="${actions}" varStatus="cishu">
                        <div class="list clearfix ng-scope" ng-repeat="info in infolist" style="">
                            <i class="lineIcon"></i>
                           <div class="up"><img src="../../statics/images/${acts.act_pic}.png"></div>
                            <div class="down">
                                <p class="title ng-binding">${acts.act_name}</p>
                                <p class="time ng-binding">
                                    活动时间：<fmt:formatDate value="${acts.act_time_start}" pattern="yyyy.MM.dd"/>
                                    <!-- ngIf: info.endTime!=undefined && info.endTime!='' -->
                                    <span ng-if="info.endTime!=undefined &amp;&amp; info.   endTime!=''" class="ng-binding ng-scope">-
                                            <fmt:formatDate value="${acts.act_time_end}" pattern="yyyy.MM.dd"/></span><!-- end ngIf: info.endTime!=undefined && info.endTime!='' --><!-- ngIf: info.endTime==undefined || info.endTime=='' -->
                                </p>
                                <!-- ngIf: info.pcUrl!=undefined && info.pcUrl!='' --><a class="todetail ng-scope" href="https://hushenlc.cn/zudui" ng-if="info.pcUrl!=undefined &amp;&amp; info.pcUrl!=''">查看详情</a><!-- end ngIf: info.pcUrl!=undefined && info.pcUrl!='' -->
                            </div>
                        </div>
                    </c:forEach>
                    <!--cforeach包围-->





                    <!-- ngIf: showmore -->
                    <button class="more ng-scope" ng-click="more()" ng-if="showmore" style="">查看更多</button>
                    <!-- end ngIf: showmore -->
                </div>
                    <!-- end ngIf: status==1 -->

                    <!-- 往期回顾 -->
                    <!-- ngIf: status==2 -->

                </div>

            </div></div>
        <!--中间容器结束-->



        <!-- 底部 -->
        <div id="footer">
            <div class="footer-wrapper">
                <div class="foot-wrap">
                    <div class="foot-nav">
                        <div class="nav-mod">
                            <!-- <i class="common-fot-home"></i> -->
                            <p>信息披露</p>
                            <ul>
                                <li><a href="/main/jt/JSGK?menuName=JSGK" target="_blank">公司简介</a></li>
                                <!-- <li><a href="{{a|webIE8}}main/jt/FLFG?menuName=FLFG" target="_blank">法律法规</a></li> -->
                                <li><a href="/main/jt/LXWM?menuName=LXWM" target="_blank">联系我们</a></li>
                                <li><a href="/main/guarantee?menuName=guarantee" target="_blank">安全保障</a></li>
                            </ul>
                        </div>
                        <div class="nav-mod">
                            <!-- <i class="common-fot-qa"></i> -->
                            <p>帮助中心</p>
                            <ul>
                                <li><a href="/main/jt2/help?menuName=help" target="_blank">常见问题</a></li>
                                <li><a href="/main/guide" target="_blank">新手指引</a></li>
                                <li><a href="/main/FLFG" target="_blank">法律保障</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--<div class="modeline"></div>-->
                    <div class="foot-code">
                        <div class="mode">
                            <div class="box">
                                <img src="../../statics/images/appcode.png" width="100%" height="100%">
                            </div>
                            <p>
                                手机客户端<br>APP下载
                            </p>
                        </div>
                        <div class="mode">
                            <div class="box">
                                <img src="../../statics/images/weichar-code.png" width="100%" height="100%">
                            </div>
                            <p>
                                扫一扫<br>关注官方微信
                            </p>
                        </div>
                    </div>
                    <!--<div class="modeline"></div>                                                                -->
                    <div class="contact-wrap">
                        <div class="title">
                            <p>客服热线</p>
                        </div>
                        <strong class="ng-binding">021-80339858</strong>
                        <span class="serviceTime">周一至周五 09:00-18:00<!-- <br>法定节假日除外<br>客服QQ: --></span>
                        <div class="footerqq">
                            <div class="ico qqblue"><a href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&amp;key=XzgwMDgyMjQxMV80NzQ2ODdfODAwODIyNDExXw" target="_blank"><span class="text">客服QQ</span></a></div>
                            <!--<div class="ico emailblue" ng-focus="count=1" ng-mouseover="count=1" ng-mouseleave="count=0" ng-init="count=0"><span class="text">客服邮箱</span></div>-->
                            <div class="ico emailblue" ng-mouseover="mouseover()" ng-mouseout="mouseout()"><span class="text">客服邮箱</span></div>
                            <!-- ngIf: count -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="right-wrapper">
                <div class="foot-right">
                    <ul>
                        <!-- <li><a id='___szfw_logo___' href='https://credit.szfw.org/CX20161019026653110332.html' target='_blank'><img width="100" height="35" src='images/cert.png' border='0' /></a></li> -->
                        <!--<li><a id="_pingansec_bottomimagesmall_p2p" target="_blank" href="http://si.trustutn.org/info?sn=458161019000540153872&certType=4"><img width="100" height="35" src="images/hyrz.png"/></a></li>-->
                        <li>
                            <a class="spread-partners" href="http://www.sgs.gov.cn/shaic/" target="_blank">
                                <img src="../../statics/images/gsh.png">
                            </a>
                        </li>
                        <li>
                            <a class="spread-partners" href="http://www.12377.cn/" target="_blank">
                                <img src="../../statics/images/jbao.png">
                            </a>
                        </li>
                        <li>
                            <a class="spread-partners" href="http://www.zx110.org/" target="_blank">
                                <img src="../../statics/images/zxin.png">
                            </a>
                        </li>
                        <li>
                            <a class="spread-partners" href="http://www.jytpay.com/" target="_blank">
                                <img src="../../statics/images/pay.png">
                            </a>
                        </li>
                        <li>
                            <a class="spread-partners" href="https://www.aliyun.com/" target="_blank">
                                <img src="../../statics/images/aliyun.png">
                            </a>
                        </li>
                        <!-- <script type='text/javascript'>(function(){document.getElementById('___szfw_logo___').oncontextmenu = function(){return false;}})();</script> -->
                    </ul>

                    <div class="right-text">
                        <p class="ng-binding">粤ICP备17064674号-1 Copyright © 2017深圳前海云轩互联网金融服务有限公司v1.0.0</p>
                        <p>温馨提示：市场有风险，投资需谨慎</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- 底部结束 -->
    </div>
</div>
</body>
</html>
