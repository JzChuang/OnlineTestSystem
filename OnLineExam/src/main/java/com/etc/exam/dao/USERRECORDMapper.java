package com.etc.exam.dao;

import java.util.List;

import com.etc.exam.entity.USERRECORD;



public interface USERRECORDMapper {
    int deleteByPrimaryKey(Short recordid);

    int insert(USERRECORD record);

    int insertSelective(USERRECORD record);

    USERRECORD selectByPrimaryKey(int recordid);
    
   List<USERRECORD> selectall();

    int updateByPrimaryKeySelective(USERRECORD record);

    int updateByPrimaryKey(USERRECORD record);
    
}