package com.jfsd.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.jfsd.model.Buyer;
@Repository
public interface BuyerRepository extends JpaRepository<Buyer, Integer> {
	
	@Query("select b from Buyer b where b.email = ?1 and b.password = ?2")
	 
	public Buyer checkbuyerLogin(String email,String pwd);

	

}
