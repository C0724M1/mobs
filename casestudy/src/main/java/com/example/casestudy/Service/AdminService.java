package com.example.casestudy.Service;

import com.example.casestudy.Entity.Users;

import java.util.List;

public interface AdminService {

    List<Users> getAll();

    void save(Users s);

    void update(int id, Users s);

    void remove(int id);

    Users findById(int id);

    List<Users> findByName(String name);
}
