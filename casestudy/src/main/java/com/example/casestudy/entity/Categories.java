package com.example.casestudy.entity;

public class Categories {
    private int category_ID;
    private String category_Name;
    private String category_Description;

    public Categories(){}

    public Categories(int category_ID, String category_Name, String category_Description) {
        this.category_ID = category_ID;
        this.category_Name = category_Name;
        this.category_Description = category_Description;
    }

    public int getCategory_ID() {return category_ID;}
    public void setCategory_ID(int category_ID) {this.category_ID = category_ID;}
    public String getCategory_Name() {return category_Name;}
    public void setCategory_Name(String category_Name) {this.category_Name = category_Name;}
    public String getCategory_Description() {return category_Description;}
    public void setCategory_Description(String category_Description) {this.category_Description = category_Description;}

}
