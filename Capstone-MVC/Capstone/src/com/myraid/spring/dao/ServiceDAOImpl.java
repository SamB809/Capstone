package com.myraid.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.myraid.spring.entity.Service;

@Repository
public class ServiceDAOImpl implements ServiceDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Service> getServices() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query
		Query<Service> theQuery = currentSession.createQuery("from Service", Service.class);

		// execute query and get result list
		List<Service> services = theQuery.getResultList();

		// return the results
		return services;
	}

}
