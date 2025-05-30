package com.java.ejb.beans;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import com.java.ejb.model.TripGroup;
import com.java.ejb.model.User;

/**
 * Session Bean implementation class GroupStatelessBean
 */
@Stateless
@Remote(GroupStatelessBeanRemote.class)
public class GroupStatelessBean implements GroupStatelessBeanRemote {
	
	@PersistenceContext(unitName = "ExpenseTracker")
    private EntityManager entityManager;

    public GroupStatelessBean() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public String createGroup(TripGroup tripGroup) {
		entityManager.persist(tripGroup);
		entityManager.flush();  
	    int groupId = tripGroup.getId(); 

	    return "AdminHome.jsp?faces-redirect=true";
	}

	@Override
	public List<TripGroup> showGroupsByAdminId(int adminId) {
		List<TripGroup> groups = new ArrayList<TripGroup>();
		groups = entityManager.createQuery("SELECT t from TripGroup t WHERE t.user.id = :adminId", TripGroup.class)
				.setParameter("adminId", adminId).getResultList();
		System.out.println(groups);
		return groups;
	}

//	@Override
//	public List<TripGroup> showGreoupByAdminId(int adminId) {
//		try {
//			List<TripGroup> groups= new ArrayList<TripGroup>();
//			groups = entityManager.createQuery("SELECT t FROM TripGroup t WHERE t.user.id= :adminId", TripGroup.class)
//            .setParameter("adminId", adminId)
//            .getResultList();
//	        return groups; 
//	    } catch (NoResultException e) {
//	        return null;
//	    }
//	}

}
