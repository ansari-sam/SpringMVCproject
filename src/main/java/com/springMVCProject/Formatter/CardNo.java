package com.springMVCProject.Formatter;

import java.text.ParseException;
import java.util.Locale;

import org.springframework.format.Formatter;

import com.springMVCProject.Entities.CardNumber;

public class CardNo implements Formatter<CardNumber>{

	public String print(CardNumber object, Locale locale) {
		// TODO Auto-generated method stub
		return null;
	}

	public CardNumber parse(String text, Locale locale) throws ParseException {
		// text exp: 1234-4444-5555-5555
		String[] temp=text.split("-");
		CardNumber cn=new CardNumber();
		cn.setFirstFourNo(temp[0]);
		cn.setSecondFourNo(temp[1]);
		cn.setThirdFourNo(temp[2]);
		cn.setFourthFourNo(temp[3]);
		
		return cn;
	}

}
