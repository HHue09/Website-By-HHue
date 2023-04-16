package com.devpro.javaweb23bs.services.impl;

import org.springframework.stereotype.Service;



import com.devpro.javaweb23bs.model.User;
import com.devpro.javaweb23bs.services.BaseService;


@Service
public class UserService extends BaseService<User> {
	
	@Override
	protected Class<User> clazz() {
		return User.class;
	}

	public User loadUserByUsername(String userName) {
		String sql = "select * from tbl_users u where u.username = '" + userName + "' and status = 1";
		return this.getEntityByNativeSQL(sql);
	}
	
}
