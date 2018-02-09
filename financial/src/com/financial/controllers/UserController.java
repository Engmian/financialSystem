package com.financial.controllers;

import com.financial.entity.User;
import com.financial.service.UserService;
import com.financial.utils.MD5Utils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("userController")
public class UserController {
    @Resource
    private UserService userService;

    //跳转到登录页面（后面可以根据登录按钮链接到此）
    @RequestMapping("/gotoLogin")
    public String gotoLogin(){
        return "login";
    }

    //登录验证后台处理代码
    @RequestMapping("getLogin")
    public String getLogin(@RequestParam String uPwd,@RequestParam String uPhone, HttpServletRequest request){

        String md5uPwd= MD5Utils.getMd5(uPwd);
        User user_login = userService.findUserList(md5uPwd,uPhone);
        //如果登录失败则调回到登录页面，重新登录
        if (user_login == null) {
            return "login";
        }else {
            //登录成功之后，将对象存在session会话中，方便后期用户浏览页面或者支付之类的不需要登录
            request.getSession().setAttribute("user_Login",user_login);
            return "welcome";
        }
    }

    //退出登录，session销毁(调到首页页面)
    @RequestMapping("/exitUser_Login")
    public String exitUser_Login(HttpServletRequest request){
        request.getSession().invalidate();
        return "login.jsp";
    }
}
