package com.jfsd.model;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "buyer_table")
public class Buyer {
	   @Id
	   @Column(name = "buyer_id")
	   private int id;
	   @Column(name = "buyer_name",nullable = false,length = 40)
	   private String name;
	   @Column(name = "buyer_email",nullable = false,length = 40,unique = true)
	   private String email;
	   @Column(name = "buyer_contactno",nullable = false,length = 20,unique = true)
	   private String contactno;
	   @Column(name = "buyer_password",nullable = false,length = 40)
	   private String password;
	   @Column(name="buyer_location")
	   private String location;
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
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	   
	}


