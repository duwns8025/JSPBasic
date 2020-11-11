package com.session;

import java.util.ArrayList;
import java.util.List;

public class UserRepository {
	//DB가정
	
	private static List<User> userList = new ArrayList<User>();

	
	public static void method01(User u) {
		userList.add(u);
	}
	
	public static User getUser(String id) {
		for(User u:userList) {
			
			if(id.equals(u.getId())) {
				return u;
			}
		}
		return null;
	}
	
	public static void deleteUser(String id) {
		for(int i=0; i<userList.size(); i++) {
			
			if(userList.get(i).getId().equals(id)) {
				userList.remove(i);
				return;
			}
			
		}
	}
	
//	public static void deleteUser(String id) {
//		userList.remove(getUser(id));
//	}
	
}
