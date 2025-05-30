package com.java.ejb.beans;

import java.util.List;

import javax.ejb.Remote;
import com.java.ejb.model.User;

@Remote
public interface UserStatelessBeanRemote {
	List<User> showUser();
	String addUser(User user);
	User findUserByUsername(String user_name);
	User findUserByEmail(String email);
	User findUserByPhone(String phone);

}
