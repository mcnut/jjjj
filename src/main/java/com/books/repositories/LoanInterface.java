package com.books.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.books.models.Loan;

public interface LoanInterface extends CrudRepository<Loan, Long> {

}
