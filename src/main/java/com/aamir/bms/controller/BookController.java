package com.aamir.bms.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aamir.bms.model.Book;
import com.aamir.bms.service.BookService;

@Controller
public class BookController {
	@Autowired
	private BookService bookService;

	@RequestMapping(value = "/books", method = RequestMethod.GET)
	public String list(Map<String, Object> map){
		map.put("bookList", bookService.getAllBooks());
		return "/book/list";
	}

	@RequestMapping(value = "/book/create", method = RequestMethod.GET)
	public String create(@ModelAttribute Book book){
		return "/book/create";
	}

	@RequestMapping(value = "/book/save", method = RequestMethod.POST)
	public String save(@ModelAttribute Book book, BindingResult result, Map<String, Object> map){
		bookService.save(book);
		return "redirect:/book/" + book.getBookId();
	}

	@RequestMapping(value = "/book/{id}", method = RequestMethod.GET)
	public String show(@PathVariable int id, Map<String, Object> map){
		Book book = bookService.getBook(id);
		map.put("book", book);
		return "/book/show";
	}

	@RequestMapping(value = "/book/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable int id, @ModelAttribute Book book, BindingResult result, Map<String, Object> map){
		map.put("book", bookService.getBook(id));
		return "/book/edit";
	}

	@RequestMapping(value = "/book/update", method = RequestMethod.POST)
	public String update(@ModelAttribute Book book, BindingResult result){
		bookService.update(book);
		return "redirect:/book/" + book.getBookId();
	}

	@RequestMapping(value = "/book/delete/{id}", method = RequestMethod.GET)
	public String confirmTodelete(@PathVariable int id, Map<String, Object> map){
		map.put("book", bookService.getBook(id));
		return "/book/delete";
	}
	
	@RequestMapping(value = "/book/deleteBook", method = RequestMethod.POST)
	public String delete(@RequestParam int id, Map<String, Object> map){
		bookService.delete(id);
		return "redirect:/books";
	}
}
