package com.example.demo;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import myraid.spring.test.MyraidJunitTestApplication;
import myraid.spring.test.dao.CustomerRepository;
import myraid.spring.test.entity.Customer;

@Transactional
@Rollback
@SpringBootTest(classes = MyraidJunitTestApplication.class)
public class CustomerRepositoryTest {

	@Autowired
	CustomerRepository customerRepository;

	@Test
	void testCustomerRepository() {
		Assertions.assertNotNull(customerRepository);
	}

	@Test
	void findingCustomersByTheirId() {
		Customer customer = new Customer();
		customer.setFirstName("test");
		customerRepository.save(customer);
		Customer customer2 = customerRepository.findById(customer.getId()).get();
		Assertions.assertNotNull(customer2);
		Assertions.assertEquals("test", customer2.getFirstName());

	}

	@Test
	void testDeleteingAUser() {
		Customer customer = new Customer();
		customer.setId(4);
		customerRepository.save(customer);
		customerRepository.deleteById(4);
		Assertions.assertFalse(customerRepository.findById(4).isPresent());
	}
}
