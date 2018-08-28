package com.books.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.books.models.Book;
import com.books.models.Customer;
import com.books.models.Loan;
import com.books.repositories.CustomerInterface;

@Service
public class CustomerService {

	@Autowired
	private CustomerInterface customerInterface;

	public ArrayList<Customer> listCustomers() {
		System.out.println("listCustomers()");
		return (ArrayList<Customer>) customerInterface.findAll();
	}
	
	public Customer save(Customer customer) {	
		System.out.println("save Customer method");
		return customerInterface.save(customer);		
	}

	public void addCustomer(Customer cust) {
		System.out.println("add Customer method");
	}
}