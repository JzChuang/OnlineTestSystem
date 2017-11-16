package com.etc.exam.dao;

import com.etc.exam.entity.Question;

public interface QuestionMapper {
    int deleteByPrimaryKey(Short QUESTIONID);

    int insert(Question record);

    int insertSelective(Question record);

    Question selectByPrimaryKey(Short QUESTIONID);

    int updateByPrimaryKeySelective(Question record);

    int updateByPrimaryKey(Question record);
}