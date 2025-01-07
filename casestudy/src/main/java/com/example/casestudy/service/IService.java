package com.example.casestudy.service;

import java.util.List;

public interface IService<T> {

    List<T> getAll();

    void save(T t);

    void remove(int id);

    void update(int id, T t);

    T findByName(String s);

    T findById(int id);
}
