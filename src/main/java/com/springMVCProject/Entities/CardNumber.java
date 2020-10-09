package com.springMVCProject.Entities;

import javax.persistence.Embeddable;

@Embeddable
public class CardNumber {
	private String firstFourNo;
	private String secondFourNo;
	private String thirdFourNo;
	private String fourthFourNo;
	
	public CardNumber() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getFirstFourNo() {
		return firstFourNo;
	}

	public void setFirstFourNo(String firstFourNo) {
		this.firstFourNo = firstFourNo;
	}

	public String getSecondFourNo() {
		return secondFourNo;
	}

	public void setSecondFourNo(String secondFourNo) {
		this.secondFourNo = secondFourNo;
	}

	public String getThirdFourNo() {
		return thirdFourNo;
	}

	public void setThirdFourNo(String thirdFourNo) {
		this.thirdFourNo = thirdFourNo;
	}

	public String getFourthFourNo() {
		return fourthFourNo;
	}

	public void setFourthFourNo(String fourthFourNo) {
		this.fourthFourNo = fourthFourNo;
	}

	@Override
	public String toString() {
		return "CardNumber [firstFourNo=" + firstFourNo + ", secondFourNo=" + secondFourNo + ", thirdFourNo="
				+ thirdFourNo + ", fourthFourNo=" + fourthFourNo + "]";
	}

	public CardNumber(String firstFourNo, String secondFourNo, String thirdFourNo, String fourthFourNo) {
		super();
		this.firstFourNo = firstFourNo;
		this.secondFourNo = secondFourNo;
		this.thirdFourNo = thirdFourNo;
		this.fourthFourNo = fourthFourNo;
	}
	

	
}
