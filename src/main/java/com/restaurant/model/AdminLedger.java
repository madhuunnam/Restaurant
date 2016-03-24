package com.restaurant.model;

import java.util.Date;

public class AdminLedger {
	
	private String ledgerId;
	private String custId;
	private String custName;
	private String resId;
	private String resName;
	private String assocId;
	private String assocName;
	private String orderNum;
	private String ledgerNum;
	private Date ledgerDate;
	private Float income;
	private String inMethod;
	private String inNote;
	private Float expense;
	private String exMethod;
	private String exNote;
	private String note;
	private Float balance;
	
	public String getLedgerId() {
		return ledgerId;
	}
	public void setLedgerId(String ledgerId) {
		this.ledgerId = ledgerId;
	}
	public String getCustId() {
		return custId;
	}
	public void setCustId(String custId) {
		this.custId = custId;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
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
	public String getAssocId() {
		return assocId;
	}
	public void setAssocId(String assocId) {
		this.assocId = assocId;
	}
	public String getAssocName() {
		return assocName;
	}
	public void setAssocName(String assocName) {
		this.assocName = assocName;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getLedgerNum() {
		return ledgerNum;
	}
	public void setLedgerNum(String ledgerNum) {
		this.ledgerNum = ledgerNum;
	}
	public Date getLedgerDate() {
		return ledgerDate;
	}
	public void setLedgerDate(Date ledgerDate) {
		this.ledgerDate = ledgerDate;
	}
	public Float getIncome() {
		return income;
	}
	public void setIncome(Float income) {
		this.income = income;
	}
	public String getInMethod() {
		return inMethod;
	}
	public void setInMethod(String inMethod) {
		this.inMethod = inMethod;
	}
	public String getInNote() {
		return inNote;
	}
	public void setInNote(String inNote) {
		this.inNote = inNote;
	}
	public Float getExpense() {
		return expense;
	}
	public void setExpense(Float expense) {
		this.expense = expense;
	}
	public String getExMethod() {
		return exMethod;
	}
	public void setExMethod(String exMethod) {
		this.exMethod = exMethod;
	}
	public String getExNote() {
		return exNote;
	}
	public void setExNote(String exNote) {
		this.exNote = exNote;
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
		return "AdminLedger [ledgerId=" + ledgerId + ", custId=" + custId + ", custName=" + custName + ", resId="
				+ resId + ", resName=" + resName + ", assocId=" + assocId + ", assocName=" + assocName + ", orderNum="
				+ orderNum + ", ledgerNum=" + ledgerNum + ", ledgerDate=" + ledgerDate + ", income=" + income
				+ ", inMethod=" + inMethod + ", inNote=" + inNote + ", expense=" + expense + ", exMethod=" + exMethod
				+ ", exNote=" + exNote + ", note=" + note + ", balance=" + balance + "]";
	}

	
}
