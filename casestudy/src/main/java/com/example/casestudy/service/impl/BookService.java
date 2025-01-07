package com.example.casestudy.service.impl;

import com.example.casestudy.DTO.BookDTO;
import com.example.casestudy.entity.Books;
import com.example.casestudy.repository.BookRepo;
import com.example.casestudy.service.IBookService;

import java.util.List;

public class BookService implements IBookService {
    private static BookRepo bookRepo = new BookRepo();

    @Override
    public List<Books> getAll() {
        return bookRepo.getAll();
    }

    public List<BookDTO> getAllBookDTO() {
        return bookRepo.getAllDTO();
    }

    @Override
    public void save(Books books) {
        bookRepo.save(books);

    }

    @Override
    public void remove(int book_ID) {
        bookRepo.deleteByID(book_ID);
    }

    @Override
    public void update(int id, Books book) {
        bookRepo.updateByID(id, book);
    }

    @Override
    public Books findByName(String book_Name) {
        List<Books> books = bookRepo.getAll();
        for (Books book : books) {
            if (book.getBook_Name().equals(book_Name)){
                return book;
            }
        }
        return null;
    }

    @Override
    public Books findById(int book_ID) {
        List<Books> books = bookRepo.getAll();
        for (Books book : books) {
            if(book.getBook_ID() == book_ID) {
                return book;
            }
        }
        return null;
    }
}
