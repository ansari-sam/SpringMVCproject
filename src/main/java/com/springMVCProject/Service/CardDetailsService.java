package com.springMVCProject.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springMVCProject.Dao.CardDetailsDao;
import com.springMVCProject.Entities.CardDetails;

@Service
public class CardDetailsService {
	@Autowired
	private CardDetailsDao cardDetailsDao;
	
	public int createCardDetails(CardDetails card) {
		int i = this.cardDetailsDao.SaveCard(card);
		return i;
	}

}
