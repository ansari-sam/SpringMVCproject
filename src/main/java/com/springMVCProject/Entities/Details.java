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
@Table(name="HousesDetails")
public class Details {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int detId;
	private String bedRooms;
	private String bathRooms;
	private String builUpArea;
	private String totalFloors;
	private String floorNo;
	private String carParking;
	private String facing;
	@OneToOne
	@JoinColumn(name="houseAndApart_Id",referencedColumnName = "HAId")
	private HousesAndAppartments houseAndApartments;
	
	public Details() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	public Details(int detId, String bedRooms, String bathRooms, String builUpArea, String totalFloors, String floorNo,
			String carParking, String facing, HousesAndAppartments houseAndApartments) {
		super();
		this.detId = detId;
		this.bedRooms = bedRooms;
		this.bathRooms = bathRooms;
		this.builUpArea = builUpArea;
		this.totalFloors = totalFloors;
		this.floorNo = floorNo;
		this.carParking = carParking;
		this.facing = facing;
		this.houseAndApartments = houseAndApartments;
	}



	public int getDetId() {
		return detId;
	}

	public void setDetId(int detId) {
		this.detId = detId;
	}

	public String getBedRooms() {
		return bedRooms;
	}

	public void setBedRooms(String bedRooms) {
		this.bedRooms = bedRooms;
	}

	public String getBathRooms() {
		return bathRooms;
	}

	public void setBathRooms(String bathRooms) {
		this.bathRooms = bathRooms;
	}

	public String getBuilUpArea() {
		return builUpArea;
	}

	public void setBuilUpArea(String builUpArea) {
		this.builUpArea = builUpArea;
	}

	public String getTotalFloors() {
		return totalFloors;
	}

	public void setTotalFloors(String totalFloors) {
		this.totalFloors = totalFloors;
	}

	public String getFloorNo() {
		return floorNo;
	}

	public void setFloorNo(String floorNo) {
		this.floorNo = floorNo;
	}

	public String getCarParking() {
		return carParking;
	}

	public void setCarParking(String carParking) {
		this.carParking = carParking;
	}

	public String getFacing() {
		return facing;
	}

	public void setFacing(String facing) {
		this.facing = facing;
	}

	public HousesAndAppartments getHouseAndApartments() {
		return houseAndApartments;
	}



	public void setHouseAndApartments(HousesAndAppartments houseAndApartments) {
		this.houseAndApartments = houseAndApartments;
	}



	@Override
	public String toString() {
		return "Details [detId=" + detId + ", bedRooms=" + bedRooms + ", bathRooms=" + bathRooms + ", builUpArea="
				+ builUpArea + ", totalFloors=" + totalFloors + ", floorNo=" + floorNo + ", carParking=" + carParking
				+ ", facing=" + facing + "]";
	}

}
