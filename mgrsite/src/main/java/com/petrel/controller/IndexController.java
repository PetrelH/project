package com.petrel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 60137
 * @since 2018/06/20
 * 注意：static文件夹存放静态资源（js、css、html）；templates文件夹存放动态资源（ftl、jsp）
 */
@Controller
public class IndexController {
    @RequestMapping("index")
    public String index(){
        return "common/index";
    }

    @RequestMapping("main")
    public String main(){
        return "common/main";
    }
}
