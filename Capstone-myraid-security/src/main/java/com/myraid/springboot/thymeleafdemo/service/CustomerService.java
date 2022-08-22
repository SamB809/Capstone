package com.myraid.springboot.thymeleafdemo.service;

import java.util.List;

import com.myraid.springboot.thymeleafdemo.entity.Customer;

public interface CustomerService {

	public List<Customer> findAll();
	
	public Customer findById(int theId);
	
	public void save(Customer theEmployee);
	
	public void deleteById(int theId);
	
}
