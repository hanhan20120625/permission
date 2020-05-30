package com.mmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminController {

    /**
     * 1.使用@RequestMapping注解来映射请求的url
     * 2.返回值会通过视图解析器解析为实际的物理视图，对于InternalResourceViewResolver视图
     * 通过prefix + returnVal + 后缀这样的方式得到实际的物理视图，然后做转发操作
     * @return
     */

    @RequestMapping("index.page")
    public ModelAndView index(){
        return new ModelAndView("admin");
    }
}
