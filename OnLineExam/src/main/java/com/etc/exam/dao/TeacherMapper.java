package com.etc.exam.dao;

import com.etc.exam.entity.Teacher;

public interface TeacherMapper {
    int deleteByPrimaryKey(String TEACHERNAME);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    Teacher selectByPrimaryKey(String TEACHERNAME);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);
}