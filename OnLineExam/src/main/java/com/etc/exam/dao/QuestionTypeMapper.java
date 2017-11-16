package com.etc.exam.dao;

import com.etc.exam.entity.QuestionType;

public interface QuestionTypeMapper {
    int deleteByPrimaryKey(Short QTYPEID);

    int insert(QuestionType record);

    int insertSelective(QuestionType record);

    QuestionType selectByPrimaryKey(Short QTYPEID);

    int updateByPrimaryKeySelective(QuestionType record);

    int updateByPrimaryKey(QuestionType record);
}