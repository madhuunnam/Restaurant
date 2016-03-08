package com.restaurant.model;

import java.util.Date;

public class Admin {
	
	private String adminId;
	private String firstName = "";
	private String middleName = "";
	private String lastName = "";
	private String email = "";
	private String password = "";
	private Date insertDate;
	private String phone = "";
	private String otherPhone = "";
	private String secQuest = "";
	private String secAns = "";
	private String address = "";
	
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
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
	public String getOtherPhone() {
		return otherPhone;
	}
	public void setOtherPhone(String otherPhone) {
		this.otherPhone = otherPhone;
	}
	public String getSecQuest() {
		return secQuest;
	}
	public void setSecQuest(String secQuest) {
		this.secQuest = secQuest;
	}
	public String getSecAns() {
		return secAns;
	}
	public void setSecAns(String secAns) {
		this.secAns = secAns;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", firstName=" + firstName + ", middleName=" + middleName + ", lastName="
				+ lastName + ", email=" + email + ", password=" + password + ", insertDate=" + insertDate + ", phone="
				+ phone + ", otherPhone=" + otherPhone + ", secQuest=" + secQuest + ", secAns=" + secAns + ", address="
				+ address + "]";
	}
	
}
