package com.etc.exam.dao;

import java.util.List;

import com.etc.exam.entity.UserQuestions;
import com.etc.exam.entity.UserQuestionsKey;

public interface UserQuestionsMapper {
    int deleteByPrimaryKey(UserQuestionsKey key);

    int insert(UserQuestions record);

    int insertSelective(UserQuestions record);

   List<UserQuestions> selectByPrimaryKey(UserQuestionsKey key);

    int updateByPrimaryKeySelective(UserQuestions record);

    int updateByPrimaryKey(UserQuestions record);
    
    int getcount(UserQuestionsKey key);
}