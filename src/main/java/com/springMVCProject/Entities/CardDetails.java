package com.springMVCProject.Entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class CardDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cardId;
	private CardNumber cardNo;
	private ExpDate expDate;
	
	
	public CardNumber getCardNo() {
		return cardNo;
	}
	public void setCardNo(CardNumber cardNo) {
		this.cardNo = cardNo;
	}
	public ExpDate getExpDate() {
		return expDate;
	}
	public void setExpDate(ExpDate expDate) {
		this.expDate = expDate;
	}

	public int getCardId() {
		return cardId;
	}
	public void setCardId(int cardId) {
		this.cardId = cardId;
	}
	@Override
	public String toString() {
		return "CardDetails [cardNo=" + cardNo + ", expDate=" + expDate + "]";
	}
}
