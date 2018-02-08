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

    @RequestMapping("getLogin")
    public String getLogin(@RequestParam(value = "uphone",required = false)String uphone,Model model){

        userService.findUserList(uphone);

        return "login";
    }
}
