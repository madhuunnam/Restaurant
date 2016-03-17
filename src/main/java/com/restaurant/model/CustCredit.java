package com.restaurant.model;

public class CustCredit {

	private String custID = "";
	private String addr2 = "";
	private String addr3 = "";
	private String addr4 = "";
	private int numCust;
	private int numRes;
	private int numRev;
	private int numOrders;
	private int totCredits;
	private int creditBal;
	
	public String getCustID() {
		return custID;
	}
	public void setCustID(String custID) {
		this.custID = custID;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getAddr3() {
		return addr3;
	}
	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}
	public String getAddr4() {
		return addr4;
	}
	public void setAddr4(String addr4) {
		this.addr4 = addr4;
	}
	public int getNumCust() {
		return numCust;
	}
	public void setNumCust(int numCust) {
		this.numCust = numCust;
	}
	public int getNumRes() {
		return numRes;
	}
	public void setNumRes(int numRes) {
		this.numRes = numRes;
	}
	public int getNumRev() {
		return numRev;
	}
	public void setNumRev(int numRev) {
		this.numRev = numRev;
	}
	public int getNumOrders() {
		return numOrders;
	}
	public void setNumOrders(int numOrders) {
		this.numOrders = numOrders;
	}
	public int getTotCredits() {
		return totCredits;
	}
	public void setTotCredits(int totCredits) {
		this.totCredits = totCredits;
	}
	public int getCreditBal() {
		return creditBal;
	}
	public void setCreditBal(int creditBal) {
		this.creditBal = creditBal;
	}
	@Override
	public String toString() {
		return "CustCredit [custID=" + custID + ", addr2=" + addr2 + ", addr3=" + addr3 + ", addr4=" + addr4
				+ ", numCust=" + numCust + ", numRes=" + numRes + ", numRev=" + numRev + ", numOrders=" + numOrders
				+ ", totCredits=" + totCredits + ", creditBal=" + creditBal + "]";
	}
	
}
