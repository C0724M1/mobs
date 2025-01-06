package com.example.casestudy.service;

import com.example.casestudy.entity.Books;
import com.example.casestudy.repository.BookRepository;

import java.util.List;

public class BookService {
	private final BookRepository repository = new BookRepository();

	public List<Books> getAllBooks() {
		return repository.findAll();
	}

	public void deleteBookById(int id) {
		repository.deleteById(id);
	}
}
