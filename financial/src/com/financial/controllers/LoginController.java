package com.financial.controllers;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.financial.entity.Temporary_account;
import com.financial.entity.User;
import com.financial.service.TemporaryAccountService;
import com.financial.service.UserService;
import com.financial.utils.MD5Utils;
import com.financial.utils.SendCode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("loginController")
public class LoginController {
    @Resource
    private UserService userService;
    @Resource
    private TemporaryAccountService temporaryAccountService;

    //跳转到登录页面（后面可以根据登录按钮链接到此）
    @RequestMapping("/gotoLogin")
    public String gotoLogin(){
        return "login";
    }

    //登录验证后台处理代码
    @RequestMapping("getLogin")
    public String getLogin(@RequestParam String uPwd,@RequestParam String uPhone, HttpServletRequest request){

        String md5uPwd= MD5Utils.getMd5(uPwd);
        User user_login = userService.findUserList(uPhone,md5uPwd);
        //如果登录失败则调回到登录页面，重新登录
        if (user_login == null) {
            request.getSession().setAttribute("prompt","账号或密码错误");
            return "login";
        }else {
            //登录成功之后，将对象存在session会话中，方便后期用户浏览页面或者支付之类的不需要登录
            request.getSession().setAttribute("user_Login",user_login);
            //登录成功之后，将该用户的余额，交易笔数显示
            Temporary_account temporary_account = temporaryAccountService.findTemporary_account(uPhone);
            double total_account = temporary_account.getTotal_account()-temporary_account.getMonetary();
            int incomes = temporary_account.getIncomes();
            request.getSession().setAttribute("total_account",total_account);
            request.getSession().setAttribute("incomes",incomes);
            return "index";
        }
    }

    //退出登录，session销毁(调到首页页面)
    @RequestMapping("/exitUser_Login")
    public String exitUser_Login(HttpServletRequest request){
        request.getSession().invalidate();
        return "index";
    }



}
