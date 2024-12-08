package com.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jfsd.model.Orders;
public interface OrdersRepository extends JpaRepository<com.jfsd.model.Orders, Integer>{

	Orders findByRazorpayOrderId(String razorpayId);

}
