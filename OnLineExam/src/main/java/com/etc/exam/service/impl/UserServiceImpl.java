package com.etc.exam.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.exam.dao.UsersMapper;
import com.etc.exam.entity.Users;
import com.etc.exam.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private UsersMapper um;
	
	
	public boolean insertStudent(Users u) {
		
		return um.insert(u)>0;
	}
	public Users selectStuByName(String userName) {
		// TODO Auto-generated method stub
		return um.selectStuByName(userName);
	}
}
