package com.house.bean;

public class UserHouse  {
		private int house_id;
		private String name;
		private String phonenumber;
		private int rent;
		private String location;
		private String housedetails;
		private int bhk;
		private int owner_id;
		public int getHouse_Id()
		{
			return house_id;
		}
		public void setHouse_Id(int id)
		{
			this.house_id = id;
		}
		public int getOwner_Id()
		{
			return owner_id;
		}
		public void setOwner_Id(int id)
		{
			this.owner_id = id;
		}
		
		public String getName()
		{
			return name;
		}
		public void setName(String name)
		{
			this.name = name;
		}
		public int getRent()
		{
			return rent;
		}
		public void setRent(int rent)
		{
			this.rent = rent;
		}
		public String getLocation()
		{
			return location;
		}
		public void setLocation(String location)
		{
			this.location = location;
		}
		public String getPhonenumber()
		{
			return phonenumber;
		}
		public void setPhonenumber(String phonenumber)
		{
			this.phonenumber = phonenumber;
		}
		public String getHousedetails()
		{
			return housedetails;
		}
		public void setHousedetails(String housedetails)
		{
			this.housedetails = housedetails;
		}
		public int getBhk()
		{
			return bhk;
		}
		public void setBhk(int bhk)
		{
			this.bhk = bhk;
		}
		}
