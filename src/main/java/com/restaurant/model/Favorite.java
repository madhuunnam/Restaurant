package com.restaurant.model;

public class Favorite {

	private String custId;
	private String restId;
	private String restName;
	
	public String getCustId() {
		return custId;
	}
	public void setCustId(String custId) {
		this.custId = custId;
	}
	public String getRestId() {
		return restId;
	}
	public void setRestId(String restId) {
		this.restId = restId;
	}
	public String getRestName() {
		return restName;
	}
	public void setRestName(String restName) {
		this.restName = restName;
	}
	@Override
	public String toString() {
		return "Favorite [custId=" + custId + ", restId=" + restId + ", restName=" + restName + "]";
	}
	
}
