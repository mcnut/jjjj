package com.books.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.books.models.Book;
import com.books.repositories.BookInterface;

@Service
public class BookService {
		
	@Autowired
	private BookInterface bookInterface;

	public ArrayList<Book> listBooks() {
		System.out.println("listBooks()");
		return (ArrayList<Book>) bookInterface.findAll();
	}
	
	public Book save(Book book) {		
		System.out.println("save Book method");
		return bookInterface.save(book);		
	}

	public void addBook(Book book) {
		System.out.println("add Book method");
	}

}