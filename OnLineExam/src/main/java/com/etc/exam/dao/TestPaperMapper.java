package com.etc.exam.dao;

import com.etc.exam.entity.TestPaper;

public interface TestPaperMapper {
    int deleteByPrimaryKey(Short TESTPAPERID);

    int insert(TestPaper record);

    int insertSelective(TestPaper record);

    TestPaper selectByPrimaryKey(Short TESTPAPERID);

    int updateByPrimaryKeySelective(TestPaper record);

    int updateByPrimaryKey(TestPaper record);
}