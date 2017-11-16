package com.etc.exam.dao;

import com.etc.exam.entity.Student;

public interface StudentMapper {
    int deleteByPrimaryKey(String STUNAME);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(String STUNAME);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
}