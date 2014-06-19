package com.aamir.bms.service;

import java.util.List;

import com.aamir.bms.model.Book;

public interface BookService {
	public void save(Book book);
	public void update(Book book);
	public void archive(int bookId);
	public void delete(int bookId);
	public Book getBook(int bookId);
	public List getAllBooks();
}
