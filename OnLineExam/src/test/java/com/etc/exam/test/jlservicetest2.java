package com.etc.exam.test;



import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.etc.exam.entity.USERRECORD;
import com.etc.exam.entity.UserQuestions;
import com.etc.exam.entity.UserQuestionsKey;
import com.etc.exam.service.UserQuestionsService;
import com.etc.exam.service.correctservice;


public class jlservicetest2 {
	correctservice uc=null;
	UserQuestionsService uqs=null;
	@Before
public void before()
{
    ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath:applicationContext.xml","classpath:mybatis-config.xml");
     uc = context.getBean(correctservice.class);
     uqs = context.getBean(UserQuestionsService.class);
}
@Test
public void tt()
{
	/*List<USERRECORD> list = uc.selectall();
	System.out.println(list);*/
	/*USERRECORD gs = uc.selectrecordebyid(1);
	System.out.println(gs);*/
	/*UserQuestionsKey key = new UserQuestionsKey();
	key.setTestpaperid((short)1001);
	key.setUsername("laj");
	 List<UserQuestions> gs = uqs.getalluserquestions(key);
	System.out.println(gs);*/
/*	USERRECORD u=new USERRECORD();
	u.setTestpaperid((short)1001);
	u.setGrade((short)60);
	u.setUsername("zxs");
	System.out.println(uc.updatascore(u));*/
	
	UserQuestionsKey key = new UserQuestionsKey();
	key.setTestpaperid((short)1001);
	key.setUsername("zxs");
	 int gs = uqs.getqtcount(key);
	System.out.println(gs);
	}
}
