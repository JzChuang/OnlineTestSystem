package com.etc.exam.dao;

import com.etc.exam.entity.ExamType;

public interface ExamTypeMapper {
    int deleteByPrimaryKey(Short EXAMTYPEID);

    int insert(ExamType examType);

    int insertSelective(ExamType record);

    ExamType selectByPrimaryKey(Short EXAMTYPEID);

    int updateByPrimaryKeySelective(ExamType record);

    int updateByPrimaryKey(ExamType record);
}