package com.restaurant.model;

public class RestAdmin {

	private String restID = "";
	private float sales ;
	private int numOrders;
	private float popularity;
	private int likes;
	private int dislikes;
	private int numRev;
	private float avgStar;
	private int numYelp;
	private float yelpStar;
	private String priceRange = "";
	private int recomenderID ;
	private String recomType = "";
	private String commissionType = "";
	private int numCust;
	private int numRes;
	
	
	public String getRestID() {
		return restID;
	}
	public void setRestID(String restID) {
		this.restID = restID;
	}
	public float getSales() {
		return sales;
	}
	public void setSales(float sales) {
		this.sales = sales;
	}
	public int getNumOrders() {
		return numOrders;
	}
	public void setNumOrders(int numOrders) {
		this.numOrders = numOrders;
	}
	public float getPopularity() {
		return popularity;
	}
	public void setPopularity(float popularity) {
		this.popularity = popularity;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public int getDislikes() {
		return dislikes;
	}
	public void setDislikes(int dislikes) {
		this.dislikes = dislikes;
	}
	public int getNumRev() {
		return numRev;
	}
	public void setNumRev(int numRev) {
		this.numRev = numRev;
	}
	public float getAvgStar() {
		return avgStar;
	}
	public void setAvgStar(float avgStar) {
		this.avgStar = avgStar;
	}
	public int getNumYelp() {
		return numYelp;
	}
	public void setNumYelp(int numYelp) {
		this.numYelp = numYelp;
	}
	public float getYelpStar() {
		return yelpStar;
	}
	public void setYelpStar(float yelpStar) {
		this.yelpStar = yelpStar;
	}
	public String getPriceRange() {
		return priceRange;
	}
	public void setPriceRange(String priceRange) {
		this.priceRange = priceRange;
	}
	public int getRecomenderID() {
		return recomenderID;
	}
	public void setRecomenderID(int recomenderID) {
		this.recomenderID = recomenderID;
	}
	public String getRecomType() {
		return recomType;
	}
	public void setRecomType(String recomType) {
		this.recomType = recomType;
	}
	public String getCommissionType() {
		return commissionType;
	}
	public void setCommissionType(String commissionType) {
		this.commissionType = commissionType;
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
	@Override
	public String toString() {
		return "RestAdmin [restID=" + restID + ", sales=" + sales + ", numOrders=" + numOrders + ", popularity="
				+ popularity + ", likes=" + likes + ", dislikes=" + dislikes + ", numRev=" + numRev + ", avgStar="
				+ avgStar + ", numYelp=" + numYelp + ", yelpStar=" + yelpStar + ", priceRange=" + priceRange
				+ ", recomenderID=" + recomenderID + ", recomType=" + recomType + ", commissionType=" + commissionType
				+ ", numCust=" + numCust + ", numRes=" + numRes + "]";
	}
	

	
	
}

