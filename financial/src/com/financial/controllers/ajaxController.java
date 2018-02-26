package com.financial.controllers;

import com.financial.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@Controller
@RequestMapping("ajaxController")
public class ajaxController extends HttpServlet {

    @Resource
    private UserService userService;

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uPhone = request.getParameter("uPhone");
        boolean used = false;
        if(userService.findUseruphone(uPhone)==null || userService.findUseruphone(uPhone)==""){
            used = false;
        }else{
            used = true;
        }
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.print(used);
        out.flush();
        out.close();
    }
    @RequestMapping("testUphone")
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        this.doGet(request, response);
    }


}
