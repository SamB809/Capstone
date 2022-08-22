package com.myraid.spring.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "car")
public class Car {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int cid;

	@Column(name = "name")
	private String cName;

	@Column(name = "mileage")
	private int cMileage;

	@Column(name = "color")
	private String cColor;

	@Column(name = "price")
	private int cPrice;

	@Column(name = "year")
	private int cYear;

	@Column(name = "url")
	private String cUrl;

	// First step of many to many relationship
	@ManyToMany
	@JoinTable(name = "customer_car", joinColumns = @JoinColumn(name = "car_id"), inverseJoinColumns = @JoinColumn(name = "customer_id"))
	List<Customer> carCustomers;

	public Car() {

	}

	public Car(int cid, String cName, int cMileage, String cColor, int cPrice, int cYear, String cUrl) {
		this.cid = cid;
		this.cName = cName;
		this.cMileage = cMileage;
		this.cColor = cColor;
		this.cPrice = cPrice;
		this.cYear = cYear;
		this.cUrl = cUrl;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public int getcMileage() {
		return cMileage;
	}

	public void setcMileage(int cMileage) {
		this.cMileage = cMileage;
	}

	public String getcColor() {
		return cColor;
	}

	public void setcColor(String cColor) {
		this.cColor = cColor;
	}

	public int getcPrice() {
		return cPrice;
	}

	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}

	public int getcYear() {
		return cYear;
	}

	public void setcYear(int cYear) {
		this.cYear = cYear;
	}

	public String getcUrl() {
		return cUrl;
	}

	public void setcUrl(String cUrl) {
		this.cUrl = cUrl;
	}

	public List<Customer> getCarCustomers() {
		return carCustomers;
	}

	public void setCarCustomers(List<Customer> carCustomers) {
		this.carCustomers = carCustomers;
	}

	@Override
	public String toString() {
		return "Car [cid=" + cid + ", cName=" + cName + ", cMileage=" + cMileage + ", cColor=" + cColor + ", cPrice="
				+ cPrice + ", cYear=" + cYear + ", cUrl=" + cUrl + "]";
	}

}
