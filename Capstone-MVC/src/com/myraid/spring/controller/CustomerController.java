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
@RequestMapping("/customer")
public class CustomerController {

	// need to inject the customer dao
	@Autowired
	private CustomerService customerService;
	@Autowired
	private CarService carService;

	public static int currentUser;

	@GetMapping("/main-page.html")
	public String listCustomers(Model theModel) {

//		 get customers from the dao
//		List<Customer> theCustomers = customerService.getCustomers();
//
//		// add the customers to the model
//		theModel.addAttribute("customers", theCustomers);

		return "home";
	}

	@GetMapping("/main-login")
	public String mainLogin(Model theModel) {

		// get customers from the dao
//		List<Customer> theCustomers = customerService.getCustomers();
//
//		// add the customers to the model
//		theModel.addAttribute("customers", theCustomers);

		return "home_login";
	}

	@GetMapping("/register")
	public String showFormForAdd(Model theModel) {

		// create model attribute to bind form data
		Customer theCustomer = new Customer();

		theModel.addAttribute("customer", theCustomer);

		return "register";
	}

	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {

		// save the customer using our service
		customerService.saveCustomer(theCustomer);

		return "redirect:/customer/main-page.html";
	}

	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int theId, Model theModel) {

		// get the customer from our service
		Customer theCustomer = customerService.getCustomer(theId);

		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("customer", theCustomer);

		// send over to our form
		return "register";
	}

	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int theId) {

		// delete the customer
		customerService.deleteCustomer(theId);

		return "redirect:/car/admin_page";
	}

	@RequestMapping("/log_in.html")
	public String listCar(Model theModel) {

		Customer theCustomer = new Customer();

		theModel.addAttribute("customer", theCustomer);

		return "log_in";
	}

//	@GetMapping("/testrelationship")
//	public String testRelationship() {
//
//		/*
//		 * Step 2 of many to many: get the information for which customer and which car
//		 * we want to add.
//		 */
//		customerService.updateCustomerCarList(4, 1);
//
////		(session example)
////		customerService.updateCustomerCarList(customerId, carId);
//
//		return "log_in";
//	}

	@PostMapping("/validateCustomer")
	public String validateCustomer(@ModelAttribute("customer") Customer theCustomer) {
		if (customerService.validateCustomer(theCustomer) != null) {

			Customer validCustomer = customerService.getCustomerByEmail(theCustomer.getEmail());

			currentUser = validCustomer.getId();
			return "redirect:/customer/main-login";
		} else {
			return "redirect:/customer/log_in.html";
		}
	}

	@GetMapping("/testrelationship")
	public String testrelationship(@RequestParam("cid") int carId) {
		// many to many step 2, hard code the details to add
		// get these from session or security

		customerService.updateCustomerCarList(currentUser, carId);

		// customerService.updateCustomerEventList(customer_Id, event_Id);

		return "redirect:/customer/inventory";
	}

	@GetMapping("/deletetestrelationship")
	public String deletetestrelationship(@RequestParam("cid") int carId) {
		// many to many step 2, hard code the details to add
		// get these from session or security

		customerService.removeCustomerCarList(currentUser, carId);

		// customerService.updateCustomerEventList(customer_Id, event_Id);

		return "redirect:/customer/inventory";
	}

	@RequestMapping("/inventory")
	public String carsCustomers(Model theModel) {

		List<Car> userCars = customerService.getCustomerCars(currentUser);

		// add the customers to the model
		theModel.addAttribute("userCars", userCars);

		List<Car> nonUserCars = customerService.getNonUserCars(currentUser);

		theModel.addAttribute("nonUserCars", nonUserCars);

		return "buy_car";
	}

	@GetMapping("/my_cart")

	public String cart(Model theModel) {

		List<Car> userCars = customerService.getCustomerCars(currentUser);

		// add the customers to the model
		theModel.addAttribute("userCars", userCars);

		return "cart";
	}

}
