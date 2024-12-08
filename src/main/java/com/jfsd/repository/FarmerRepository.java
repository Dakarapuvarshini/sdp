package com.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.jfsd.model.Farmer;
@Repository
public interface FarmerRepository extends JpaRepository<Farmer, Integer>{
	 @Query("select f from Farmer f where f.id = ?1 and f.password = ?2")
	public Farmer checkFarmerLogin(int id, String password);
	 public List<Farmer> findByType(String type);
	

}
