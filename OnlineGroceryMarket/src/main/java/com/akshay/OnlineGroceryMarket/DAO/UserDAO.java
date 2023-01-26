package com.akshay.OnlineGroceryMarket.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.akshay.OnlineGroceryMarket.Model.UserEntity;



public interface UserDAO extends JpaRepository <UserEntity,Long>{
	
	//@Query("select l from login l where l.lo_username = :username and l.lo_password = :password")
	
	
	UserEntity getUserByUsernameAndPassword(String username, String password);

}
