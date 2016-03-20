package com.restaurant.model;

public class LineItems {

	private String restId;
	private int orderNo;
	private int lineNum;

	private Integer itemNum;
	private String itemName;
	private String choiceText;
	private Integer quantity;
	private Float price;
	private String note;

	public String getRestId() {
		return restId;
	}

	public void setRestId(String restId) {
		this.restId = restId;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getLineNum() {
		return lineNum;
	}

	public void setLineNum(int lineNum) {
		this.lineNum = lineNum;
	}

	public Integer getItemNum() {
		return itemNum;
	}

	public void setItemNum(Integer itemNum) {
		this.itemNum = itemNum;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getChoiceText() {
		return choiceText;
	}

	public void setChoiceText(String choiceText) {
		this.choiceText = choiceText;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Override
	public String toString() {
		return "LineItems [restId=" + restId + ", orderNo=" + orderNo + ", lineNum=" + lineNum + ", itemNum=" + itemNum
				+ ", itemName=" + itemName + ", choiceText=" + choiceText + ", quantity=" + quantity + ", price="
				+ price + ", note=" + note + "]";
	}

}
