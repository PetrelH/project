package com.petrel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 60137
 * @since 2018/06/21
 */
@Controller
public class ProductController {
    @RequestMapping("product/list")
    public String list(){
        return "product/list";
    }
}
