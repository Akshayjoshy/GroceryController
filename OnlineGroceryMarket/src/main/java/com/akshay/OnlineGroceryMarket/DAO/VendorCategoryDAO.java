package com.akshay.OnlineGroceryMarket.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.akshay.OnlineGroceryMarket.Model.VendorCategory;

public interface VendorCategoryDAO extends JpaRepository<VendorCategory,Long> {

}
