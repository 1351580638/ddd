package com.baizhi.entity;

public class Menu {
    private int id;
    private String menuname;
    private String resourceurl;
    private int parent_id;
    private int lev;

    public Menu() {
        super();
    }

    @Override
    public String toString() {
        return "Menu{" +
                "id=" + id +
                ", menuname='" + menuname + '\'' +
                ", resourceurl='" + resourceurl + '\'' +
                ", parent_id=" + parent_id +
                ", lev=" + lev +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMenuname() {
        return menuname;
    }

    public void setMenuname(String menuname) {
        this.menuname = menuname;
    }

    public String getResourceurl() {
        return resourceurl;
    }

    public void setResourceurl(String resourceurl) {
        this.resourceurl = resourceurl;
    }

    public int getParent_id() {
        return parent_id;
    }

    public void setParent_id(int parent_id) {
        this.parent_id = parent_id;
    }

    public int getLev() {
        return lev;
    }

    public void setLev(int lev) {
        this.lev = lev;
    }

    public Menu(int id, String menuname, String resourceurl, int parent_id, int lev) {
        this.id = id;
        this.menuname = menuname;
        this.resourceurl = resourceurl;
        this.parent_id = parent_id;
        this.lev = lev;
    }
}
