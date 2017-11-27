package com.etc.exam.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.exam.dao.USERRECORDMapper;
import com.etc.exam.dao.UserQuestionsMapper;
import com.etc.exam.entity.USERRECORD;
import com.etc.exam.entity.UserQuestions;
import com.etc.exam.entity.UserQuestionsKey;

public class jldaotest {
	 USERRECORDMapper uc=null;
	 UserQuestionsMapper uq=null;
	@Before
public void before()
{
    ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath:applicationContext.xml","classpath:mybatis-config.xml");
     uc = context.getBean(USERRECORDMapper.class);
     uq = context.getBean(UserQuestionsMapper.class);
}
@Test
public void tt()
{
	/*List<USERRECORD> list = uc.selectall();
	System.out.println(list);
	USERRECORD gs = uc.selectByPrimaryKey(1);
	System.out.println(gs);*/
    	
/*	UserQuestionsKey key = new UserQuestionsKey();
	key.setTestpaperid((short)1001);
	key.setQuestionid((short) 3);
	key.setUsername("laj");
	   List<UserQuestions> gs = uq.selectByPrimaryKey(key);
	System.out.println(gs);*/
	/*USERRECORD u=new USERRECORD();
	u.setTestpaperid((short)1001);
	u.setGrade((short)40);
	u.setUsername("zxs");
	System.out.println(uc.updateByPrimaryKeySelective(u)); */
	
	UserQuestionsKey key = new UserQuestionsKey();
	key.setTestpaperid((short)1001);
	key.setUsername("zxs");
	System.out.println(uq.getcount(key)); 
	}
}
