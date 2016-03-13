package com.restaurant.model;

public class Section {

	private String restId;
	private String secName;
	private int numItem;

	public String getRestId() {
		return restId;
	}

	public void setRestId(String restId) {
		this.restId = restId;
	}

	public String getSecName() {
		return secName;
	}

	public void setSecName(String secName) {
		this.secName = secName;
	}

	public int getNumItem() {
		return numItem;
	}

	public void setNumItem(int numItem) {
		this.numItem = numItem;
	}

	@Override
	public String toString() {
		return "Section [restId=" + restId + ", secName=" + secName + ", numitem=" + numItem + "]";
	}
}
