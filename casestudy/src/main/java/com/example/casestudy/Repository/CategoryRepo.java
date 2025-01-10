package com.example.casestudy.Repository;
import com.example.casestudy.Entity.Books;
import com.example.casestudy.Entity.Categories;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepo {

    public List<Categories> getAll() {
        List<Categories> categories = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepo.getConnection().prepareStatement("select * from categories");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int category_ID = resultSet.getInt("category_ID");
                String category_Name = resultSet.getString("category_Name");
                String category_Description = resultSet.getString("category_Description");
                categories.add(new Categories(category_ID, category_Name, category_Description));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return categories;

    }

    public void save(Categories category) {
        List<Categories> categories = getAll();
        try {
            PreparedStatement statement = BaseRepo.getConnection().
                    prepareStatement("insert into categories(category_Name, category_Description) values (?,?)");
            statement.setString(1, category.getCategory_Name());
            statement.setString(2, category.getCategory_Description());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        categories.add(category);
    }

    public void deleteByID(int category_ID) {
        try {
            PreparedStatement statement = BaseRepo.getConnection()
                    .prepareStatement("delete from categories where category_ID = ?");
            statement.setInt(1, category_ID);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void updateByID(int category_ID, Categories category) {
        List<Categories> categories = getAll();
        for (Categories c : categories) {
            if (c.getCategory_ID() == category_ID) {
                try {
                    try (PreparedStatement statement = BaseRepo.getConnection()
                            .prepareStatement("UPDATE books SET category_Name=?, category_Description =? WHERE category_ID = ?")) {
                        statement.setString(1, c.getCategory_Name());
                        statement.setString(2, c.getCategory_Description());
                        statement.setInt(3, category_ID );
                        statement.executeUpdate();
                    }
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            }
        }
    }
}
