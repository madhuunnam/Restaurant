package com.restaurant.model;

public class RestStatistics {
	
	private String noOfPickUpOrders;
	private String sumOfPickUpOrders;
	private String noOfDeliveryOrders;
	private String sumOfDeliveryOrders;
	private String noOfReservationOrders;
	private String sumOfReservationOrders;
	private String totalOrders;
	private String totalOrdersSum;
	
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
	@Override
	public String toString() {
		return "RestStatistics [noOfPickUpOrders=" + noOfPickUpOrders + ", sumOfPickUpOrders=" + sumOfPickUpOrders
				+ ", noOfDeliveryOrders=" + noOfDeliveryOrders + ", sumOfDeliveryOrders=" + sumOfDeliveryOrders
				+ ", noOfReservationOrders=" + noOfReservationOrders + ", sumOfReservationOrders="
				+ sumOfReservationOrders + ", totalOrders=" + totalOrders + ", totalOrdersSum=" + totalOrdersSum + "]";
	}
	

}
