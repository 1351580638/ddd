package com.baizhi.dao;

import com.baizhi.entity.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductDao {
    public List<Product> selectAll(@Param("start")Integer start,@Param("end")Integer end);

    //总条数
    public int getCount();

    //添加
    public void insert(Product product);

    //删除
    public void delete(int[]ids);

    //修改
    public void update(Product product);
}
