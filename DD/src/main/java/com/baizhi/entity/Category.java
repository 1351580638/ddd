package com.baizhi.entity;

public class Category {
    private int category_id;
    private int parent_id;
    private String category_name;
    private int count;
    private String  category_type;

    public Category() {
        super();
    }

    @Override
    public String toString() {
        return "Category{" +
                "category_id=" + category_id +
                ", parent_id=" + parent_id +
                ", category_name='" + category_name + '\'' +
                ", count=" + count +
                ", category_type='" + category_type + '\'' +
                '}';
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getParent_id() {
        return parent_id;
    }

    public void setParent_id(int parent_id) {
        this.parent_id = parent_id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getCategory_type() {
        return category_type;
    }

    public void setCategory_type(String category_type) {
        this.category_type = category_type;
    }

    public Category(int category_id, int parent_id, String category_name, int count, String category_type) {
        this.category_id = category_id;
        this.parent_id = parent_id;
        this.category_name = category_name;
        this.count = count;
        this.category_type = category_type;
    }
}
