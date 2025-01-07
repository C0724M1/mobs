package com.example.casestudy.service;

import com.example.casestudy.DTO.BookDTO;
import com.example.casestudy.entity.Books;

import java.util.List;


public interface IBookService extends IService<Books> {
    List<BookDTO> getAllBookDTO();
}
