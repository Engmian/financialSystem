
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
    
    <title>My JSP 'bankBillList3.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
      <link rel="stylesheet" href="../../statics/css/shang.css">
      <link rel="stylesheet" href="../../statics/css/zhongbankBillList.css">
      <link rel="stylesheet" href="../../statics/css/xia.css">

  </head>
  
  <body>
    <div ui-view="" class="ng-scope" style="height: 100%; width: 100%;">
    <!--上-->
    <div ng-controller="mainCtrl" class="ng-scope ng-binding">


        <!-- 欢迎栏 -->
        <common-header class="ng-scope"><!-- 欢迎栏 -->
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
            <!-- 欢迎栏结束 --></common-header>
        <!--<div ng-hide="isLoginPage" class="top-global-wrapper">-->
        <!--<div class="top-content">-->
        <!--<div class="tel">-->
        <!--<i class="global-topphone"></i>-->
        <!--<b>客服热线：<span>{{(a | web).phone}}</span>（周一至周五 09:00-18:00）</b>-->
        <!--</div>-->
        <!--<div class="top-nav">-->
        <!--&lt;!&ndash;<a href="{{a|webIE8}}main/guide" target="_blank">新手指引</a><span style="margin-right: 12px;">|</span>&ndash;&gt;-->
        <!--<a href="{{a|webIE8}}main/jt2/help?menuName=help" target="_blank">帮助中心</a>-->
        <!--<span>|</span>-->
        <!--<div class="appCode">-->
        <!--<a href="{{a|webIE8}}downloadApp" target="_blank"><i>手机APP</i></a>-->
        <!--&lt;!&ndash;<a target="_blank"><i>手机APP</i></a>&ndash;&gt;-->
        <!--<div>-->
        <!--<img src="images/global/app.png">-->
        <!--<p>手机客户端<br>APP下载</p>-->
        <!--</div>-->
        <!--</div>-->
        <!--<span style="margin-left: -4px;">|</span>-->
        <!--<div class="appCode"><i class="global-topwechat"></i>-->
        <!--<div>-->
        <!--<img src="images/global/wechat.png">-->
        <!--<p>扫一扫<br>关注官方微信</p>-->
        <!--</div>-->
        <!--</div>-->

        <!--&lt;!&ndash;之前的样式<span ng-if="(a | isRegister).register" style="margin: 0 8px 0 -8px;">|</span>下面的是新增&ndash;&gt;-->
        <!--<span ng-if="(a | isRegister).register" style="margin: 0 3px;">|</span>-->
        <!--<a ng-if="(a | isRegister).register" href="" ng-click="gotoLoginPage('myAccount')">{{(a | isRegister).user.userName}}</a>-->
        <!--<i ng-if="(a | isRegister).register">，</i>-->
        <!--<a ng-show="(a | isRegister).register" ng-click="userOut()" href="#" class="top-quit">退出</a>-->
        <!--</div>-->
        <!--</div>-->
        <!--</div>-->
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
                            <li><a ng-class="{true: 'active'}[activeNav == 'home']" ng-click="activeNav='home'" href="/main/home" class="active" style="">首页</a></li>
                            <li><a ng-class="{true: 'active'}[activeNav == 'bill']" ng-click="activeNav='bill'" href="/main/bankBillList" class="" style="">我要理财</a></li>
                            <!--exclusiveUser值为2 是恩福产品-->
                            <li ng-show="exclusiveUser == 2" class="ng-hide"><a ng-class="{true: 'active'}[activeNav == 'enfu']" ng-click="activeNav='enfu'" href="/main/enfu">专属产品</a></li>
                            <!--exclusiveUser值为1 是专属用户-->
                            <li ng-show="exclusiveUser == 1" class="ng-hide"><a ng-class="{true: 'active'}[activeNav == 'exclusivePro']" ng-click="activeNav='exclusivePro'" href="/main/exclusiveBillList">专属产品</a></li>
                            <li><a ng-class="{true: 'active'}[activeNav == 'help']" ng-click="activeNav='help'" href="/main/guarantee" class="" style="">安全保障</a></li>
                            <li><a ng-class="{true: 'active'}[activeNav == 'actcenter']" ng-click="activeNav='actcenter'" href="/main/actcenter" class="" style="">活动中心</a></li>
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
    </div>
    <!--上结束-->

    <!-- 中间容器 -->
    <!-- uiView:  -->
    <div ui-view="" class="ng-scope" style="">
        <div ng-controller="bankBillCtrl" class="ng-scope">

            <!-- <div class="bread-nav-wrapper">
            <div class="bread-nav">
                <div class="bread-box">
                <span ng-repeat="item in path"><a href="{{item.url}}">{{item.pathName}}</a> > </span>{{title}}
                </div>
            </div>
        </div> -->



            <!--左边固定开始-->
            <float-menu class="ng-scope">
                <div class="float-window">
                    <div class="float-mod" ng-mouseenter="enter($event)" ng-mouseleave="leave($event)">
                        <div class="absolute text">
                            客服QQ：800822411<br>周一至周五：09:00-18:00
                        </div>
                        <div>
                            <div class="float-ico zxkf" style="margin-top: 0px;">
                            </div>
                            <div class="float-text">
                                <a href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&amp;key=XzgwMDgyMjQxMV80NzQ2ODdfODAwODIyNDExXw" target="_blank">
                                    客服<br>QQ
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="float-mod" ng-mouseenter="enter($event)" ng-mouseleave="leave($event)">
                        <img class="absolute" src="../../statics/images/weixincode.jpg">
                        <div>
                            <div class="float-ico weixin" style="margin-top: 0px;">
                            </div>
                            <div class="float-text">
                                微信<br>扫码
                            </div>
                        </div>
                    </div>
                    <div class="float-mod" ng-mouseenter="enter($event)" ng-mouseleave="leave($event)">
                        <img class="absolute" src="../../statics/images/appcode.png">
                        <div>
                            <div class="float-ico app" style="margin-top: 0px;"></div>
                            <div class="float-text">
                                下载<br>APP
                            </div>
                        </div>
                    </div>
                    <!--&lt;!&ndash; ngIf: (a | isRegister).register &ndash;&gt;-->
                    <div class="float-mod" ng-click="goTop()" ng-mouseenter="enter($event)" ng-mouseleave="leave($event)">
                        <div>
                            <div class="float-ico top"></div>
                            <div class="float-text">
                                返回<br>顶部
                            </div>
                        </div>
                    </div>
                </div>
            </float-menu>
            <!--左边固定结束-->




            <div class="bill-content-wrapper">
                <div class="bill-list-wrap">

                    <!-- 聚划算 -->
                    <div class="billing-list">
                        <div class="bill-mode">
                            <!--<div class="list-title">-->
                            <!--<a href="/main/pastBillList?type=3"><i class="listicon-old"></i>往期产品</a>-->
                            <!--<b class="listicon-ju"></b>-->
                            <!--<p>聚划算</p>-->
                            <!--<div class="filter-wrap">-->
                            <!--<span>排序：</span>-->
                            <!--<ul>-->
                            <!--<li ng-click="onClickPage('默认', 1, '聚划算')" ng-class="{0:'actived',1:'',2:'',3:'',4:''}[ju.order]">默认</li>-->
                            <!--<li ng-click="onClickPage('利率', 1, '聚划算')" ng-class="{0:'',1:'actived',2:'actived',3:'',4:''}[ju.order]"><i ng-class="{1: 'bill-down', 2: 'bill-up'}[ju.lv]"></i>历史年化收益率</li>-->
                            <!--<li ng-click="onClickPage('期限', 1, '聚划算')" ng-class="{0:'',1:'',2:'',3:'actived',4:'actived'}[ju.order]"><i ng-class="{3: 'bill-down', 4: 'bill-up'}[ju.qx]"></i>期限</li>-->
                            <!--</ul>-->
                            <!--</div>-->
                            <!--&lt;!&ndash; <div class="nums">共{{listDatas.total - 1}}条</div> 把新手标的个数去掉  &ndash;&gt;-->
                            <!--</div>-->

                            <div class="list-box">
                                <!-- ngRepeat: item in juList -->
                            </div>
                        </div>
                    </div>

                    <!-- 优选 -->
                    <div class="billing-list billing-act">
                        <div class="bill-mode">

                            <div class="list-title">
                                <a href="/main/pastBillList?type=1"><i class="listicon-old"></i>往期产品</a>
                                <b class="listicon-you"></b>
                                <p>优选理财</p>
                                <div class="filter-wrap">
                                    <span>排序：</span>
                                    <ul>
                                        <li ng-click="onClickPage('默认', 1, 2)" ng-class="{0:'actived',1:'',2:'',3:'',4:''}[an.order]" class="actived">默认</li>
                                        <li ng-click="onClickPage('利率', 1, 2)" ng-class="{0:'',1:'actived',2:'actived',3:'',4:''}[an.order]"><i ng-class="{1: 'bill-down', 2: 'bill-up'}[an.lv]" class="bill-down"></i>历史年化收益率</li>
                                        <li ng-click="onClickPage('期限', 1, 2)" ng-class="{0:'',1:'',2:'',3:'actived',4:'actived'}[an.order]"><i ng-class="{3: 'bill-down', 4: 'bill-up'}[an.qx]" class="bill-down"></i>期限</li>
                                    </ul>
                                </div>
                                <!-- <div class="nums">共{{listDatas.total - 1}}条</div> 把新手标的个数去掉  -->
                            </div>

                            <div class="list-box">

                                <!-- ngRepeat: item in youList -->
                                <!--这里c:foreach-->
                               <c:forEach var="us" items="${productsList}" varStatus="cishu">
                                	<div class="list-mode-box ng-scope" ng-repeat="item in youList" style="">
                                    <!-- ngIf: item.type != 1 -->
                                    <div class="list-mode hot-mode new-mode ng-scope" ui-sref="main.billDetail({ id: item.id })" ng-class="{6: 'end-mode',7: 'end-mode',8: 'end-mode',9: 'end-mode'}[item.status]" ng-if="item.type != 1" href="/main/billDetail?id=5788">
                                        <!-- ngIf: item.isHot == 1 -->
                                        <i class="icon home-icons-hot ng-scope bill-hoticon" ng-class="{0:'bill-billingicon',1:'bill-hoticon'}[item.isHot]" ng-if="item.isHot == 1"></i>
                                        <!-- end ngIf: item.isHot == 1 -->
                                        <!-- ngIf: item.atid != undefined -->
                                        <!-- ngIf: item.atid -->
                                        <div class="bill-name">
                                            <div class="name ng-binding">
                                                <!-- ngIf: item.billType == 2 -->
                                                <!-- ngIf: item.billType == 1 -->
                                                <i class="public-shangicon ng-scope" ng-if="item.billType == 1"></i>
                                                <!-- end ngIf: item.billType == 1 -->
                                                <c:out value="${us.pro_name}"></c:out>
                                                <!--<span class="honour-tip" ng-show="item.accept != undefined && item.accept != ''"><i class="common-honour-icon"></i>{{item.accept}}</span>-->
                                            </div>
                                            <div class="feature-box">
                                                <p class="feature">
                                                    <span>红包·加息券·翻倍券</span>
                                                    <!--<span ng-if="item.isInterest==1">加息券</span>
                                                    <span ng-if="item.isCash==1">红包</span>
                                                    <span ng-if="item.isDouble==1 ">翻倍券</span>
                                                    <span ng-if="item.isRepair==1 ">补标</span>-->
                                                    <!-- <span ng-if="item.activityRate>0 ">活动</span> -->
                                                </p>
                                            </div>
                                            <div class="lastPrize">
                                                <img src="../../statics/images/lastPrize.png">
                                            </div>
                                            <!-- 砸金蛋 -->
                                            <div class="egg-box ng-hide" ng-show="item.maxActivityCoupon != undefined" ng-click="ifGoDetail($event,item)">
                                                <div class="egg-map">
                                                    <div class="egg-shake-icon shake-rotate segg ng-hide" ng-show="item.isEgg == 1" ng-click="showEggDialog(item,'list')"></div>
                                                    <div class="egg-sopenegg ng-hide" ng-show="item.isEgg == 2">
                                                        <i class="ng-binding">+%</i>
                                                    </div>
                                                </div>
                                                <div class="num ng-binding ng-hide" ng-show="item.isEgg == 1">最高%加息</div>
                                                <div class="num ng-hide" ng-show="item.isEgg == 2">满标后作废哦</div>
                                                <i class="egg-sshadow"></i>
                                            </div>

                                            <!-- 双旦 -->
                                            <!-- ngIf: shuangDanActivity && (item.deadline==60 || item.deadline==180) -->

                                        </div>

                                        <ul>
                                            <li class="invest-btn-box">
                                                <div class="percentage-box">
                                                    <i class="ng-binding">29%</i>
                                                    <div class="percentage">
                                                        <span ng-attr-style="width: {{item.pert | setProgress}}%" style="width: 29%"></span>
                                                    </div>
                                                </div>
                                                <a href="" class="invest-btn ng-binding">立即投资</a>
                                            </li>
                                            <li class="rate-box">
                                                <!-- 双蛋利率 -->
                                                <p>
                                                    <span class="rate"><b class="ng-binding">${us.pro_pro}</b>%</span>
                                                    <!-- 双旦红包加息60 -->
                                                    <!-- ngIf: shuangDanActivity && item.deadline == 60 && map.activity_60>0 -->
                                                    <!-- ngIf: shuangDanActivity && item.deadline == 180 && map.activity_180>0 -->
                                                    <!-- ngIf: item.activityRate !=undefined && item.activityRate>0 && !shuangDanActivity -->
                                                    <i class="addrate ng-binding ng-scope" ng-if="item.activityRate !=undefined &amp;&amp; item.activityRate>0 &amp;&amp; !shuangDanActivity">+3.8%</i>
                                                    <!-- end ngIf: item.activityRate !=undefined && item.activityRate>0 && !shuangDanActivity -->
                                                </p>
                                                <i class="txt">历史年化收益率</i>
                                            </li>
                                            <li class="line"></li>
                                            <li class="term-box">
                                                <p><span><b class="ng-binding">${us.pro_day}</b>天</span></p>
                                                <i class="txt">期限</i>
                                            </li>
                                            <li class="line"></li>
                                            <li class="start-box">
                                                <p><span><b class="ng-binding">&nbsp;100</b>元</span></p>
                                                <i class="txt">起投金额</i>
                                            </li>
                                            <li class="line"></li>
                                            <li class="total-box">
                                                <p><span><b class="ng-binding">&nbsp;${us.pro_cim_toString}</b>元</span></p>
                                                <i class="txt">总额</i>
                                            </li>
                                            <li class="line"></li>
                                        </ul>
                                    </div>
                                    <!-- end ngIf: item.type != 1 -->
                                </div>
                                </c:forEach>
                                <!--这里c:foreach-->



                            </div>
                        </div>
                    </div>

                    <!-- 90天 -->
                    <div class="billing-list billing-act">
                        <div class="bill-mode">

                            <div class="list-title">
                                <a href="/main/pastBillList?type=2"><i class="listicon-old"></i>往期产品</a>
                                <b class="listicon-act"></b>
                                <p>活动专享</p>
                                <div class="filter-wrap">
                                    <span>排序：</span>
                                    <ul>
                                        <li ng-click="onClickPage('默认', 1, 3)" ng-class="{0:'actived',1:'',2:'',3:'',4:''}[act.order]" class="actived">默认</li>
                                        <li ng-click="onClickPage('起投金额', 1, 3)" ng-class="{0:'',1:'',2:'',3:'',4:'',5:'actived',6:'actived'}[act.order]">起投金额<i ng-class="{5: 'bill-down', 6: 'bill-up'}[act.least]" class="bill-down"></i></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="list-box">
                                <!-- ngRepeat: item in actList -->
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- 中间容器结束 -->

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
  </body>
</html>
