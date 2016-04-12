package com.restaurant.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class RestStatistics {
	
	private String noOfPickUpOrders;
	private String sumOfPickUpOrders;
	private String noOfDeliveryOrders;
	private String sumOfDeliveryOrders;
	private String noOfReservationOrders;
	private String sumOfReservationOrders;
	private String totalOrders;
	private String totalOrdersSum;
	@JsonFormat(pattern = "yyyy-MM-dd")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date toDate;
	@JsonFormat(pattern = "yyyy-MM-dd")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fromDate;
	private String to;
	private String from;
	
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getNoOfPickUpOrders() {
		return noOfPickUpOrders;
	}
	public void setNoOfPickUpOrders(String noOfPickUpOrders) {
		this.noOfPickUpOrders = noOfPickUpOrders;
	}
	public String getSumOfPickUpOrders() {
		return sumOfPickUpOrders;
	}
	public void setSumOfPickUpOrders(String sumOfPickUpOrders) {
		this.sumOfPickUpOrders = sumOfPickUpOrders;
	}
	public String getNoOfDeliveryOrders() {
		return noOfDeliveryOrders;
	}
	public void setNoOfDeliveryOrders(String noOfDeliveryOrders) {
		this.noOfDeliveryOrders = noOfDeliveryOrders;
	}
	public String getSumOfDeliveryOrders() {
		return sumOfDeliveryOrders;
	}
	public void setSumOfDeliveryOrders(String sumOfDeliveryOrders) {
		this.sumOfDeliveryOrders = sumOfDeliveryOrders;
	}
	public String getNoOfReservationOrders() {
		return noOfReservationOrders;
	}
	public void setNoOfReservationOrders(String noOfReservationOrders) {
		this.noOfReservationOrders = noOfReservationOrders;
	}
	public String getSumOfReservationOrders() {
		return sumOfReservationOrders;
	}
	public void setSumOfReservationOrders(String sumOfReservationOrders) {
		this.sumOfReservationOrders = sumOfReservationOrders;
	}
	public String getTotalOrders() {
		return totalOrders;
	}
	public void setTotalOrders(String totalOrders) {
		this.totalOrders = totalOrders;
	}
	public String getTotalOrdersSum() {
		return totalOrdersSum;
	}
	public void setTotalOrdersSum(String totalOrdersSum) {
		this.totalOrdersSum = totalOrdersSum;
	}
	
	public Date getToDate() {
		return toDate;
	}
	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}
	public Date getFromDate() {
		return fromDate;
	}
	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}
	@Override
	public String toString() {
		return "RestStatistics [noOfPickUpOrders=" + noOfPickUpOrders + ", sumOfPickUpOrders=" + sumOfPickUpOrders
				+ ", noOfDeliveryOrders=" + noOfDeliveryOrders + ", sumOfDeliveryOrders=" + sumOfDeliveryOrders
				+ ", noOfReservationOrders=" + noOfReservationOrders + ", sumOfReservationOrders="
				+ sumOfReservationOrders + ", totalOrders=" + totalOrders + ", totalOrdersSum=" + totalOrdersSum + "]";
	}
	

}
