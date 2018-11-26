package com.baizhi.service;


import com.baizhi.entity.Product;

import java.util.Map;

public interface ProductService {
   public   Map selectAll(Integer start,Integer end);

   //添加
   public void insert(Product produt);

   //删除
   public void delete(int[]ids);

  //修改
   public void update(Product product);
}
