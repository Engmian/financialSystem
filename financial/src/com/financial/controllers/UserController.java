package com.financial.controllers;

import com.financial.entity.User;
import com.financial.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("userController")
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping("goLogin")
    public String goLogin(){

        return "login";
    }
    @RequestMapping("getLogin")
    public String getLogin(@RequestParam(value ="uPhone",required = false)String uPhone,Model model){

    User users = userService.findUserList(uPhone);
        System.out.println(users.getUphone());
                model.addAttribute("test",users);

                return "welcome";
                }

@RequestMapping("goRegister")
public String goRegister(){
        return "register";
        }
        }
