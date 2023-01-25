package com.akshay.OnlineGroceryMarket.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.akshay.OnlineGroceryMarket.DAO.UserDAO;
import com.akshay.OnlineGroceryMarket.Model.UserEntity;



@Controller
public class LoginController {
	@Autowired
	private UserDAO userDAO;
	@GetMapping("/")
	public String getAllUser(Model m) {
		List<UserEntity>ue=userDAO.findAll();
		
		return "Login";
	}
	
	@PostMapping("/login")
	public String userLogin(@RequestParam String username,@RequestParam String password) {
		
		
		
		UserEntity user = userDAO.getUserByUsernameAndPassword(username,password);
		//User user = null;
		if(user!=null) {
			
			System.out.println("user found");
			if(user.getUsertype().equals(UserEntity.USERTYPE_ADMIN)) {
				//model.addAttribute("AdminName", user.getUsername());
				return "AdminHome";
			}
			else if(user.getUsertype().equals(UserEntity.USERTYPE_USER)) {
				return "UserHomePage";
			}
		}else {
			System.out.println("inside else");
			return "Error";
		}
		return username;
		
	}
}
