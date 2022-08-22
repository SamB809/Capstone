package com.myraid.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myraid.spring.dao.CustomerDAO;
import com.myraid.spring.dao.ServiceDAO;
import com.myraid.spring.entity.Customer;
import com.myraid.spring.entity.Service;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// need to inject the customer dao
	@Autowired
	private CustomerDAO customerDAO;

	@RequestMapping("/main-page.html")
	public String listCustomers(Model theModel) {

		// get customers from the dao
		List<Customer> theCustomers = customerDAO.getCustomers();

		// add the customers to the model
		theModel.addAttribute("customers", theCustomers);

		return "home";
	}

	@Autowired
	private ServiceDAO serviceDAO;

	@RequestMapping("/log_in.html")
	public String listServices(Model theModel) {

		// get customers from the dao
		List<Service> theServices = serviceDAO.getServices();

		// add the customers to the model
		theModel.addAttribute("services", theServices);

		return "log_in";
	}

	@RequestMapping("/register.html")
	public String listRegister(Model theModel) {

		return "register";
	}
}
