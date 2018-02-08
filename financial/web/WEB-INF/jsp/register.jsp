<%--
  Created by IntelliJ IDEA.
  User: 42958
  Date: 2018/2/8
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0025)https://hushenlc.cn/zhuce -->
<html ng-app="someApp" id="ng-app" xmlns:ng="http://angularjs.org" lang="zh_CN" class="ng-scope"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><style type="text/css">[uib-typeahead-popup].dropdown-menu{display:block;}</style><style type="text/css">.uib-time input{width:50px;}</style><style type="text/css">.ng-animate.item:not(.left):not(.right){-webkit-transition:0s ease-in-out left;transition:0s ease-in-out left}</style><style class="vjs-styles-defaults">
    .video-js {
        width: 300px;
        height: 150px;
    }

    .vjs-fluid {
        padding-top: 56.25%
    }
</style><!--[if IE 8]><style>.ng-hide {display: none !important;}</style><![endif]--><style type="text/css">[ng\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide:not(.ng-hide-animate){display:none !important;}ng\:form{display:block;}.ng-animate-shim{visibility:hidden;}.ng-anchor{position:absolute;}</style>
    <!--<base href="/">--><base href=".">


    <meta name="viewport" content="width=960px, target-densitydpi=device-dpi">

    <meta name="format-detection" content="telephone=no">

    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge;IE=8;Chrome=1;">
    <meta content="always" name="referrer">
    <meta name="theme-color" content="#2932e1">

    <title ng-bind="title" class="ng-binding"></title>
    <meta name="keywords" content="沪深理财|沪深|沪深理财|沪深投资|沪深金服|投资理财|安全理财|网络理财|供应链金融|国资平台|">
    <meta name="description" content="沪深理财(hushenlc.cn)，国企控股平台，安全可靠。投资理财方便快捷，三大还款来源保障资金安全。沪深理财注册送288元，新手专享12.88%高收益。">
    <meta name="baidu-site-verification" content="XTSMeCfnJb">
    <meta baidu-gxt-verify-token="a5b9ee180b45c019d58a9849ac04bab8">

    <link rel="favicon" href="https://hushenlc.cn/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="./zhuce_files/swiper.css">
    <link rel="stylesheet" type="text/css" href="./zhuce_files/carousel.css">
    <link rel="stylesheet" type="text/css" href="./zhuce_files/screen.css">
    <link rel="stylesheet" type="text/css" href="./zhuce_files/video.css">
    <style type="text/css">
        [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak {
            display: none !important;
        }

        [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak, .ng-hide {
            display: none !important;
        }

        ng\:form {
            display: block;
        }

        .ng-animate-start {
            clip: rect(0, auto, auto, 0);
            -ms-zoom: 1.0001;
        }

        .ng-animate-active {
            clip: rect(-1px, auto, auto, 0);
            -ms-zoom: 1;
        }

        #cnzz_stat_icon_1260435393 {
            display: none;
        }

        #cnzz_stat_icon_1260435393 a {
            display: none;
        }

        .summary-box {
            border: 1px solid #fe7634;
            margin-top: 50px;
            position: fixed;
            top: 50%;
            right: 10px;
            background: #fff;
            min-height: 100px;
            width: 300px;
            padding: 10px;
            overflow: hidden;
            height: auto !important;
            z-index: 16;
        }

        .summary-box h1, .summary-box p {
            line-height: 23px;
            font-size: 14px;
        }

        .summary-box h1, .summary-box a {
            font-weight: bold;
            color: #fe7634;
        }

        .summary-box a {
            padding: 0px;
            float: right;
        }

        #cnzz_stat_icon_1271471294{
            display: none;
        }
        #background{height:384px;position:relative;z-index:9;}
    </style>



    <!-- <script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzkzODE1NzM1MF80NDIyODVfNDAwNjcxNzcxMV8"></script> -->
</head>
<!--<body  scroll="no">-->
<body>


