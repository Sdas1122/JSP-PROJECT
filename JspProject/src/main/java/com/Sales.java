package com;

public class Sales {
	
	String sid,itemName,price;
	public Sales() {
		
	}

	public Sales(String sid, String itemName, String price) {
		super();
		this.sid = sid;
		this.itemName = itemName;
		this.price = price;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

}
