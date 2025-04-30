package com;

public class BankingDTO {
	String cName;
	int acNumber;
	String acType;
	String cFeedback;
	
	public BankingDTO() {
		
	}
	
	
	public BankingDTO(String cName, int acNumber, String acType, String cFeedback) {
		super();
		this.cName = cName;
		this.acNumber = acNumber;
		this.acType = acType;
		this.cFeedback = cFeedback;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getAcNumber() {
		return acNumber;
	}
	public void setAcNumber(int acNumber) {
		this.acNumber = acNumber;
	}
	public String getAcType() {
		return acType;
	}
	public void setAcType(String acType) {
		this.acType = acType;
	}
	public String getcFeedback() {
		return cFeedback;
	}
	public void setcFeedback(String cFeedback) {
		this.cFeedback = cFeedback;
	}
	
}
