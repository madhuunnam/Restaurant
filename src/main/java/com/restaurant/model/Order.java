package com.restaurant.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

import com.fasterxml.jackson.annotation.JsonFormat;

@Component
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS, value = WebApplicationContext.SCOPE_SESSION)
public class Order {

	private String orderNo = "";
	private String restId = "";

	private String custId = "";
	private String custName = "";
	private String resName = "";
	private String orderType = "";
	private Date orderTime = new Date();
	private Integer numberOfLines = 0;
	private String itemName = "";
	private Float subTot = 0.0f;
	private Float discountPercentage = 0.0f;
	private Float taxRatePercent = 0.0f;
	private Float taxAmount = 0.0f;
	private Float tip = 0.0f;
	private Float deliFee = 0.0f;
	private Float totPrice = 0.0f;
	private String receiverName = "";
	private String deliAddr = "";
	private String status = "";
	private String msgToCust = "";
	private String msgToRes = "";
	private Boolean nonSmoke = false;
	private String resTable = "";
	private Integer resPeople = 0;
	
	@JsonFormat(pattern = "HH:mm:ss")
	@DateTimeFormat(pattern = "HH:mm:ss")
	private Date resTime = new Date();
	private Date pickTime = new Date();
	private Date arriveTime = new Date();
	private String agentName = "";
	private String notes = "";

	private List<LineItem> lineItems = new ArrayList<LineItem>();

	public List<LineItem> getLineItems() {
		return lineItems;
	}

	public void setLineItems(List<LineItem> lineItems) {
		this.lineItems = lineItems;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
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

	public String getResTable() {
		return resTable;
	}

	public void setResTable(String resTable) {
		this.resTable = resTable;
	}

	public Integer getResPeople() {
		return resPeople;
	}

	public void setResPeople(Integer resPeople) {
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
		return "Orders [orderNo=" + orderNo + ", restId=" + restId + ", custId=" + custId + ", custName=" + custName
				+ ", resName=" + resName + ", orderType=" + orderType + ", orderTime=" + orderTime + ", numberOfLines="
				+ numberOfLines + ", itemName=" + itemName + ", subTot=" + subTot + ", discountPercentage="
				+ discountPercentage + ", taxRatePercent=" + taxRatePercent + ", taxAmount=" + taxAmount + ", tip="
				+ tip + ", deliFee=" + deliFee + ", totPrice=" + totPrice + ", receiverName=" + receiverName
				+ ", deliAddr=" + deliAddr + ", status=" + status + ", msgToCust=" + msgToCust + ", msgToRes="
				+ msgToRes + ", nonSmoke=" + nonSmoke + ", resTable=" + resTable + ", resPeople=" + resPeople
				+ ", resTime=" + resTime + ", pickTime=" + pickTime + ", arriveTime=" + arriveTime + ", agentName="
				+ agentName + ", notes=" + notes + "]";
	}

}
