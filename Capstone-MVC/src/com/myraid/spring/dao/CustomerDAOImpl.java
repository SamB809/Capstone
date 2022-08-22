package com.myraid.spring.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myraid.spring.entity.Car;
import com.myraid.spring.entity.Customer;

@Repository
//@Service
public class CustomerDAOImpl implements CustomerDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Customer> getCustomers() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query
		Query<Customer> theQuery = currentSession.createQuery("from Customer", Customer.class);

		// execute query and get result list
		List<Customer> customers = theQuery.getResultList();

		// return the results
		return customers;
	}

	@Override
	public void saveCustomer(Customer theCustomer) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// save/upate the customer ... finally LOL
		currentSession.saveOrUpdate(theCustomer);

	}

	@Override
	public Customer getCustomer(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// now retrieve/read from database using the primary key
		Customer theCustomer = currentSession.get(Customer.class, theId);

		return theCustomer;
	}

	@Override
	public void deleteCustomer(int theId) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		Query theQuery = currentSession.createQuery("delete from Customer where id=:customerId");
		theQuery.setParameter("customerId", theId);

		theQuery.executeUpdate();
	}

	@Override
	public Customer validateCustomer(Customer theCustomer) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// now retrieve/read from database using the primary key
		Query<Customer> theQuery = currentSession.createQuery("from Customer where email=:email", Customer.class);
		theQuery.setParameter("email", theCustomer.getEmail());
		Customer validation = theQuery.getSingleResult();

		if (validation.getPassword().equals(theCustomer.getPassword())) {
			return validation;
		} else {
			return null;
		}
	}

	@Override
	public Customer getCustomerByEmail(String email) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// now retrieve/read from database using the primary key
		Query<Customer> theQuery = currentSession.createQuery("from Customer where email=:email", Customer.class);

		theQuery.setParameter("email", email);

		Customer validation = theQuery.getSingleResult();

		if (validation != null) {
			return validation;
		} else {
			return null;
		}
	}

	@Override
	public List<Car> getCustomerCars(int currentUser) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// now retrieve/read from database using the primary key
		Customer theCustomer = currentSession.get(Customer.class, currentUser);

		List<Car> theCars = theCustomer.getCustomerCars();

		List<Car> testCars = new ArrayList<Car>(theCars);
		return testCars;
	}

	@Override
	public List<Car> getNonCustomerCars(int currentUser) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query
		Query<Car> theQuery = currentSession.createQuery("from Car", Car.class);

		// execute query and get result list
		List<Car> theCars = theQuery.getResultList();

		// now retrieve/read from database using the primary key
		Customer theCustomer = currentSession.get(Customer.class, currentUser);

		List<Car> userCars = theCustomer.getCustomerCars();

		List<Car> nonUserCars = new ArrayList<Car>();

		for (Car theCar : theCars) {
			if (!userCars.contains(theCar)) {
				nonUserCars.add(theCar);
			}
		}
		return nonUserCars;
	}

	@Override
	public void removeCustomerCarList(int customerId, int carId) {
		try {
			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();

			// now retrieve/read from database using the primary key
			Customer theCustomer = currentSession.get(Customer.class, customerId);

			List<Car> theCars = theCustomer.getCustomerCars();

			Car theCar = currentSession.get(Car.class, carId);

			theCars.remove(theCar);

			// save new car list to customer
			theCustomer.setCustomerCars(theCars);

			currentSession.update(theCustomer);

		} catch (NullPointerException error) {

		}

	}

	@Override
	public List<Car> updateCustomerCarList(int customerId, int carId) {

		try {
			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();

			// now retrieve/read from database using the primary key
			Customer theCustomer = currentSession.get(Customer.class, customerId);

			List<Car> theCars = theCustomer.getCustomerCars();

			Car theCar = currentSession.get(Car.class, carId);

			theCars.add(theCar);

			// save new car list to customer
			theCustomer.setCustomerCars(theCars);

			currentSession.update(theCustomer);

			return theCars;
		} catch (NullPointerException error) {
			return null;
		}

	}

}
