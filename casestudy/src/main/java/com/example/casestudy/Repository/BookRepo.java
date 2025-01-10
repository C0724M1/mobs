package com.example.casestudy.Repository;

import com.example.casestudy.DTO.BookDTO;
import com.example.casestudy.Entity.Books;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookRepo {

    public List<Books> getAll() {
        List<Books> books = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepo.getConnection().prepareStatement("select * from books");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int book_ID = resultSet.getInt("book_ID");
                String book_Name = resultSet.getString("book_Name");
                String author = resultSet.getString("author");
                String publisher = resultSet.getString("publisher");
                String book_ISBN = resultSet.getString("book_ISBN");
                double price = resultSet.getDouble("price");
                int stock = resultSet.getInt("stock");
                int category_ID = resultSet.getInt("category_ID");
                books.add(new Books(book_ID, book_Name,author,publisher,book_ISBN,price,stock,category_ID));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return books;
    }


    public List<BookDTO> getAllDTO() {
        List<BookDTO> bookDTOs = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepo.getConnection().prepareStatement("select * from books join categories on books.category_ID = categories.category_ID");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int book_ID = resultSet.getInt("book_ID");
                String book_Name = resultSet.getString("book_Name");
                String author = resultSet.getString("author");
                String publisher = resultSet.getString("publisher");
                String book_ISBN = resultSet.getString("book_ISBN");
                double price = resultSet.getDouble("price");
                int stock = resultSet.getInt("stock");
                String category_Name = resultSet.getString("category_Name");
                bookDTOs.add(new BookDTO(book_ID,book_Name,author,publisher,book_ISBN,price,stock,category_Name));

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return bookDTOs;
    }

    public List<BookDTO> getAllBookShop(){
        List<BookDTO> bookShop = new ArrayList<>();

        try {
            PreparedStatement statement = BaseRepo.getConnection().prepareStatement("select book_ID, book_Name, price, imgURL from books;");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int book_ID = Integer.parseInt(resultSet.getString("book_ID"));
                String book_Name = resultSet.getString("book_Name");
                double price = resultSet.getDouble("price");
                String imgURL = resultSet.getString("imgURL");
                bookShop.add(new BookDTO(book_ID,book_Name,price,imgURL));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookShop;
    }



    public void save(Books book) {
        List<Books> books = getAll();
        try {
            PreparedStatement statement = BaseRepo.getConnection().
                    prepareStatement("insert into books(book_Name,author,publisher, book_ISBN, price, stock, category_ID) values (?,?,?,?,?,?,?)");
            statement.setString(1, book.getBook_Name());
            statement.setString(2, book.getAuthor());
            statement.setString(3, book.getPublisher());
            statement.setString(4, book.getBook_ISBN());
            statement.setDouble(5, book.getPrice());
            statement.setInt(6, book.getStock());
            statement.setInt(7, book.getCategory_ID());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        books.add(new Books(book));
    }

    public void deleteByID(int book_ID) {
        try {
            PreparedStatement statement = BaseRepo.getConnection()
                    .prepareStatement("delete from books where book_ID = ?");
            statement.setInt(1, book_ID);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void updateByID(int book_ID, Books book) {
        List<Books> books = getAll();
        for (Books book1 : books) {
            if (book1.getBook_ID() == book_ID) {
                try {
                    try (PreparedStatement statement = BaseRepo.getConnection()
                            .prepareStatement("UPDATE books SET book_Name = ?, author =?, publisher = ?, book_ISBN=?, price =?, stock=?, category_ID=? WHERE book_ID = ?")) {
                        statement.setString(1, book.getBook_Name());
                        statement.setString(2, book.getAuthor());
                        statement.setString(3, book.getPublisher());
                        statement.setString(4, book.getBook_ISBN());
                        statement.setDouble(5, book.getPrice());
                        statement.setInt(6, book.getStock());
                        statement.setInt(7, book.getCategory_ID());
                        statement.setInt(8, book_ID);
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