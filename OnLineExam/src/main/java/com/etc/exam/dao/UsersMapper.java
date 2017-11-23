package com.etc.exam.dao;

import org.apache.ibatis.annotations.Param;

import com.etc.exam.entity.Users;

public interface UsersMapper {
    int deleteByPrimaryKey(int USERID);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(int USERID);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
    
    Users selectStuByName(@Param(value="USERNAME") String USERNAME);
}