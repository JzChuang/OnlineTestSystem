package com.etc.exam.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.etc.exam.dao.ExamTypeMapper;
import com.etc.exam.entity.ExamType;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations= {"",""})
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:mybatis-config.xml" })
public class TestDao {
	@Resource
	private ExamTypeMapper etm;
	
	@Test
	public void testExamTypeMapper() {
		ExamType et = new ExamType(15, "软件设计师");
		int i=etm.insert(et);
		System.out.println(i);
		System.out.println("000");
	}
	
	
	
}
