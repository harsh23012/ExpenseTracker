package com.java.ejb.beans;

import java.util.List;

import javax.ejb.Remote;

import com.java.ejb.model.TripGroup;

@Remote
public interface GroupStatelessBeanRemote {
	
	String createGroup(TripGroup tripGroup);
	List<TripGroup> showGroupsByAdminId(int adminId);

}
