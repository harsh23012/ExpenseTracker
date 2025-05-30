package com.java.ejb.beans;

import javax.naming.NamingException;

public class Dummy {
	public static void main(String[] args) {
		try {
			UserStatelessBeanRemote remote = RemoteUserStatelessHelper.lookupRemoteStatelessUser();
			System.out.println(remote.showUser());
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
