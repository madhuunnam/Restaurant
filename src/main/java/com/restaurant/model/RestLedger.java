package com.restaurant.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class RestLedger {
	
	private String restId;
	private String ledgerNum;
	private Integer orderNum;
	private String resName;
	
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date ledgerDate;
	private String custName;
	private Float chargeAmt;
	private Float payAmt;
	private String payMethod;
	private String checkNum;
	private String note;
	private Float balance;
	
	public String getRestId() {
		return restId;
	}
	public void setRestId(String restId) {
		this.restId = restId;
	}
	public String getLedgerNum() {
		return ledgerNum;
	}
	public void setLedgerNum(String ledgerNum) {
		this.ledgerNum = ledgerNum;
	}
	public Integer getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(Integer orderNum) {
		this.orderNum = orderNum;
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
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
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
		return "RestLedger [restId=" + restId + ", ledgerNum=" + ledgerNum + ", orderNum=" + orderNum + ", resName="
				+ resName + ", ledgerDate=" + ledgerDate + ", custName=" + custName + ", chargeAmt=" + chargeAmt
				+ ", payAmt=" + payAmt + ", payMethod=" + payMethod + ", checkNum=" + checkNum + ", note=" + note
				+ ", balance=" + balance + "]";
	}
	
}
