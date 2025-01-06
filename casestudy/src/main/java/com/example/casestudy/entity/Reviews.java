package com.example.casestudy.entity;

import java.util.Date;

public class Reviews {
    private int review_ID;
    private int book_ID;
    private int user_ID;
    private int rating;
    private String review_Comment;
    private Date review_Date;

    public Reviews() {}

    public Reviews(int review_ID, int book_ID, int user_ID, int rating, String review_Comment, Date review_Date) {
        this.review_ID = review_ID;
        this.book_ID = book_ID;
        this.user_ID = user_ID;
        this.rating = rating;
        this.review_Comment = review_Comment;
        this.review_Date = review_Date;
    }

    public int getReview_ID() {return review_ID;}
    public void setReview_ID(int review_ID) {this.review_ID = review_ID;}
    public int getBook_ID() {return book_ID;}
    public void setBook_ID(int book_ID) {this.book_ID = book_ID;}
    public int getUser_ID() {return user_ID;}
    public void setUser_ID(int user_ID) {this.user_ID = user_ID;}
    public int getRating() {return rating;}
    public void setRating(int rating) {this.rating = rating;}
    public String getReview_Comment() {return review_Comment;}
    public void setReview_Comment(String review_Comment) {this.review_Comment = review_Comment;}
    public Date getReview_Date() {return review_Date;}
    public void setReview_Date(Date review_Date) {this.review_Date = review_Date;}

}
