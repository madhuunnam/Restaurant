package com.restaurant.model;

import java.util.Date;

public class CustLedger {
	
	private String custId;
	private String ledgerNum;
	private String custName;
	private Date ledgerDate;
	private String resId;
	private String orderNum;
	private String resName;
	private Float chargeAmt;
	private Float payAmt;
	private String payMethod;
	private String note;
	private Float balance;
	
	public String getCustId() {
		return custId;
	}
	public void setCustId(String custId) {
		this.custId = custId;
	}
	public String getLedgerNum() {
		return ledgerNum;
	}
	public void setLedgerNum(String ledgerNum) {
		this.ledgerNum = ledgerNum;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public Date getLedgerDate() {
		return ledgerDate;
	}
	public void setLedgerDate(Date ledgerDate) {
		this.ledgerDate = ledgerDate;
	}
	public String getResId() {
		return resId;
	}
	public void setResId(String resId) {
		this.resId = resId;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getResName() {
		return resName;
	}
	public void setResName(String resName) {
		this.resName = resName;
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
		return "CustLedger [custId=" + custId + ", ledgerNum=" + ledgerNum + ", custName=" + custName + ", ledgerDate="
				+ ledgerDate + ", resId=" + resId + ", orderNum=" + orderNum + ", resName=" + resName + ", chargeAmt="
				+ chargeAmt + ", payAmt=" + payAmt + ", payMethod=" + payMethod + ", note=" + note + ", balance="
				+ balance + "]";
	}
	
	

}
