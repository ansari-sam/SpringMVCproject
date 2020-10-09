package com.springMVCProject.Security;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;

public class AESEncryptAndDecryot {

	
	Cipher ecipher;
	Cipher dcipher;
	
	public AESEncryptAndDecryot(SecretKey key) throws Exception{
		ecipher=Cipher.getInstance("AES");
		dcipher=Cipher.getInstance("AES");
		ecipher.init(Cipher.ENCRYPT_MODE, key);
		dcipher.init(Cipher.DECRYPT_MODE, key);
	}
	
	public String encrypt(String str) throws Exception{
		//Encode the str into bytes using utf8
		byte[] utf8=str.getBytes("UTF8");
		
		//Encrypt
		byte[] enc=ecipher.doFinal(utf8);
		
		//Encode bytes to base64 to get string
		
		return new sun.misc.BASE64Encoder().encode(enc);
	}
	
	public String decrypt(String str) throws Exception{
		//decode base64 to get byte
		byte[] dec=new sun.misc.BASE64Decoder().decodeBuffer(str);
		
		byte[] utf8=dcipher.doFinal(dec);
		
		//Decode using utf-8
		return new String(utf8,"UTF8");
		
	}
}
