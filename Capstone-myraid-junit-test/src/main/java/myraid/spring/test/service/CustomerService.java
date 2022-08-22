package myraid.spring.test.service;

import java.util.List;

import myraid.spring.test.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);

//	public List<Car> updateCustomerCarList(int customerId, int carId);
//
//	public Customer validateCustomer(Customer theCustomer);

}
