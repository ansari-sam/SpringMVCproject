package com.springMVCProject.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springMVCProject.Dao.HousesAndAppartmentsDao;
import com.springMVCProject.Entities.HousesAndAppartments;

@Service
public class HousesAndAppartmentsService {
	
	@Autowired
	private HousesAndAppartmentsDao HADao;
	
	public int createHousesAndAppartments(HousesAndAppartments houseAndApartment) {
		
		return this.HADao.saveHousesAndAppartments(houseAndApartment);
	}
	
	public List<HousesAndAppartments> getAllAvailableHouAndApart(){
		
		return this.HADao.getAllAvailableHousesAndApartment();
	}
	
	public HousesAndAppartments getAllAvailableHouAndApart(int Hid){
		
		return this.HADao.getAllAvailableHousesAndApartment(Hid);
	}
	
	public List<HousesAndAppartments> searchAllAvailableHousesAndApartment(String search){
		
		return this.HADao.getAllAvailableHousesAndApartment(search);
	}

}
