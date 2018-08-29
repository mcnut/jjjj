package com.books.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.books.exceptions.LoanException;
import com.books.models.Book;
import com.books.models.Customer;
import com.books.models.Loan;
import com.books.services.BookService;
import com.books.services.CustomerService;
import com.books.services.LoanService;

@Controller
public class LoanController {

	@Autowired
	private LoanService loanService;
	
	@Autowired
	private BookService bookService;
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value = "/showLoans", method = RequestMethod.GET)
	public String getLoans(Model l) {

		ArrayList<Loan> loan = loanService.listLoans();
		l.addAttribute("loan", loan);

		return "showLoans";
	}
	
	@RequestMapping(value = "/newLoan", method = RequestMethod.GET)
	public String getLoan(@ModelAttribute("newLoan") Loan l, HttpServletRequest h, Model model) 
	{
		ArrayList<Book> books = bookService.listBooks();
		
		Map<Long,String> bookList = new HashMap<Long,String>();		
		
		for (Book b : books)
		{	
			if (b.getLoans() == null)
			{
				bookList.put((long) b.getBid(), b.getTitle());
			}
		}
		
		model.addAttribute("bookList", bookList);
		
		ArrayList<Customer> customers = customerService.listCustomers();
		
		Map<Long,String> customerList = new HashMap<Long,String>();
		
		for (Customer c : customers) 
		{	
			customerList.put((long) c.getcId(), c.getcName());
		}
		
		model.addAttribute("customerList", customerList);
	
		return "newLoan";
	}
	
	@RequestMapping(value = "/newLoan", method = RequestMethod.POST)
	public String addBook(@Valid @ModelAttribute("newLoan") Loan l, BindingResult result, HttpServletRequest h, Model model) 
	throws Exception {
		if (result.hasErrors()) {
			return "newLoan";
		} else {
			
			Book book = l.getBook();
			Customer customer = l.getCust();
			String errorMessage = "";
			
			if (book == null) {
				errorMessage += "No such book: ";
			}
			
			if (customer == null) {
				errorMessage += " No such customer: ";
			}			
			
			// If there is no error message then add the loan to the database
			if (errorMessage.isEmpty()) {
				loanService.save(l);
				bookService.addBook(l.getBook());
				customerService.addCustomer(l.getCust());
				
				ArrayList<Loan> loans = loanService.listLoans();
		
				model.addAttribute("loans", loans);
	
				return "redirect:showLoans";
			} else {
				throw new LoanException(l, errorMessage);
			}
		}
	}
	
	@ExceptionHandler(LoanException.class)
	public ModelAndView handleCustomException(LoanException ex) {
		ModelAndView model = new ModelAndView("loanError");
		model.addObject("exception", ex);
		return model;
	}	
	
	@RequestMapping(value = "/deleteLoan", method = RequestMethod.GET)
	public String deleteLoan(@Valid @ModelAttribute("deleteLoan") Loan l, BindingResult result, HttpServletRequest h, Model model) {

		return "deleteLoan";
	}
	

	@RequestMapping(value = "/deleteLoan", method=RequestMethod.POST)
	public String deleteLoanPOST(@Valid @ModelAttribute("loan") Loan loan, BindingResult result, Model c) {
		Long lid = loan.getLid();
		System.out.println("LoanID is:" + lid);
		if (result.hasErrors())
			return "deleteLoan";
		loanService.delete(loan);
		
		return "redirect:showLoans";

	}
}