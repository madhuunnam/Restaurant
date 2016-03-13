package com.restaurant.model;

public class ChoiceValues {
	
	private String restId;
	private String chNum;
	private String valueName;
	private float valuePrice;
	private boolean extra;
	
	public String getRestId() {
		return restId;
	}
	public void setRestId(String restId) {
		this.restId = restId;
	}
	public String getChNum() {
		return chNum;
	}
	public void setChNum(String chNum) {
		this.chNum = chNum;
	}
	public String getValueName() {
		return valueName;
	}
	public void setValueName(String valueName) {
		this.valueName = valueName;
	}
	public float getValuePrice() {
		return valuePrice;
	}
	public void setValuePrice(float valuePrice) {
		this.valuePrice = valuePrice;
	}
	public boolean isExtra() {
		return extra;
	}
	public void setExtra(boolean extra) {
		this.extra = extra;
	}
	@Override
	public String toString() {
		return "ChoiceValues [restId=" + restId + ", chNum=" + chNum + ", valueName=" + valueName + ", valuePrice="
				+ valuePrice + ", extra=" + extra + "]";
	}

}
