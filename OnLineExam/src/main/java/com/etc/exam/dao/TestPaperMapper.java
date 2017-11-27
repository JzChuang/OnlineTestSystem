package com.etc.exam.dao;

import com.etc.exam.entity.TestPaper;

public interface TestPaperMapper {
    int deleteByPrimaryKey(int TESTPAPERID);

    int insert(TestPaper record);

    int insertSelective(TestPaper record);

    TestPaper selectByPrimaryKey(int TESTPAPERID);

    int updateByPrimaryKeySelective(TestPaper record);

    int updateByPrimaryKey(TestPaper record);
}