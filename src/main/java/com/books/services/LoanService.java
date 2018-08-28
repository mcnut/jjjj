package com.books.services;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.books.models.Book;
import com.books.models.Customer;
import com.books.models.Loan;
import com.books.repositories.BookInterface;
import com.books.repositories.CustomerInterface;
import com.books.repositories.LoanInterface;

@Service
public class LoanService {
	
	@Autowired
	private LoanInterface loanInterface;
	
	@Autowired 
	private BookInterface bookInterface;
	
	@Autowired 
	private CustomerInterface customerInterface;

	@Autowired
	private BookService bookService;
	
	private Book book;
	private Customer customer;
	
	private DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	private Date date = new Date();

	public ArrayList<Loan> listLoans() {
		System.out.println("listLoans()");
		return (ArrayList<Loan>) loanInterface.findAll();
	}

	public Loan save(Loan loan) {
		
		System.out.println("save Loan method");
		
		if (bookInterface.findOne(loan.getBook().getBid()) != null)
		{
			book = bookInterface.findOne(loan.getBook().getBid());
		}
		
		customer = customerInterface.findOne(loan.getCust().getcId());
		
		bookService.addBook(book);
		
		loan.setCust(customer);
		loan.setDueDate(dateFormat.format(date));
		
		return loanInterface.save(loan);
	}

	public void delete(Loan loan) {
		System.out.println("this is the delete Loan method");
		
		loanInterface.delete(loan);
		
	}
	
}

