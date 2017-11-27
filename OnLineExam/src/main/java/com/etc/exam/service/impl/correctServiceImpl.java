package com.etc.exam.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.exam.dao.USERRECORDMapper;
import com.etc.exam.entity.USERRECORD;
import com.etc.exam.service.correctservice;



@Service
public class correctServiceImpl implements correctservice {
@Resource
private USERRECORDMapper uc;
	public USERRECORD selectrecordebyid(int id) {
		// TODO Auto-generated method stub
return uc.selectByPrimaryKey((short)id);

	}
	public int updatascore(USERRECORD u) {
		// TODO Auto-generated method stub
		return  uc.updateByPrimaryKeySelective(u);
		
	}

}
