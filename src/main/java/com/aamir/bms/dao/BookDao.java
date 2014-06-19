package com.aamir.bms.dao;

import java.util.List;

import com.aamir.bms.model.Book;

public interface BookDao {
	public void save(Book book);
	public void update(Book book);
	public void delete(int bookId);
	public Book getBook(int bookId);
	public List getAllBooks();
}
