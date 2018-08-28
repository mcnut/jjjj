package com.books.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.books.models.Customer;

@Repository
public interface CustomerInterface  extends CrudRepository<Customer, Long> {

}
