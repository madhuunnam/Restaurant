package com.restaurant.model;

import java.util.Date;

public class Associate {

	private String assocID = "" ;
	private Date insertDate = null ;
	private Date leaveDate = null ;

	private String firstName = "" ;
	private String middleName = "" ;
	private String lastName = "" ;
	private String nickName = "" ;

	private String phone = "" ;
	private String otherPhone = "" ;
	private String stAddress = "" ;
	private String city = "" ;
	private String state = "" ;
	private String zip = "" ;
	private String email = "" ;
	private String password = "" ;

	private String bankName = "" ;
	private String bankRouteNum = "" ;
	private String bankAccNum = "" ;
	private String comType = "" ;
	private String preTye = "" ;
	private Date chgDate = null ;

	private String uplineID = "" ;
	private String uplineName = "" ;
	private String gparID = "" ;
	private String gparName = "" ;
	private String ggparID = "" ;
	private String ggparName = "" ;

	private String promoCode = "" ;
	private String adChannel = "" ;
	
	AssocPerf assocPerf = new AssocPerf();
	
	public AssocPerf getAssocPerf() {
		return assocPerf;
	}
	public void setAssocPerf(AssocPerf assocPerf) {
		this.assocPerf = assocPerf;
	}
	public String getAssocID() {
		return assocID;
	}
	public void setAssocID(String assocID) {
		this.assocID = assocID;
	}
	public Date getInsertDate() {
		return insertDate;
	}
	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}
	public Date getLeaveDate() {
		return leaveDate;
	}
	public void setLeaveDate(Date leaveDate) {
		this.leaveDate = leaveDate;
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
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
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
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getBankRouteNum() {
		return bankRouteNum;
	}
	public void setBankRouteNum(String bankRouteNum) {
		this.bankRouteNum = bankRouteNum;
	}
	public String getBankAccNum() {
		return bankAccNum;
	}
	public void setBankAccNum(String bankAccNum) {
		this.bankAccNum = bankAccNum;
	}
	public String getComType() {
		return comType;
	}
	public void setComType(String comType) {
		this.comType = comType;
	}
	public String getPreTye() {
		return preTye;
	}
	public void setPreTye(String preTye) {
		this.preTye = preTye;
	}
	public Date getChgDate() {
		return chgDate;
	}
	public void setChgDate(Date chgDate) {
		this.chgDate = chgDate;
	}
	public String getUplineID() {
		return uplineID;
	}
	public void setUplineID(String uplineID) {
		this.uplineID = uplineID;
	}
	public String getUplineName() {
		return uplineName;
	}
	public void setUplineName(String uplineName) {
		this.uplineName = uplineName;
	}
	public String getGparID() {
		return gparID;
	}
	public void setGparID(String gparID) {
		this.gparID = gparID;
	}
	public String getGparName() {
		return gparName;
	}
	public void setGparName(String gparName) {
		this.gparName = gparName;
	}
	public String getGgparID() {
		return ggparID;
	}
	public void setGgparID(String ggparID) {
		this.ggparID = ggparID;
	}
	public String getGgparName() {
		return ggparName;
	}
	public void setGgparName(String ggparName) {
		this.ggparName = ggparName;
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
	@Override
	public String toString() {
		return "Associate [assocID=" + assocID + ", insertDate=" + insertDate + ", leaveDate=" + leaveDate
				+ ", firstName=" + firstName + ", middleName=" + middleName + ", lastName=" + lastName + ", nickName="
				+ nickName + ", phone=" + phone + ", otherPhone=" + otherPhone + ", stAddress=" + stAddress + ", city="
				+ city + ", state=" + state + ", zip=" + zip + ", email=" + email + ", password=" + password
				+ ", bankName=" + bankName + ", bankRouteNum=" + bankRouteNum + ", bankAccNum=" + bankAccNum
				+ ", comType=" + comType + ", preTye=" + preTye + ", chgDate=" + chgDate + ", uplineID=" + uplineID
				+ ", uplineName=" + uplineName + ", gparID=" + gparID + ", gparName=" + gparName + ", ggparID="
				+ ggparID + ", ggparName=" + ggparName + ", promoCode=" + promoCode + ", adChannel=" + adChannel + "]";
	}

	
	
	
}
