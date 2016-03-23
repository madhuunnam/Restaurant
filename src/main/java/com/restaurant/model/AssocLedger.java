package com.restaurant.model;

import java.util.Date;

public class AssocLedger {

	private String assocId;
	private String ledgerNum;
	private String assocName;
	private String resId;
	private String resName;
	private Date ledgerDate;
	private Float comAmt;
	private Float overrideAmt;
	private String overrideId;
	private String overrideName;
	private Float chargeAmt;
	private Float payAmt;
	private String payMethod;
	private String checkNum;
	private String note;
	private Float balance;
	
	public String getAssocId() {
		return assocId;
	}
	public void setAssocId(String assocId) {
		this.assocId = assocId;
	}
	public String getLedgerNum() {
		return ledgerNum;
	}
	public void setLedgerNum(String ledgerNum) {
		this.ledgerNum = ledgerNum;
	}
	public String getAssocName() {
		return assocName;
	}
	public void setAssocName(String assocName) {
		this.assocName = assocName;
	}
	public String getResId() {
		return resId;
	}
	public void setResId(String resId) {
		this.resId = resId;
	}
	public String getResName() {
		return resName;
	}
	public void setResName(String resName) {
		this.resName = resName;
	}
	public Date getLedgerDate() {
		return ledgerDate;
	}
	public void setLedgerDate(Date ledgerDate) {
		this.ledgerDate = ledgerDate;
	}
	public Float getComAmt() {
		return comAmt;
	}
	public void setComAmt(Float comAmt) {
		this.comAmt = comAmt;
	}
	public Float getOverrideAmt() {
		return overrideAmt;
	}
	public void setOverrideAmt(Float overrideAmt) {
		this.overrideAmt = overrideAmt;
	}
	public String getOverrideId() {
		return overrideId;
	}
	public void setOverrideId(String overrideId) {
		this.overrideId = overrideId;
	}
	public String getOverrideName() {
		return overrideName;
	}
	public void setOverrideName(String overrideName) {
		this.overrideName = overrideName;
	}
	public Float getChargeAmt() {
		return chargeAmt;
	}
	public void setChargeAmt(Float chargeAmt) {
		this.chargeAmt = chargeAmt;
	}
	public Float getPayAmt() {
		return payAmt;
	}
	public void setPayAmt(Float payAmt) {
		this.payAmt = payAmt;
	}
	public String getPayMethod() {
		return payMethod;
	}
	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}
	public String getCheckNum() {
		return checkNum;
	}
	public void setCheckNum(String checkNum) {
		this.checkNum = checkNum;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public Float getBalance() {
		return balance;
	}
	public void setBalance(Float balance) {
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "AssocLedgers [assocId=" + assocId + ", ledgerNum=" + ledgerNum + ", assocName=" + assocName + ", resId="
				+ resId + ", resName=" + resName + ", ledgerDate=" + ledgerDate + ", comAmt=" + comAmt
				+ ", overrideAmt=" + overrideAmt + ", overrideId=" + overrideId + ", overrideName=" + overrideName
				+ ", chargeAmt=" + chargeAmt + ", payAmt=" + payAmt + ", payMethod=" + payMethod + ", checkNum="
				+ checkNum + ", note=" + note + ", balance=" + balance + "]";
	}
	

}