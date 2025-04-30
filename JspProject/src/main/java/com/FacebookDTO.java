package com;

public class FacebookDTO {

	String uName,password;
public FacebookDTO() {
	
}

	public FacebookDTO(String uName, String password) {
		super();
		this.uName = uName;
		this.password = password;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
