package com.etc.exam.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.etc.exam.dao.ExamTypeMapper;
import com.etc.exam.dao.UsersMapper;
import com.etc.exam.entity.ExamType;
import com.etc.exam.entity.Users;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations= {"",""})
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:mybatis-config.xml" })
public class TestDao {
	@Resource
	private ExamTypeMapper etm;
	@Resource
	private UsersMapper um;
	
	@Test
	public void testExamTypeMapper() {
		ExamType et = new ExamType(15, "软件设计师");
		int i=etm.insert(et);
		System.out.println(i);
		System.out.println("000");
	}
	
	@Test
	public void testUsersMapper() {
//		String USERNAME="jzc";
//		Users u =um.selectStuByName(USERNAME);
//		System.out.println(u);
		Users u = new Users(5, "17720837681", "123456", "学生");
		int i = um.insert(u);
		System.out.println(i);
	}
	
}
