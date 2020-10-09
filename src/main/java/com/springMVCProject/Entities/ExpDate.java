package com.springMVCProject.Entities;

import javax.persistence.Embeddable;

@Embeddable
public class ExpDate {
	
	private String cardMonth;
	private String cardYear;
	public ExpDate() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ExpDate(String cardMonth, String cardYear) {
		super();
		this.cardMonth = cardMonth;
		this.cardYear = cardYear;
	}
	public String getCardMonth() {
		return cardMonth;
	}
	public void setCardMonth(String cardMonth) {
		this.cardMonth = cardMonth;
	}
	public String getCardYear() {
		return cardYear;
	}
	public void setCardYear(String cardYear) {
		this.cardYear = cardYear;
	}
	@Override
	public String toString() {
		return "ExpDate [cardMonth=" + cardMonth + ", cardYear=" + cardYear + "]";
	}
	
	
	
	
}
