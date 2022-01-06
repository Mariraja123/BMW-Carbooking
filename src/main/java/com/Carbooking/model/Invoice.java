package com.Carbooking.model;

import java.util.Objects;

public class Invoice {
    
	private int invoice_id;
     private String car_id;
	private int user_id;
	private int price;
	private String Car_name;
	public int getInvoice_id() {
		return invoice_id;
	}
	public void setInvoice_id(int invoice_id) {
		this.invoice_id = invoice_id;
	}
	public String getCar_id() {
		return car_id;
	}
	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCar_name() {
		return Car_name;
	}
	public void setCar_name(String car_name) {
		Car_name = car_name;
	}
	public Invoice(int invoice_id, String car_id, int user_id, int price, String car_name) {
		super();
		this.invoice_id = invoice_id;
		this.car_id = car_id;
		this.user_id = user_id;
		this.price = price;
		Car_name = car_name;
	}
	public Invoice(String car_id, int user_id, int price, String car_name) {
		super();
		this.car_id = car_id;
		this.user_id = user_id;
		this.price = price;
		Car_name = car_name;
	}
	@Override
	public String toString() {
		return "Invoice [invoice_id=" + invoice_id + ", car_id=" + car_id + ", user_id=" + user_id + ", price=" + price
				+ ", Car_name=" + Car_name + "]";
	}
}
