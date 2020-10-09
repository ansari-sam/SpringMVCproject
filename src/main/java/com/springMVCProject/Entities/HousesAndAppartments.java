package com.springMVCProject.Entities;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class HousesAndAppartments {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int HAId;
	private String HouseType;
	private String BedRoomType;
	private String Action; //Rent or lease or Buy
	private String Location;
	@ElementCollection
	@CollectionTable(name="HousePropertiesFeature",joinColumns = @JoinColumn(name="HAId"))
	private List<String> propertyFeatures;
	@OneToOne(cascade = CascadeType.ALL)
	private Address address;
	@OneToOne(cascade = CascadeType.ALL)
	private Details details;
	private String Description;
	private String ListedBy;
	private String HouseRate;
	private String Availability;
	@Temporal(TemporalType.DATE)
	private Date AddedDate= new Date();
	
	public HousesAndAppartments() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public HousesAndAppartments(int hAId, String houseType, String bedRoomType, String action, String location,
			List<String> propertyFeatures, Address address, Details details, String description, String listedBy,
			String houseRate, String availability, Date addedDate) {
		super();
		HAId = hAId;
		HouseType = houseType;
		BedRoomType = bedRoomType;
		Action = action;
		Location = location;
		this.propertyFeatures = propertyFeatures;
		this.address = address;
		this.details = details;
		Description = description;
		ListedBy = listedBy;
		HouseRate = houseRate;
		Availability = availability;
		this.AddedDate = addedDate;
	}

	public int getHAId() {
		return HAId;
	}
	public void setHAId(int hAId) {
		HAId = hAId;
	}
	public String getHouseType() {
		return HouseType;
	}
	public void setHouseType(String houseType) {
		HouseType = houseType;
	}
	public String getBedRoomType() {
		return BedRoomType;
	}
	public void setBedRoomType(String bedRoomType) {
		BedRoomType = bedRoomType;
	}
	public String getAction() {
		return Action;
	}
	public void setAction(String action) {
		Action = action;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public List<String> getPropertyFeatures() {
		return propertyFeatures;
	}
	public void setPropertyFeatures(List<String> propertyFeatures) {
		this.propertyFeatures = propertyFeatures;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Details getDetails() {
		return details;
	}
	public void setDetails(Details details) {
		this.details = details;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getListedBy() {
		return ListedBy;
	}
	public void setListedBy(String listedBy) {
		ListedBy = listedBy;
	}
	public String getHouseRate() {
		return HouseRate;
	}
	public void setHouseRate(String houseRate) {
		HouseRate = houseRate;
	}
	public String getAvailability() {
		return Availability;
	}
	public void setAvailability(String availability) {
		Availability = availability;
	}
	public Date getAddedDate() {
		return AddedDate;
	}
	public void setAddedDate(Date addedDate) {
		AddedDate = addedDate;
	}
	@Override
	public String toString() {
		return "HousesAndAppartments [HAId=" + HAId + ", HouseType=" + HouseType + ", BedRoomType=" + BedRoomType
				+ ", Action=" + Action + ", Location=" + Location + ", Availability=" + Availability
				+ ", propertyFeatures=" + propertyFeatures + ", address=" + address + ", details=" + details
				+ ", Description=" + Description + ", ListedBy=" + ListedBy + ", HouseRate=" + HouseRate + "]";
	}
}
