package com.example.casestudy.DTO;

public class BookDTO {
    private int book_ID;
    private String book_Name;
    private String author;
    private String publisher;
    private String book_ISBN;
    private double price;
    private int stock;
    private String category_Name;
    private String imgURL;

    public BookDTO() {}

    public BookDTO(int book_ID, String book_Name, String author, String publisher, String book_ISBN, double price, int stock, String category_Name) {
        this.book_ID = book_ID;
        this.book_Name = book_Name;
        this.author = author;
        this.publisher = publisher;
        this.book_ISBN = book_ISBN;
        this.price = price;
        this.stock = stock;
        this.category_Name = category_Name;
    }

    public BookDTO(int book_ID, String book_Name, double price, String imgURL) {
        this.book_ID = book_ID;
        this.book_Name = book_Name;
        this.price = price;
        this.imgURL = imgURL;
    }


    public int getBook_ID() {
        return book_ID;
    }

    public void setBook_ID(int book_ID) {
        this.book_ID = book_ID;
    }

    public String getBook_Name() {
        return book_Name;
    }

    public void setBook_Name(String book_Name) {
        this.book_Name = book_Name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getBook_ISBN() {
        return book_ISBN;
    }

    public void setBook_ISBN(String book_ISBN) {
        this.book_ISBN = book_ISBN;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getCategory_Name() { return category_Name; }

    public void setCategory_Name(int category_ID) {
        this.category_Name = category_Name;
    }

    public String getImgURL() {return imgURL;}
    public void setImgURL(String imgURL) {this.imgURL = imgURL;}
}
