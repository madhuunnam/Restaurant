package com.restaurant.model;

import java.util.Date;

public class Customer {
	
	private String custID = "";
	private Date insertDate = null;
	private Date cancelDate = null;
	private String firstName = "";
	private String middleName = "";
	private String lastName = "";
	private String nickName = "";
	
	private String phone = "";
	private String otherPhone = "";
	private String stAddress = "";
	private String city = "";
	private String state = "";
	private String zip = "";
	private float latitude ;
	private float longitude ;
	private String email = "";
	private String password = "";
	
	private String cardNumber = "";
	private String cardType = "";
	private String cardName = "";
	private Date cardExp = null;
	private String cardCode = "";
	private String billZip = "";
	private String billAddr = "";
	private String cardNumber1 = "";
	private String cardType1 = "";
	private String cardName1 = "";
	private Date cardExp1 = null;
	private String cardCode1 = "";
	private String billZip1 = "";
	private String billAddr1 = "";
	private String paypalNum = "";
	
	private String recomenderID = "";
	private String recomType = "";
	private String promoCode = "";
	private String adChannel = "";
	
	CustCredit custCredit;
	
	public String getCustID() {
		return custID;
	}
	public void setCustID(String custID) {
		this.custID = custID;
	}
	public Date getInsertDate() {
		return insertDate;
	}
	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}
	public Date getCancelDate() {
		return cancelDate;
	}
	public void setCancelDate(Date cancelDate) {
		this.cancelDate = cancelDate;
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
	public float getLatitude() {
		return latitude;
	}
	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}
	public float getLongitude() {
		return longitude;
	}
	public void setLongitude(float longitude) {
		this.longitude = longitude;
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
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public Date getCardExp() {
		return cardExp;
	}
	public void setCardExp(Date cardExp) {
		this.cardExp = cardExp;
	}
	public String getCardCode() {
		return cardCode;
	}
	public void setCardCode(String cardCode) {
		this.cardCode = cardCode;
	}
	public String getBillZip() {
		return billZip;
	}
	public void setBillZip(String billZip) {
		this.billZip = billZip;
	}
	public String getBillAddr() {
		return billAddr;
	}
	public void setBillAddr(String billAddr) {
		this.billAddr = billAddr;
	}
	public String getCardNumber1() {
		return cardNumber1;
	}
	public void setCardNumber1(String cardNumber1) {
		this.cardNumber1 = cardNumber1;
	}
	public String getCardType1() {
		return cardType1;
	}
	public void setCardType1(String cardType1) {
		this.cardType1 = cardType1;
	}
	public String getCardName1() {
		return cardName1;
	}
	public void setCardName1(String cardName1) {
		this.cardName1 = cardName1;
	}
	public Date getCardExp1() {
		return cardExp1;
	}
	public void setCardExp1(Date cardExp1) {
		this.cardExp1 = cardExp1;
	}
	public String getCardCode1() {
		return cardCode1;
	}
	public void setCardCode1(String cardCode1) {
		this.cardCode1 = cardCode1;
	}
	public String getBillZip1() {
		return billZip1;
	}
	public void setBillZip1(String billZip1) {
		this.billZip1 = billZip1;
	}
	public String getBillAddr1() {
		return billAddr1;
	}
	public void setBillAddr1(String billAddr1) {
		this.billAddr1 = billAddr1;
	}
	public String getPaypalNum() {
		return paypalNum;
	}
	public void setPaypalNum(String paypalNum) {
		this.paypalNum = paypalNum;
	}
	public String getRecomenderID() {
		return recomenderID;
	}
	public void setRecomenderID(String recomenderID) {
		this.recomenderID = recomenderID;
	}
	public String getRecomType() {
		return recomType;
	}
	public void setRecomType(String recomType) {
		this.recomType = recomType;
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
		return "Customer [custID=" + custID + ", insertDate=" + insertDate + ", cancelDate=" + cancelDate
				+ ", firstName=" + firstName + ", middleName=" + middleName + ", lastName=" + lastName + ", nickName="
				+ nickName + ", phone=" + phone + ", otherPhone=" + otherPhone + ", stAddress=" + stAddress + ", city="
				+ city + ", state=" + state + ", zip=" + zip + ", latitude=" + latitude + ", longitude=" + longitude
				+ ", email=" + email + ", password=" + password + ", cardNumber=" + cardNumber + ", cardType="
				+ cardType + ", cardName=" + cardName + ", cardExp=" + cardExp + ", cardCode=" + cardCode + ", billZip="
				+ billZip + ", billAddr=" + billAddr + ", cardNumber1=" + cardNumber1 + ", cardType1=" + cardType1
				+ ", cardName1=" + cardName1 + ", cardExp1=" + cardExp1 + ", cardCode1=" + cardCode1 + ", billZip1="
				+ billZip1 + ", billAddr1=" + billAddr1 + ", paypalNum=" + paypalNum + ", recomenderID=" + recomenderID
				+ ", recomType=" + recomType + ", promoCode=" + promoCode + ", adChannel=" + adChannel + "]";
	}
	
	
	
}
