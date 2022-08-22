package com.myraid.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myraid.spring.dao.CarDAO;
import com.myraid.spring.entity.Car;

@Service
public class CarServiceImpl implements CarService {

	// need to inject car dao
	@Autowired
	private CarDAO carDAO;

	@Override
	@Transactional
	public List<Car> getCars() {
		return carDAO.getCars();
	}

	@Override
	@Transactional
	public void saveCar(Car theCar) {

		carDAO.saveCar(theCar);
	}

	@Override
	@Transactional
	public Car getCar(int theId) {

		return carDAO.getCar(theId);
	}

	@Override
	@Transactional
	public void deleteCar(int theId) {

		carDAO.deleteCar(theId);
	}

}
