package com.restaurant.model;

import java.util.Date;

public class Associate {

	private String firstName;
	private String middleName;
	private String lastName;
	private String email;
	private String password;
	private String promoCode;
	private String adChannel;
	private Date insertDate;
	private String phone;
	private String stAddress;
	private String city;
	private String state;
	private String zip;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPromoCode() {
		return promoCode;
	}
	public void setPromoCode(String promoCode) {
		this.promoCode = promoCode;
	}
	public String getAdChannel() {
		return adChannel;
	}
	public void setAdChannel(String adChannel) {
		this.adChannel = adChannel;
	}
	public Date getInsertDate() {
		return insertDate;
	}
	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getStAddress() {
		return stAddress;
	}
	public void setStAddress(String stAddress) {
		this.stAddress = stAddress;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	
	@Override
	public String toString() {
		return "Associate [firstName=" + firstName + ", middleName=" + middleName + ", lastName=" + lastName
				+ ", email=" + email + ", password=" + password + ", promoCode=" + promoCode + ", adChannel="
				+ adChannel + ", insertDate=" + insertDate + ", phone=" + phone + ", stAddress=" + stAddress + ", city="
				+ city + ", state=" + state + ", zip=" + zip + "]";
	}
	
}
