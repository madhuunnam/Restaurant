package com.restaurant.model;

public class Item {
	
	private String restId;
	private String itemNum;
	private String secName;
	private String itemName;
	private String description;
	private float basePrice;
	private int numChoice;
	public String getRestId() {
		return restId;
	}
	public void setRestId(String restId) {
		this.restId = restId;
	}
	public String getItemNum() {
		return itemNum;
	}
	public void setItemNum(String itemNum) {
		this.itemNum = itemNum;
	}
	public String getSecName() {
		return secName;
	}
	public void setSecName(String secName) {
		this.secName = secName;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getBasePrice() {
		return basePrice;
	}
	public void setBasePrice(float basePrice) {
		this.basePrice = basePrice;
	}
	public int getNumChoice() {
		return numChoice;
	}
	public void setNumChoice(int numChoice) {
		this.numChoice = numChoice;
	}
	@Override
	public String toString() {
		return "Item [restId=" + restId + ", itemNum=" + itemNum + ", secName=" + secName + ", itemName=" + itemName
				+ ", description=" + description + ", basePrice=" + basePrice + ", numChoice=" + numChoice + "]";
	}
	
	

}