<!-- uiView:  --><div ui-view="" class="ng-scope" style="height: 100%; width: 100%;"><!-- 用户注册 -->
    <div ng-controller="zhuceNewCtrl" class="ng-scope">
        <!-- tou -->
        <div class="globalheader-wrapper">
            <div class="globalheader-wrap">
                <div ng-click="$state.go(&#39;main.home&#39;);" class="logo-wrap">
                    <img src="./zhuce_files/logo.png">
                    <span></span>
                    <!--<i class="global-slogo"></i>-->
                    <img class="slogo" src="./zhuce_files/slogo.png">
                </div>
                <!-- <i class="christmaslogo"></i> -->
            </div>
        </div>
        <!-- tou over -->

        <!-- zhong -->
        <div class="quick-register-wrap quick-register-wrap-old" style="min-height: 596px;background-color: #EBF8FF; background-size: cover;">
            <div class="wqq-quick-register-wrap-box" style="width: 1370px;margin: 0 auto;position: relative;">
                <!--<i class="register-banner2" style="left:0"></i>-->
                <div class="quick-register-wrapper" style="padding: 20px 0 0 1140px;float: left;position: absolute;right: 20px;">
                    <form class="login_form ng-pristine ng-untouched ng-invalid ng-invalid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength" ng-model="login" name="loginform">
                        <input style="display:none">
                        <input type="password" style="display:none">
                        <div class="quick-register-mod" style="width: 420px;">
                            <div class="title">

                                <img src="static/zhuce_files/invitelinkbg.png" height="384"/>
                                <div class="throung"></div>
                                <div class="p-box">
                                    <p class="">会员注册</p>
                                </div>
                            </div>
                            <div class="quick-register-box" style="padding:20px 16px 0 16px;">
                                <!-- 注册登录名 -->
                                <div class="input-box" style="padding-bottom: 20px;">
                                    <div class="input-mod">
                                        <input id="userphone" ng-blur="blurID(&#39;focusMobilephone&#39;,loginform)" name="mobilephone" type="text" ng-pattern="/^1[3|4|5|7|8][0-9]{9}$/" placeholder="请输入手机号码" onkeyup="this.value=this.value.replace(/[\D\.]/gi,&#39;&#39;)" class="text ng-pristine ng-isolate-scope ng-invalid ng-invalid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength ng-touched" ng-model="login.mobilephone" required="" minlength="11" maxlength="11" style="">
                                        <i ng-show="loginform.mobilephone.$valid" ng-class="{false: &#39;common-form-ok&#39;, true: &#39;common-form-error&#39;}[loginform.mobilephone.$valid]" class="ng-hide common-form-ok"></i>
                                        <span class="error ng-binding ng-hide" ng-show="loginform.mobilephone.$valid">请输入需验证的手机号码</span>
                                    </div>
                                </div>
                                <!-- 图文验证 -->
                                <!-- ngIf: showPic -->
                                <!-- 短信验证 -->
                                <div class="input-box" style="padding-bottom: 20px;">
                                    <!-- ngIf: loginform.mobilephone.$valid -->
                                    <!-- ngIf: !loginform.mobilephone.$valid --><a href="https://hushenlc.cn/" ng-if="!loginform.mobilephone.$valid" ng-click="clickInput(&#39;phonecodeMSG&#39;,$event,null,loginform,false)" class="get-code ng-binding ng-scope" ng-class="{true: &#39;getcode-disabled&#39;,false: &#39;&#39;}[isGetCode]" style="width: 32%;">获取验证码</a><!-- end ngIf: !loginform.mobilephone.$valid -->

                                    <div class="input-mod" style="width:63%;">
                                        <input ng-disabled="!loginform.mobilephone.$dirty || loginform.mobilephone.$valid" placeholder="请输入短信验证码" type="text" ng-model="login.smsCode" name="smsCode" class="text small-text border-right0 ng-pristine ng-untouched ng-isolate-scope ng-invalid ng-invalid-required ng-valid-maxlength" maxlength="4" required="" disabled="disabled">
                                    </div>
                                    <i ng-show="loginform.smsCode.$valid" ng-class="{false: &#39;common-form-ok&#39;, true: &#39;common-form-error&#39;}[loginform.smsCode.$valid]" class="ng-hide common-form-ok"></i>
                                    <span class="error ng-hide" ng-show="loginform.smsCode.$valid"><font color="red" class="ng-binding">验证为空</font></span>
                                </div>


                                <!-- 密码 -->
                                <div class="input-box passwd-box" style="padding-bottom: 20px;">
                                    <div class="input-mod">
                                        <input autocomplete="off" ng-show="passwordText" placeholder="请输入密码" ng-pattern="/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,18}$/" ng-mouseout="showPassword(passwordText)" type="text" ng-model="login.passWord" class="text border-right0 ng-pristine ng-untouched ng-isolate-scope ng-invalid ng-invalid-required ng-valid-pattern ng-hide" name="passWord" required="">
                                        <input autocomplete="off" ng-hide="passwordText" placeholder="请输入密码" ng-pattern="/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,18}$/" type="passWord" ng-model="login.passWord" class="text border-right0 ng-pristine ng-untouched ng-isolate-scope ng-invalid ng-invalid-required ng-valid-pattern" name="passWord" required="">
                                    </div>
                                    <i ng-class="{true:&#39;login-icons-eyehide&#39;,false:&#39;login-icons-eye&#39;}[passwordText]" ng-click="showPassword(passwordText)"></i>

                                    <i ng-show="loginform.passWord.$valid" ng-class="{false: &#39;common-form-ok&#39;, true: &#39;common-form-error&#39;}[loginform.passWord.$valid]" class="ng-hide common-form-ok"></i>
                                    <span class="error ng-hide" ng-show="loginform.passWord.$valid"><font color="red" class="ng-binding">密码未填</font></span>
                                </div>
                                <!-- 推荐人 -->
                                <div class="input-box recommend-box" style="padding-bottom: 20px;" ng-show="showRecommend">
                                    <div class="show-mod" ng-click="onClickReferee()">
                                        <a href="https://hushenlc.cn/">推荐人邀请码/手机号（选填）<i ng-class="{true: &#39;login-icons-rotriangle&#39;, false: &#39;login-icons-triangle&#39;}[isShowReferee]" class="login-icons-rotriangle"></i></a>
                                    </div>
                                    <div class="input-mod">
                                        <input ng-disabled="isDisabledRecomm" ng-value="login.recommPhone" ng-show="isShowReferee" placeholder="推荐人手机号码/推荐码" type="text" class="text ng-pristine ng-untouched ng-valid ng-isolate-scope ng-valid-maxlength" ng-model="login.recommPhone" name="recommPhone" autocomplete="off" maxlength="11">
                                    </div>
                                    <i ng-show="loginform.recommPhone.$valid &amp;&amp; isShowReferee" ng-class="{false: &#39;common-form-ok&#39;, true: &#39;common-form-error&#39;}[loginform.recommPhone.$valid]||{false: &#39;&#39;, true: &#39;ng-hide&#39;}[isZhuCe]" class="ng-hide common-form-ok"></i>
                                    <span class="error ng-hide" ng-show="loginform.recommPhone.$valid &amp;&amp; isShowReferee"><font color="red" class="ng-binding"></font></span>
                                </div>


                                <!-- 登录/注册 按钮 -->
                                <div class="sub-box" ng-click="LoginClick(&#39;zhuCe&#39;,loginform)">
                                    <input style="background:#ed3334;" ng-disabled="loginform.$invalid || !login.checkbox" class="sub-btn sub" type="submit" value="立即注册" disabled="disabled">
                                </div>
                                <!-- 服务条款/切换状态 -->
                                <div class="agreement-box">
                                    <label for="agreement"><input type="checkbox" ng-model="login.checkbox" ng-true-value="true" name="checkbox" id="agreement" class="check-box ng-pristine ng-untouched ng-valid" checked="">我已阅读并同意<a href="https://hushenlc.cn/zc" target="_blank" class="server-agreement">《沪深理财注册协议》</a>
                                    </label>
                                    <div class="choose-box" style="font-size: 14px;">我已注册
                                        <a href="https://hushenlc.cn/dl" class="change-btn" style="color: #004eff;">立即登录</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- zhong over -->

        <!-- 底部 -->
        <div id="footer">
            <div class="footer-wrapper">
                <div class="foot-wrap">
                    <div class="foot-nav">
                        <div class="nav-mod">
                            <!-- <i class="common-fot-home"></i> -->
                            <p>信息披露</p>
                            <ul>
                                <li><a href="https://hushenlc.cn/main/jt/JSGK?menuName=JSGK" target="_blank">公司简介</a></li>
                                <!-- <li><a href="{{a|webIE8}}main/jt/FLFG?menuName=FLFG" target="_blank">法律法规</a></li> -->
                                <li><a href="https://hushenlc.cn/main/jt/LXWM?menuName=LXWM" target="_blank">联系我们</a></li>
                                <li><a href="https://hushenlc.cn/main/guarantee?menuName=guarantee" target="_blank">安全保障</a></li>
                            </ul>
                        </div>
                        <div class="nav-mod">
                            <!-- <i class="common-fot-qa"></i> -->
                            <p>帮助中心</p>
                            <ul>
                                <li><a href="https://hushenlc.cn/main/jt2/help?menuName=help" target="_blank">常见问题</a></li>
                                <li><a href="https://hushenlc.cn/main/guide" target="_blank">新手指引</a></li>
                                <li><a href="https://hushenlc.cn/main/FLFG" target="_blank">法律保障</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--<div class="modeline"></div>-->
                    <div class="foot-code">
                        <div class="mode">
                            <div class="box">
                                <img src="./zhuce_files/appcode.png" width="100%" height="100%">
                            </div>
                            <p>
                                手机客户端<br>APP下载
                            </p>
                        </div>
                        <div class="mode">
                            <div class="box">
                                <img src="./zhuce_files/weichar-code.png" width="100%" height="100%">
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
                            <!--<a class="spread-partners" href="http://www.sgs.gov.cn/shaic/" target="_blank">-->
                            <img src="./zhuce_files/gsh.png">
                            <!--</a>-->
                        </li>
                        <li>
                            <!--<a class="spread-partners" href="http://www.12377.cn/" target="_blank">-->
                            <img src="./zhuce_files/jbao.png">
                            <!--</a>-->
                        </li>
                        <li>
                            <!--<a class="spread-partners" href="http://www.zx110.org/" target="_blank">-->
                            <img src="./zhuce_files/zxin.png">
                            <!--</a>-->
                        </li>
                        <li>
                            <!--<a class="spread-partners" href="http://www.jytpay.com/" target="_blank">-->
                            <img src="./zhuce_files/pay.png">
                            <!--</a>-->
                        </li>

                        <li>
                            <!--<a class="spread-partners" href="https://www.aliyun.com/" target="_blank">-->
                            <img src="./zhuce_files/aliyun.png">
                            <!--</a>-->
                        </li>
                        <!-- <script type='text/javascript'>(function(){document.getElementById('___szfw_logo___').oncontextmenu = function(){return false;}})();</script> -->
                    </ul>

                    <div class="right-text"><p class="ng-binding">粤ICP备17064674号-1 Copyright © 2017深圳前海云轩互联网金融服务有限公司v1.0.0</p>
                        <p>温馨提示：市场有风险，投资需谨慎</p></div>

                </div>
            </div>
        </div>
        <!-- 底部结束 -->

    </div></div>

<script type="text/javascript" src="./zhuce_files/carousel.js"></script>



<!--友盟埋点-->
<script type="text/javascript">
    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cspan id='cnzz_stat_icon_1271471294'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s13.cnzz.com/z_stat.php%3Fid%3D1271471294%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
</script><span id="cnzz_stat_icon_1271471294"><a href="http://www.cnzz.com/stat/website.php?web_id=1271471294" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./zhuce_files/pic.gif"></a></span><script src="./zhuce_files/z_stat.php" type="text/javascript"></script><script src="./zhuce_files/core.php" charset="utf-8" type="text/javascript"></script>


</body></html>