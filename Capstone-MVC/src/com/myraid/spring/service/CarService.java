package com.myraid.spring.service;

import java.util.List;

import com.myraid.spring.entity.Car;

public interface CarService {

	public List<Car> getCars();

	public void saveCar(Car theCar);

	public Car getCar(int theId);

	public void deleteCar(int theId);

}
