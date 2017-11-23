package com.etc.exam.service;

import com.etc.exam.entity.Users;

public interface UserService {
	/**
	 * 根据学生的用户名在login表中查找用户类型为学生的用户
	 * @param userName 用户名
	 * @return
	 */
	public Users selectStuByName (String userName);
	/**
	 * 学生用户注册
	 * @param u
	 * @return
	 */
	public boolean insertStudent(Users u);
}
