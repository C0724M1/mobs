package com.example.casestudy.service.impl;

import com.example.casestudy.entity.Books;
import com.example.casestudy.entity.Categories;
import com.example.casestudy.repository.CategoryRepo;
import com.example.casestudy.service.ICategoryService;

import java.util.List;

public class CategoryService implements ICategoryService {
    private CategoryRepo categoryRepo = new CategoryRepo();

    @Override
    public List<Categories> getAll() {
        return categoryRepo.getAll();
    }

    @Override
    public void save(Categories category) {
        categoryRepo.save(category);
    }

    @Override
    public void remove(int category_ID) {
        categoryRepo.deleteByID(category_ID);
    }

    @Override
    public void update(int id, Categories categories) {

    }

    @Override
    public Categories findByName(String s) {
        return null;
    }

    @Override
    public Categories findById(int category_ID) {
        List<Categories> categories = categoryRepo.getAll();
        for (Categories category : categories) {
            if(category.getCategory_ID() == category_ID) {
                return category;
            }
        }
        return null;
    }
}
