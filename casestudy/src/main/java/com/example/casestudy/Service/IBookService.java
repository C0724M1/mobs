package com.example.casestudy.Service;

import com.example.casestudy.DTO.BookDTO;
import com.example.casestudy.Entity.Books;

import java.util.List;


public interface IBookService extends IService<Books> {
    List<BookDTO> getAllBookDTO();
    List<BookDTO> getAllBookShop();
}
