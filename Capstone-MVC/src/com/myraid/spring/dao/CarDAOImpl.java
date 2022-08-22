package com.myraid.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myraid.spring.entity.Car;

@Repository
public class CarDAOImpl implements CarDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Car> getCars() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query
		Query<Car> theQuery = currentSession.createQuery("from Car", Car.class);

		// execute query and get result list
		List<Car> cars = theQuery.getResultList();

		// return the results
		return cars;
	}

	@Override
	public void saveCar(Car theCar) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// save/upate the car ... finally LOL
		currentSession.saveOrUpdate(theCar);

	}

	@Override
	public Car getCar(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// now retrieve/read from database using the primary key
		Car theCar = currentSession.get(Car.class, theId);

		return theCar;
	}

	@Override
	public void deleteCar(int theId) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		Query theQuery = currentSession.createQuery("delete from Car where id=:carId");
		theQuery.setParameter("carId", theId);

		theQuery.executeUpdate();
	}

}
