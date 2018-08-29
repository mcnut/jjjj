package com.books.exceptions;

import com.books.models.Loan;

public class LoanException extends Exception {

private static final long serialVersionUID = 1L;
	
	private Loan loan;
	private String message;
	
	public LoanException(Loan loan, String message) {
		super();
		this.loan = loan;
		this.message = message;
	}
	
	public Loan getLoan() {
		return loan;
	}

	public String getMessage() {
		return message;
	}
}
