package com.restaurant.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Transaction {
	
	private String OrderNo;
	private String restId;
	
	private String custId;
	private String custName;
	private String resName;
	private String orderType;
	private Date orderTime;
	private Integer numberOfLines;
	private String itemName;
	private Float subTot;
	private Float discountPercentage;
	private Float taxRatePercent;
	private Float taxAmount;
	private Float tip;
	private Float deliFee;
	private Float totPrice;
	private String receiverName;
	private String deliAddr;
	private String status;
	private String msgToCust;
	private String msgToRes;
	private Boolean nonSmoke;
	private Boolean groupOrder;
	private Boolean paySeperate;
	private String resTable;
	private Byte resPeople;
	private Date resTime;
	private Date pickTime;
	private Date arriveTime;
	private String agentName;
	private String notes;
	
	List<LineItem> lineItems = new ArrayList<LineItem>();
	
	
	public List<LineItem> getLineItems() {
		return lineItems;
	}
	public void setLineItems(List<LineItem> lineItems) {
		this.lineItems = lineItems;
	}
	public String getOrderNo() {
		return OrderNo;
	}
	public void setOrderNo(String orderNo) {
		OrderNo = orderNo;
	}
	public String getRestId() {
		return restId;
	}
	public void setRestId(String restId) {
		this.restId = restId;
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
	public String getResName() {
		return resName;
	}
	public void setResName(String resName) {
		this.resName = resName;
	}
	public String getOrderType() {
		return orderType;
	}
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public Integer getNumberOfLines() {
		return numberOfLines;
	}
	public void setNumberOfLines(Integer numberOfLines) {
		this.numberOfLines = numberOfLines;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public Float getSubTot() {
		return subTot;
	}
	public void setSubTot(Float subTot) {
		this.subTot = subTot;
	}
	public Float getDiscountPercentage() {
		return discountPercentage;
	}
	public void setDiscountPercentage(Float discountPercentage) {
		this.discountPercentage = discountPercentage;
	}
	public Float getTaxRatePercent() {
		return taxRatePercent;
	}
	public void setTaxRatePercent(Float taxRatePercent) {
		this.taxRatePercent = taxRatePercent;
	}
	public Float getTaxAmount() {
		return taxAmount;
	}
	public void setTaxAmount(Float taxAmount) {
		this.taxAmount = taxAmount;
	}
	public Float getTip() {
		return tip;
	}
	public void setTip(Float tip) {
		this.tip = tip;
	}
	public Float getDeliFee() {
		return deliFee;
	}
	public void setDeliFee(Float deliFee) {
		this.deliFee = deliFee;
	}
	public Float getTotPrice() {
		return totPrice;
	}
	public void setTotPrice(Float totPrice) {
		this.totPrice = totPrice;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public String getDeliAddr() {
		return deliAddr;
	}
	public void setDeliAddr(String deliAddr) {
		this.deliAddr = deliAddr;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMsgToCust() {
		return msgToCust;
	}
	public void setMsgToCust(String msgToCust) {
		this.msgToCust = msgToCust;
	}
	public String getMsgToRes() {
		return msgToRes;
	}
	public void setMsgToRes(String msgToRes) {
		this.msgToRes = msgToRes;
	}
	public Boolean getNonSmoke() {
		return nonSmoke;
	}
	public void setNonSmoke(Boolean nonSmoke) {
		this.nonSmoke = nonSmoke;
	}
	public Boolean getGroupOrder() {
		return groupOrder;
	}
	public void setGroupOrder(Boolean groupOrder) {
		this.groupOrder = groupOrder;
	}
	public Boolean getPaySeperate() {
		return paySeperate;
	}
	public void setPaySeperate(Boolean paySeperate) {
		this.paySeperate = paySeperate;
	}
	public String getResTable() {
		return resTable;
	}
	public void setResTable(String resTable) {
		this.resTable = resTable;
	}
	public Byte getResPeople() {
		return resPeople;
	}
	public void setResPeople(Byte resPeople) {
		this.resPeople = resPeople;
	}
	public Date getResTime() {
		return resTime;
	}
	public void setResTime(Date resTime) {
		this.resTime = resTime;
	}
	public Date getPickTime() {
		return pickTime;
	}
	public void setPickTime(Date pickTime) {
		this.pickTime = pickTime;
	}
	public Date getArriveTime() {
		return arriveTime;
	}
	public void setArriveTime(Date arriveTime) {
		this.arriveTime = arriveTime;
	}
	public String getAgentName() {
		return agentName;
	}
	public void setAgentName(String agentName) {
		this.agentName = agentName;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	@Override
	public String toString() {
		return "Transaction [OrderNo=" + OrderNo + ", restId=" + restId + ", custId=" + custId + ", custName="
				+ custName + ", resName=" + resName + ", orderType=" + orderType + ", orderTime=" + orderTime
				+ ", numberOfLines=" + numberOfLines + ", itemName=" + itemName + ", subTot=" + subTot
				+ ", discountPercentage=" + discountPercentage + ", taxRatePercent=" + taxRatePercent + ", taxAmount="
				+ taxAmount + ", tip=" + tip + ", deliFee=" + deliFee + ", totPrice=" + totPrice + ", receiverName="
				+ receiverName + ", deliAddr=" + deliAddr + ", status=" + status + ", msgToCust=" + msgToCust
				+ ", msgToStore=" + msgToRes + ", nonSmoke=" + nonSmoke + ", groupOrder=" + groupOrder
				+ ", paySeperate=" + paySeperate + ", resTable=" + resTable + ", resPeople=" + resPeople + ", resTime="
				+ resTime + ", pickTime=" + pickTime + ", arriveTime=" + arriveTime + ", agentName=" + agentName
				+ ", notes=" + notes + "]";
	}
	
	
}
