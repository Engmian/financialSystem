package com.financial.controllers;

import com.aliyuncs.exceptions.ClientException;
import com.financial.entity.User;
import com.financial.service.UserService;
import com.financial.utils.MD5Utils;
import com.financial.utils.SendCode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("registerController")
public class RegisterController {

    @Resource
    private UserService userService;

    //注册控制器(当用户点击注册按钮时，均调到此处，然后转发到注册页面)
    @RequestMapping("/gotoRegister")
    public String gotoRegister(){
        return "register";
    }

    //短信验证(获取电话号码，通过电话号码，获得短信验证码)
    @RequestMapping("/gotoSendCode")
    public void gotoSendCode(@RequestParam("uPhone")String uPhone, HttpServletRequest request){
        //发送随机数验证码
        StringBuffer stringBuffer= new StringBuffer();
        String code =null;
        for (int i = 0; i < 4; i++) {
            code = stringBuffer.append((int)(Math.random() * 10)).toString();
        }
        request.getSession().setAttribute(uPhone,code);
        try {
            SendCode.sendSms(uPhone,code);
        } catch (ClientException e) {
            e.printStackTrace();
        }
    }
    //注册的密码进行加密，添加到数据库中
    @RequestMapping("/doRegister")
    public String doRegister(@RequestParam("uPhone")String uPhone, @RequestParam("uPwd")String uPwd, @RequestParam(value = "invite",required = false)String invite, @RequestParam(value = "testPerson",required = false)String testPerson, Model model, HttpServletRequest request){
        //当用户填写的验证码是正确的，则走第一个if，如果错误，则提示短信验证码错误
        String code = (String) request.getSession().getAttribute(uPhone);
        if (testPerson.equals(code)){
            int userNum=-1;
            //密码加密
            String md5uPwd = MD5Utils.getMd5(uPwd);
            //当用户注册时，没有推荐人时，走这个if
            if (invite == null || invite.equals("")) {
                userNum = userService.createUser(uPhone, md5uPwd);
                if (userNum > 0) {
                    return "welcome";
                }else {
                    return "register";
                }
            }

            //当用户注册时，选择推荐人了，则进行推荐人判断，如果存在，则记录一次，不存在，则告诉该用户推荐人不存
            if (invite != null && invite.equals("")) {
                String useruphone = userService.findUseruphone(invite);
                if (useruphone==null || useruphone=="") {
                    model.addAttribute("invite","推荐人不存在");
                    return "register";
                }else {
                    userNum = userService.createUser(uPhone, uPwd);
                    if (userNum > 0) {
                        return "welcome";
                    }else {
                        return "register";
                    }
                }
            }
            return "welcome";
        }else {
            return "register";
        }
    }

}
