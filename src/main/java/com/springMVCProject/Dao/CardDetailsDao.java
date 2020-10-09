package com.springMVCProject.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springMVCProject.Entities.CardDetails;

@Repository
public class CardDetailsDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int SaveCard(CardDetails card) {
		
		Integer i=(Integer)this.hibernateTemplate.save(card);
		
		return i;
	}

}
