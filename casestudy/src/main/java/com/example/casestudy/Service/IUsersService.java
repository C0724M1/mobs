package com.example.casestudy.Service;

import com.example.casestudy.Entity.Users;

import java.util.List;

public interface IUsersService extends AdminService {
    @Override
    List<Users> getAll();

    @Override
    void save(Users s);

    @Override
    void update(int id, Users s);

    @Override
    void remove(int id);

    @Override
    Users findById(int id);

    @Override
    List<Users> findByName(String name);
}
