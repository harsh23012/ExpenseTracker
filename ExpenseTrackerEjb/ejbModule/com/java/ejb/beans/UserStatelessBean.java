package com.java.ejb.beans;

import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.java.ejb.dao.UserDao;
import com.java.ejb.dao.UserDaoImpl;
import com.java.ejb.model.User;

/**
 * Session Bean implementation class UserStatelessBean
 */
@Stateless
@Remote(UserStatelessBeanRemote.class)
public class UserStatelessBean implements UserStatelessBeanRemote {
	
static UserDao daoImpl;
	
	static {
		daoImpl = new UserDaoImpl();
	}

	  @PersistenceContext(unitName = "ExpenseTracker")
	    private EntityManager entityManager;
    /**
     * Default constructor. 
     */
    public UserStatelessBean() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public List<User> showUser() {
		System.out.println("Entit Manager is  " +entityManager);
		Query query = entityManager.createQuery("SELECT u FROM User u");
	    return (List<User>) query.getResultList();
	}

	@Override
	public String addUser(User user) {
	
		entityManager.persist(user);
		entityManager.flush();  
	    int userId = user.getId(); 

	    return "Main.jsp?faces-redirect=true";
	}


	@Override
	public User findUserByUsername(String user_name) {
	    try {
	        return entityManager.createQuery("SELECT u FROM User u WHERE u.user_name = :user_name", User.class)
	                .setParameter("user_name", user_name)
	                .getSingleResult();
	    } catch (NoResultException e) {
	        return null;
	    }
	}

	@Override
	public User findUserByEmail(String email) {
	    try {
	        return entityManager.createQuery("SELECT u FROM User u WHERE u.email = :email", User.class)
	                .setParameter("email", email)
	                .getSingleResult();
	    } catch (NoResultException e) {
	        return null;
	    }
	}

	@Override
	public User findUserByPhone(String phone) {
	    try {
	        return entityManager.createQuery("SELECT u FROM User u WHERE u.phone = :phone", User.class)
	                .setParameter("phone", phone)
	                .getSingleResult();
	    } catch (NoResultException e) {
	        return null;
	    }
	}
	}

	
