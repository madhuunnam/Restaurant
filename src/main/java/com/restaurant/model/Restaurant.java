package com.restaurant.model;

import java.time.LocalTime;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Restaurant implements Comparable{

	private String restID="" ;
	private String restName = "";
	private String altName = "";
	private String foundYear = "";
	private String categories = "";
	private Date insertDate = null;
	private Date cancelDate = null;
	private String hasMenu = "";
	private float distanceFromSearchLocation = 0.0f;
	
	private String inputBy = "";
	private String note = "";
	
	private String telephoneNumber = "";
	private String otherPhone = "";
	private String stAddress = "";
	private String city = "";
	private String state = "";
	private String zip = "";
	private float latitude ;
	private float longitude;
	private String email = "";
	private String password = "";
	private String securityQuest = "";
	private String secAnswer = "";
	private String website = "";
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date monFrom = null;
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date monTo = null;
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date tueFrom = null;
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date tueTo = null;
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date wedFrom = null;
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date wedTo = null;
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date thuFrom = null;
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date thuTo = null;
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date friFrom = null;
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date friTo = null;
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date satFrom = null;
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date satTo = null;
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date sunFrom = null;
	
	@JsonFormat(pattern = "h:mm a")
	@DateTimeFormat(pattern = "h:mm a")
	private Date sunTo = null;
	
	
	private String closedDays = null;
	
	private String delivery = "";
	private String deliBy = "";
	private String deliMin = "";
	private String deliFee = "";
	private String deliPolicy = "";
	private String deliRadius = "";
	private String deliZips = "";
	private String deliStreets = "";
	
	private String pickup = "";
	private String dineIn = "";
	private String reserve = "";
	private String forKids = "";
	private String forGroup = "";
	private String parking = "";
	private String wifi = "";
	private String breakfast = "";
	private String lunch = "";
	private String dinner = "";
	private String lateNight = "";
	private String coupon = "";
	
	private String bankName = "";
	private String bankPhone = "";
	private String bandAddr = "";
	private String bankRouteNum = "";
	private String bankAccNum = "";
	
	private String mgrName = "";
	private String mgrPhone = "";
	private String mgrEmail = "";
	private String mgrPasswd = "";
	
	private String promoCode = "";
	private String adChannel = "";
	
	RestAdmin restAdmin = new RestAdmin();

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
	public RestAdmin getRestAdmin() {
		return restAdmin;
	}
	public void setRestAdmin(RestAdmin restAdmin) {
		this.restAdmin = restAdmin;
	}
	public String getRestID() {
		return restID;
	}
	public void setRestID(String restID) {
		this.restID = restID;
	}
	public String getRestName() {
		return restName;
	}
	public void setRestName(String restName) {
		this.restName = restName;
	}
	public String getAltName() {
		return altName;
	}
	public void setAltName(String altName) {
		this.altName = altName;
	}
	public String getFoundYear() {
		return foundYear;
	}
	public void setFoundYear(String foundYear) {
		this.foundYear = foundYear;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
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
	public String getHasMenu() {
		return hasMenu;
	}
	public void setHasMenu(String hasMenu) {
		this.hasMenu = hasMenu;
	}
	public String getInputBy() {
		return inputBy;
	}
	public void setInputBy(String inputBy) {
		this.inputBy = inputBy;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getTelephoneNumber() {
		return telephoneNumber;
	}
	public void setTelephoneNumber(String telephoneNumber) {
		this.telephoneNumber = telephoneNumber;
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
	public String getSecurityQuest() {
		return securityQuest;
	}
	public void setSecurityQuest(String securityQuest) {
		this.securityQuest = securityQuest;
	}
	public String getSecAnswer() {
		return secAnswer;
	}
	public void setSecAnswer(String secAnswer) {
		this.secAnswer = secAnswer;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public Date getMonFrom() {
		return monFrom;
	}
	public void setMonFrom(Date monFrom) {
		this.monFrom = monFrom;
	}
	public Date getMonTo() {
		return monTo;
	}
	public void setMonTo(Date monTo) {
		this.monTo = monTo;
	}
	public Date getTueFrom() {
		return tueFrom;
	}
	public void setTueFrom(Date tueFrom) {
		this.tueFrom = tueFrom;
	}
	public Date getTueTo() {
		return tueTo;
	}
	public void setTueTo(Date tueTo) {
		this.tueTo = tueTo;
	}
	public Date getWedFrom() {
		return wedFrom;
	}
	public void setWedFrom(Date wedFrom) {
		this.wedFrom = wedFrom;
	}
	public Date getWedTo() {
		return wedTo;
	}
	public void setWedTo(Date wedTo) {
		this.wedTo = wedTo;
	}
	public Date getThuFrom() {
		return thuFrom;
	}
	public void setThuFrom(Date thuFrom) {
		this.thuFrom = thuFrom;
	}
	public Date getThuTo() {
		return thuTo;
	}
	public void setThuTo(Date thuTo) {
		this.thuTo = thuTo;
	}
	public Date getFriFrom() {
		return friFrom;
	}
	public void setFriFrom(Date friFrom) {
		this.friFrom = friFrom;
	}
	public Date getFriTo() {
		return friTo;
	}
	public void setFriTo(Date friTo) {
		this.friTo = friTo;
	}
	public Date getSatFrom() {
		return satFrom;
	}
	public void setSatFrom(Date satFrom) {
		this.satFrom = satFrom;
	}
	public Date getSatTo() {
		return satTo;
	}
	public void setSatTo(Date satTo) {
		this.satTo = satTo;
	}
	public Date getSunFrom() {
		return sunFrom;
	}
	public void setSunFrom(Date sunFrom) {
		this.sunFrom = sunFrom;
	}
	public Date getSunTo() {
		return sunTo;
	}
	public void setSunTo(Date sunTo) {
		this.sunTo = sunTo;
	}
	public String getClosedDays() {
		return closedDays;
	}
	public void setClosedDays(String closedDays) {
		this.closedDays = closedDays;
	}
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	public String getDeliBy() {
		return deliBy;
	}
	public void setDeliBy(String deliBy) {
		this.deliBy = deliBy;
	}
	public String getDeliMin() {
		return deliMin;
	}
	public void setDeliMin(String deliMin) {
		this.deliMin = deliMin;
	}
	public String getDeliFee() {
		return deliFee;
	}
	public void setDeliFee(String deliFee) {
		this.deliFee = deliFee;
	}
	public String getDeliPolicy() {
		return deliPolicy;
	}
	public void setDeliPolicy(String deliPolicy) {
		this.deliPolicy = deliPolicy;
	}
	public String getDeliRadius() {
		return deliRadius;
	}
	public void setDeliRadius(String deliRadius) {
		this.deliRadius = deliRadius;
	}
	public String getDeliZips() {
		return deliZips;
	}
	public void setDeliZips(String deliZips) {
		this.deliZips = deliZips;
	}
	public String getDeliStreets() {
		return deliStreets;
	}
	public void setDeliStreets(String deliStreets) {
		this.deliStreets = deliStreets;
	}
	public String getPickup() {
		return pickup;
	}
	public void setPickup(String pickup) {
		this.pickup = pickup;
	}
	public String getDineIn() {
		return dineIn;
	}
	public void setDineIn(String dineIn) {
		this.dineIn = dineIn;
	}
	public String getReserve() {
		return reserve;
	}
	public void setReserve(String reserve) {
		this.reserve = reserve;
	}
	public String getForKids() {
		return forKids;
	}
	public void setForKids(String forKids) {
		this.forKids = forKids;
	}
	public String getForGroup() {
		return forGroup;
	}
	public void setForGroup(String forGroup) {
		this.forGroup = forGroup;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getWifi() {
		return wifi;
	}
	public void setWifi(String wifi) {
		this.wifi = wifi;
	}
	public String getBreakfast() {
		return breakfast;
	}
	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}
	public String getLunch() {
		return lunch;
	}
	public void setLunch(String lunch) {
		this.lunch = lunch;
	}
	public String getDinner() {
		return dinner;
	}
	public void setDinner(String dinner) {
		this.dinner = dinner;
	}
	public String getLateNight() {
		return lateNight;
	}
	public void setLateNight(String lateNight) {
		this.lateNight = lateNight;
	}
	public String getCoupon() {
		return coupon;
	}
	public void setCoupon(String coupon) {
		this.coupon = coupon;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getBankPhone() {
		return bankPhone;
	}
	public void setBankPhone(String bankPhone) {
		this.bankPhone = bankPhone;
	}
	public String getBandAddr() {
		return bandAddr;
	}
	public void setBandAddr(String bandAddr) {
		this.bandAddr = bandAddr;
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
	public String getMgrName() {
		return mgrName;
	}
	public void setMgrName(String mgrName) {
		this.mgrName = mgrName;
	}
	public String getMgrPhone() {
		return mgrPhone;
	}
	public void setMgrPhone(String mgrPhone) {
		this.mgrPhone = mgrPhone;
	}
	public String getMgrEmail() {
		return mgrEmail;
	}
	public void setMgrEmail(String mgrEmail) {
		this.mgrEmail = mgrEmail;
	}
	public String getMgrPasswd() {
		return mgrPasswd;
	}
	public void setMgrPasswd(String mgrPasswd) {
		this.mgrPasswd = mgrPasswd;
	}
	public float getDistanceFromSearchLocation() {
		return distanceFromSearchLocation;
	}
	public void setDistanceFromSearchLocation(float distanceFromSearchLocation) {
		this.distanceFromSearchLocation = distanceFromSearchLocation;
	}
	@Override
	public String toString() {
		return "Restaurant [restID=" + restID + ", restName=" + restName + ", altName=" + altName + ", foundYear="
				+ foundYear + ", categories=" + categories + ", insertDate=" + insertDate + ", cancelDate=" + cancelDate
				+ ", hasMenu=" + hasMenu + ", inputBy=" + inputBy + ", note=" + note + ", telephoneNumber="
				+ telephoneNumber + ", otherPhone=" + otherPhone + ", stAddress=" + stAddress + ", city=" + city
				+ ", state=" + state + ", zip=" + zip + ", latitude=" + latitude + ", longitude=" + longitude
				+ ", email=" + email + ", password=" + password + ", securityQuest=" + securityQuest + ", secAnswer="
				+ secAnswer + ", website=" + website + ", monFrom=" + monFrom + ", monTo=" + monTo + ", tueFrom="
				+ tueFrom + ", tueTo=" + tueTo + ", wedFrom=" + wedFrom + ", wedTo=" + wedTo + ", thuFrom=" + thuFrom
				+ ", thuTo=" + thuTo + ", friFrom=" + friFrom + ", friTo=" + friTo + ", satFrom=" + satFrom + ", satTo="
				+ satTo + ", sunFrom=" + sunFrom + ", sunTo=" + sunTo + ", closedDays=" + closedDays + ", delivery="
				+ delivery + ", deliBy=" + deliBy + ", deliMin=" + deliMin + ", deliFee=" + deliFee + ", deliPolicy="
				+ deliPolicy + ", deliRadius=" + deliRadius + ", deliZips=" + deliZips + ", deliStreets=" + deliStreets
				+ ", pickup=" + pickup + ", dineIn=" + dineIn + ", reserve=" + reserve + ", forKids=" + forKids
				+ ", forGroup=" + forGroup + ", parking=" + parking + ", wifi=" + wifi + ", breakfast=" + breakfast
				+ ", lunch=" + lunch + ", dinner=" + dinner + ", lateNight=" + lateNight + ", coupon=" + coupon
				+ ", bankName=" + bankName + ", bankPhone=" + bankPhone + ", bandAddr=" + bandAddr + ", bankRouteNum="
				+ bankRouteNum + ", bankAccNum=" + bankAccNum + ", mgrName=" + mgrName + ", mgrPhone=" + mgrPhone
				+ ", mgrEmail=" + mgrEmail + ", mgrPasswd=" + mgrPasswd + "]";
	}
	
	@Override
	public int compareTo(Object rest) {
		
		Restaurant restaurant =(Restaurant)rest;
		float difference = this.distanceFromSearchLocation - restaurant.getDistanceFromSearchLocation();
		
		if(difference < 0){
			return -1;
		}else if(difference ==0 ){
			return 0;
		}
		return 1;
	}
}