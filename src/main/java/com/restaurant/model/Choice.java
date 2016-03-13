package com.restaurant.model;

public class Choice {

	private String restId;
	private String itemNum;
	private String chNum;
	private String chTitle;
	private String chType;
	private boolean required;
	private int numValue;
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
	public String getChNum() {
		return chNum;
	}
	public void setChNum(String chNum) {
		this.chNum = chNum;
	}
	public String getChTitle() {
		return chTitle;
	}
	public void setChTitle(String chTitle) {
		this.chTitle = chTitle;
	}
	public String getChType() {
		return chType;
	}
	public void setChType(String chType) {
		this.chType = chType;
	}
	public boolean isRequired() {
		return required;
	}
	public void setRequired(boolean required) {
		this.required = required;
	}
	public int getNumValue() {
		return numValue;
	}
	public void setNumValue(int numValue) {
		this.numValue = numValue;
	}
	@Override
	public String toString() {
		return "Choice [restId=" + restId + ", itemNum=" + itemNum + ", chNum=" + chNum + ", chTitle=" + chTitle
				+ ", chType=" + chType + ", required=" + required + ", numValue=" + numValue + "]";
	}

	
}
