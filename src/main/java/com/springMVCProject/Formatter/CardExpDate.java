package com.springMVCProject.Formatter;

import java.text.ParseException;
import java.util.Locale;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

import org.springframework.format.Formatter;

import com.springMVCProject.Entities.ExpDate;
import com.springMVCProject.Security.AESEncryptAndDecryot;

public class CardExpDate implements Formatter<ExpDate> {

	public String print(ExpDate object, Locale locale) {
		// TODO Auto-generated method stub
		return null;
	}

	public ExpDate parse(String text, Locale locale) throws ParseException {
		// text exp: 12/2023
		String[] temp=text.split("/");
		ExpDate expDate=new ExpDate();
		//encrypt string coming from input field
		String k="Bar12345Bar12345";
		SecretKey key=new SecretKeySpec(k.getBytes(),"AES");
		try {
			AESEncryptAndDecryot encrypter= new AESEncryptAndDecryot(key);
			expDate.setCardMonth(encrypter.encrypt(temp[0]));
			expDate.setCardYear(encrypter.encrypt(temp[1]));
		} catch (Exception e) {
			e.printStackTrace();
		}
		//
		return expDate;
	}

}
