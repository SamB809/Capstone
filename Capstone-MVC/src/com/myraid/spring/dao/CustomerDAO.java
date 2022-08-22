package com.myraid.spring.dao;

import java.util.List;

import com.myraid.spring.entity.Car;
import com.myraid.spring.entity.Customer;

public interface CustomerDAO {
	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);

	public List<Car> updateCustomerCarList(int customerId, int carId);

	Customer validateCustomer(Customer theCustomer);

	public Customer getCustomerByEmail(String email);

	public List<Car> getCustomerCars(int currentUser);

	public List<Car> getNonCustomerCars(int currentUser);

	public void removeCustomerCarList(int customerId, int carId);
}
