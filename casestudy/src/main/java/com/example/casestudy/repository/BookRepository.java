package com.example.casestudy.repository;

import com.example.casestudy.entity.Books;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookRepository {
	private static final String SELECT_ALL_BOOKS = "SELECT * FROM books";

	public List<Books> findAll() {
		List<Books> books = new ArrayList<>();
		try (Connection connection = BaseRepo.getConnection();
			 PreparedStatement ps = connection.prepareStatement(SELECT_ALL_BOOKS);
			 ResultSet rs = ps.executeQuery()) {
			while (rs.next()) {
				books.add(new Books(
						rs.getInt("book_ID"),
						rs.getString("book_Name"),
						rs.getString("author"),
						rs.getString("publisher"),
						rs.getString("book_ISBN"),
						rs.getDouble("price"),
						rs.getInt("stock"),
						rs.getInt("category_ID")
				));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return books;
	}

	public void deleteById(int id) {
		String DELETE_BOOK = "DELETE FROM books WHERE book_ID = ?";
		try (Connection connection = BaseRepo.getConnection();
			 PreparedStatement ps = connection.prepareStatement(DELETE_BOOK)) {
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
