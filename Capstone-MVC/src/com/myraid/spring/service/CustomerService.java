package com.myraid.spring.service;

import java.util.List;

import com.myraid.spring.entity.Car;
import com.myraid.spring.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);

	public List<Car> updateCustomerCarList(int customerId, int carId);

	public Customer validateCustomer(Customer theCustomer);

	public Customer getCustomerByEmail(String email);

	public List<Car> getCustomerCars(int currentUser);

	public List<Car> getNonUserCars(int currentUser);

	public void removeCustomerCarList(int currentUser, int carId);
}
