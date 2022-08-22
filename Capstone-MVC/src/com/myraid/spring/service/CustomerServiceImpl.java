package com.myraid.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myraid.spring.dao.CustomerDAO;
import com.myraid.spring.entity.Car;
import com.myraid.spring.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	// need to inject customer dao
	@Autowired
	private CustomerDAO customerDAO;

	@Override
	@Transactional
	public List<Customer> getCustomers() {
		return customerDAO.getCustomers();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {

		customerDAO.saveCustomer(theCustomer);
	}

	@Override
	@Transactional
	public Customer getCustomer(int theId) {

		return customerDAO.getCustomer(theId);
	}

	@Override
	@Transactional
	public void deleteCustomer(int theId) {

		customerDAO.deleteCustomer(theId);
	}

	// Step 3 of many to many: Call the DAO
	@Override
	@Transactional
	public List<Car> updateCustomerCarList(int customerId, int carId) {

		return customerDAO.updateCustomerCarList(customerId, carId);
	}

	@Override
	@Transactional
	public Customer validateCustomer(Customer theCustomer) {

		return customerDAO.validateCustomer(theCustomer);
	}

	@Override
	@Transactional
	public Customer getCustomerByEmail(String email) {

		return customerDAO.getCustomerByEmail(email);
	}

	@Override
	@Transactional
	public List<Car> getCustomerCars(int currentUser) {

		return customerDAO.getCustomerCars(currentUser);
	}

	@Override
	@Transactional
	public List<Car> getNonUserCars(int currentUser) {

		return customerDAO.getNonCustomerCars(currentUser);
	}

	@Override
	@Transactional
	public void removeCustomerCarList(int customerId, int carId) {

		customerDAO.removeCustomerCarList(customerId, carId);

	}

}
