package com.aamir.bms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aamir.bms.dao.BookDao;
import com.aamir.bms.model.Book;
import com.aamir.bms.service.BookService;
@Service
public class BookServiceImpl implements BookService {
	@Autowired
	private BookDao bookDao;
	
	@Transactional
	public void add(Book book) {
		bookDao.add(book);
	}

	@Transactional
	public void edit(Book book) {
		bookDao.edit(book);
	}

	@Transactional
	public void delete(int bookId) {
		bookDao.delete(bookId);
	}

	@Transactional
	public Book getBook(int bookId) {
		return bookDao.getBook(bookId);
	}

	@Transactional
	public List getAllBooks() {
		return bookDao.getAllBooks();
	}

}
