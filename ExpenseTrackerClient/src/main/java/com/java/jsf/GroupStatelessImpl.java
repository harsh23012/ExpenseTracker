package com.java.jsf;

import java.sql.Timestamp;
import java.util.List;

import javax.faces.context.FacesContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpSession;

import com.java.ejb.beans.GroupStatelessBeanRemote;
import com.java.ejb.beans.RemoteGroupStatelessHelper;
import com.java.ejb.model.TripGroup;
import com.java.ejb.model.User;
public class GroupStatelessImpl {
	
	private GroupStatelessBeanRemote remote;
	
	public GroupStatelessImpl() {
        try {
            remote = RemoteGroupStatelessHelper.lookupRemoteStatelessGroup();
        } catch (NamingException e) {
            e.printStackTrace();
        }
    }
	
	public String createGroupEjb(TripGroup tripGroup) {
		
		FacesContext facesContext = FacesContext.getCurrentInstance();
	    HttpSession session = (HttpSession) facesContext.getExternalContext().getSession(false);
	    
	    User loggedInUser = (User) session.getAttribute("loggedInUser");
	    tripGroup.setUser(loggedInUser);
	    tripGroup.setCreated_at((new Timestamp(System.currentTimeMillis())));
	    tripGroup.setUpdated_at((new Timestamp(System.currentTimeMillis())));
		return remote.createGroup(tripGroup);
	}
	
	public List<TripGroup> showGroupsByAdminIdEjb(){
		
		FacesContext facesContext = FacesContext.getCurrentInstance();
	    HttpSession session = (HttpSession) facesContext.getExternalContext().getSession(false);
	    User loggedInUser = (User) session.getAttribute("loggedInUser");
	    return remote.showGroupsByAdminId(loggedInUser.getId());
		
	}
}
