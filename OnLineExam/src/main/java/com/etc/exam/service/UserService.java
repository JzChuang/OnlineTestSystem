package com.etc.exam.service;

import com.etc.exam.entity.Users;

public interface UserService {
	/**
	 * ����ѧ�����û�����login���в����û�����Ϊѧ�����û�
	 * @param userName �û���
	 * @return
	 */
	public Users selectStuByName (String userName);
	/**
	 * ѧ���û�ע��
	 * @param u
	 * @return
	 */
	public boolean insertStudent(Users u);
}
