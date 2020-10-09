package com.springMVCProject.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springMVCProject.Entities.HousesAndAppartments;

@Repository
public class HousesAndAppartmentsDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int saveHousesAndAppartments(HousesAndAppartments houseAndApartment) {

		Integer i = (Integer) this.hibernateTemplate.save(houseAndApartment);

		return i;
	}

	public List<HousesAndAppartments> getAllAvailableHousesAndApartment() {

		List<HousesAndAppartments> list = this.hibernateTemplate.loadAll(HousesAndAppartments.class);

		return list;

	}

	public HousesAndAppartments getAllAvailableHousesAndApartment(int id) {

		HousesAndAppartments list1 = (HousesAndAppartments) this.hibernateTemplate.get(HousesAndAppartments.class, id);

		return list1;

	}
	
	public List<HousesAndAppartments> getAllAvailableHousesAndApartment(String search) {
		
		String query="from HousesAndAppartments where Location=:l or HouseRate=:h";
		String paramNames[]= {"l","h"};
		Object values[]= {search,search};
		
		List<HousesAndAppartments> list = (List<HousesAndAppartments>) this.hibernateTemplate.findByNamedParam(query, paramNames, values);

		return list;

	}

}
