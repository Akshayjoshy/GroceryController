package com.akshay.OnlineGroceryMarket.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.akshay.OnlineGroceryMarket.Model.Address;

public interface AddressDAO extends JpaRepository<Address,Long>{

}