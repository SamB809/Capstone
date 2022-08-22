package com.myraid.spring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "service")
public class Service {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int sid;

	@Column(name = "name")
	private String sName;

	@Column(name = "mileage")
	private int sMileage;

	@Column(name = "color")
	private String sColor;

	@Column(name = "price")
	private int sPrice;

	@Column(name = "year")
	private int sYear;

	public Service() {

	}

	public Service(int sid, String sName, int sMileage, String sColor, int sPrice, int sYear) {
		this.sid = sid;
		this.sName = sName;
		this.sMileage = sMileage;
		this.sColor = sColor;
		this.sPrice = sPrice;
		this.sYear = sYear;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public int getsMileage() {
		return sMileage;
	}

	public void setsMileage(int sMileage) {
		this.sMileage = sMileage;
	}

	public String getsColor() {
		return sColor;
	}

	public void setsColor(String sColor) {
		this.sColor = sColor;
	}

	public int getsPrice() {
		return sPrice;
	}

	public void setsPrice(int sPrice) {
		this.sPrice = sPrice;
	}

	public int getsYear() {
		return sYear;
	}

	public void setsYear(int sYear) {
		this.sYear = sYear;
	}

	@Override
	public String toString() {
		return "Service [sid=" + sid + ", sName=" + sName + ", sMileage=" + sMileage + ", sColor=" + sColor
				+ ", sPrice=" + sPrice + ", sYear=" + sYear + "]";
	}

}
