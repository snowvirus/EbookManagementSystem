package com.DAO;


import java.util.List;

import com.entity.books;

public interface bookDAO {
    public boolean add_books(books b);

    public List<books> getAllBooks();

    public books getBooksById(int id);

    public boolean updateEditBooks(books b);

    public boolean deleteBooks(int id);

}