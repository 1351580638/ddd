package com.baizhi.service.impl;

import com.baizhi.dao.ProductDao;
import com.baizhi.entity.Product;
import com.baizhi.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductDao productDao;
    @Override
    public Map selectAll(Integer page,Integer rows){
        int start = (page - 1) * rows + 1;
        int end = page * rows;
        List<Product>list= productDao.selectAll(start,end);
        int count=productDao.getCount();
        Map map=new HashMap();
        map.put("rows", list);
        map.put("total", count);
        return map;

    }

    //添加
    @Override
    public void insert(Product product){
        productDao.insert(product);
    }

    //删除
    @Override
    public void delete(int[]ids){
        productDao.delete(ids);
    }

    //查询一个
    @Override
   public void update(Product product){
        productDao.update(product);
    }

}
