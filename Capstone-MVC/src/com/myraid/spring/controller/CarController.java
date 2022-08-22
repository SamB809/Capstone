package com.myraid.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myraid.spring.entity.Car;
import com.myraid.spring.entity.Customer;
import com.myraid.spring.service.CarService;
import com.myraid.spring.service.CustomerService;

@Controller
@RequestMapping("/car")
public class CarController {

	// need to inject the car dao
	@Autowired
	private CarService carService;

	@Autowired
	private CustomerService customerService;

	@GetMapping("/admin_page")
	public String listCars(Model theModel) {

		List<Customer> theCustomers = customerService.getCustomers();

		// add the customers to the model
		theModel.addAttribute("customers", theCustomers);

		// get cars from the dao
		List<Car> theCars = carService.getCars();

		// add the cars to the model
		theModel.addAttribute("cars", theCars);

		return "admin";
	}

	@GetMapping("/addCar")
	public String showFormForAdd(Model theModel) {

		// create model attribute to bind form data
		Car theCar = new Car();

		theModel.addAttribute("car", theCar);

		return "registerCar";
	}

	@PostMapping("/saveCar")
	public String saveCar(@ModelAttribute("car") Car theCar) {

		// save the car using our car
		carService.saveCar(theCar);

		return "redirect:/car/admin_page";
	}

	@GetMapping("/updateCar")
	public String showFormForUpdate(@RequestParam("carId") int theId, Model theModel) {

		// get the car from our car
		Car theCar = carService.getCar(theId);

		// set car as a model attribute to pre-populate the form
		theModel.addAttribute("car", theCar);

		// send over to our form
		return "registerCar";
	}

	@GetMapping("/deleteCar")
	public String deleteCar(@RequestParam("carId") int theId) {

		// delete the car
		carService.deleteCar(theId);

		return "redirect:/car/admin_page";
	}

	@GetMapping("/car_inventory")
	public String car_inventory(Model theModel) {

		List<Car> theCars = carService.getCars();

		// add the cars to the model
		theModel.addAttribute("cars", theCars);

		return "car_inventory";
	}

//
//	@RequestMapping("/inventory.html")
//	public String listInventory(Model theModel) {
//
//		List<Car> theCars = carCar.getCars();
//
//		// add the cars to the model
//		theModel.addAttribute("cars", theCars);
//
//		return "list-cars";
//	}

}
