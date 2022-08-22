package myraid.spring.test.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import myraid.spring.test.dao.CustomerRepository;
import myraid.spring.test.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	// need to inject customer dao
	@Autowired
	private CustomerRepository customerRepository;

	@Override
	@Transactional
	public List<Customer> getCustomers() {
		return customerRepository.findAllByOrderByLastNameAsc();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {

		customerRepository.save(theCustomer);
	}

	@Override
	@Transactional
	public Customer getCustomer(int theId) {

		Optional<Customer> result = customerRepository.findById(theId);

		Customer theCustomer = null;

		if (result.isPresent()) {
			theCustomer = result.get();
		} else {
			// we didn't find the employee
			throw new RuntimeException("Did not find customer id - " + theId);
		}

		return theCustomer;

	}

	@Override
	@Transactional
	public void deleteCustomer(int theId) {

		customerRepository.deleteById(theId);
	}

//	// Step 3 of many to many: Call the DAO
//	@Override
//	@Transactional
//	public List<Car> updateCustomerCarList(int customerId, int carId) {
//
//		return customerRepository.updateCustomerCarList(customerId, carId);
//	}
//
//	@Override
//	@Transactional
//	public Customer validateCustomer(Customer theCustomer) {
//
//		return customerRepository.validateCustomer(theCustomer);
//	}

}
