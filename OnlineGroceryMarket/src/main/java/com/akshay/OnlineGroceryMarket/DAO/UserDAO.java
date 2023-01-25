package com.akshay.OnlineGroceryMarket.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.akshay.OnlineGroceryMarket.Model.UserEntity;



public interface UserDAO extends JpaRepository <UserEntity,Long>{

	UserEntity getUserByUsernameAndPassword(String username, String password);

}
