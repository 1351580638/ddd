package com.baizhi.entity;

import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Product {
    private int book_id;
    private int cid;
    private String book_name;
    private double book_price;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")

    private Date groundingDate;
    private String book_state;
    private int inventory;
    private String author;
    private String press;
    private int editNum;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")

    private Date print_date;
    private int print_count;
    private String ISBN;
    private String word_count;
    private String page_count;
    private String style;
    private String page;
    private String pack;
    private int salenum;
    private double custome_score;
    private String recommend;
    private String messages;
    private String author_msg;
    private String list;
    private String media_comment;
    private String imagePath;
    private String series_name;
    private double Dangprice;
    private String product_image;

    @Override
    public String toString() {
        return "Product{" +
                "book_id=" + book_id +
                ", cid=" + cid +
                ", book_name='" + book_name + '\'' +
                ", book_price=" + book_price +
                ", groundingDate=" + groundingDate +
                ", book_state='" + book_state + '\'' +
                ", inventory=" + inventory +
                ", author='" + author + '\'' +
                ", press='" + press + '\'' +
                ", editNum=" + editNum +
                ", print_date=" + print_date +
                ", print_count=" + print_count +
                ", ISBN='" + ISBN + '\'' +
                ", word_count='" + word_count + '\'' +
                ", page_count='" + page_count + '\'' +
                ", style='" + style + '\'' +
                ", page='" + page + '\'' +
                ", pack='" + pack + '\'' +
                ", salenum=" + salenum +
                ", custome_score=" + custome_score +
                ", recommend='" + recommend + '\'' +
                ", messages='" + messages + '\'' +
                ", author_msg='" + author_msg + '\'' +
                ", list='" + list + '\'' +
                ", media_comment='" + media_comment + '\'' +
                ", imagePath='" + imagePath + '\'' +
                ", series_name='" + series_name + '\'' +
                ", Dangprice=" + Dangprice +
                ", product_image='" + product_image + '\'' +
                '}';
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getBook_name() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }

    public double getBook_price() {
        return book_price;
    }

    public void setBook_price(double book_price) {
        this.book_price = book_price;
    }

    public Date getGroundingDate() {
        return groundingDate;
    }

    public void setGroundingDate(Date groundingDate) {
        this.groundingDate = groundingDate;
    }

    public String getBook_state() {
        return book_state;
    }

    public void setBook_state(String book_state) {
        this.book_state = book_state;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPress() {
        return press;
    }

    public void setPress(String press) {
        this.press = press;
    }

    public int getEditNum() {
        return editNum;
    }

    public void setEditNum(int editNum) {
        this.editNum = editNum;
    }

    public Date getPrint_date() {
        return print_date;
    }

    public void setPrint_date(Date print_date) {
        this.print_date = print_date;
    }

    public int getPrint_count() {
        return print_count;
    }

    public void setPrint_count(int print_count) {
        this.print_count = print_count;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public String getWord_count() {
        return word_count;
    }

    public void setWord_count(String word_count) {
        this.word_count = word_count;
    }

    public String getPage_count() {
        return page_count;
    }

    public void setPage_count(String page_count) {
        this.page_count = page_count;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    public String getPack() {
        return pack;
    }

    public void setPack(String pack) {
        this.pack = pack;
    }

    public int getSalenum() {
        return salenum;
    }

    public void setSalenum(int salenum) {
        this.salenum = salenum;
    }

    public double getCustome_score() {
        return custome_score;
    }

    public void setCustome_score(double custome_score) {
        this.custome_score = custome_score;
    }

    public String getRecommend() {
        return recommend;
    }

    public void setRecommend(String recommend) {
        this.recommend = recommend;
    }

    public String getMessages() {
        return messages;
    }

    public void setMessages(String messages) {
        this.messages = messages;
    }

    public String getAuthor_msg() {
        return author_msg;
    }

    public void setAuthor_msg(String author_msg) {
        this.author_msg = author_msg;
    }

    public String getList() {
        return list;
    }

    public void setList(String list) {
        this.list = list;
    }

    public String getMedia_comment() {
        return media_comment;
    }

    public void setMedia_comment(String media_comment) {
        this.media_comment = media_comment;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getSeries_name() {
        return series_name;
    }

    public void setSeries_name(String series_name) {
        this.series_name = series_name;
    }

    public double getDangprice() {
        return Dangprice;
    }

    public void setDangprice(double dangprice) {
        Dangprice = dangprice;
    }

    public String getProduct_image() {
        return product_image;
    }

    public void setProduct_image(String product_image) {
        this.product_image = product_image;
    }

    public Product(int book_id, int cid, String book_name, double book_price, Date groundingDate, String book_state, int inventory, String author, String press, int editNum, Date print_date, int print_count, String ISBN, String word_count, String page_count, String style, String page, String pack, int salenum, double custome_score, String recommend, String messages, String author_msg, String list, String media_comment, String imagePath, String series_name, double dangprice, String product_image) {
        this.book_id = book_id;
        this.cid = cid;
        this.book_name = book_name;
        this.book_price = book_price;
        this.groundingDate = groundingDate;
        this.book_state = book_state;
        this.inventory = inventory;
        this.author = author;
        this.press = press;
        this.editNum = editNum;
        this.print_date = print_date;
        this.print_count = print_count;
        this.ISBN = ISBN;
        this.word_count = word_count;
        this.page_count = page_count;
        this.style = style;
        this.page = page;
        this.pack = pack;
        this.salenum = salenum;
        this.custome_score = custome_score;
        this.recommend = recommend;
        this.messages = messages;
        this.author_msg = author_msg;
        this.list = list;
        this.media_comment = media_comment;
        this.imagePath = imagePath;
        this.series_name = series_name;
        Dangprice = dangprice;
        this.product_image = product_image;
    }

    public Product() {
        super();
    }

    public int getBook_id() {
        return book_id;
    }

    public void setBook_id(int book_id) {
        this.book_id = book_id;
    }
}
