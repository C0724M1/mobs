package com.example.casestudy.entity;

public class Users {
    private int user_ID;
    private String user_Name;
    private String user_Pass;
    private String email;
    private String user_Role;
    private String user_Status;
    private String phone;

    public Users() {}

    public Users(int user_ID, String user_Name, String user_Pass, String email, String user_Role, String user_Status, String phone){
        this.user_ID = user_ID;
        this.user_Name = user_Name;
        this.user_Pass = user_Pass;
        this.email = email;
        this.user_Role = user_Role;
        this.user_Status = user_Status;
        this.phone = phone;
    }

    public int getUser_ID() {return user_ID;}
    public void setUser_ID(int user_ID) {this.user_ID = user_ID;}
    public String getUser_Name() {return user_Name;}
    public void setUser_Name(String user_Name) {this.user_Name = user_Name;}


    public String getUser_Pass() {return user_Pass;}
    public void setUser_Pass(String user_Pass) {this.user_Pass = user_Pass;}


    public String getEmail() {return email;}
    public void setEmail(String email) {this.email = email;}
    public String getUser_Role() {return user_Role;}
    public void setUser_Role(String user_Role) {this.user_Role = user_Role;}
    public String getUser_Status() {return user_Status;}
    public void setUser_Status(String user_Status) {this.user_Status = user_Status;}
    public String getPhone() {return phone;}
    public void setPhone(String phone) {this.phone = phone;}

}
