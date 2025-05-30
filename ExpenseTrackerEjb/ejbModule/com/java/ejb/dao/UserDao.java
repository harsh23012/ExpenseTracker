package com.java.ejb.dao;

import java.util.List;

import com.java.ejb.model.User;

public interface UserDao {
	List<User> showUserDao();
	String addUserDao(User user);

}
