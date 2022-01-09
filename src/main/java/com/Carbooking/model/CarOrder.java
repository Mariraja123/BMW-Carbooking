package com.Carbooking.model;


import java.util.Date;
import java.util.Objects;

public class CarOrder {
	
	private int order_id;
	private String car_id;
	private String Carname;
	private String status;
	private Date Expecteddate;
	public CarOrder(int order_id, String car_id, String carname, String status, Date expecteddate, String address) {
		super();
		this.order_id = order_id;
		this.car_id = car_id;
		this.Carname = carname;
		this.status = status;
		Expecteddate = expecteddate;
		this.address = address;
	}

	private String address;
	
	public CarOrder(int order_id, String car_id, String carname, Date expecteddate) {
		super();
		this.order_id = order_id;
		this.car_id = car_id;
		this.Carname = carname;
		
		this.Expecteddate = expecteddate;
	}
	public CarOrder(int order_id, String car_id, String carname,String status,String address) {
		super();
		this.order_id = order_id;
		this.car_id = car_id;
		this.Carname = carname;
		this.status = status;
		
		this.address=address;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public CarOrder( String status,int order_id) {
		super();
		
		this.status = status;
		this.order_id = order_id;
	}
	@Override
	public String toString() {
		return "Carorder [order_id=" + order_id + ", car_id=" + car_id + ", Carname=" + Carname + ", Expecteddate="
				+ Expecteddate + ", status=" + status + "]";
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public String getCar_id() {
		return car_id;
	}
	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}
	public String getCarname() {
		return Carname;
	}
	public void setCarname(String carname) {
		Carname = carname;
	}
	public Date getExpecteddate() {
		return Expecteddate;
	}
	public void setExpecteddate(Date expecteddate) {
		Expecteddate = expecteddate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public CarOrder() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CarOrder(int orderid, String carid, String carnames, Date dates, String address2) {
		// TODO Auto-generated constructor stub
		this.order_id=orderid;
		this.car_id=carid;
		this.Carname=carnames;
		this.Expecteddate=dates;
		this.address=address2;
	}
	

}
