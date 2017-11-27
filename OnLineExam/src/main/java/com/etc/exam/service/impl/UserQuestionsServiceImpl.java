package com.etc.exam.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.exam.dao.UserQuestionsMapper;
import com.etc.exam.entity.UserQuestions;
import com.etc.exam.entity.UserQuestionsKey;
import com.etc.exam.service.UserQuestionsService;
@Service
public class UserQuestionsServiceImpl implements UserQuestionsService {
@Resource
	private UserQuestionsMapper us;
	public List<UserQuestions> getalluserquestions(UserQuestionsKey key) {
		// TODO Auto-generated method stub
		
		return us.selectByPrimaryKey(key);
	}
	public int getqtcount(UserQuestionsKey key) {
		// TODO Auto-generated method stub
		return  us.getcount(key);
		
	}

}
