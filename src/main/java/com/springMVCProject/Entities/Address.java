package com.springMVCProject.Entities;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="HousesAddress")
public class Address {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int addId;
	private String Street;
	private String City;
	private String State;
	private String zipCode;
	@OneToOne
	@JoinColumn(name="houseAndAprt_Id",referencedColumnName = "HAId")
	private HousesAndAppartments houseAndApartments;
	
	
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Address(int addId, String street, String city, String state, String zipCode,
			HousesAndAppartments houseAndApartments) {
		super();
		this.addId = addId;
		Street = street;
		City = city;
		State = state;
		this.zipCode = zipCode;
		this.houseAndApartments = houseAndApartments;
	}


	public int getAddId() {
		return addId;
	}
	public void setAddId(int addId) {
		this.addId = addId;
	}
	public String getStreet() {
		return Street;
	}
	public void setStreet(String street) {
		Street = street;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public HousesAndAppartments getHouseAndApartments() {
		return houseAndApartments;
	}
	public void setHouseAndApartments(HousesAndAppartments houseAndApartments) {
		this.houseAndApartments = houseAndApartments;
	}
	@Override
	public String toString() {
		return "Address [addId=" + addId + ", Street=" + Street + ", City=" + City + ", State=" + State + ", zipCode="
				+ zipCode + "]";
	}
}
