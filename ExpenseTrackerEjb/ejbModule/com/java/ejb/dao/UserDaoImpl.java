package com.java.ejb.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.java.ejb.model.User;


public class UserDaoImpl implements UserDao {

    @PersistenceContext(unitName = "ExpenseTracker")
    private EntityManager entityManager;

    @Override
	public List<User> showUserDao() {
		System.out.println("Entit Manager is  " +entityManager);
		Query query = entityManager.createQuery("SELECT u FROM User u");
	    return (List<User>) query.getResultList();
	}

	@Override
	public String addUserDao(User user) {
		entityManager.persist(user);
		return "ShowUser.jsp?faces-redirect=true";
	}
}
