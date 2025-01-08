package com.example.casestudy.Service;

import com.example.casestudy.Entity.Users;
import com.example.casestudy.Repository.UsersRepository;

import java.util.List;

public class UsersService implements IUsersService {
    private static UsersRepository usersrepository = new UsersRepository();

    @Override
    public List<Users> getAll() {
        List<Users> users = usersrepository.getAll();
        return users;
    }

    @Override
    public void save(Users s) {
        usersrepository.save(s);
    }

    @Override
    public void update(int id, Users s) {
        usersrepository.update(id, s);
    }

    @Override
    public void remove(int id) {
        usersrepository.deleteById(id);
    }

    @Override
    public Users findById(int id) {
        Users user = usersrepository.findById(id);
        return user;
    }

    @Override
    public List<Users> findByName(String name) {
        return null;
    }
}
