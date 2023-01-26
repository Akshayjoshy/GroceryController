package com.akshay.OnlineGroceryMarket.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.akshay.OnlineGroceryMarket.Model.VendorEntity;

public interface VendorDAO extends JpaRepository<VendorEntity,Long> {

}
