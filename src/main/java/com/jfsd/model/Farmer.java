package com.jfsd.model;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name = "farmer_table")
public class Farmer {
	   @Id
	   @Column(name = "farmer_id")
	   private int id;
	   @Column(name = "farmer_name", nullable = false, length = 50)
	   private String name;
	   @Column(name = "farmer_email", unique = true, nullable = false, length = 40)
	   private String email;
	   @Column(name = "farmer_password", nullable = false,length = 30)
	   private String password;
	   @Column(name = "farmer_contact", unique = true, length = 15,nullable = false)
	   private String contact;
	   
	   @Column(name="farmer_type")
	 private String type;
	   @Column(name="farmer_location")
	 private String Location;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	}


