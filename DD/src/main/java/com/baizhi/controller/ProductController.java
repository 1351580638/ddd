package com.baizhi.controller;

import com.baizhi.entity.Product;
import com.baizhi.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("products")
public class ProductController {
    @Autowired
    private ProductService productService;
    @RequestMapping("/selectAll")
    public @ResponseBody Map selectAll(Integer page, Integer rows){

       return productService.selectAll(page,rows);
    }

    //添加
    @RequestMapping("/insert")
    public void insert(Product product){
        productService.insert(product);
    }
    //删除
    @RequestMapping("/delete")
    public @ResponseBody void delete(int[] ids){
        System.out.println(ids+"12345");
        productService.delete(ids);
    }
    //修改
    @RequestMapping("update")
    public void update(Product product){
        productService.update(product);
    }
}
